import {AfterViewInit, Component, OnInit} from '@angular/core';
import {Title} from '@angular/platform-browser';
import {TdLoadingService} from '@covalent/core';

@Component({
  selector: 'pams-home',
  templateUrl: './home.page.html',
  styleUrls: ['./home.page.scss'],
})

export class HomePage implements OnInit, AfterViewInit {

  private items: Object[];

  constructor(private _titleService: Title,
              private _loadingService: TdLoadingService) {
  }

  ngAfterViewInit(): void {
    this._titleService.setTitle('EDAMS Universiti Malaysia Kelantan');
  }

  ngOnInit(): void {
    {
      this.items = [
        // {
        //   title: 'Intake',
        //   route: 'http://edams.umk.edu.my:8082',
        //   icon: 'assignment',
        //   color: 'blue-700',
        //   description: '',
        // }
        // ,
        {
          title: 'Academic',
          route: '/login',
          icon: 'assignment',
          color: 'blue-700',
          description: '',
        },
        // {
        //   title: 'Account',
        //   route: '/login',
        //   icon: 'assignment',
        //   color: 'blue-700',
        //   description: '',
        // },
      ];
    }
  }
}
