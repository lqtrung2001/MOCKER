import { Component } from '@angular/core';
import { Group } from '@core/model/group';
import { GroupService } from '@core/service/group.service';
import { ActivatedRoute, Router } from '@angular/router';
import { FormBuilder, FormGroup } from '@angular/forms';

@Component({
  selector: 'app-group',
  templateUrl: './group.component.html',
  styleUrls: ['./group.component.scss']
})
export class GroupComponent {

  group: Group;
  formGroup: FormGroup;

  constructor(
    private groupService: GroupService,
    private activatedRoute: ActivatedRoute,
    private router: Router,
    private formBuilder: FormBuilder
  ) {
    const id: string = activatedRoute.snapshot.params['id'];
    if (!id) {
      router.navigate(['group']).then(() => {
        return;
      });
    } else {
      groupService.getGroup(id).subscribe((group: Group) => {
        this.group = group;
      });
    }
  }

}
