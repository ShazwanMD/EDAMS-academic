import { StudentContactEditorDialog } from './../dialog/student-contact-editor.dialog';
import { ProfileActions } from './../../profile/profile.action';
import { Observable } from 'rxjs/Observable';
import { MdDialog, MdDialogRef, MdDialogConfig } from '@angular/material';
import { FormBuilder } from '@angular/forms';
import { StudentProfileModuleState } from './../index';
import { Store } from '@ngrx/store';
import { StudentProfileActions } from './../student-profile.action';
import { Component, OnInit, ViewContainerRef, Input, ChangeDetectionStrategy, Output, EventEmitter } from '@angular/core';
import { Router, ActivatedRoute } from "@angular/router";
import { Student } from "../../../shared/model/identity/student.interface";
import { Address } from "../../../shared/model/profile/address.interface";
import { Guarantor } from "../../../shared/model/profile/guarantor.interface";
import { Guardian } from "../../../shared/model/profile/guardian.interface";
import { Contact } from "../../../shared/model/profile/contact.interface";
import { Enrollment } from "../../../shared/model/term/enrollment.interface";
import { OfferingUpdateDialog } from "../../term/offerings/dialog/offering-update.dialog";
import { AdmissionApplicationTaskCreatorDialog } from "../../term/admission-applications/dialog/admission-application-task-creator.dialog";
import { AdmissionApplicationTaskDialog } from "../../term/admission-applications/dialog/admission-application-task.dialog";
import { StudentGuardianEditorDialog } from "../dialog/student-guardian-editor.dialog";
import { StudentGuarantorEditorDialog } from "../dialog/student-guarantor-editor.dialog";


@Component({
    selector: 'pams-student-profile-list',
    templateUrl: 'student-profile-list.component.html',
    changeDetection: ChangeDetectionStrategy.OnPush,
})
export class StudentProfileListPage implements OnInit {

    private studentContactEditorDialogRef: MdDialogRef<StudentContactEditorDialog>;
    private studentGuardianCreatorDialogRef: MdDialogRef<StudentGuardianEditorDialog>;
    private studentGuarantorCreatorDialogRef: MdDialogRef<StudentGuarantorEditorDialog>;
    private creatorDialogRef: MdDialogRef<AdmissionApplicationTaskDialog>;
    //inputs

    @Input() student: Student;
    @Output() view = new EventEmitter<Student>();

    @Input() addressess: Address[];
    @Input() guarantors: Guarantor[];
    @Input() guardians: Guardian[];
    @Input() contacts: Contact[];
    @Input() enrollments: Enrollment[];


    //Constructor
    constructor(private router: Router,
        private route: ActivatedRoute,
        private actions: StudentProfileActions,
        private profileActions: ProfileActions,
        private vcf: ViewContainerRef,
        private store: Store<StudentProfileModuleState>,
        private formBuilder: FormBuilder,
        private dialog: MdDialog) {

    }

    //Address
    private columnAddr: any[] = [
        { name: 'addressType', label: 'Address Type' },
        { name: 'address1', label: 'Address 1' },
        { name: 'address2', label: 'Address 2' },
        { name: 'address3', label: 'City' },
        { name: 'postcode', label: 'Postcode' },
        { name: 'stateCode.description', label: 'State' },
        { name: 'countryCode.description', label: 'Country' },
        { name: 'action', label: 'Action' },
    ];

    //Guarantor
    private columnGuarantor: any[] = [
        { name: 'guarantorType', label: 'Guarantor Type' },
        { name: 'identityNo', label: 'Identity No' },
        { name: 'name', label: 'Name' },
        { name: 'phone', label: 'Mobile No' },
        { name: 'action', label: 'Action' },
    ];

    //Guardian
    private columnGuardian: any[] = [
        { name: 'guardianType', label: 'Guardian Type' },
        { name: 'identityNo', label: 'Identity No' },
        { name: 'name', label: 'Name' },
        { name: 'phone', label: 'Mobile No' },
        { name: 'action', label: 'Action' },
    ];

    //Contact
    private columnContact: any[] = [
        { name: 'contactType', label: 'Contact Type' },
        { name: 'name', label: 'Name' },
        { name: 'phone', label: 'Mobile No' },
        { name: 'action', label: 'Action' },
    ];
    goBack(route: string): void {
        this.router.navigate(['/studentProfile']);
    }

    ngOnInit(): void {
        // this.route.params.subscribe((params: { identityNo: string }) => {
        //     let identityNo: string = params.identityNo;
        //     this.store.dispatch(this.profileActions.findStudentByIdentityNo(this.student.identityNo));
        // });
    }

    /*=========================================================================================*/
    /*CONTACT*/
    /*=========================================================================================*/
    //ADD CONTACT DIALOG
    addContactDialog(): void {
        console.log('Add Contact');
        console.log("Add Contact" + this.student.identityNo);
        let config = new MdDialogConfig();
        config.viewContainerRef = this.vcf;
        config.role = 'dialog';
        config.width = '70%';
        config.height = '80%';
        config.position = { top: '0px' };
        this.studentContactEditorDialogRef = this.dialog.open(StudentContactEditorDialog, config);
        this.studentContactEditorDialogRef.componentInstance.student = this.student;
        this.studentContactEditorDialogRef.afterClosed().subscribe((res) => {
        });
    }

