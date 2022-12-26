import { animate, AnimationTriggerMetadata, state, style, transition, trigger } from '@angular/animations';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

export const toastAnimations: {
  readonly fadeToast: AnimationTriggerMetadata;
} = {
  fadeToast: trigger('fadeAnimation', [
    state('default', style({ opacity: 1 })),
    transition('void => *', [style({ opacity: 0 }), animate('{{ fadeIn }}ms')]),
    transition(
      'default => closing',
      animate('{{ fadeOut }}ms', style({ opacity: 0 }))
    )
  ])
};

export type ToastAnimationState = 'default' | 'closing';
