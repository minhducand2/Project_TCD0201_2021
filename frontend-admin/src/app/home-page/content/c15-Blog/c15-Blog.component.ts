import { Component, OnInit, Inject, ViewChild, OnDestroy, AfterViewInit, ElementRef, Output, EventEmitter } from '@angular/core';
import { ApiService } from '../../../common/api-service/api.service';
import { MatDialog, MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';
import { MatTableDataSource } from '@angular/material/table';
import { MatPaginator } from '@angular/material/paginator';
import { MatSort } from '@angular/material/sort';
import { Observable, Observer, Subscription } from 'rxjs';
import { SelectionModel } from '@angular/cdk/collections';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { HttpClient, HttpEventType } from '@angular/common/http';

@Component({
  selector: 'app-c15-Blog',
  templateUrl: './c15-Blog.component.html',
  styleUrls: ['./c15-Blog.component.scss'],
})
export class C15BlogComponent implements OnInit, AfterViewInit, OnDestroy {

  //subscription
  subscription: Subscription[] = [];

  /** for table */
  displayedColumns: string[] = [
    'select',
    'id',
    'IdBlogCategories',
    'Title',
    'Thumbnail',
    'Description',
    'Content',
    'NumberView',
    'CreatedAt',
    'UpdatedAt',

    'edit',
  ];

  dataSource: MatTableDataSource<any>;

  @ViewChild(MatPaginator, { static: false }) paginator: MatPaginator;
  @ViewChild(MatSort, { static: false }) sort: MatSort;

  applyFilter(filterValue: string) {
    this.dataSource.filter = filterValue.trim().toLowerCase();

    if (this.dataSource.paginator) {
      this.dataSource.paginator.firstPage();
    }
  }

  selection = new SelectionModel<any>(true, []);

  // update pagination
  pageIndex = 0;
  pageLength = 0;
  pageSize = 10;
  pageSizeOptions: number[] = [10, 20, 50, 100];

  /**
   * getLengthOfPage
   */
  getLengthOfPage() {
    const param = { condition: this.conditonFilter };
    this.subscription.push(
      this.api.excuteAllByWhat(param, '1406').subscribe((data) => {
        // data = data['result']; 
        if (data.length > 0) {
          this.pageLength = data[0]['CountPage'];
        } else {
          this.pageLength = 0;
        }
      })
    );
  }

  /**
   * onPageChange
   */
  onPageChange(event) {
    this.pageSize = event.pageSize;
    this.pageIndex = event.pageIndex;

    this.onLoadDataGrid();
  }

  /** Whether the number of selected elements matches the total number of rows. */
  isAllSelected() {
    if (this.dataSource) {
      const numSelected = this.selection.selected.length;
      const numRows = this.dataSource.data.length;
      return numSelected === numRows;
    }
    return null;
  }

  /** Selects all rows if they are not all selected; otherwise clear selection. */
  masterToggle() {
    this.isAllSelected()
      ? this.selection.clear()
      : this.dataSource.data.forEach((row) => this.selection.select(row));
  }

  /** The label for the checkbox on the passed row */
  checkboxLabel(row?: any): string {
    if (!row) {
      return `${this.isAllSelected() ? 'select' : 'deselect'} all`;
    }
    return `${this.selection.isSelected(row) ? 'deselect' : 'select'} row ${row.position + 1
      }`;
  }
  // end for table;

  // data reference binding
  BlogCategoriesDatas: any[] = [];


  // role
  staff: any;

  // data permission
  isPermissionMenu1: boolean = false;

  // condition fillter
  conditonFilter: string = '';
  conditions: any[] = [];

  // model
  IdBlogCategoriesModel: any = '0';


  /**
   * constructor
   * @param api
   * @param dialog
   */
  constructor(
    private api: ApiService,
    private router: Router,
    public dialog: MatDialog
  ) {
    // load permission
    this.onLoadPermission();
  }

  /**
   * ngOnInit
   */
  ngOnInit() {
    // load data reference
    this.loadDataReference();

    // load data user
    this.onLoadDataGrid();
  }

  /**
  * ng After View Init
  */
  ngAfterViewInit(): void {
    // scroll top screen
    window.scroll({ left: 0, top: 0, behavior: 'smooth' });
  }

  /**
   * ngOnDestroy
   */
  ngOnDestroy() {
    this.subscription.forEach((item) => {
      item.unsubscribe();
    });
  }

  /**
   * onLoadPermission
   */
  onLoadPermission() {
    this.staff = this.api.accountSubject.value;
    const param = {
      idUser: this.staff.id,
      url: this.router.url,
    };

    this.subscription.push(
      this.api.excuteAllByWhat(param, '111').subscribe((data) => {
        // data = data['result']; 
        if (data.length > 0) {
          // Status is Admin
          if (data[0].Status == '2') {
            this.isPermissionMenu1 = true;
          }
        }
      })
    );
  }

  /**
   * load Data reference
   */
  loadDataReference() {
    // load list BlogCategories
    this.getListBlogcategories();


  }

  /**                                                            
   * get list BlogCategories
   */
  getListBlogcategories() {
    this.subscription.push(this.api.excuteAllByWhat({}, '1300')
      .subscribe((data) => {
        // data = data['result'];   
        data.unshift({ id: '0', Name: 'All' });
        this.BlogCategoriesDatas = data;
      })
    );
  }

  /**                                                            
   * get name display BlogCategories by id     
   */
  getDisplayBlogcategoriesById(id) {
    return this.BlogCategoriesDatas.filter((e) => e.id == id)[0]?.Name;
  }



  /**                                                        
   * on BlogCategories Selection Change             
   * @param event                                            
   */
  onBlogCategoriesSelectionChange(event) {
    const condition = { key: "IdBlogCategories", value: event.value };

    // add new condition to list                             
    this.addNewConditionToList(condition);
  }


  /**
   * add New Condition To List
   * @param condition
   */
  addNewConditionToList(condition) {
    // check exists
    let flg = false;
    let i;

    // check condition exists
    for (i = 0; i < this.conditions.length; i++) {
      if ((this.conditions[i].key == condition.key)) {
        flg = true;
        break;
      }
    }

    // remove old key
    if (flg) {
      this.conditions.splice(i, 1);
    }

    // insert new seach condition if !=0
    if (condition.value != '0') {
      this.conditions.splice(0, 0, condition);
    }

    // render new condition filter
    this.createConditionFilter();

    // load grid with new condition
    this.onLoadDataGrid();
  }

  /**
   * create Condition Filter
   */
  createConditionFilter() {
    this.conditonFilter = '';
    this.conditions.forEach((item) => {
      if (this.conditonFilter == '') {
        this.conditonFilter = item.key + " = '" + item.value + "'";
      } else {
        this.conditonFilter += ' AND ' + item.key + " = '" + item.value + "'";
      }
    });
    if (this.conditonFilter != '') {
      this.conditonFilter = ' WHERE ' + this.conditonFilter;
    }
  }

  /**
   * get data grid
   */
  onLoadDataGrid() {
    // get Length Of Page
    this.getLengthOfPage();

    const param = {
      'condition': this.conditonFilter,
      'offset': Number(this.pageIndex * this.pageSize),
      'limit': this.pageSize
    };

    this.subscription.push(
      this.api.excuteAllByWhat(param, '1405').subscribe((data) => {
        // data = data['result']; 
        if (data.length > 0) {
          // set data for table
          this.dataSource = new MatTableDataSource(data);
        } else {
          this.dataSource = new MatTableDataSource([]);
        }

        this.dataSource.sort = this.sort;
        this.selection = new SelectionModel<any>(true, []);
      })
    );
  }


  /**
   * on Delete Click
   */
  onBtnDelClick() {
    // get listId selection example: listId='1,2,6'
    let listId = '';
    this.selection.selected.forEach((item) => {
      if (listId == '') {
        listId += item.id;
      } else {
        listId += ',' + item.id;
      }
    });

    const param = { listid: listId };

    // start delete
    if (listId !== '') {
      this.subscription.push(
        this.api.excuteAllByWhat(param, '1403').subscribe((data) => {
          if (!data.isError) {
            // load data grid
            this.onLoadDataGrid();

            //scroll top
            window.scroll({ left: 0, top: 0, behavior: 'smooth' });

            // show toast success
            this.api.showSuccess('X??a th??nh c??ng.');
          } else {
            // load data grid
            this.onLoadDataGrid();

            //scroll top
            window.scroll({ left: 0, top: 0, behavior: 'smooth' });

            // show error
            this.api.showError('X??a kh??ng th??nh c??ng');
            console.log('Error: ', data.error);
          }
        })
      );
    } else {
      // show toast warning
      this.api.showWarning('Vui l??ng ch???n 1 m???c ????? x??a.');
    }
    this.selection = new SelectionModel<any>(true, []);
  }

  /**
   * on insert data
   * @param event
   */
  onBtnInsertDataClick() {
    const dialogRef = this.dialog.open(C15BlogDialog, {
      width: '100%',
      height: '100%',
      maxWidth: '100%',
      maxHeight: '100%',
      data: {
        type: 0,
        id: 0,
        IdBlogCategoriesModel: this.IdBlogCategoriesModel,

      },
      panelClass: 'custom-dialog',
    });

    dialogRef.afterClosed().subscribe((result) => {
      if (result) {
        this.onLoadDataGrid();
      }
    });
  }

  /**
   * on update data
   * @param event
   */
  onBtnUpdateDataClick(row) {
    const dialogRef = this.dialog.open(C15BlogDialog, {
      width: '100%',
      height: '100%',
      maxWidth: '100%',
      maxHeight: '100%',
      data: { type: 1, input: row },
      panelClass: 'custom-dialog',
    });

    dialogRef.afterClosed().subscribe((result) => {
      if (result) {
        this.onLoadDataGrid();
      }
    });
  }
}

/**
 * Component show th??ng tin ????? insert ho???c update
 */
@Component({
  selector: 'c15-Blog-dialog',
  templateUrl: 'c15-Blog-dialog.html',
  styleUrls: ['./c15-Blog.component.scss'],
})
export class C15BlogDialog implements OnInit, OnDestroy {

  observable: Observable<any>;
  observer: Observer<any>;
  type: number;

  //subscription
  subscription: Subscription[] = [];

  // init input value
  input: any = {
    IdBlogCategories: '',
    Title: '',
    Thumbnail: '',
    Description: '',
    Content: '',
    NumberView: '',
    CreatedAt: '',
    UpdatedAt: '',

  };

  //form
  form: FormGroup;

  // sex
  sexs: any[] = [
    { value: '1', viewValue: 'Nam' },
    { value: '0', viewValue: 'N???' },
  ];

  // data reference binding
  BlogCategoriesDatas: any[] = [];


  // binding uploads image or file
  public progress: number;
  public message: string;
  @Output() public onUploadFinished = new EventEmitter();
  // isUpdate
  isUpdate: boolean = false;

  /**
   * constructor
   * @param dialogRef
   * @param data
   * @param api
   * @param formBuilder
   */
  constructor(
    public dialogRef: MatDialogRef<C15BlogDialog>,
    @Inject(MAT_DIALOG_DATA) public data: any,
    private api: ApiService,
    private formBuilder: FormBuilder,
    private http: HttpClient
  ) {
    this.type = data.type;

    // n???u l?? update
    if (this.type == 1) {
      this.input = data.input;
    } else {
      // mapping data filter
      this.input.IdBlogCategories = data.IdBlogCategoriesModel;
      this.input.CreatedAt = new Date();
      this.input.UpdatedAt = new Date();
    }

    // add validate for controls
    this.form = this.formBuilder.group({
      IdBlogCategories: [
        null,
        [
          Validators.required,
        ],
      ],
      Title: [
        null,
        [
          Validators.required,
        ],
      ],
      Thumbnail: [
        null,
        [ 
        ],
      ],
      Description: [
        null,
        [
          Validators.required,
        ],
      ],
      Content: [
        null,
        [
          Validators.required,
        ],
      ],
      NumberView: [
        null,
        [
          Validators.required,
        ],
      ],
      CreatedAt: [
        null,
        [
          Validators.required,
        ],
      ],
      UpdatedAt: [
        null,
        [
          Validators.required,
        ],
      ],

    });

    // x??? l?? b???t ?????ng b???
    this.observable = Observable.create((observer: any) => {
      this.observer = observer;
    });
  }

  /**
   * onInit
   */
  ngOnInit() {
    // get data reference
    this.loadDataReference()
  }

  /**
   * ngOnDestroy
   */
  ngOnDestroy() {
    this.subscription.forEach((item) => {
      item.unsubscribe();
    });
  }

  /**
   * load Data reference
   */
  loadDataReference() {
    // load list BlogCategories
    this.getListBlogcategories();


  }

  /**                                                            
   * get list BlogCategories
   */
  getListBlogcategories() {
    this.subscription.push(this.api.excuteAllByWhat({}, '1300')
      .subscribe((data) => {
        // data = data['result'];   
        data.forEach(element => {
          element.id += '';
        });
        this.BlogCategoriesDatas = data;
      })
    );
  }


  public uploadFile = (files) => {
    if (files.length === 0) {
      return;
    }
    let fileToUpload = <File>files[0];
    const formData = new FormData();
    formData.append('file', fileToUpload, fileToUpload.name);
    this.http.post(this.api.IMAGE_UPLOAD_URL, formData, { reportProgress: true, observe: 'events' })
      .subscribe(event => {
        if (event.type === HttpEventType.UploadProgress)
          this.progress = Math.round(100 * event.loaded / event.total);
        else if (event.type === HttpEventType.Response) {
          this.message = 'Upload success.';
          this.onUploadFinished.emit(event.body);
          this.input.Thumbnail = this.api.BASEURL + event.body['dbPath'];
        }
      });
  }


  /**
   * on Btn Submit Click
   */
  onBtnSubmitClick(): void {
    // disable button update
    this.isUpdate = true;

    // touch all control to show error
    this.form.markAllAsTouched();
    this.input.CreatedAt = this.api.formatDateDOTNET(new Date(this.input.CreatedAt));
    this.input.UpdatedAt = this.api.formatDateDOTNET(new Date(this.input.UpdatedAt));


    // check form pass all validate
    if (!this.form.invalid) {
      // if type = 0 insert else update
      this.subscription.push(this.api.excuteAllByWhat(this.input, '' + Number(1401 + this.type) + '')
        .subscribe((data) => {
          if (!data.isError) {
            this.dialogRef.close(true);
            this.api.showSuccess('X??? l?? th??nh c??ng !');
          } else {
            this.api.showError('X??? l?? kh??ng th??nh c??ng !');
            console.log('Error: ', data.error);
          }
        })
      );
    }
  }
}
