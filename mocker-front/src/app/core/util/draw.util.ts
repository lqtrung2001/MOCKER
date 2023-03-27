import { RelationTypeEnum } from '@core/domain/enum/relation-type.enum';
import { TableRelationModel } from '@core/domain/model/table-relation.model';

/**
 * @author Do Quoc Viet
 */

declare var LeaderLine: any;

export interface RelationLine {
  tableRelation: TableRelationModel,
  leaderLine: any,
}

type Plug = {
  start: string;
  end: string;
}

export class DrawUtil {
  static removedLeaderLines: string[] = [];

  static newRelationLine(tableRelation: TableRelationModel): RelationLine {
    const sourceHTMLElement: HTMLElement | null = document.getElementById(tableRelation.source.id);
    const targetHTMLElement: HTMLElement | null = document.getElementById(tableRelation.target.id);
    if (!sourceHTMLElement || !targetHTMLElement) {
      throw Error('Cannot find elements are defined');
    }
    // DOC: https://anseki.github.io/leader-line/
    const plug = this.getPlug(tableRelation.relationType);
    const leaderLine = new LeaderLine(
      sourceHTMLElement,
      targetHTMLElement,
      {
        endPlugOutline: false,
        animOptions: { duration: 3000, timing: 'linear' },
        // startLabel: '1',
        middleLabel: tableRelation.description,
        // endLabel: 'n',
        startPlug: plug.start,
        endPlug: plug.end,
        path: 'fluid',
        // startSocket: 'auto',
        // endSocket: 'auto',
        size: 1.5,
        startPlugSize: 2,
        endPlugSize: 2,
        color: '#000'
      }
    );
    sourceHTMLElement.addEventListener('mouseover', () => {
      if (!this.removedLeaderLines.includes(leaderLine._id)) {
        this.moveToLastElement(leaderLine._id);
        leaderLine.setOptions({
          color: 'rgb(30,41,248)'
        });
        leaderLine.size = 2;
        targetHTMLElement.style.backgroundColor = '#c7d6ff';
      }
    });
    sourceHTMLElement.addEventListener('mouseout', () => {
      if (!this.removedLeaderLines.includes(leaderLine._id)) {
        this.moveToLastElement(leaderLine._id);
        leaderLine.setOptions({
          color: '#000'
        });
        leaderLine.size = 1.5;
        targetHTMLElement.style.backgroundColor = '#fff';
      }
    });
    targetHTMLElement.addEventListener('mouseover', () => {
      if (!this.removedLeaderLines.includes(leaderLine._id)) {
        this.moveToLastElement(leaderLine._id);
        leaderLine.setOptions({
          color: 'rgb(30,41,248)'
        });
        leaderLine.size = 2;
        sourceHTMLElement.style.backgroundColor = '#c7d6ff';
      }
    });
    targetHTMLElement.addEventListener('mouseout', () => {
      if (!this.removedLeaderLines.includes(leaderLine._id)) {
        this.moveToLastElement(leaderLine._id);
        leaderLine.setOptions({
          color: '#000'
        });
        leaderLine.size = 1.5;
        sourceHTMLElement.style.backgroundColor = '#fff';
      }
    });
    const socket: string = this.getSocketPosition(tableRelation.source.id, tableRelation.target.id);
    leaderLine.setOptions({ startSocket: socket, endSocket: socket });
    return {
      tableRelation,
      leaderLine
    };
  }

  static getPlug(relationType: RelationTypeEnum): Plug {
    let start: string;
    let end: string;
    switch (relationType) {
      case RelationTypeEnum.ONE_TO_ONE:
        start = 'disc';
        end = 'disc';
        break;
      case RelationTypeEnum.ONE_TO_MANY:
        start = 'disc';
        end = 'arrow1';
        break;
      case RelationTypeEnum.MANY_TO_ONE:
        start = 'arrow1';
        end = 'disc';
        break;
      default:
        start = 'arrow1';
        end = 'arrow1';
    }
    return {
      start,
      end
    };
  }

  static getSocketPosition(sourceId: string, targetId: string): 'right' | 'left' | 'auto' {
    const sourceHTMLElement: HTMLElement = document.getElementById(sourceId)!;
    const targetHTMLElement: HTMLElement = document.getElementById(targetId)!;
    const sourceX: number = sourceHTMLElement.getBoundingClientRect().x;
    const sourceWidth: number = sourceHTMLElement.getBoundingClientRect().width;
    const targetX: number = targetHTMLElement.getBoundingClientRect().x;
    const targetWidth: number = targetHTMLElement.getBoundingClientRect().width;
    if (((sourceX + sourceWidth) >= (targetX) && (sourceX + sourceWidth) < (targetX + targetWidth / 2))
      || ((targetX + targetWidth) >= (sourceX) && (targetX + targetWidth) < (sourceX + sourceWidth / 2))) {
      return 'left';
    }
    if (((sourceX + sourceWidth) >= (targetX + targetWidth / 2) && (sourceX + sourceWidth) <= (targetX + targetWidth))
      || ((targetX + targetWidth) >= (sourceX + sourceWidth / 2) && (targetX + targetWidth) <= (sourceX + sourceWidth))) {
      return 'right';
    }
    return 'auto';
  }

  static moveToLastElement(id: number): void {
    document.querySelectorAll('svg').forEach((svgElement: SVGElement): void => {
      if (svgElement.querySelector(`defs path[id='leader-line-${id}-line-path']`)) {
        svgElement.remove();
        document.querySelector('body')!.appendChild(svgElement);
      }
    });
  }

}