    //EDIT CONTACT DIALOG
    editContactDialog(contact: Contact, isValid: boolean): void {
        console.log("Editing Contact");
        console.log("EditContact" + this.student.identityNo);
        let config = new MdDialogConfig();
        config.viewContainerRef = this.vcf;
        config.role = 'dialog';
        config.width = '70%';
        config.height = '80%';
        config.position = { top: '0px' };
        this.studentContactEditorDialogRef = this.dialog.open(StudentContactEditorDialog, config);
        this.studentContactEditorDialogRef.componentInstance.contact = contact;
        this.studentContactEditorDialogRef.componentInstance.student = this.student;
        this.studentContactEditorDialogRef.afterClosed().subscribe((res) => {
        });
    }

    //DELETE CONTACT
    deleteContact(contact: Contact): void {
        console.log(this.student.identityNo);
        console.log(contact);
        this.store.dispatch(this.actions.deleteStudentContact(this.student.identityNo, contact));
        //console.log("ini->",contact);
    }

    /*=========================================================================================*/
    /*GUARDIAN*/
    /*=========================================================================================*/
    //ADD GUARDIAN DIALOG
    addGuardianDialog(): void {
        console.log('add Student Guardian');
        let config = new MdDialogConfig();
        config.viewContainerRef = this.vcf;
        config.role = 'dialog';
        config.width = '70%';
        config.height = '80%';
        config.position = { top: '0px' };
        this.studentGuardianCreatorDialogRef = this.dialog.open(StudentGuardianEditorDialog, config);
        this.studentGuardianCreatorDialogRef.componentInstance.student = this.student;
        this.studentGuardianCreatorDialogRef.afterClosed().subscribe((res) => {
            console.log('close dialog');
        });
    }

    //EDIT GUARDIAN DIALOG
    editGuardianDialog(guardian: Guardian, isValid: boolean): void {
        console.log('edit Student Guardian');
        let config = new MdDialogConfig();
        config.viewContainerRef = this.vcf;
        config.role = 'dialog';
        config.width = '70%';
        config.height = '80%';
        config.position = { top: '0px' };
        this.studentGuardianCreatorDialogRef = this.dialog.open(StudentGuardianEditorDialog, config);
        this.studentGuardianCreatorDialogRef.componentInstance.guardian = guardian;
        this.studentGuardianCreatorDialogRef.componentInstance.student = this.student;
        this.studentGuardianCreatorDialogRef.afterClosed().subscribe((res) => {
        });
    }

    //DELETE GUARDIAN
    deleteGuardian(guardian: Guardian): void {
        console.log(this.student.identityNo);
        this.store.dispatch(this.actions.deleteStudentGuardian(this.student.identityNo, guardian));
    }


    /*=========================================================================================*/
    /*GUARANTOR*/
    /*=========================================================================================*/
    //ADD GUARANTOR DIALOG
    addGuarantorDialog(): void {
        console.log("add student guarantor");
        let config = new MdDialogConfig();
        config.viewContainerRef = this.vcf;
        config.role = 'dialog';
        config.width = '70%';
        config.height = '80%';
        config.position = { top: '0px' };
        this.studentGuarantorCreatorDialogRef = this.dialog.open(StudentGuarantorEditorDialog, config);
        this.studentGuarantorCreatorDialogRef.componentInstance.student = this.student;
        this.studentGuarantorCreatorDialogRef.afterClosed().subscribe((res) => {
            //console.log("close dialog");
        });
    }

    //EDIT GUARANTOR DIALOG
    editGuarantorDialog(guarantor: Guarantor, isValid: boolean): void {
        console.log("edit student guarantor");
        let config = new MdDialogConfig();
        config.viewContainerRef = this.vcf;
        config.role = 'dialog';
        config.width = '70%';
        config.height = '80%';
        config.position = { top: '0px' };
        this.studentGuarantorCreatorDialogRef = this.dialog.open(StudentGuarantorEditorDialog, config);
        this.studentGuarantorCreatorDialogRef.componentInstance.guarantor = guarantor;
        this.studentGuarantorCreatorDialogRef.componentInstance.student = this.student;
        this.studentGuarantorCreatorDialogRef.afterClosed().subscribe((res) => {
        
        });
    }

    //DELETE GUARANTOR
    deleteGuarantor(guarantor: Guarantor): void {
        this.store.dispatch(this.actions.deleteStudentGuarantor(this.student.identityNo, guarantor));
    }

    //SEMESTER REGISTRATION
    semesterRegister(): void {
        console.log('showDialog');
        console.log(this.student);
        let config = new MdDialogConfig();
        config.viewContainerRef = this.vcf;
        config.role = 'dialog';
        config.width = '60%';
        config.height = '70%';
        config.position = { top: '0px' };
        this.creatorDialogRef = this.dialog.open(AdmissionApplicationTaskDialog, config);
        this.creatorDialogRef.componentInstance.student = this.student;
        this.creatorDialogRef.afterClosed().subscribe((res) => {
            console.log('close dialog');
            // load something here
        });
    }


}