unit Mars2022;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Styles, Vcl.Menus, Vcl.ExtCtrls, Vcl.WinXPanels, Vcl.Themes,
  Vcl.TitleBarCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.ValEdit, Vcl.Buttons,
  Vcl.ComCtrls, System.ImageList, Vcl.ImgList, Vcl.ControlList, Vcl.Imaging.jpeg, IdStrings,
  Vcl.Tabs, COMObj;

type
  TMars = class(TForm)
    MainController: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    reactorGroup: TRadioGroup;
    tvsTypeGroup: TRadioGroup;
    radioPanel: TGridPanel;
    TabSheet4: TTabSheet;
    shellGroup: TRadioGroup;
    tvsMaterialGroup: TRadioGroup;
    matrixMaterialGroup: TRadioGroup;
    fuelMaterialGroup: TRadioGroup;
    startDataPanel: TPanel;
    AcceptStartDataBtn: TButton;
    TrController: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Panel1: TPanel;
    ResultsPanel: TPanel;
    ScrollBox1: TScrollBox;
    TaskPanel: TPanel;
    DataPanel: TPanel;
    TasksControll: TTabSet;
    DataGrid: TGridPanel;
    Button1: TButton;
    NOfReactorCaption: TEdit;
    NOfReactor: TEdit;
    AZCompanyCaption: TEdit;
    AZCompany: TEdit;
    TOfTeplInputCaption: TEdit;
    TOfTeplInput: TEdit;
    MassRashParCaption: TEdit;
    MassRashPar: TEdit;
    DavlTeplV1KontureCaption: TEdit;
    DavlTeplV1Konture: TEdit;
    OtnRashTeplCherezKassetyCaption: TEdit;
    OtnRashTeplCherezKassety: TEdit;
    TolshinaCylindrObechKassetyCaption: TEdit;
    TolshinaCylindrObechKassety: TEdit;
    TolshinaKozhKassetCaption: TEdit;
    TolshinaKozhKasset: TEdit;
    TolshObolochTvelaCaption: TEdit;
    TolshObolochTvela: TEdit;
    TolshGeliyZazorCaption: TEdit;
    TolshGeliyZazor: TEdit;
    ChisloRyadovTvelovCaption: TEdit;
    ChisloRyadovTvelov: TEdit;
    KoefNeravnTeplovPoRadAzCaption: TEdit;
    KoefNeravnTeplovPoRadAz: TEdit;
    KoefNeravnVygoraniyaCaption: TEdit;
    KoefNeravnVygoraniya: TEdit;
    RactorTypeCaption: TEdit;
    ReactorTypeInput: TEdit;
    CasseteTypeCaption: TEdit;
    CasseteTypeInput: TEdit;
    TeplMaterialObolochkiCaption: TEdit;
    TeplMaterialObolochki: TEdit;
    TeplToplivaCaption: TEdit;
    TeplTopliva: TEdit;
    Task1Panel: TPanel;
    Task2Panel: TPanel;
    Task3Panel: TPanel;
    Task4Panel: TPanel;
    Task5Panel: TPanel;
    Task6Panel: TPanel;
    Task7Panel: TPanel;
    GridPanel1: TGridPanel;
    HkdTask1Caption: TEdit;
    HkdTask1: TEdit;
    PredDopVigorTask1Caption: TEdit;
    PredDopVigorTask1: TEdit;
    ZadanSredZnachSkorTeplNaVhVazTask1Caption: TEdit;
    ZadanSredZnachSkorTeplNaVhVazTask1: TEdit;
    DolVodVyachTask1Caption: TEdit;
    DolVodVyachTask1: TEdit;
    GridPanel2: TGridPanel;
    HkdTask2Caption: TEdit;
    HkdTask2: TEdit;
    ZazorMezhdCassetTask2Caption: TEdit;
    ZazorMezhdCassetTask2: TEdit;
    PredDopVigorTask2Caption: TEdit;
    PredDopVigorTask2: TEdit;
    ZadanSredZnachSkorTeplNaVhodVazTask2Caption: TEdit;
    ZadanSredZnachSkorTeplNaVhodVazTask2: TEdit;
    GridPanel3: TGridPanel;
    DiamTvelaTask3Caption: TEdit;
    DiamTvelaTask3: TEdit;
    ZazorMezhdTvelamiTask3Caption: TEdit;
    ZazorMezhdTvelamiTask3: TEdit;
    ZazorMezhdCassetTask3Caption: TEdit;
    ZazorMezhdCassetTask3: TEdit;
    PredDopVigorTask3Caption: TEdit;
    PredDopVigorTask3: TEdit;
    ZadanSredZnachSkorTeplNaVhodVazTask3Caption: TEdit;
    ZadanSredZnachSkorTeplNaVhodVazTask3: TEdit;
    GridPanel4: TGridPanel;
    DiamTvelaTask4Caption: TEdit;
    DiamTvelaTask4: TEdit;
    ZazorMezhdTvelamiTask4Caption: TEdit;
    ZazorMezhdTvelamiTask4: TEdit;
    ZazorMezhdCassetTask4Caption: TEdit;
    ZazorMezhdCassetTask4: TEdit;
    HkdTask4Caption: TEdit;
    HkdTask4: TEdit;
    PredDopVigorTask4Caption: TEdit;
    PredDopVigorTask4: TEdit;
    GridPanel5: TGridPanel;
    DiamTvelaTask5Caption: TEdit;
    DiamTvelaTask5: TEdit;
    ZazorMezhdTvelamiTask5Caption: TEdit;
    ZazorMezhdTvelamiTask5: TEdit;
    ZazorMezhdCassetTask5Caption: TEdit;
    ZazorMezhdCassetTask5: TEdit;
    ChisloCassetTask5Caption: TEdit;
    ChisloCassetTask5: TEdit;
    PredDopVigorTask5Caption: TEdit;
    PredDopVigorTask5: TEdit;
    GridPanel6: TGridPanel;
    DiamTvelaTask6Caption: TEdit;
    DiamTvelaTask6: TEdit;
    ZazorMezhdCassetTask6Caption: TEdit;
    ZazorMezhdCassetTask6: TEdit;
    ChisloCassetTask6Caption: TEdit;
    ChisloCassetTask6: TEdit;
    PredDopVigorTask6Caption: TEdit;
    PredDopVigorTask6: TEdit;
    ZadanSredZnachSkorTeplNaVhodVazTask6Caption: TEdit;
    ZadanSredZnachSkorTeplNaVhodVazTask6: TEdit;
    GridPanel7: TGridPanel;
    DiamTvelaTask7Caption: TEdit;
    DiamTvelaTask7: TEdit;
    ZazorMezhdTvelamiTask7Caption: TEdit;
    ZazorMezhdTvelamiTask7: TEdit;
    ZazorMezhdCassetTask7Caption: TEdit;
    ZazorMezhdCassetTask7: TEdit;
    ChisloCassetTask7Caption: TEdit;
    ChisloCassetTask7: TEdit;
    VisotaAzTask7Caption: TEdit;
    VisotaAzTask7: TEdit;
    TOfTeplOutputCaption: TEdit;
    TOfTeplOutput: TEdit;
    ScrollBox2: TScrollBox;
    Button3: TButton;
    GridPanel8: TGridPanel;
    TR_ReactorTypeResultOutputCaption: TLabel;
    TR_ReactorTypeResultOutput: TEdit;
    TR_CassetTypeResultOutputCaption: TLabel;
    TR_CassetTypeResultOutput: TEdit;
    TR_TaskNumberResultOutput: TLabel;
    TR_ShellMaterialTypeResultOutputCaption: TLabel;
    TR_ShellMaterialTypeResultOutput: TEdit;
    TR_FuelTypeResultOutputCaption: TLabel;
    TR_FuelTypeResultOutput: TEdit;
    Button2: TButton;
    TabData: TStringGrid;
    Tab: TStringGrid;
    FrController: TPageControl;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    GridPanel9: TGridPanel;
    GridPanel10: TGridPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    FrTab: TStringGrid;
    GridPanel11: TGridPanel;
    FR_Result_ReactorTypeCaption: TLabel;
    FR_Result_ReactorType: TEdit;
    FR_Result_CassetTypeCaption: TLabel;
    FR_Result_CassetType: TEdit;
    FR_Result_MaterialOblCaption: TLabel;
    FR_Result_MaterialObl: TEdit;
    FR_Result_FuelTypeCaption: TLabel;
    FR_Result_FuelType: TEdit;
    FR_Result_CassetMaterialCaption: TLabel;
    FR_Result_CassetMaterial: TEdit;
    FR_Result_MatrixMaterialCaption: TLabel;
    FR_Result_MatrixMaterial: TEdit;
    ScrollBox3: TScrollBox;
    GridPanel12: TGridPanel;
    FR_ReactorTypeCaption: TLabel;
    FR_ReactorType: TEdit;
    FR_CassetTypeCaption: TLabel;
    FR_CassetType: TEdit;
    FR_MaterialOblCaption: TLabel;
    FR_MaterialObl: TEdit;
    FR_FuelCaption: TLabel;
    FR_Fuel: TEdit;
    FR_CassetMaterialCaption: TLabel;
    FR_CassetMaterial: TEdit;
    FR_MatrixMaterialCaption: TLabel;
    FR_MatrixMaterial: TEdit;
    GridPanel13: TGridPanel;
    FR_ChisloAtomovUrVMollekuleGorCaption: TEdit;
    FR_ChisloAtomovUrVMollekuleGor: TEdit;
    FR_ChisloAtomIogoElemVMollekuleGorCaption: TEdit;
    FR_ChisloAtomIogoElemVMollekuleGor: TEdit;
    FR_MolekulVesGorCaption: TEdit;
    FR_MolekulVesGor: TEdit;
    FR_PlotnGorCaption: TEdit;
    FR_PlotnGor: TEdit;
    FR_MicroSechZahvNeitrYadrIogoElementaToplivaCaption: TEdit;
    FR_MicroSechZahvNeitrYadrIogoElementaTopliva: TEdit;
    FR_MicroSechRassNeitrYadrIogoElemToplCaption: TEdit;
    FR_MicroSechRassNeitrYadrIogoElemTopl: TEdit;
    FR_MacroSechZahvNeitrMaterObolTvelaCaption: TEdit;
    FR_MacroSechZahvNeitrMaterObolTvela: TEdit;
    FR_MacroSechRassNeitrMaterOblTvelaCaption: TEdit;
    FR_MacroSechRassNeitrMaterOblTvela: TEdit;
    FR_MacroSechZahvNeitrKonstrMaterCassetCaption: TEdit;
    FR_MacroSechZahvNeitrKonstrMaterCasset: TEdit;
    FR_MacroSechRassNeitrKonstrMaterCassetCaption: TEdit;
    FR_MacroSechRassNeitrKonstrMaterCasset: TEdit;
    FR_MacroSechZahvNeitrMaterMatrCaption: TEdit;
    FR_MacroSechZahvNeitrMaterMatr: TEdit;
    FR_MacroSechRassNeitrMaterMatrCaption: TEdit;
    FR_MacroSechRassNeitrMaterMatr: TEdit;
    FR_DopDolGorvToplComposCaption: TEdit;
    FR_DopDolGorvToplCompos: TEdit;
    FR_DolGorOrObogashCombobox: TComboBox;
    FR_DolGorOrObogash: TEdit;
    Button4: TButton;
    ScrollBox4: TScrollBox;
    Panel6: TPanel;
    GridPanel14: TGridPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Panel7: TPanel;
    GridPanel15: TGridPanel;
    Edit1: TEdit;
    Edit14: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    ComboBox1: TComboBox;
    TabSheet9: TTabSheet;
    GridPanel16: TGridPanel;
    DarkThemeModeCheckBox: TCheckBox;
    TR_Excel: TButton;
    ToFr: TButton;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Image1: TImage;
    Image2: TImage;
    GridPanel17: TGridPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    FR_excelOut: TButton;
    TabSheet10: TTabSheet;
    procedure FormCreate(Sender: TObject);

    procedure MainControllerChange(Sender: TObject);
    procedure reactorGroupContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure FormResize(Sender: TObject);
    procedure AcceptStartDataBtnClick(Sender: TObject);
    procedure TasksControllClick(Sender: TObject);
    procedure TrControllerChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FR_DolGorOrObogashComboboxSelect(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FrControllerChange(Sender: TObject);
    procedure reactorGroupEnter(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DarkThemeModeCheckBoxClick(Sender: TObject);
    procedure ToFrClick(Sender: TObject);
    procedure TR_ExcelClick(Sender: TObject);
    procedure FR_excelOutClick(Sender: TObject);







  private
    { Private declarations }
  public
    
  end;



var
  Mars: TMars;
  //---------------------------- APP STATE (REACT DATA)

  ExcelApp : OleVariant;

  materialsIsset : bool;
  termoIsset : bool;
  MarsTIsset : bool;
  phisTisset : bool;
  physicsIsset : bool;

  notTypicalFuelMaterial : bool;
  notTypicalMatrixMaterial : bool;
  notTypicalCassetteMaterial : bool;
  notTypicalShellMaterial : bool;

  reactorType : String;
  �assetteType : String;
  shellMaterial : String;
  �assetteMaterial : String;
  matrixMaterial : String;
  fuelMaterial : String;
  ErrText : String;

  iter : integer;
  iter1: integer;
  iter2 : integer;
  ip : integer;
  Nvf : integer;

  col1_data1,
  col1_data2,
  col1_data3,
  col1_data4,
  col1_data5,
  col1_data6,
  col1_data7,
  col1_data8,
  col1_data9,
  col1_data10,
  col1_data11,
  col1_data12,
  col1_data13,
  col1_data14,
  col1_data15,
  col1_data16,

  col2_data1,
  col2_data2,
  col2_data3,
  col2_data4,
  col2_data5,
  col2_data6,
  col2_data7,
  col2_data8,
  col2_data9,
  col2_data10,
  col2_data11,
  col2_data12,
  col2_data13,
  col2_data14,
  col2_data15,
  col2_data16,

  col3_data1,
  col3_data2,
  col3_data3,
  col3_data4,
  col3_data5,
  col3_data6,
  col3_data7,
  col3_data8,
  col3_data9,
  col3_data10,
  col3_data11,
  col3_data12,
  col3_data13,
  col3_data14,
  col3_data15,
  col3_data16 : Extended;









































  //-----------------------------------------------------TR DATA

  prim,                        // �������� ������� ����� � ������ �� ���������
  prit: integer;                // � �������
  Polinom,                     // ������� ������ ��������� ������� ���������
  String_data: string;

  Time_calcalation: integer;     // ����� �������
  Redate: boolean;               // ������� �������� � ������ ��������

  Km: extended;                  // ���������� ����������� �����
  StTime,EndTime: TDateTime;    // ����
  Err_txt,                      // ����� ��������� �� ������ �����
  FileBase: string;             // ��� ����� ������� EXCEL
  FileName: string;             // ��� ����� ����������

// ��������� ������ ��������
  Kmk,                         // ������� ���� �������
  Kmr,                         // ������� ���� ��������
  Kmz,                         // ������� ���������� ��������� ��������
  Kmkm,                        // ������� ���������� ��������� �������
  Kmmm,                        // ������� ���������� ��������� �������
  Kmtm,                        // ������� ���������� ��������� ������� �� �������
  Kmt: string;                 // ������� ���������� �������

// ��� �������� ������
  i,                           // ������� ���� �������
  prr: byte;                    // ������� ���� ��������

  k,                           // ����� �������� ������ ��� �������� �������
  t,                           // ��������, ���
  nr,                          // �������� ��������
// �������� ����
//****************���������
  vaz,                         // ����� A3
  daz,                         // ������� A3
  haz,                         // ������ A3
  hkd,                         // ��������� ������ A3 � �� ��������
  nks,                         // ����� ������ � A3
  dlk,                         // ������� ������������� ������ �������
  dltr,                        // ������� �������������� �������� �������
  rvit,                        // ������ ����������, ��������� ������ �������
  dekv,                        // ������������� ������� ������
  kappa2,                      // �������������� �������� A3

//************** �������� ������
  p,                           // �������� �������������
  gaz,                         // ������ ������������� ����� A3
  wsr,                         // ������� �������� �������� ������������� � A3
  tvh,                         // ����������� ������������� �� ����� � A3
  tvih,                        // ����������� ������������� �� ������ �� A3
  tviks,                       // ����������� ������������� �� ������ �� ������
  tvimk,                       // ����������� ������������� �� ������ �� ���
  fjc,                         // ������� ������� ������
  ftv,                         // ������� ������� ������, ���������� ������
  ftop,                        // ������� ������� ������, ���������� ��������
  fob,                         // ������� ������� ������, ���������� ���������� ��������
  fpr,                         // ������� ���������� ������� �������
  fk,                          // ������� ������� ������, ���������� ��������������� ���������� �������
  fh20,                        // ������� ������� ������, ���������� �����
  qmax,                        // ������������ �������� ����� � ����� �������
  qkr,                         // ����������� �������� ����� � A3
  qsr,                         // ������� �������� ����� � A3
  le,                          // ���� A3, ������� �������������
  rtop,                        // ���� ������� � ������
  rh20,                        // ���� ���� � ������ A3
  rk,                          // ���� ��������������� ���������� ������� � ������
  rob,                         // ���� ��������� �������� ����� � ������
  rg,                          // ���� ������� � ��������� ����������
  aa,                          // ����������� ��� ���������� ���� ������ A3, ���������� �������������� ��������
  qv,                          // ������������������� A3
  saz,                         // ����������� ������� A3
  kz,                          // ����������� ��������������� ������������� �������������� �� ������ A3
  kr,                          // ����������� ��������������� ������������� �������������� �� �������
  tmax,                        // ����������� ��������� ����������� ������������� �� ������ �� A3
  ttmax,                       // ������������ ����������� �������
  dks,                         // ������� �������
  rpr,                         // �������������� ������ �������
  kn,                          // ����������� ���������� �� ��������
  kg,                          // ����������� ���������� �������
  tsr,                         // ������� ����������� ����������� � A3
  ts,                          // ����������� ��������� � A3
  dlq,                         // ��������� ���������� ���������
  ddlq,                        // �������������� ��������� ���������� ���������
  dlef,                        // ����������� �������
  kq,                          // ����� �� ������� � ���������� ����� �������
  kqp,                         // ����� �� ������� � ����������� ����� �������
  kqd,                         // ���������� ����� �� �������
  ckt,                         // ���� �������������, ������������ �� ���
  cgk,                         // ���� ������� ������������� ������������ ����� �������
  tkssr,                       // ������� ����������� ������������� � �������
  vkssr,                       // ������� �������� ����� ������������� � �������
  vazsr,                       // ������� �������� ����� ����������� � A3
  iz,                          // ������� �������� ��������� ��� ������� ������ �� �������
  ivh,                         // ��������� ������������� �� ����� � A3
  ivimk,                       // ��������� ������������� �� ������ �� ���
  ivih,                        // ��������� ������������� �� ������ �� A3
  is1,                         // ��������� ���� �� ����� ���������
  iss,                         // ��������� ����������� ����
  iviks,                       // ��������� ������������� �� ������ �� ������
  vvimk,                       // �������� ����� ������������� �� ������ �� ������������� ������������
  vvh,                         // �������� ����� ������������� �� ����� � A3
  vs,                          // �������� ����� ���� �� ����� ���������
  vss,                         // �������� ����� ����������� ����
  visr,                        // ������� �������� ����� ������������� �� ������������� �������
  vesr,                        // ������� �������� ����� ������������� �� �������������� �������
  vmksr,                       // ������� �������� ����� ������������� � ������������ ������������
  wvhd,                        // �������������� �������� �������� ������������� �� ����� � A3
  wvh,                         // �������� ������� �������� �������� ������������� �� ����� � A3
// ����
  dtv,                         // ������� �����
  ztv,                         // ����� ����� � �������
  zr,                          // ����� ����� � �������
  dlob,                        // ������� �������� �����
  dltv,                        // ����� ����� �������
  rh20k,                       // ���� ���� � �������
  dlmk,                        // ����� ����� ���������
  dtop,                        // ������� ���������� �������
  a,                           // ����������� ��� ���������� �������� �����
// �������
  gg,                          // ������� �������� �� ����� ��������
  ggnk,                        // ����� �������� �� ������ ��������
  rog,                         // ��������� ��������
  m,                           // ������������ ��� ��������
  xnk,                         // ���������� �� ������ ��������
  xkk,                         // ���������� �� ����� ��������
  rdop,                        // ���� �������� � ��������� ����������
// ��������������
  fi,                          // ������� �������� �������� ��������������
  betsr,                       // ������� ��������� �������� ��������������
  c,                           // ����������� ��� ������� ��������� ��������� ��������������
  x,                           // �������� �������������� �� ������ �� A3
  xk,                          // �������� �������������� �� ������ �� ������
// ���������� �������������� �����������
  mju,                         // ������������ �������� �������������
  ljob,                        // ����������� ���������������� ��������� �������� �����
  ljhe,                        // ����������� ����������������  �����
  ljt,                         // ����������� ���������������� ��������� �������
  roh20,                       // ��������� ����
// ���������� ������
  fr,                          // �������� �����
  re,                          // �������� ����������
  fin,                         // ���������� �����
  kt1,kt2,                     // ������ � ������ ������������� ��������
  kef,                         // ����������� ����������� ����������� ���������
  ksh20,                       // ����������� ����������� ���� ��� t=20 ����
  kssis,                       // ����������� ����������� ������
  kvosp,                       // ����������� ��������������� �u-239
  dlz,                         // ��� ��������� ������� ���������� ��� ���������� ������ �� �������
  el2,                         // ������� ����� ��������
  eps,                         // ����������� ����������� �� ������� ���������
  vt,                          // ����� ��������� ����������
  dlhe,                        // ������� ��������� ������
  dlg5,                        // ����� ����������� �� �������� U-235
  kv,                          // �������� ����������� ��������������� ��������� ������� � A3
  nh20,                        // ������������ ���� �������� � ������
  ni,                          // ����� ������ i-ro �������� � �������� ��������
  nii,                         // ������������ ���� i-ro �������� � ������
  nu,                          // ����� ������ ����� � �������� ��������
  n5,                          // ������������ ���� U-235 � ������ A3
  n8,                          // ������������ U-238 � ������ A3
  gpu,                         // ����� ��������
  g5,                          // ����� U-235
  g5nk,                        // ����� U-235 �� ������ ��������
  g8,                          // ����� U-238 � A3
  z,                           // ������� ����������
  tng,                         // ����������� ����������� ����
  tau,                         // ������� ���������
  taumax,                      // ����� �� ����������� ������������� ���������� ��������
  sah20,                       // ������������ ������� ��������� ���������� ����
  sai,                         // ������������ ������� ��������� ������ i-ro �������� �������
  sa5,                         // ������������ ������� ��������� U-235
  sa8,                         // ������������ ������� ��������� U-238
  sf5,                         // ������������ ������� ��� U-235
  siah20,                      // ������������ ������� ��������� ���������� ���� ��� ������
  siai,                        // ������������ ������� ��������� ������ i-ro �������� �������
  siajch,                      // ������������ ������� ��������� ������� A3
  siak,                        // ������������ ������� ��������� ��������������� ���������� ������� ��� ������ A3
  siak1,                       // ������������ ������� ��������� ��������������� ���������� �������
  sisak,                       // ������������ ������� ��������� ���������� �������
  siam,                        // ������������ ������� ��������� ���������� ������� ��� ������
  siam1,                       // ������������ ������� ��������� ���������� �������
  siob,                        // ������������ ������� ��������� ���������� �������� ����� ��� ������
  siob1,                       // ������������ ������� ��������� ���������� ��������
  siash1,                      // ������������� ���������� ��������
  siaxe,                       // ������������ ������� ��������� X-135 ��� ������ A3
  sia5,                        // ������������ ������� ��������� U-235 ��� ������ A3
  sia8,                        // ������������ ������� ��������� U-238 ��� ������ A3
  sif,                         // ������������ ������� U-235 ��� ������ A3
  sish20,                      // ������������ ��������� ��������� ���������� ���� ��� ������
  sisi,                        // ������������ ��������� ��������� ������ i-ro �������� ������� ��� ������ A3
  sisjch,                      // ������������ ��������� ����� ������� A3
  sisk,                        // ������������ ��������� ��������� ���������������� ����������� ������� ��� ������ A3
  sisk1,                       // ������������ ��������� ��������� ���������������� ����������� ������
  sism,                        // ������������ ��������� ��������� ���������� ������� ��� ������
  sism1,                       // ������������ ��������� ��������� ����������� �������
  sisob, sisob1,               // ������������ ��������� ��������� ���������� ��������
  sis5,                        // ������������ ��������� ��������� U-235
  sis8,                        // ������������ ��������� ��������� U-238
  ssh20,                       // ������������ ��������� ��������� ���������� ����
  ssi,                         // ������������ ��������� ��������� ������ i-ro �������� �������
  ss5,                         // ������������ ��������� ��������� U-235
  ss8,                         // ������������ ��������� ��������� U-238
  siaob,siaob1,                // ������������ ������� ��������� ���������� �������� ����
  sisobl,                      // ������������ ��������� ��������� ���������� �������� ����
  teta,                        // ����������� ��������� ������������� �� �������� ���������
  pb,                          // ����������� �������� ������ ��� ������� ���������
  prez,                        // ����������� �������� ������������ �������
  pt,                          // ����������� �������� ������ ��� �������� ���������
  kvospr,                      // ����������� ��������������� Pu-239
  r1,r2: extended;              // ��������������� ������������
  N_data, Ik: integer;              // ���������� ������ ������ ��������� �������
  Nv: byte;                     // ����� �������� �������

  PriTR,                        // ������� ��������� ���������� ��������� �������
  Pri_Data_Tr,                  // ������� ������� ������ ��������� �������
  Pri_Data_Fr,                  // ������� ������� ������ ����������� �������
  ErrPri: boolean;               // ������� ������ �����

  Ipo,                          // ������� ����� ���������� ��� ���� ��������
  Ips:Integer;                  // ������� ��������� ��������� �����



implementation

uses
  Polin,plmn;

{$R *.dfm}






procedure TMars.AcceptStartDataBtnClick(Sender: TObject);
var
str_left, str_right : string;
begin
        notTypicalFuelMaterial := False;
        notTypicalMatrixMaterial := False;
        notTypicalCassetteMaterial := False;
        notTypicalShellMaterial := False;

    try
      reactorType := reactorGroup.Items[reactorGroup.ItemIndex];
      �assetteType := tvsTypeGroup.Items[tvsTypeGroup.ItemIndex];
      shellMaterial := shellGroup.Items[shellGroup.ItemIndex];
      �assetteMaterial := tvsMaterialGroup.Items[tvsMaterialGroup.ItemIndex];
      matrixMaterial := matrixMaterialGroup.Items[matrixMaterialGroup.ItemIndex];
      fuelMaterial := fuelMaterialGroup.Items[fuelMaterialGroup.ItemIndex];

      if CompareStr(shellMaterial,'������') = 0 then
      begin
         showmessage('���������� �������� ��������, ��� �������� ��������� ������ ������� �������!');
         notTypicalShellMaterial := True;
      end;

      if CompareStr(�assetteMaterial,'������') = 0 then
      begin
         showmessage('���������� �������� �������, ��� �������� ��������� ������ ������� �������!');
         notTypicalCassetteMaterial := True;
      end;

      if CompareStr(matrixMaterial,'������') = 0 then
      begin
         showmessage('���������� �������� �������, ��� �������� ��������� ������ ������� �������!');
         notTypicalMatrixMaterial := True;
      end;

      if CompareStr(fuelMaterial,'������') = 0 then
      begin
         showmessage('���������� �������� �������, ��� �������� ��������� ������ ������� �������!');
         notTypicalFuelMaterial := True;
      end;


      if notTypicalMatrixMaterial or notTypicalFuelMaterial then
      begin
        if notTypicalMatrixMaterial and not notTypicalFuelMaterial then
          begin
             showmessage('�������� ������� �� ��������� � ��������');
             Exit
          end;

        if not notTypicalMatrixMaterial and notTypicalFuelMaterial then
          begin
             showmessage('�������� ������� �� ��������� � ��������');
             Exit
          end;

        if notTypicalMatrixMaterial and notTypicalFuelMaterial then
          begin

          end;
      end
      else  if not notTypicalMatrixMaterial or not notTypicalFuelMaterial then

      begin
        IdStrings.SplitString (fuelMaterial, '+', str_left, str_right);
         if CompareStr(matrixMaterial, str_right) <> 0 then
          begin
             showmessage('�������� ������� �� ��������� � ��������');
             Exit
          end;
      end;

      materialsIsset := true;
      if CompareStr(reactorType, '����') = 0 then
        begin
          MassRashParCaption.Enabled := false;
          MassRashPar.Enabled := false;
          TOfTeplOutputCaption.Enabled := true;
          TOfTeplOutput.Enabled := true;
        end;

      if CompareStr(reactorType, '����') = 0 then
        begin
          MassRashParCaption.Enabled := true;
          MassRashPar.Enabled := true;
          TOfTeplOutputCaption.Enabled := false;
          TOfTeplOutput.Enabled := false;
        end;

        ReactorTypeInput.Text := reactorType;
        CasseteTypeInput.Text := �assetteType;

        if CompareStr(fuelMaterial, 'UO2+�����') = 0 then
        begin
            TeplTopliva.Text := IntToStr(12);
        end;

        if CompareStr(fuelMaterial, 'UO2+���������') = 0 then
        begin
            TeplTopliva.Text := IntToStr(14);
        end;

        if CompareStr(fuelMaterial, 'UO2+�������') = 0 then
        begin
            TeplTopliva.Text := IntToStr(120);
        end;

        if CompareStr(fuelMaterial, 'UAl3+�������') = 0 then
        begin
            TeplTopliva.Text := IntToStr(80);
        end;

        if CompareStr(fuelMaterial, 'UAl3+���������') = 0 then
        begin
            TeplTopliva.Text := IntToStr(17);
        end;

        if CompareStr(fuelMaterial, 'UZr+���������') = 0 then
        begin
            TeplTopliva.Text := IntToStr(15);
        end;

        if CompareStr(fuelMaterial, '������') = 0 then
        begin
            TeplTopliva.Text := '';
            TeplTopliva.TextHint := '�������';
            TeplTopliva.ShowHint := true;
        end;



        if CompareStr(shellMaterial, '�����') = 0 then
        begin
            TeplMaterialObolochki.Text := IntToStr(15);
        end;

        if CompareStr(shellMaterial, '���������') = 0 then
        begin
            TeplMaterialObolochki.Text := IntToStr(17);
        end;

        if CompareStr(shellMaterial, '������') = 0 then
        begin
            TeplMaterialObolochki.Text := '';
            TeplMaterialObolochki.TextHint := '�������';
            TeplMaterialObolochki.ShowHint := true;
        end;






      MainController.ActivePageIndex := 1;
      TrController.ActivePageIndex := 0;























      



    except
      begin

        showmessage('������� ��� ������');
      end;

    end;






end;

function ChangeString(Str: string): string;
var
  Npoint: integer;
  Str1,Str2: string;
begin (* ������ . �� , *)
  Npoint:=Pos('.',Str);                 // ����� �������, � ������� ����� .
  Str1:=Copy(Str,1,Npoint-1);           // ������� �� �����
  Str2:=Copy(Str,Npoint+1,Length(Str)); // ������� ����� �����
  ChangeString:=Concat(Str1,',',Str2);
end; (* ������ . �� , *)


procedure Input_err(X:string);
begin
  Err_txt:='������ ��� ������� ���������  ' +X;
  MessageDlg(Err_txt, mtError,[mbOk], 0);
end;


procedure MarsT;
label
  10,20,30,40,50;
begin (* �������� ������ *)
  try
    // ��������� �������� � ���������
    qsr:=7e05;      // ������� �������� ������ � A3   +
    kn:=1.2;        // ����������� ���������� �� ��������      +
    kg:=0.85;       // ����������� ���������� �������           +
    ckt:=0.03;      // ���� �����, ����������� � ���             +
    dlef:=80;       // ����������� ������� �� ����������, ��     +
    kqd:=2.2;       // ���������� ����� �� �������                +
    dlz:=20;        // ��� ��������� ������� ���������� ��� ���������� ������ �� �������   +
    // ����� ������ � �������   +
    ztv:=1+3*zr+3*zr*zr;
    // ����� ��������� ����������
    if k = 7 then
      vt:=7.85E-4*(dtv-2*dlob-2*dlhe)*(dtv-2*dlob-2*dlhe)* ztv*nks*haz
    else
      vt:=0.0538*kv*nr*t/dlq;

    if ((Kmr='����')and(p< 1)) then
    begin  (* 1 *)
      tmax:=0.5*(tvih+tvh)+0.5*(tvih-tvh)*kn/kg+5;
      if  Polinom='PLMN' then
        p:=Pul(5,0,tmax)
      else
        p:=Pol(9,0,tmax);
    end;   (* 1 *)



    if Polinom='PLMN' then
    begin
        ts:=Pul(10,p,0);

    end
    else
    begin
        ts:=Pol(8,p,0);   // ����������� ���������
    end;

    // �������  ����������� ���������
    if Kmr='����' then
    begin
       tvih:=ts;

    end;


    tsr:=(tvh+tvih)/2;


    // ��������� ������������� �� ����� � A3 � ������ �� ��
    if Polinom='PLMN' then
    begin
      ivh:=Pul(2,p,tvh);
      ivih:=  Pul(2,p,tvih);
      is1:=Pul(6,0,Pul(10,p,0));
      iss:=Pul(11,0,Pul(10,p,0));

    end
    else
    begin
      ivh:=Pol(1,p,tvh);
      ivih:=Pol(1,p,tvih);
      is1:=Pol(11,p,0);    // ��������� ���� �� ����� ���������
      iss:=Pol(19,p,0);    // ��������� ����������� ����
    end;
    // ������ ������������� ����� A3
    if Kmr='����' then
    begin
       gaz:=1.0E3*nr/(ivih-ivh);

    end
    else
    begin
       gaz:=1.0E3*nr/(is1 -ivh+x*(iss-is1));
    end;

    //  �������� ����� ������������� �� ����� � A3
    if Polinom='PLMN' then
      vvh:=Pul(3,p,tvh)
    else
      vvh:=Pol(3,p,tvh);

    // ��������� ������������� �� ������ �� ������������� ������������
    ivimk:=1.0E3*nr*ckt/(gaz*(1-cgk))+ivh;  //  ���������

    if Polinom='PLMN' then
    begin
      tvimk:=Pul(1,p,ivimk);

      vvimk:=Pul(3,p,tvimk);

    end
    else
    begin
      tvimk:=Pol(2,p,ivimk);                  //  �����������
      vvimk:=Pol(3,p,tvimk);                  //  �������� �����
    end;
    if Kmr='����' then
    begin (* 4 *)
      if Polinom='PLMN' then
      begin
        vs:=Pul(7,0,ts);
        vss:=Pul(12,0,Pul(10,p,0));

      end
      else
      begin
        vs:=Pol(13,0,ts);    // �������� ����� ���� �� ����� ���������
        vss:=Pol(20,p,0);    // �������� �����  ����������� ����
      end;
      // ������� �������� ����� ������������� �� �������������� �������
      vesr:=0.5*(vvh+vs);

    end;  (* 4 *)
    // ������� �������� ����� ������������� � ������������ ������������
    vmksr:=2/( 1/vvh+1/vvimk);

    if k< 3 then
    begin  (* 5 *)
10:   a:=2*(dlob+dlhe+1e-09*qsr*vt/nr);
      dtv:=a+Sqrt(a*a-4*(dlob+dlhe)*(dlob+dlhe));  // ������� �����

    end; (* 5 *)
20: dtop:=dtv-2*(dlob+dlhe);            // ������� ���������� �������
    ftv:=0.785*ztv*dtv*dtv;             // ������� ������� ������, ���������� ������
    ftop:=0.785*ztv*dtop*dtop;          // ������� ������� ������, ���������� ��������
    fob:=Pi*(dtv-dlob)*dlob*ztv;        // ������� ������� ������, ���������� ���������� ��������
    rpr:=zr*(dtv+dltv)+(dtv+dltv)/1.73;   // �������������� ������ �������
    rvit:=rpr+dlk/0.865;                  // ������ ����������, ��������� ������ �������
    dks:=2*(rvit+dltr);                   // ������� �������
    fpr:=2.605*rpr*rpr-ftv;               // ������� ���������� ������� �������
    dekv:=4*fpr/(6*rpr+Pi*dtv*ztv);       // ������������� ������� ������

    // ������� ������� ������, ���������� ��������������� ���������� �������
    fk:=Pi*(dks-dltr)*dltr+3*dlk*(rpr+rvit);

    if k = 1 then
    begin (* ������ 1 *)
      fjc:=(ftv+fk)/(1-rh20);                   // ������� ������� ������
      // ����� ����� ���������
      if i = 0 then
        dlmk:=sqrt(fjc/0.867)-dks;
      if i = 6 then
        dlmk:=sqrt(fjc/0.867)-0.867*dks;
    end  (* ������ 1 *)
    else
    begin (* ������� ������� ������ ��� ������ ����� *)
      if i = 0 then
        fjc:=0.867*(dks+dlmk)*(dks+dlmk);
      if i = 6 then
        fjc:=0.651*(dks+dlmk/0.867)*(dks+dlmk/0.867);
    end;  (* 9 *)

    fh20:=fjc-ftv-fk;    // ������� ������� ������, ���������� �����
    rtop:=ftop/fjc;      // ���� ������� � ������
    rob:=fob/fjc;        // ���� ��������� �������� ����� � ������
    rk:=fk/fjc;          // ���� ��������������� ���������� ������� � ������
    rh20:=fh20/fjc;      // ���� ���� � ������ A3

30: if k < 5 then
    begin  (* ������ 1-4 *)
      if k = 3 then
        hkd:=1;         // ������ ????
      daz:=Exp(0.3333*Ln(1000*vt/(0.785*rtop*hkd)));  // ������� A3
      nks:=0.785*daz*daz/fjc;                         // ����� ������ � A3
      if k = 3 then
        haz:=1000* vt/nks/fjc/rtop      // ������ ��
      else
        haz:=daz*hkd;
    end (* ������ 1-4 *)
    else
    begin (* ������ 5-7 *)
50:   daz:=sqrt((nks*fjc)/0.785);                  // ������� A3
      if k <> 7 then
        haz:=1000*vt/nks/fjc/rtop;   // ������ ��
    end; (* ������ 5-7 *)
    wvhd:=1E06*gaz*cgk*vvh/fpr/nks;    // �������������� �������� �������� ������������� �� ����� � A3
    if((k<4)or (k = 6)) then
    begin  (*  ������ 1-3 � 6  *)
      if Abs(wvhd-wvh) > 0.05 then
      begin (* 13 *)
        if k = 3 then
        begin
          nks:=nks*wvhd/wvh;
          goto 50;
        end
        else
        begin (* ������ 1-2 � 6 *)
          if i <> 4 then
            dltv:=(1.73*Sqrt((fpr*wvhd/wvh+ftv)/2.605)-(1.73*zr+1)*dtv)/( 1.73*zr+1)
          else
            dltv:=(Sqrt(fpr*wvhd/wvh+ftv)-zr*dtv)/zr;
          goto 20;
        end; (* ������ 1-2 � 6 *)
      end;   (* 13 *)
    end;  (*  ������ 1-3 � 6  *)
    // ��������� � ����������� ������������� �� ������ �� ������
    iviks:=ivh+(1000*nr*(1-ckt)/(gaz*cgk));

    if Kmr='����' then
      if  Polinom='PLMN' then
        tviks:=Pul(1,p,iviks)
      else
        tviks:=Pol(2,p,iviks)
    else
    begin  (* 15 *)
      xk:=(iviks-is1 )/(iss-is1);
      tviks:=ts;
    end;    (* 15 *)
    // ����������� ������� A3
40: saz:=1.0e-6*pi*dtv*haz*ztv*nks;    // ����������� ������� A3
    kz:=1.57*haz/(haz+2.0*dlef)/Sin(1.57*haz/(haz+2.0*dlef)); // �-� ��������������� ������������� �������������� �� ������ A3
    qsr:=1.0E6*nr/saz;  // ������� �������� ����� � A3
    qmax:=qsr*kr*kz;    // ������������ �������� ����� � ����� �������
    kqp:=1000;
    z:=0.0;
    // ����������� ������������ ��������� ������ � A3 �� ������
    Repeat   (* ����  *)
      kq:=kqp;
      iz:=ivh+0.5*(iviks-ivh)*(sin(pi*z/(haz+2*dlef))/sin(0.5*pi*haz/(haz+2*dlef))+1);    // ������� �������� ���������
      qkr:=8.45e5*Exp(0.2*Ln(kr*wvhd/vvh))*Exp(1.2*Ln(1+(is1-iz)/(iss-is1)))*(1-0.0355*p);// ����������� �������� ����� � A3
      kqp:=qkr/(qmax*cos(pi*z/(haz+2*dlef)));    // ����� �� �������
      z:=z+dlz;
    Until kqp > kq;   (* ����  *)
    kq:=kqp;
    if k <> 7 then
    begin  (* ������ 1-6 *)
      if k< 3 then
      begin   (* ������ 1-2 *)
        if((kq-kqd)*(kq-kqd))> 0.025 then
        begin (* 18 *)
          qsr:=qsr*kq/kqd;
          goto 10;
        end; (* 18 *)
      end  (* ������ 1-2 *)
      else
      begin  (* ������ 3-6 *)
        if kq < kqd then
        begin (* 20 *)
          if k = 4 then
          begin   (* 21 *)
            vt:=vt*kqd/kq;
            goto 30;
          end (* 21 *)
          else
          begin (* 22 *)
            haz:=haz*kqd/kq;
            goto 40;
          end; (* 22 *)
        end; (* 20 *)
      end; (* ������ 3-6  *)
    end; (* ������ 1-6 *)
    if Kmr='����' then
    begin (* 23 *)
      // ���� A3, ������� �������������
      aa:=2*(is1 - ivh)/(iviks-ivh)-1;      // ????
      le:=0.5+(haz+2*dlef)/(Pi*haz)*ArcTan(aa/Sqrt(1-aa*aa))*Sin(Pi*haz/(2*(haz+2*dlef)));
      // ������� ��������� �������� ��������������
      betsr:=(vss/(vss-vs))*(1-vs/((vss-vs)*xk)*Ln(xk*(vss/vs-1)+1));
      wsr:=wvhd* vs/vvh;   // ������� �������� �������� ������������� � A3
      dekv:=4*fpr/(6*rpr+Pi*dtv*ztv);   // ������������� ������� ������
      if Kmr='����' then
      begin (* 24 *)
        aa:=wsr*(1-0.5*xk)/(1-betsr);
        fr:=aa*aa/(9.81e-03*dekv);    // ������� �������� �����
        if Polinom='PLMN' then
          mju:=Pul(24,vs,ts)*1E-06
        else
          mju:=Pol(6,p,ts);        // ������������ �������� �������������
        re:=wsr*( 1-0.5 *xk)*dekv* 1E-03/(mju* vs);      // �������� ����������
        // ������������ ��� ��������
        m:=4*Exp(0.125*Ln(re))*Sqrt(vs/vss)*(0.13+0.12*Exp(0.375*Ln(fr)));
        // ������� �������� �������� ��������������
        c:=(1+0.046*m)/(0.176+2.76*m);
        fi:=betsr*(1-c*( 1-betsr)/(1.04-betsr));
        // ������� �������� ����� ������������� �� ������������� �������
        visr:=1/((1-fi)/vs+fi/vss);
      end; (* 24 *)
    end; (* 23 *)
    rh20k:=fpr/(rh20*fjc);       // ���� ���� � �������
    // ������� �������� ����� ����������� � A3
    if Kmr='����' then
    begin (* 25 *)
      tkssr:=0.5*(tviks+tvh);
      if Polinom='PLMN' then
        vkssr:=Pul(3,p,tkssr)
      else
        vkssr:=Pol(3,p,tkssr);
      vazsr:=1/(rh20k/vkssr+(1-rh20k)/vmksr);
    end  (* 25 *)
    else
      vazsr:=1/((( 1-le)/visr+le/vesr)*rh20k+(1-rh20k)/vmksr);
    vaz:=0.785E-03*haz*daz*daz;     // ����� A3
    vt:=rtop*vaz;                   // ����� ��������� ����������
    qv:=1E06*nr/vaz;                // ������������������� A3
    ddlq:=0.0538*kv*nr*t/vt;        // �������������� ��������� ���������� ���������
    ljhe:=0.143*Exp(0.73*Ln((ts+273)/273));    // ����������� ����������������  �����
    ttmax:=ts+(dlob/ljob+dtop/4/ljt+dlhe/ljhe)*1E-03*qmax+10;   // ������������ ����������� �������
    hkd:=haz/daz;      // ��������� ������ A3 � �� ��������
    MarsTIsset := true;

  except
    ShowMessage('������ ��� ���������� ��������� �������');
    MarsTIsset := False;
    exit;
  end;
end; (* �������� ������ *)



procedure MarsF(Ipo,Ips:Integer);  (* ����������  ������ *)
var
  rez :real;     // ��������������� ��������
  NIT:Byte;      // �������
begin (* ���������� ������  *)
  try
  NIT:=1;
  // ������������ ����������  U-235 �� ������ ��������
  if ipo = 1 then
  begin (* 1 *)
    ggnk:=m*g5nk/(235*xnk);
    rg:=ggnk/(vaz*rtop*rog);
  end (* 1 *)
  Else
    xnk:=m*g5nk/(235*ggnk);
  gg:=ggnk-m*dlg5/235;     // ����� �������� �� ����� ��������
  xkk:=m*g5/(235*gg);      // ����������  �� ����� ��������

  // ������������
  n8:=nu*a*rog*rg*rtop*(1-xnk)/m;
  n5:=nu*a*rog*rg*rtop*xkk/m;
  nii:=ni*a*rog*rg*rtop/m;
  nh20:=a*roh20*rh20/18;

  // ������������ ������� ���������
  sia5:=n5*sa5;   sia8:=n8*sa8;
  sis5:=n5*ss5;   sis8:=n8*ss8;
  sif:=n5*sf5;

  siai:=nii*sai;   sisi:=nii*ssi;
  siah20:=nh20*sah20;
  sish20:=nh20*ssh20;

  siak:=siak1*rk;
  siaob:=siaob1*rob;
  siam:=siam1*rtop*(1-rg);
  sisk:=sisk1*rk;
  sisob:=sisob1*rob;
  sism:=sism1*rtop*(1-rg);

  siajch:=sia5+sia8+siai+siah20+siak+siaob+siam;
  sisjch:=sis5+sis8+sisi+sish20+sisk+sisob+sism;
  kssis:=ksh20*roh20*rh20;                   // ����������� ����������� ������
  kt1:=0.8862*sqrt(293/(273+tsr));           // �������� �� ����������� �����������
  tng:=(273+tsr)*(1+1.4*siajch*kt1/kssis);   //  ����������� ����������� ����
  kt2:=0.8862*sqrt(293/tng);                 // �������� �� �����������

  fin:=3.1E16*nr/(vaz*sif*kt2);              // ��������� ����������� ������
  r1:=24.05/(0.5*daz+dlef);
  r2:=10*Pi/(haz+2.0*dlef);
  kappa2:=r1*r1+r2*r2;
  el2:=1/(3*kt2*siajch*(2.31*rh20*roh20+0.5*(1-rh20)));
  // ����������� �������� ������ ��� �������� ���������
  pt:=1/(1+kappa2*el2);
  tau:=31.4/(Sqrt(roh20*rh20)*Exp(1.5*Ln(1-rh20*(1-roh20))));   // ������� ���������
  // ����������� �������� ������ ��� ������� ���������
  pb:=Exp(-kappa2 * tau);
  // ����� �� ����������� ������������� ���������� ��������
  taumax:=34.7*Ln(1/(0.72+0.61/(2.1+3E-13 *kt2*fin)));
  if ips = 1 then
  begin  (* �� ����� �������� *)
    // ������������ ������� ��������� X-135 ��� ������ A3
    siaxe:=0.2e-13*sif*kt2*fin*(Exp(-0.0756*taumax)-Exp(-0.1044*taumax))+
      0.168E-13*fin*sif*kt2* Exp(-0.075 *taumax)/(2.1 *3E-13 *fin*kt2);
      siash1:=50.0*a*dlg5/(235.0*vaz);
  end  (* �� ����� �������� *)
  else
  begin (* �� ������ �������� *)
    siaxe:=0;
    siash1:=0;
  end; (* �� ������ �������� *)

  teta:=sia5/(siajch+siaxe+siash1);        // ����������� ��������� ������������� �� �������� ���������
  rez:=4*n8*Exp(0.42*Ln(sisjch/n8));
  prez:=Exp(-rez/kssis);
  eps:=1+0.109*Exp(-0.707*Ln(2*nh20/n8));  // ����������� ����������� �� ������� ���������
  kef:=2.07*teta*eps*prez*pb*pt;           // ����������� ����������� ����������� ���������
  r1:=0;

  if ips = 1 then
  begin (* �� ����� �������� *)
    g5 :=(10+g5);  //*(( 1/teta-1)/(kef/(teta* 1.011)-1));
    g5nk:=g5+dlg5;
    if nit = 10 then
      r1:=1;
  end;  (* �� ����� �������� *)
  except
    begin
      ShowMessage('������ � ������������ ����������� �������' + #10#13 +
                  '��������� ������������ ����� �������� ������');
       Halt;
    end;
  end;
End;  (* ����������  ������ *)

procedure TMars.Button2Click(Sender: TObject);
var tx: real;
begin
  k := TasksControll.TabIndex + 1;
  //showmessage(floatToStr(k));
  kmr := reactorType;
  if CasseteTypeInput.Text = '������������' then
  begin
    i := 6
  end
  else
  begin
    i:= 0
  end;


  Polinom:='PLMN';
  //ShowMessage(kmr + Polinom);



  //****************************���� ������� ���������� ��� ��*********************************************

  


  try
    String_data:=NOfReactor.Text;   // �������� ��������, ���
    if Pos('.',String_data)= 0 then
      nr :=StrToFloat(String_data)
    else
      nr:=StrToFloat(ChangeString(String_data));
  except
    Input_err(NOfReactorCaption.Text);
    ErrPri:=True;
    Abort;
  end;

  try
    String_data:=AZCompany.Text;  // �������� ��, ���
    if Pos('.',String_data)= 0 then
      t :=StrToFloat(String_data)
    else
      t :=StrToFloat(ChangeString(String_data));

    String_data:=TOfTeplInput.Text;  // ����������� ������������� �� ����� � ��, ����.�
    if Pos('.',String_data)= 0 then
      tvh :=StrToFloat(String_data)
    else
      tvh :=StrToFloat(ChangeString(String_data));

    if kmr = '����' then
    begin
      String_data:=MassRashPar.Text;  // �������� ��������� ��������������
      if Pos('.',String_data)= 0 then
        x :=StrToFloat(String_data)
      else
        x :=StrToFloat(ChangeString(String_data));
    end;

    if kmr = '����' then
    begin
      String_data:=TOfTeplOutput.Text;  // ����������� ������������� �� ������ �� ��, ����.�
      if Pos('.',String_data)= 0 then
        tvih :=StrToFloat(String_data)
      else
        tvih :=StrToFloat(ChangeString(String_data));
    end;

    String_data:=DavlTeplV1Konture.Text;    // �������� � ������ �������, ���
    if Pos('.',String_data)= 0 then
      p :=StrToFloat(String_data)
    else
      p :=StrToFloat(ChangeString(String_data));

    String_data:=OtnRashTeplCherezKassety.Text;   // ���� ������� ������������� ����� �������
    if Pos('.',String_data)= 0 then
      cgk :=StrToFloat(String_data)
    else
      cgk :=StrToFloat(ChangeString(String_data));

    String_data:=TolshinaCylindrObechKassety.Text;  // ������� ����� ������ �������, ��
    if Pos('.',String_data)= 0 then
      dltr :=StrToFloat(String_data)
    else
      dltr :=StrToFloat(ChangeString(String_data));

    String_data:=TolshinaKozhKasset.Text;  // ������� ������������� ������, ��
    if Pos('.',String_data)= 0 then
      dlk :=StrToFloat(String_data)
    else
      dlk :=StrToFloat(ChangeString(String_data));

    String_data:=TolshObolochTvela.Text;   // ������� �������� �����, ��
    if Pos('.',String_data)= 0 then
      dlob :=StrToFloat(String_data)
    else
      dlob :=StrToFloat(ChangeString(String_data));

    String_data:=TolshGeliyZazor.Text;  // ������� ���� �����, ��
    if Pos('.',String_data)= 0 then
      dlhe :=StrToFloat(String_data)
    else
      dlhe :=StrToFloat(ChangeString(String_data));

    String_data:=ChisloRyadovTvelov.Text;    // ����� ����� ���� � �������
    if Pos('.',String_data)= 0 then
      zr:=StrToFloat(String_data)
    else
      zr:=StrToFloat(ChangeString(String_data));

    String_data:=KoefNeravnTeplovPoRadAz.Text;   // ���������� ��������������� ��������� �������
    if Pos('.',String_data)= 0 then
      kr:=StrToFloat(String_data)
    else
      kr:=StrToFloat(ChangeString(String_data));

    String_data:=KoefNeravnVygoraniya.Text;  // �������� ��������������� ��������� �������
    if Pos('.',String_data)= 0 then
      kv:=StrToFloat(String_data)
    else
      kv:=StrToFloat(ChangeString(String_data));
    //  ������� ��������� ��� ���������� ����������� � ���������
{ if MessageDlg('������������ ��������� PLMN?', mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes
   then}
    Polinom:='PLMN' {else Polinom:=''};
    Application.ProcessMessages;
  except
    ShowMessage('������ ��� ����� ������');
  end;


  try
    begin
    String_data:=TeplMaterialObolochki.Text;   // ���������������� ��������� ��������, ��/� �
    if Pos('.',String_data)= 0 then
      ljob:=StrToFloat(String_data)
    else
      ljob:=StrToFloat(ChangeString(String_data));      
    end;
  except
    Input_err(TeplMaterialObolochkiCaption.Text);
    ErrPri:=True;
    Abort;
  end;

  try
    begin
    String_data:=TeplTopliva.Text;   // // ���������������� �������, ��/� �
    if Pos('.',String_data)= 0 then
      ljt:=StrToFloat(String_data)
    else
      ljt:=StrToFloat(ChangeString(String_data));      
    end;
  except
    Input_err(TeplToplivaCaption.Text);
    ErrPri:=True;
    Abort;
  end;










     //****************************���� ������� ���������� ��� ��*********************************************








  //****************************���� ������ �� �����*********************************************


  if k = 1 then
  begin
      // h/d
     try
     String_data:=HkdTask1.Text;
          if Pos('.',String_data)= 0 then
            hkd:=StrToFloat(String_data)
          else
            hkd:=StrToFloat(ChangeString(String_data));
     except
          Input_err(HkdTask1Caption.Text);
          ErrPri:=True;
          Abort;
     end;

    // ��������� ���������� ���������, �/��3
    try
      String_data:=PredDopVigorTask1.Text;
      if Pos('.',String_data)= 0 then
        dlq:=StrToFloat(String_data)
      else
        dlq:=StrToFloat(ChangeString(String_data));
    except
      Input_err(PredDopVigorTask1Caption.Text);
      ErrPri:=True;
      Abort;
    end;

    // �������� ������� �������� �������� ������������� �� �����  � ��, �/�
    try
      String_data:=ZadanSredZnachSkorTeplNaVhVazTask1.Text;
      if Pos('.',String_data)= 0 then
        wvh:=StrToFloat(String_data)
      else
        wvh:=StrToFloat(ChangeString(String_data));
    except
      Input_err(ZadanSredZnachSkorTeplNaVhVazTask1Caption.Text);
      ErrPri:=True;
      Abort;
    end;

    // ���� ���� � ������ ��
    try
      String_data:=DolVodVyachTask1.Text;
      if Pos('.',String_data)= 0 then
        rh20:=StrToFloat(String_data)
      else
        rh20:=StrToFloat(ChangeString(String_data));
    except
      Input_err(DolVodVyachTask1Caption.Text);
      ErrPri:=True;
      Abort;
    end;

    
  end;


  if k = 2 then
  begin

    // ��������� ������ �� � ��������
    try
      String_data:=HkdTask2.Text;
      if Pos('.',String_data)= 0 then
        hkd:=StrToFloat(String_data)
      else
        hkd:=StrToFloat(ChangeString(String_data));
    except
      Input_err(HkdTask2Caption.Text);
      ErrPri:=True;
      Abort;
    end;

    // ����� ����� ���������, ��
    try
      String_data:=ZazorMezhdCassetTask2.Text;
      if Pos('.',String_data)= 0 then
        dlmk:=StrToFloat(String_data)
      else
        dlmk:=StrToFloat(ChangeString(String_data));
    except
      Input_err(ZazorMezhdCassetTask2Caption.Text);
      ErrPri:=True;
      Abort;
    end;

    // ��������� ���������� ���������, �/��3
    try
      String_data:=PredDopVigorTask2.Text;
      if Pos('.',String_data)= 0 then
        dlq:=StrToFloat(String_data)
      else
        dlq:=StrToFloat(ChangeString(String_data));
    except
      Input_err(PredDopVigorTask2Caption.Text);
      ErrPri:=True;
      Abort;
    end;

    // �������� ������� �������� �������� ������������� �� �����  � ��, �/�
    try
      String_data:=ZadanSredZnachSkorTeplNaVhodVazTask2.Text;
      if Pos('.',String_data)= 0 then
        wvh:=StrToFloat(String_data)
      else
        wvh:=StrToFloat(ChangeString(String_data));
    except
      Input_err(ZadanSredZnachSkorTeplNaVhodVazTask2Caption.Text);
      ErrPri:=True;
      Abort;
    end;

     
  end;
  //

  if k = 3 then
  begin
    // ������� �����, ��
    try
      String_data:=DiamTvelaTask3.Text;
      if Pos('.',String_data)= 0 then
        dtv:=StrToFloat(String_data)
      else
        dtv:=StrToFloat(ChangeString(String_data));
    except
      Input_err(DiamTvelaTask3Caption.Text);
      ErrPri:=True;
      Abort;
    end;

    // ����� ����� �������, ��
    try
      String_data:=ZazorMezhdTvelamiTask3.Text;
      if Pos('.',String_data)= 0 then
        dltv:=StrToFloat(String_data)
      else
        dltv:=StrToFloat(ChangeString(String_data));
    except
      Input_err(ZazorMezhdTvelamiTask3Caption.Text);
      ErrPri:=True;
      Abort;
    end;

    // ����� ����� ���������, ��
    try
      String_data:=ZazorMezhdCassetTask3.Text;
      if Pos('.',String_data)= 0 then
        dlmk:=StrToFloat(String_data)
      else
        dlmk:=StrToFloat(ChangeString(String_data));
    except
      Input_err(ZazorMezhdCassetTask3Caption.Text);
      ErrPri:=True;
      Abort;
    end;

    // ��������� ���������� ���������, �/��3
    try
      String_data:=PredDopVigorTask3.Text;
      if Pos('.',String_data)= 0 then
        dlq:=StrToFloat(String_data)
      else
        dlq:=StrToFloat(ChangeString(String_data));
    except
      Input_err(PredDopVigorTask3Caption.Text);
      ErrPri:=True;
      Abort;
    end;

    // �������� ������� �������� �������� ������������� �� �����  � ��, �/�
    try
      String_data:=ZadanSredZnachSkorTeplNaVhodVazTask3.Text;
      if Pos('.',String_data)= 0 then
        wvh:=StrToFloat(String_data)
      else
        wvh:=StrToFloat(ChangeString(String_data));
    except
      Input_err(ZadanSredZnachSkorTeplNaVhodVazTask3Caption.Text);
      ErrPri:=True;
      Abort;
    end;

    
  end;

  if k = 4 then
  begin

    // ������� �����, ��
    try
      String_data:=DiamTvelaTask4.Text;
      if Pos('.',String_data)= 0 then
        dtv:=StrToFloat(String_data)
      else
        dtv:=StrToFloat(ChangeString(String_data));
    except
      Input_err(DiamTvelaTask4Caption.Text);
      ErrPri:=True;
      Abort;
    end;

    // ����� ����� �������, ��
    try
      String_data:=ZazorMezhdTvelamiTask4.Text;
      if Pos('.',String_data)= 0 then
        dltv:=StrToFloat(String_data)
      else
      dltv:=StrToFloat(ChangeString(String_data));
    except
      Input_err(ZazorMezhdTvelamiTask4Caption.Text);
      ErrPri:=True;
      Abort;
    end;

    // ����� ����� ���������, ��
    try
      String_data:=ZazorMezhdCassetTask4.Text;
      if Pos('.',String_data)= 0 then
        dlmk:=StrToFloat(String_data)
      else
        dlmk:=StrToFloat(ChangeString(String_data));
    except
      Input_err(ZazorMezhdCassetTask4Caption.Text);
      ErrPri:=True;
      Abort;
    end;

    // ��������� ������ �� � ��������
    try
      String_data:=HkdTask4.Text;
      if Pos('.',String_data)= 0 then
        hkd:=StrToFloat(String_data)
      else
        hkd:=StrToFloat(ChangeString(String_data));
    except
      Input_err(HkdTask4Caption.Text);
      ErrPri:=True;
      Abort;
    end;

    // ��������� ���������� ���������, �/��3
    try
      String_data:=PredDopVigorTask4.Text;
      if Pos('.',String_data)= 0 then
        dlq:=StrToFloat(String_data)
      else
        dlq:=StrToFloat(ChangeString(String_data));
    except
      Input_err(PredDopVigorTask4Caption.Text);
      ErrPri:=True;
      Abort;
    end;
    
  end;

  if k = 5 then
  begin

    // ������� �����, ��
    try
      String_data:=DiamTvelaTask5.Text;
      if Pos('.',String_data)= 0 then
        dtv:=StrToFloat(String_data)
      else
        dtv:=StrToFloat(ChangeString(String_data));
    except
      Input_err(DiamTvelaTask5Caption.Text);
      ErrPri:=True;
      Abort;
    end;

    // ����� ����� �������, ��
    try
      String_data:=ZazorMezhdTvelamiTask5.Text;
      if Pos('.',String_data)= 0 then
        dltv:=StrToFloat(String_data)
      else
        dltv:=StrToFloat(ChangeString(String_data));
    except
      Input_err(ZazorMezhdTvelamiTask5Caption.Text);
      ErrPri:=True;
      Abort;
    end;

    // ����� ����� ���������, ��
    try
      String_data:=ZazorMezhdCassetTask5.Text;
      if Pos('.',String_data)= 0 then
        dlmk:=StrToFloat(String_data)
      else
        dlmk:=StrToFloat(ChangeString(String_data));
    except
      Input_err(ZazorMezhdCassetTask5Caption.Text);
      ErrPri:=True;
      Abort;
    end;

    // ����� ������
    try
      String_data:=ChisloCassetTask5.Text;
      if Pos('.',String_data)= 0 then
        nks:=StrToFloat(String_data)
      else
        nks:=StrToFloat(ChangeString(String_data));
    except
      Input_err(ChisloCassetTask5Caption.Text);
      ErrPri:=True;
      Abort;
    end;

    // ��������� ���������� ���������, �/��3
    try
      String_data:=PredDopVigorTask5.Text;
      if Pos('.',String_data)= 0 then
        dlq:=StrToFloat(String_data)
      else
        dlq:=StrToFloat(ChangeString(String_data));
    except
      Input_err(PredDopVigorTask5Caption.Text);
      ErrPri:=True;
      Abort;
    end;
    
  end;

  if k = 6 then
  begin

    // ������� �����, ��
    try
      String_data:=DiamTvelaTask6.Text;
      if Pos('.',String_data)= 0 then
        dtv:=StrToFloat(String_data)
      else
        dtv:=StrToFloat(ChangeString(String_data));
    except
      Input_err(DiamTvelaTask6Caption.Text);
      ErrPri:=True;
      Abort;
    end;

    // ����� ����� ���������, ��
    try
      String_data:=ZazorMezhdCassetTask6.Text;
      if Pos('.',String_data)= 0 then
        dlmk:=StrToFloat(String_data)
      else
        dlmk:=StrToFloat(ChangeString(String_data));
    except
      Input_err(ZazorMezhdCassetTask6Caption.Text);
      ErrPri:=True;
      Abort;
    end;

    //  ����� ������
    try
      String_data:=ChisloCassetTask6.Text;
      if Pos('.',String_data)= 0 then
        nks:=StrToFloat(String_data)
      else
        nks:=StrToFloat(ChangeString(String_data));
    except
      Input_err(ChisloCassetTask6Caption.Text);
      ErrPri:=True;
      Abort;
    end;

    // ��������� ���������� ���������, �/��3
    try
      String_data:=PredDopVigorTask6.Text;
      if Pos('.',String_data)= 0 then
        dlq:=StrToFloat(String_data)
      else
        dlq:=StrToFloat(ChangeString(String_data));
    except
      Input_err(PredDopVigorTask6Caption.Text);
      ErrPri:=True;
      Abort;
    end;

    // �������� ������� �������� �������� ������������� �� �����  � ��, �/�
    try
      String_data:=ZadanSredZnachSkorTeplNaVhodVazTask6.Text;
      if Pos('.',String_data)= 0 then
        wvh:=StrToFloat(String_data)
      else
        wvh:=StrToFloat(ChangeString(String_data));
    except
      Input_err(ZadanSredZnachSkorTeplNaVhodVazTask6Caption.Text);
      ErrPri:=True;
      Abort;
    end;
    
  end;

  if k = 7 then
  begin

    // ������� �����, ��
    try
      String_data:=DiamTvelaTask7.Text;
      if Pos('.',String_data)= 0 then
        dtv:=StrToFloat(String_data)
      else
        dtv:=StrToFloat(ChangeString(String_data));
    except
      Input_err(DiamTvelaTask7Caption.Text);
      ErrPri:=True;
      Abort;
    end;

    // ����� ����� �������, ��
    try
      String_data:=ZazorMezhdTvelamiTask7.Text;
      if Pos('.',String_data)= 0 then
        dltv:=StrToFloat(String_data)
      else
        dltv:=StrToFloat(ChangeString(String_data));
    except
      Input_err(ZazorMezhdTvelamiTask7Caption.Text);
      ErrPri:=True;
      Abort;
    end;

    // ����� ����� ���������, ��
    try
      String_data:=ZazorMezhdCassetTask7.Text;
      if Pos('.',String_data)= 0 then
        dlmk:=StrToFloat(String_data)
      else
        dlmk:=StrToFloat(ChangeString(String_data));
    except
      Input_err(ZazorMezhdCassetTask7Caption.Text);
      ErrPri:=True;
      Abort;
    end;

    // ����� ������
    try
      String_data:=ChisloCassetTask7.Text;
      if Pos('.',String_data)= 0 then
        nks:=StrToFloat(String_data)
      else
        nks:=StrToFloat(ChangeString(String_data));
    except
      Input_err(ChisloCassetTask7Caption.Text);
      ErrPri:=True;
      Abort;
    end;

    // ������ ��, ��
    try
      String_data:=VisotaAzTask7.Text;
      if Pos('.',String_data)= 0 then
        haz:=StrToFloat(String_data)
      else
        haz:=StrToFloat(ChangeString(String_data));
    except
      Input_err(VisotaAzTask7Caption.Text);
      ErrPri:=True;
      Abort;
    end;
    
  end;


//****************************���� ������ �� �����*********************************************












  MarsT();

  
 //****************************���������� �������*********************************************
  if MarsTIsset then
  begin
      TrController.TabIndex := 1;
      ScrollBox2.VertScrollBar.Position := 0;
      TR_TaskNumberResultOutput.Caption := '������' + ' ' + IntToStr(TasksControll.TabIndex + 1);
      TR_ReactorTypeResultOutput.Text := reactorType;
      TR_CassetTypeResultOutput.Text := �assetteType;
      TR_ShellMaterialTypeResultOutput.Text := shellMaterial;
      TR_FuelTypeResultOutput.Text := fuelMaterial;

      TabData.RowCount := 3;
      Tab.RowCount := 3;
      TabData.ColCount := 3;
      Tab.ColCount := 3;
      

      if (TasksControll.TabIndex + 1 = 1) or (TasksControll.TabIndex + 1 = 2) then
      begin
        TabData.RowCount := 5;
        if kmr = '����' then
          begin
            Tab.RowCount := 27;
          end;
        if kmr = '����' then
          begin
            Tab.RowCount := 24;
          end;
          
      end
      else
      begin
        TabData.RowCount := 6;
        if kmr = '����' then
          begin
            Tab.RowCount := 26;
          end;
        if kmr = '����' then
          begin
            Tab.RowCount := 23;
          end;
      end;

      with Tab do
      begin
        for iter1:=0 to ColCount do
          for iter2:=0 to RowCount do
            Cells[iter1,iter2]:='';
      end;
      with TabData do
      begin
        for iter1:=0 to ColCount do
          for iter2:=1 to RowCount do
            Cells[iter1,iter2]:='';
      end;


    TabData.ColWidths[0]:= Round(TabData.Width * 0.1);
    TabData.ColWidths[1]:= Round(TabData.Width * 0.8);
    TabData.ColWidths[2]:= Round(TabData.Width * 0.1);

    for iter := 0 to TabData.RowCount -  1  do
    begin
      TabData.RowHeights[iter] := Round(TabData.Height / TabData.RowCount);
    end;

    Tab.ColWidths[0]:= Round(Tab.Width * 0.1);
    Tab.ColWidths[1]:= Round(Tab.Width * 0.8);
    Tab.ColWidths[2]:= Round(Tab.Width * 0.1);

    for iter := 0 to Tab.RowCount - 1  do
    begin
      Tab.RowHeights[iter] := Round(Tab.Height / Tab.RowCount);
    end;


  // ���������� ��������� ������� �����������
    with TabData do
    begin 
      Cells[0,0]:='   � ';
      Cells[1,0]:='                 ��������';
      Cells[2,0]:=' ��������';

      if TasksControll.TabIndex + 1 = 1 then
      begin
      Cells[1,1]:= '��������� ������ �� � ��������';
      Cells[2,1]:= FloatToStr(hkd);
      Cells[1,2]:= '��������� ���������� ���������, �/��3';
      Cells[2,2]:=FloatToStr(dlq);
      Cells[1,3]:= '�������� ������� �������� �������� ������������� �� �����  � ��, �/�';
      Cells[2,3]:=FloatToStr(wvh);
      Cells[1,4]:= '���� ���� � ������ ��';
      Cells[2,4]:=FloatToStr(rh20);
      end;

      if TasksControll.TabIndex + 1 = 2 then
      begin
      Cells[1,1]:= '��������� ������ �� � ��������';
      Cells[2,1]:= FloatToStr(hkd);
      Cells[1,2]:= '����� ����� ���������, ��';
      Cells[2,2]:=FloatToStr(dlmk);
      Cells[1,3]:= '��������� ���������� ���������, �/��3';
      Cells[2,3]:=FloatToStr(dlq);
      Cells[1,4]:= '�������� ������� �������� �������� ������������� �� �����  � ��, �/�';
      Cells[2,4]:=FloatToStr(wvh);
      end;

      if TasksControll.TabIndex + 1 = 3 then
      begin
      Cells[1,1]:= '������� �����, ��';
      Cells[2,1]:= FloatToStr(dtv);
      Cells[1,2]:= '����� ����� �������, ��';
      Cells[2,2]:=FloatToStr(dltv);
      Cells[1,3]:= '����� ����� ���������, ��';
      Cells[2,3]:=FloatToStr(dlmk);
      Cells[1,4]:= '��������� ���������� ���������, �/��3';
      Cells[2,4]:=FloatToStr(dlq);
      Cells[1,5]:= '�������� ������� �������� �������� ������������� �� �����  � ��, �/�';
      Cells[2,5]:=FloatToStr(wvh);
      end;

      if TasksControll.TabIndex + 1 = 4 then
      begin
      Cells[1,1]:= '������� �����, ��';
      Cells[2,1]:= FloatToStr(dtv);
      Cells[1,2]:= '����� ����� �������, ��';
      Cells[2,2]:=FloatToStr(dltv);
      Cells[1,3]:= '����� ����� ���������, ��';
      Cells[2,3]:=FloatToStr(dlmk);
      Cells[1,4]:= '��������� ������ �� � ��������';
      Cells[2,4]:=FloatToStr(hkd);
      Cells[1,5]:= '��������� ���������� ���������, �/��3';
      Cells[2,5]:=FloatToStr(dlq);
      end;

      if TasksControll.TabIndex + 1 = 5 then
      begin
      Cells[1,1]:= '������� �����, ��';
      Cells[2,1]:= FloatToStr(dtv);
      Cells[1,2]:= '����� ����� �������, ��';
      Cells[2,2]:=FloatToStr(dltv);
      Cells[1,3]:= '����� ����� ���������, ��';
      Cells[2,3]:=FloatToStr(dlmk);
      Cells[1,4]:= '����� ������';
      Cells[2,4]:=FloatToStr(nks);
      Cells[1,5]:= '��������� ���������� ���������, �/��3';
      Cells[2,5]:=FloatToStr(dlq);
      end;

      if TasksControll.TabIndex + 1 = 6 then
      begin
      Cells[1,1]:= '������� �����, ��';
      Cells[2,1]:= FloatToStr(dtv);
      Cells[1,2]:= '����� ����� ���������, ��';
      Cells[2,2]:=FloatToStr(dlmk);
      Cells[1,3]:= '����� ������';
      Cells[2,3]:=FloatToStr(nks);
      Cells[1,4]:= '��������� ���������� ���������, �/��3';
      Cells[2,4]:=FloatToStr(dlq);
      Cells[1,5]:= '�������� ������� �������� �������� ������������� �� �����  � ��, �/�';
      Cells[2,5]:=FloatToStr(wvh);
      end;

      if TasksControll.TabIndex + 1 = 7 then
      begin
      Cells[1,1]:= '������� �����, ��';
      Cells[2,1]:= FloatToStr(dtv);
      Cells[1,2]:= '����� ����� �������, ��';
      Cells[2,2]:=FloatToStr(dltv);
      Cells[1,3]:= '����� ����� ���������, ��';
      Cells[2,3]:=FloatToStr(dlmk);
      Cells[1,4]:= '����� ������';
      Cells[2,4]:=FloatToStr(nks);
      Cells[1,5]:= '������ ��, ��';
      Cells[2,5]:=FloatToStr(haz);
      end;
    
    end; 

    with Tab do
    begin

      if TasksControll.TabIndex + 1 = 1 then
      begin
        N_data:=5;
        Ik:=29;
        Cells[1,0]:='������� �����, ��';
        Cells[2,0]:=Format('%7.2f',[dtv]);
        Cells[1,1]:='����� ����� �������, ��';
        Cells[2,1]:=Format('%7.2f',[dltv]);
        Cells[1,2]:='����� ����� ���������, ��';
        Cells[2,2]:=Format('%7.2f',[dlmk]);
        Cells[1,3]:='����� ������';
        Cells[2,3]:=Format('%7.1f',[nks]);
        Cells[1,4]:='������ ��, ��';
        Cells[2,4]:=Format('%7.2f',[haz]);
      end;

      if TasksControll.TabIndex + 1 = 2 then
      begin
        N_data:=5;
        Ik:=29;
        Cells[1,0]:='������� �����, ��';
        Cells[2,0]:=Format('%7.2f',[dtv]);
        Cells[1,1]:='����� ����� �������, ��';
        Cells[2,1]:=Format('%7.2f',[dltv]);
        Cells[1,2]:='����� ������';
        Cells[2,2]:=Format('%7.1f',[nks]);
        Cells[1,3]:='������ ��, ��';
        Cells[2,3]:=Format('%7.2f',[haz]);
        Cells[1,4]:='���� ���� � ������ ��';
        Cells[2,4]:=Format('%7.3f',[rh20]);
      end;

      if TasksControll.TabIndex + 1 = 3 then
      begin
        N_data:=4;
        Ik:=30;
        Cells[1,0]:='����� ������';
        Cells[2,0]:=Format('%7.1f',[nks]);
        Cells[1,1]:='��������� ������ �� � ��������';
        Cells[2,1]:=Format('%7.3f',[hkd]);
        Cells[1,2]:='������ ��, ��';
        Cells[2,2]:=Format('%7.2f',[haz]);
        Cells[1,3]:='���� ���� � ������ ��';
        Cells[2,3]:=Format('%7.3f',[rh20]);
      end;

      if TasksControll.TabIndex + 1 = 4 then
      begin
        N_data:=4;
        Ik:=30;
        Cells[1,0]:='����� ������';
        Cells[2,0]:=Format('%7.1f',[nks]);
        Cells[1,1]:='������ ��, ��';
        Cells[2,1]:=Format('%7.2f',[haz]);
        Cells[1,2]:='�������� ������� �������� �������� ������������� �� �����  � ��, �/�';
        Cells[2,2]:=Format('%7.3f',[wvh]);
        Cells[1,3]:='���� ���� � ������ ��';
        Cells[2,3]:=Format('%7.3f',[rh20]);
      end;

      if TasksControll.TabIndex + 1 = 5 then
      begin
        N_data:=4;
        Ik:=30;
        Cells[1,0]:='��������� ������ �� � ��������';
        Cells[2,0]:=Format('%7.3f',[hkd]);
        Cells[1,1]:='������ ��, ��';
        Cells[2,1]:=Format('%7.2f',[haz]);
        Cells[1,2]:='�������� ������� �������� �������� ������������� �� �����  � ��, �/�';
        Cells[2,2]:=Format('%7.3f',[wvh]);
        Cells[1,3]:='���� ���� � ������ ��';
        Cells[2,3]:=Format('%7.3f',[rh20]);
      end;

      if TasksControll.TabIndex + 1 = 6 then
      begin
        N_data:=4;
        Ik:=30;
        Cells[1,0]:='����� ����� �������, ��';
        Cells[2,0]:=Format('%7.2f',[dltv]);
        Cells[1,1]:='��������� ������ �� � ��������';
        Cells[2,1]:=Format('%7.3f',[hkd]);
        Cells[1,2]:='������ ��, ��';
        Cells[2,2]:=Format('%7.2f',[haz]);
        Cells[1,3]:='���� ���� � ������ ��';
        Cells[2,3]:=Format('%7.3f',[rh20]);
      end;

      if TasksControll.TabIndex + 1 = 7 then
      begin
        N_data:=4;
        Ik:=30;
        Cells[1,0]:='��������� ������ �� � ��������';
        Cells[2,0]:=Format('%7.3f',[hkd]);
        Cells[1,1]:='��������� ���������� ���������, �/��3';
        Cells[2,1]:=Format('%7.2f',[dlq]);
        Cells[1,2]:='�������� ������� �������� �������� ������������� �� �����  � ��, �/�';
        Cells[2,2]:=Format('%7.3f',[wvh]);
        Cells[1,3]:='���� ���� � ������ ��';
        Cells[2,3]:=Format('%7.3f',[rh20]);
      end;

      
    end;


    Ik:=0;
    (* ����� *)
    with Tab do 
    begin (* ����� *)
      Cells[1, N_data]:='����� ���� � �������';
      Cells[2, N_data]:=Format('%7.0f',[ztv]);
      Cells[1, N_data+1]:='������� �������, ��';
      Cells[2, N_data+1]:=Format('%7.2f',[dks]);
      Cells[1, N_data+2]:='������� ��, ��';
      Cells[2, N_data+2]:=Format('%7.2f',[daz]);
      Cells[1, N_data+3]:='���� ��������������� ���������� ������� � ������ ��';
      Cells[2, N_data+3]:=Format('%7.3f',[rk]);
      Cells[1, N_data+4]:='���� ���������� �������� ������ � ������ ��';
      Cells[2, N_data+4]:=Format('%7.3f',[rob]);
      Cells[1, N_data+5]:='���� ������� � ������';
      Cells[2, N_data+5]:=Format('%7.3f',[rtop]);
      if Kmr='����' then
      begin
        Ik:=7;
        Cells[1, N_data+6]:='���� ��,������� �������������';
        Cells[2, N_data+6]:=Format('%7.3f',[le]);
      end
      else
        Ik:=6;
      Cells[1, N_data+Ik]:='������� �������� ����� � ��, ��/�2';
      Cells[2, N_data+Ik]:=Format('%7.1f',[qsr]);
      Cells[1, N_data+Ik+1]:='�����������  �������� ����� � ��, ��/�2';
      Cells[2, N_data+Ik+1]:=Format('%7.1f',[qkr]);
      Cells[1, N_data+Ik+2]:='����� �� �������';
      Cells[2, N_data+Ik+2]:=Format('%7.3f',[kqp]);
      Cells[1, N_data+Ik+3]:='������������ ����������� �������, ����.�';
      Cells[2, N_data+Ik+3]:=Format('%7.2f',[ttmax]);
      Cells[1, N_data+Ik+4]:='����������� ������������� �� ������ �� ���, ����.�';
      Cells[2, N_data+Ik+4]:=Format('%7.2f',[tvimk]);
      Cells[1, N_data+Ik+5]:='����������� ������������� �� ������ �� ������ �� ������ �� ���, ����.�';
      Cells[2, N_data+Ik+5]:=Format('%7.2f',[tviks]);
      Cells[1, N_data+Ik+6]:='������� �������� ����� ����������� � ��,  �3/��';
      Cells[2, N_data+Ik+6]:=Format('%7.5f',[vazsr]);
      Cells[1, N_data+Ik+7]:='����������� ����������� ��, �2';
      Cells[2, N_data+Ik+7]:=Format('%7.2f',[saz]);
      Cells[1, N_data+Ik+8]:='������ ������������� ����� ��, ��/�';
      Cells[2, N_data+Ik+8]:=Format('%7.3f',[gaz]);
      Cells[1, N_data+Ik+9]:='�������� �������������, ���';
      Cells[2, N_data+Ik+9]:=Format('%7.2f',[p]);
      if Kmr='����' then
      begin
        Ik:=18;
        Cells[1, N_data+17]:='�������� �������������� �� ������ �� A3';
        Cells[2, N_data+17]:=Format('%7.4f',[xk]);
        Cells[1, N_data+18]:='������� �������� o������� ��������������';
        Cells[2, N_data+18]:=Format('%7.4f',[fi]);
      end
      else
        Ik:=15;
      Cells[1, N_data+Ik+1]:='�������������� ���������,�/��3';
      Cells[2, N_data+Ik+1]:=Format('%7.4f',[ddlq]);
      Cells[1, N_data+Ik+2]:='�������������� �������� �������� ������������� �� ����� � ��, �/�';
      Cells[2, N_data+Ik+2]:=Format('%7.3f',[wvhd]);
    end; (* ����� *)

    for iter1 := 1 to TabData.RowCount do
    begin
      TabData.Cells[0,iter1] := Inttostr(iter1);
    end;
    
    for iter1 := 0 to Tab.RowCount do
    begin
      Tab.Cells[0,iter1] := Inttostr(iter1 + TabData.RowCount);
    end;


    

  end;
 //****************************���������� �������*********************************************

 termoisset := true;

end;




procedure TMars.Button4Click(Sender: TObject);
  procedure Conditions;
  begin
    if((kef < 1.011) and ((rg >= rdop) or (xnk >= 0.93))) then
    begin (* 7 *)
      MessageDlg('�������� �������� !!!'  +#10#13 + #10#13 +
                 'xnk= '+ Format('%5.2f', [xnk]) + #10#13 +
                 'rg=' + Format('%5.2f',[rg]) + #10#13 +
                 'kef=' + Format('%7.4f',[kef]) + #10#13 +
                 'pb=' + Format('%7.4e',[pb]) + #10#13 + #10#13 +
                 '����� � ������ �������� �������',
                 mtError,[mbOk],
                 0);
      Abort;
      //FormFrData.PageControl1.ActivePage:=FormFrData.TabSheet4;
      //FormFrData.Close;
    end;  (* 7 *)
  end;
var
Ip,Ik: byte;
begin

    ksh20:=1.35;   // ����������� ����������� ���� ��� 20����.�� 1/��
    sa5:=681.0;    // ������������ ������� ��������� U-235, ����
    sf5:=583.0;    // ������������ ������� ������� U-235, ����
    ss5:=5.12;     // ������������ ��������� ��������� U-235, ����
    sa8:=2.71;     // ������������ ������� ��������� U-238, ����
    ss8:=20.0;     // ������������ ��������� ��������� U-238, ����
    sah20:=0.664;  // ������������ ������� ��������� ��������� ����, ����
    ssh20:=44.0;   // ������������ ��������� ��������� ��������� ����, ����
    a:=0.6023;     // ����� ��������

    // ����� ������ ����� � �������� ��������
    String_data:=FR_ChisloAtomovUrVMollekuleGor.Text;
    if String_data<>'' then
    begin
      try
        if Pos('.',String_data)= 0 then
          nu:=StrToFloat(String_data)
        else
          nu:=StrToFloat(ChangeString(String_data));
      except
        Input_err(FR_ChisloAtomovUrVMollekuleGorCaption.Text);
        ErrPri:=True;
        Abort;
      end;

    end
    else
    begin
      ShowMessage('������� '+FR_ChisloAtomovUrVMollekuleGorCaption.Text);
      exit;
    end;

    // ����� ������ i-��� �������� � �������� ��������
    String_data:=FR_ChisloAtomIogoElemVMollekuleGor.Text;
    if String_data<>'' then
    begin
      try
        if Pos('.',String_data)= 0 then
          ni:=StrToFloat(String_data)
        else
          ni:=StrToFloat(ChangeString(String_data));
      except
        Input_err(FR_ChisloAtomIogoElemVMollekuleGorCaption.Text);
        ErrPri:=True;
        Abort;
      end;
    end
    else
    begin
      ShowMessage('������� '+FR_ChisloAtomIogoElemVMollekuleGorCaption.Text);
      exit;
    end;

    // ������������ ��� ��������, �.�.�.
    String_data:=FR_MolekulVesGor.Text;
    if String_data<>'' then
    begin
      try
        if Pos('.',String_data)= 0 then
          m:=StrToFloat(String_data)
        else
          m:=StrToFloat(ChangeString(String_data));
      except
        Input_err(FR_MolekulVesGorCaption.Text);
        ErrPri:=True;
        Abort;
      end;
    end
    else
    begin
      ShowMessage('������� '+FR_MolekulVesGorCaption.Text);
      exit;
    end;

    // ��������� ��������, �/��3
    String_data:=FR_PlotnGor.Text;
    if String_data<>'' then
    begin
      try
        if Pos('.',String_data)= 0 then
          rog:=StrToFloat(String_data)
        else
          rog:=StrToFloat(ChangeString(String_data));
      except
        Input_err(FR_PlotnGorCaption.Text);
        ErrPri:=True;
        Abort;
      end;
    end
    else
    begin
      ShowMessage('������� '+FR_PlotnGorCaption.Text);
      exit;
    end;

    // ������������ ������� ��������� ������ i-ro �������� �������, ����
    String_data:=FR_MicroSechZahvNeitrYadrIogoElementaTopliva.Text;
    if String_data<>'' then
    begin
      try
        if Pos('.',String_data)= 0 then
          sai:=StrToFloat(String_data)
        else
          sai:=StrToFloat(ChangeString(String_data));
      except
        Input_err(FR_MicroSechZahvNeitrYadrIogoElementaToplivaCaption.Text);
        ErrPri:=True;
        Abort;
      end;
    end
    else
    begin
      ShowMessage('������� '+FR_MicroSechZahvNeitrYadrIogoElementaToplivaCaption.Text);
      exit;
    end;

    // ������������ ��������� ��������� ������ i-ro �������� �������, ����
    String_data:=FR_MicroSechRassNeitrYadrIogoElemTopl.Text;
    if String_data<>'' then
    begin
      try
        if Pos('.',String_data)= 0 then
          ssi:=StrToFloat(String_data)
        else
          ssi:=StrToFloat(ChangeString(String_data));
      except
        Input_err(FR_MicroSechRassNeitrYadrIogoElemToplCaption.Text);
        ErrPri:=True;
        Abort;
      end;
    end
    else
    begin
      ShowMessage('������� '+FR_MicroSechRassNeitrYadrIogoElemToplCaption.Text);
      exit;
    end;

    // ������������ ������� ��������� ���������� �������� ����, 1/��
    String_data:=FR_MacroSechZahvNeitrMaterObolTvela.Text;
    if String_data<>'' then
    begin
      try
        if Pos('.',String_data)= 0 then
          siaob1:=StrToFloat(String_data)
        else
          siaob1:=StrToFloat(ChangeString(String_data));
      except
        Input_err(FR_MacroSechZahvNeitrMaterObolTvelaCaption.Text);
        ErrPri:=True;
        Abort;
      end;
    end
    else
    begin
      ShowMessage('������� '+FR_MacroSechZahvNeitrMaterObolTvelaCaption.Text);
      exit;
    end;

    // ������������ ��������� ��������� ���������� �������� ����, 1/��
    String_data:=FR_MacroSechRassNeitrMaterOblTvela.Text;
    if String_data<>'' then
    begin
      try
        if Pos('.',String_data)= 0 then
          sisob1:=StrToFloat(String_data)
        else
          sisob1:=StrToFloat(ChangeString(String_data));
      except
        Input_err(FR_MacroSechRassNeitrMaterOblTvelaCaption.Text);
        ErrPri:=True;
        Abort;
      end;
    end
    else
    begin
      ShowMessage('������� '+FR_MacroSechRassNeitrMaterOblTvelaCaption.Text);
      exit;
    end;

    // ������������ ������� ��������� ��������������� ���������� �������, 1/��
    String_data:=FR_MacroSechZahvNeitrKonstrMaterCasset.Text;
    if String_data<>'' then
    begin
      try
        if Pos('.',String_data)= 0 then
          siak1:=StrToFloat(String_data)
        else
          siak1:=StrToFloat(ChangeString(String_data));
      except
        Input_err(FR_MacroSechZahvNeitrKonstrMaterCassetCaption.Text);
        ErrPri:=True;
        Abort;
      end;
    end
    else
    begin
      ShowMessage('������� '+FR_MacroSechZahvNeitrKonstrMaterCassetCaption.Text);
      exit;
    end;

    // ������������ ��������� ��������� ��������������� ���������� �������, 1/��
    String_data:=FR_MacroSechRassNeitrKonstrMaterCasset.Text;
    if String_data<>'' then
    begin
      try
        if Pos('.',String_data)= 0 then
          sisk1:=StrToFloat(String_data)
        else
          sisk1:=StrToFloat(ChangeString(String_data));
      except
        Input_err(FR_MacroSechRassNeitrKonstrMaterCassetCaption.Text);
        ErrPri:=True;
        Abort;
      end;
    end
    else
    begin
      ShowMessage('������� '+FR_MacroSechRassNeitrKonstrMaterCassetCaption.Text);
      exit;
    end;

    // ������������ ������� ��������� ���������� �������, 1/��
    String_data:=FR_MacroSechZahvNeitrMaterMatr.Text;
    if String_data<>'' then
    begin
      try
        if Pos('.',String_data)= 0 then
          siam1:=StrToFloat(String_data)
        else
          siam1:=StrToFloat(ChangeString(String_data));
      except
        Input_err(FR_MacroSechZahvNeitrMaterMatrCaption.Text);
        ErrPri:=True;
        Abort;
      end;
    end
    else
    begin
      ShowMessage('������� '+FR_MacroSechZahvNeitrMaterMatrCaption.Text);
      exit;
    end;

    // ������������ ��������� ��������� ���������� �������, 1/��
    String_data:=FR_MacroSechRassNeitrMaterMatr.Text;
    if String_data<>'' then
    begin
      try
        if Pos('.',String_data)= 0 then
          sism1:=StrToFloat(String_data)
        else
          sism1:=StrToFloat(ChangeString(String_data));
      except
        Input_err(FR_MacroSechRassNeitrMaterMatrCaption.Text);
        ErrPri:=True;
        Abort;
      end;
    end
    else
    begin
      ShowMessage('������� '+FR_MacroSechRassNeitrMaterMatrCaption.Text);
      exit;
    end;

    // ���������� ���� �������� � ��������� ����������
    String_data:=FR_DopDolGorvToplCompos.Text;
    if String_data<>'' then
    begin
      try
        if Pos('.',String_data)= 0 then
          rdop:=StrToFloat(String_data)
        else
          rdop:=StrToFloat(ChangeString(String_data));
      except
        Input_err(FR_DopDolGorvToplComposCaption.Text);
        ErrPri:=True;
        Abort;
      end;
    end
    else
    begin
      ShowMessage('������� '+FR_DopDolGorvToplComposCaption.Text);
      exit;
    end;

    // ����� ��������
    String_data:=FR_DolGorOrObogash.Text;
    if String_data<>'' then
    begin
      try
        if Pos('.',String_data)= 0 then
          case FR_DolGorOrObogashCombobox.ItemIndex of
            0: xnk:=StrToFloat(String_data);
            1: rg:=StrToFloat(String_data);
          end
          else
            case FR_DolGorOrObogashCombobox.ItemIndex of
              0: xnk:=StrToFloat(ChangeString(String_data));
              1: rg:=StrToFloat(ChangeString(String_data));
            end;
      except

        if FR_DolGorOrObogashCombobox.ItemIndex = 0 then
        begin
            ErrText:=FR_DolGorOrObogashCombobox.Items[0];
        end;

        if FR_DolGorOrObogashCombobox.ItemIndex = 1 then
        begin
            ErrText:=FR_DolGorOrObogashCombobox.Items[1];
        end;

      Input_err(ErrText); ErrPri:=True; Abort  end;
    end
    else
    begin
      ShowMessage('������� ���� �������� ��� ����������');
      exit;
    end;

       with FrTab do
    begin (* ���������� ������� �����������  *)
       //    ���������� ���������
      Cells[0,0]:='   � ';
      Cells[1,0]:='                 ��������/��������� ��������';
      Cells[2,0]:=' �������';
      Cells[3,0]:=' �������';
      Cells[4,0]:=' ��������';
      // ���������� ������� ������� �����
      for Ip:=1 to (Tab.RowCount-1) do
        Cells[0,Ip]:=Format('%5d',[Ip]);
      Cells[1,1]:='����������� ����������� ����������� ���������';
      Cells[1,2]:='����������� ������������� �������� ���������';
      Cells[1,3]:='����������� ����������� �� ������� ���������';
      Cells[1,4]:='����������� �������� ������������ �������';
      Cells[1,5]:='����������� �������� ������ ��� �������� ���������';
      Cells[1,6]:='����������� �������� ������ ��� ������� ���������';
      Cells[1,7]:='����������';
      Cells[1,8]:='����� ����� - 235, ��';
      Cells[1,9]:='����� ��������, ��';
      Cells[1,10]:='����� ��������, ��';
      Cells[1,11]:='���� �������� � ��������� ����������';
      Cells[1,12]:='���������� ����� *�-13, �/(��2*�)';
      Cells[1,13]:='����������� ����������� ����, ����.�';
      Cells[1,14]:='������� ��������� � ��, ��2';
      Cells[1,15]:='������������ ���� �����-235 *�-03, ��3';
      Cells[1,16]:='������������ ���� �����-238 *�-03, ��3';
    end; (* ���������� ������� �����������  *)

    Nvf:=0;    // ����� �������� �������

    Nvf:=Nvf+1;   // ����� ��������

  ipo:=FR_DolGorOrObogashCombobox.ItemIndex+1;  // �������� ����� ���������� ��� ���� ��������
  vaz:=Pi/4*haz*daz*daz*1.0E-03;   // ����� A3
  roh20:=1.0E-3/vazsr;
  dlg5:=nr*t/18.6;
  // ��� ���������� ������������� ���������� U-235 �� ������ ��������
  {If ipo = 1 Then rg:=rdop; }
  // xnk �������� 0,99 � ��� �������� ������ ���� ������ 0,93
  If ipo = 1 Then rg:=rdop;
  if ipo = 2 then
    xnk:=0.99;
  //ggnk:=vaz*rtop*rg*rog;    // ����� �������� �� ������ ��������
  g5nk:=dlg5+10; {ggnk*xnk*235/m;}
  ggnk:=m*g5nk/(235*xnk);
  g5:=g5nk-dlg5;            // ����� U-235  �� ����� ��������
  rg:= ggnk/(rog*vaz*rtop);

  while  (Abs(kef-1.011)> 0.0001) do
  begin (* ������ *)
    MarsF(ipo,1);                   // ���������-���������� ������ �������� �������� �� ����� ��������
    Conditions;
    g8:=gg*(1-xkk)*238/m;
    kvospr:=sa8/sa5*g8/(g5nk-g5)*Ln(g5nk/g5)+2.07*Eps*(1-prez)*pb;
    gpu:=kvospr*dlg5; // �� ����� ���� ips=l
  end; (* ������ *)
  with  FrTab do
  begin  (* ����� *)
 // �����  �������� - �������
    Cells[2,1]:=Format('%7.4f',[kef]);           // ����������� ����������� ����������� ���������
    Cells[2,2]:=Format('%7.4f',[teta]);          // ����������� ������������� �������� ���������
    Cells[2,3]:=Format('%7.4f',[eps]);           // ����������� ����������� �� ������� ���������
    Cells[2,4]:=Format('%7.4f',[prez]);          // ����������� �������� ������������ �������
    Cells[2,5]:=Format('%7.4f',[pt]);            // ����������� �������� ������ ��� �������� ���������
    Cells[2,6]:=Format('%7.4f',[pb]);            // ����������� �������� ������ ��� ������� ���������
    Cells[2,7]:=Format('%7.3f',[xkk]);           // ����������
    Cells[2,8]:=Format('%7.3f',[g5*1e-03]);      // ����� ����� - 235, ��
    Cells[2,9]:=Format('%7.3f',[gg*1e-03]);      // ����� �������� �� ����� ��������, ��
    Cells[2,10]:=Format('%7.3f',[gpu*1e-03]);    // ����� ��������, ��
    Cells[2,11]:=Format('%7.3f',[rg]);           // ���� �������� � ��������� ����������
    Cells[2,12]:=Format('%7.3f',[fin*1e-13]);    // ���������� �����
    Cells[2,13]:=Format('%7.1f',[tng]);          // ����������� ����������� ����, ����.�
    Cells[2,14]:=Format('%7.1f',[tau]);          // ������� ��������� � ��, ��2
    Cells[2,15]:=Format('%7.4f',[n5*1e03]);      // ������������ ���� U-235 � ������ A3
    Cells[2,16]:=Format('%7.4f',[n8*1e03]);      // ������������ ���� U-238 � ������ A3
      col1_data1 := kef;
      col1_data2 := teta;
      col1_data3 := eps;
      col1_data4 := prez;
      col1_data5 := pt;
      col1_data6 := pb;
      col1_data7 := xkk;
      col1_data8 := g5*1e-03;
      col1_data9 := gg*1e-03;
      col1_data10 := gpu*1e-03;
      col1_data11 := rg;
      col1_data12 := fin*1e-13;
      col1_data13 := tng;
      col1_data14 := tau;
      col1_data15 := n5*1e03;
      col1_data16 := n8*1e03;

  end; (* ����� *)
  // ���������-���������� ������ �������� �������� �� ������ ��������
  ggnk:=vaz*rtop*rg*rog;    // ����� �������� �� ������ ��������
  g5nk:=ggnk*xnk*235/m;
  g5:=g5nk;  dlg5:=0;   gpu:=0;

  MarsF(ipo,2);
  Conditions;
  with  FrTab do
  begin  (* ����� *)
    // ������ �������� - �������
    Cells[3,1]:=Format('%7.4f',[kef]);           // ����������� ����������� ����������� ���������
    Cells[3,2]:=Format('%7.4f',[teta]);          // ����������� ��������� �������������  �� �������� ���������
    Cells[3,3]:=Format('%7.4f',[eps]);           // ����������� ����������� �� ������� ���������
    Cells[3,4]:=Format('%7.4f',[prez]);          // ����������� �������� ������������ �������
    Cells[3,5]:=Format('%7.4f',[pt]);            // ����������� �������� ������ ��� �������� ���������
    Cells[3,6]:=Format('%7.4f',[pb]);            // ����������� �������� ������ ��� ������� ���������
    Cells[3,7]:=Format('%7.3f',[xnk]);           // ����������
    Cells[3,8]:=Format('%7.3f',[g5nk*1e-03]);    // ����� ����� - 235 �� ������ ��������, ��
    Cells[3,9]:=Format('%7.3f',[ggnk*1e-03]);    // ����� �������� �� ������ ��������, ��
    Cells[3,10]:=Format('%7.3f',[gpu*1e-3]);     // ����� ��������, ��
    Cells[3,11]:=Format('%7.3f',[rg]);           // ���� �������� � ��������� ����������
    Cells[3,12]:=Format('%7.3f',[fin*1e-13]);    // ���������� �����
    Cells[3,13]:=Format('%7.1f',[tng]);          // ����������� ����������� ����, ����.�
    Cells[3,14]:=Format('%7.1f',[tau]);          // ������� ��������� � ��, ��2
    Cells[3,15]:=Format('%7.4f',[n5*1e03]);      // ������������ ���� U-235 � ������ A3
    Cells[3,16]:=Format('%7.4f',[n8*1e03]);      // ������������ ���� U-238 � ������ A3

      col2_data1 := kef;
      col2_data2 := teta;
      col2_data3 := eps;
      col2_data4 := prez;
      col2_data5 := pt;
      col2_data6 := pb;
      col2_data7 := xnk;
      col2_data8 := g5nk*1e-03;
      col2_data9 := ggnk*1e-03;
      col2_data10 := gpu*1e-03;
      col2_data11 := rg;
      col2_data12 := fin*1e-13;
      col2_data13 := tng;
      col2_data14 := tau;
      col2_data15 := n5*1e03;
      col2_data16 := n8*1e03;
  end; (* ����� *)
  ggnk:=vaz*rtop*rg*rog;    // ����� �������� �� ������ ��������
  g5nk:=ggnk*xnk*235/m;
  g5:=g5nk;  dlg5:=0;   gpu:=0;
  roh20:=1;      // ��������� ����
  gpu:=0; // �� ������ ��������
  MarsF(ipo,3);        // ���������-���������� ������ ��������� �������� �� ������ ��������
  Conditions;

  With  FrTab do
  begin  (* ����� *)
    // ������ �������� - ��������
    Cells[4,1]:=Format('%7.4f',[kef]);           // ����������� ����������� ����������� ���������
    Cells[4,2]:=Format('%7.4f',[teta]);          // ����������� ��������� ������������� �� �������� ���������
    Cells[4,3]:=Format('%7.4f',[eps]);           // ����������� ����������� �� ������� ���������
    Cells[4,4]:=Format('%7.4f',[prez]);          // ����������� �������� ������������ �������
    Cells[4,5]:=Format('%7.4f',[pt]);            // ����������� �������� ������ ��� �������� ���������
    Cells[4,6]:=Format('%7.4f',[pb]);            // ����������� �������� ������ ��� ������� ���������
    Cells[4,7]:=Format('%7.3f',[xnk]);           // ����������
    Cells[4,8]:=Format('%7.3f',[g5nk*1e-03]);    // ����� ����� - 235 �� ������ ��������, ��
    Cells[4,9]:=Format('%7.3f',[ggnk*1e-03]);    // ����� �������� �� ������ ��������, ��
    Cells[4,10]:=Format('%7.3f',[gpu*1e-03]);    // ����� ��������, ��
    Cells[4,11]:=Format('%7.3f',[rg]);           // ���� �������� � ��������� ����������
    Cells[4,12]:=Format('%7.3f',[fin*1e-13]);    // ���������� �����
    Cells[4,13]:=Format('%7.1f',[tng]);          // ����������� ����������� ����, ����.�
    Cells[4,14]:=Format('%7.1f',[tau]);          // ������� ��������� � ��, ��2
    Cells[4,15]:=Format('%7.4f',[n5*1e03]);      // ������������ ���� U-235 � ������ A3
    Cells[4,16]:=Format('%7.4f',[n8*1e03]);      // ������������ ���� U-238 � ������ A3

      col3_data1 := kef;
      col3_data2 := teta;
      col3_data3 := eps;
      col3_data4 := prez;
      col3_data5 := pt;
      col3_data6 := pb;
      col3_data7 := xnk;
      col3_data8 := g5nk*1e-03;
      col3_data9 := ggnk*1e-03;
      col3_data10 := gpu*1e-03;
      col3_data11 := rg;
      col3_data12 := fin*1e-13;
      col3_data13 := tng;
      col3_data14 := tau;
      col3_data15 := n5*1e03;
      col3_data16 := n8*1e03;
  end; (* ����� *)

  phisTisset := true;
  FrController.TabIndex := 1;
  FrTab.ColWidths[0] := Round(FrTab.Width * 0.05);
  FrTab.ColWidths[1] := Round(FrTab.Width * 0.65);
  FrTab.ColWidths[2] := Round(FrTab.Width * 0.10);
  FrTab.ColWidths[3] := Round(FrTab.Width * 0.10);
  FrTab.ColWidths[4] := Round(FrTab.Width * 0.10);



end;

procedure TMars.ComboBox1Change(Sender: TObject);
begin


    case Combobox1.ItemIndex of

    0: begin
           Edit14.Text := FloatTostr(12);
           Edit17.Text := FloatTostr(9.6);
           Edit20.Text := FloatTostr(1);
           Edit23.Text := FloatTostr(2);
           Edit26.Text := FloatTostr(267);
           Edit29.Text := FloatTostr(0.0002);
           Edit32.Text := FloatTostr(3.75);
       end;

     1: begin
           Edit14.Text := FloatTostr(14);
           Edit17.Text := FloatTostr(9.6);
           Edit20.Text := FloatTostr(1);
           Edit23.Text := FloatTostr(2);
           Edit26.Text := FloatTostr(267);
           Edit29.Text := FloatTostr(0.0002);
           Edit32.Text := FloatTostr(3.75);
       end;

     2: begin
           Edit14.Text := FloatTostr(120);
           Edit17.Text := FloatTostr(9.6);
           Edit20.Text := FloatTostr(1);
           Edit23.Text := FloatTostr(2);
           Edit26.Text := FloatTostr(267);
           Edit29.Text := FloatTostr(0.0002);
           Edit32.Text := FloatTostr(3.75);
       end;

     3: begin
           Edit14.Text := FloatTostr(80);
           Edit17.Text := FloatTostr(6.5);
           Edit20.Text := FloatTostr(1);
           Edit23.Text := FloatTostr(3);
           Edit26.Text := FloatTostr(316);
           Edit29.Text := FloatTostr(0.24);
           Edit32.Text := FloatTostr(1.4);
       end;

     4: begin
           Edit14.Text := FloatTostr(17);
           Edit17.Text := FloatTostr(6.5);
           Edit20.Text := FloatTostr(1);
           Edit23.Text := FloatTostr(3);
           Edit26.Text := FloatTostr(316);
           Edit29.Text := FloatTostr(0.24);
           Edit32.Text := FloatTostr(1.4);
       end;

     5: begin
           Edit14.Text := FloatTostr(15);
           Edit17.Text := FloatTostr(12);
           Edit20.Text := FloatTostr(1);
           Edit23.Text := FloatTostr(1);
           Edit26.Text := FloatTostr(326);
           Edit29.Text := FloatTostr(0.185);
           Edit32.Text := FloatTostr(6.2);
       end;

    end;

end;

procedure TMars.DarkThemeModeCheckBoxClick(Sender: TObject);
begin
    if DarkThemeModeCheckBox.Checked then
    begin
       TStyleManager.SetStyle('Glossy');
    end
    else
    begin
       TStyleManager.SetStyle('Iceberg Classico');
    end;
end;

procedure TMars.FormCreate(Sender: TObject);

begin
  //WindowState := wsMaximized;
  Mars.ClientWidth:= 1600;
  Mars.ClientHeight := 900;
  //TStyleManager.SetStyle('Iceberg Classico');
  //TStyleManager.SetStyle('Charcoal Dark Slate');
  //TStyleManager.SetStyle('Glossy');
  TStyleManager.SetStyle('Iceberg Classico');
  materialsIsset := False;
  termoIsset := False;
  MarsTIsset := False;
  phisTisset := False;
  physicsIsset := False;
  notTypicalFuelMaterial := False;
  notTypicalMatrixMaterial := False;
  notTypicalCassetteMaterial := False;
  notTypicalShellMaterial := False;
  reactorGroup.ItemIndex := 0;
  MainController.ActivePageIndex := 0;
  Task1Panel.Visible := true;
  Task2Panel.Visible := false;
  Task3Panel.Visible := false;
  Task4Panel.Visible := false;
  Task5Panel.Visible := false;
  Task6Panel.Visible := false;
  Task7Panel.Visible := false;
  Tab.FixedColor := clNone;
  TabData.FixedColor := clNone;
  Tab.Enabled := false;
  TabData.Enabled := false;


      case Combobox1.ItemIndex of

    0: begin
           Edit14.Text := FloatTostr(12);
           Edit17.Text := FloatTostr(9.6);
           Edit20.Text := FloatTostr(1);
           Edit23.Text := FloatTostr(2);
           Edit26.Text := FloatTostr(267);
           Edit29.Text := FloatTostr(0.0002);
           Edit32.Text := FloatTostr(3.75);
       end;

     1: begin
           Edit14.Text := FloatTostr(14);
           Edit17.Text := FloatTostr(9.6);
           Edit20.Text := FloatTostr(1);
           Edit23.Text := FloatTostr(2);
           Edit26.Text := FloatTostr(267);
           Edit29.Text := FloatTostr(0.0002);
           Edit32.Text := FloatTostr(3.75);
       end;

     2: begin
           Edit14.Text := FloatTostr(120);
           Edit17.Text := FloatTostr(9.6);
           Edit20.Text := FloatTostr(1);
           Edit23.Text := FloatTostr(2);
           Edit26.Text := FloatTostr(267);
           Edit29.Text := FloatTostr(0.0002);
           Edit32.Text := FloatTostr(3.75);
       end;

     3: begin
           Edit14.Text := FloatTostr(80);
           Edit17.Text := FloatTostr(6.5);
           Edit20.Text := FloatTostr(1);
           Edit23.Text := FloatTostr(3);
           Edit26.Text := FloatTostr(316);
           Edit29.Text := FloatTostr(0.24);
           Edit32.Text := FloatTostr(1.4);
       end;

     4: begin
           Edit14.Text := FloatTostr(17);
           Edit17.Text := FloatTostr(6.5);
           Edit20.Text := FloatTostr(1);
           Edit23.Text := FloatTostr(3);
           Edit26.Text := FloatTostr(316);
           Edit29.Text := FloatTostr(0.24);
           Edit32.Text := FloatTostr(1.4);
       end;

     5: begin
           Edit14.Text := FloatTostr(15);
           Edit17.Text := FloatTostr(12);
           Edit20.Text := FloatTostr(1);
           Edit23.Text := FloatTostr(1);
           Edit26.Text := FloatTostr(326);
           Edit29.Text := FloatTostr(0.185);
           Edit32.Text := FloatTostr(6.2);
       end;

    end;








end;



procedure TMars.FormResize(Sender: TObject);
var iter : integer;
begin


    TabData.ColWidths[0]:= Round(TabData.Width * 0.1);
    TabData.ColWidths[1]:= Round(TabData.Width * 0.8);
    TabData.ColWidths[2]:= Round(TabData.Width * 0.1);

    for iter := 0 to TabData.RowCount - 1  do
    begin
      TabData.RowHeights[iter] := Round(TabData.Height / TabData.RowCount);
    end;

    Tab.ColWidths[0]:= Round(Tab.Width * 0.1);
    Tab.ColWidths[1]:= Round(Tab.Width * 0.8);
    Tab.ColWidths[2]:= Round(Tab.Width * 0.1);

    for iter := 0 to Tab.RowCount - 1  do
    begin
      Tab.RowHeights[iter] := Round(Tab.Height / Tab.RowCount);
    end;

    FrTab.ColWidths[0] := Round(FrTab.Width * 0.05);
    FrTab.ColWidths[1] := Round(FrTab.Width * 0.65);
    FrTab.ColWidths[2] := Round(FrTab.Width * 0.10);
    FrTab.ColWidths[3] := Round(FrTab.Width * 0.10);
    FrTab.ColWidths[4] := Round(FrTab.Width * 0.10);



end;

procedure TMars.FrControllerChange(Sender: TObject);
begin
    if phisTisset then
    begin
      FrTab.ColWidths[0] := Round(FrTab.Width * 0.05);
      FrTab.ColWidths[1] := Round(FrTab.Width * 0.65);
      FrTab.ColWidths[2] := Round(FrTab.Width * 0.10);
      FrTab.ColWidths[3] := Round(FrTab.Width * 0.10);
      FrTab.ColWidths[4] := Round(FrTab.Width * 0.10);
    end
    else
    begin
      FrController.TabIndex := 0;
      ShowMessage('������� ��� ������, � ����� ������� �� ������ �������')
    end;

end;

procedure TMars.FR_DolGorOrObogashComboboxSelect(Sender: TObject);
begin
      if FR_DolGorOrObogashCombobox.ItemIndex = 0 then
    FR_DolGorOrObogash.Text:='0,2'
  else
    FR_DolGorOrObogash.Text:='0,3';
end;

procedure TMars.FR_excelOutClick(Sender: TObject);
var
Wsheet : OleVariant;
it : integer;
begin
     ExcelApp := CreateOleObject('Excel.Application');
     ExcelApp.Visible := True;
     ExcelApp.Workbooks.Add;
     Wsheet := ExcelApp.WorkSheets[1];
     Wsheet.Activate;

     Wsheet.Range['a1'].ColumnWidth := 10;
     Wsheet.Range['b1'].ColumnWidth := 65;
     Wsheet.Range['c1'].ColumnWidth := 26;

     Wsheet.Range['d1'].ColumnWidth := 26;
     Wsheet.Range['e1'].ColumnWidth := 26;

     Wsheet.Range['a1','e17'].Borders.LineStyle:=1;
     //Wsheet.Range['f1','f5'].Font.FontStyle:= 'Bold';
     Wsheet.Range['a1','e1'].Font.FontStyle:= 'Bold';
     Wsheet.Range['a1'].Value := '�';
     Wsheet.Range['b1'].Value := '��������/��������� �������';
     Wsheet.Range['c1'].Value := '����� ��������. �������';
     Wsheet.Range['d1'].Value := '������ ��������. �������';
     Wsheet.Range['e1'].Value := '������ ��������. ��������';

     for it := 1 to 16 do
     begin
       Wsheet.Range[Format('a%d',[it + 1])]:=it;
     end;

      Wsheet.Range['b2'].Value:='����������� ����������� ����������� ���������';
      Wsheet.Range['b3'].Value:='����������� ������������� �������� ���������';
      Wsheet.Range['b4'].Value:='����������� ����������� �� ������� ���������';
      Wsheet.Range['b5'].Value:='����������� �������� ������������ �������';
      Wsheet.Range['b6'].Value:='����������� �������� ������ ��� �������� ���������';
      Wsheet.Range['b7'].Value:='����������� �������� ������ ��� ������� ���������';
      Wsheet.Range['b8'].Value:='����������';
      Wsheet.Range['b9'].Value:='����� ����� - 235, ��';
      Wsheet.Range['b10'].Value:='����� ��������, ��';
      Wsheet.Range['b11'].Value:='����� ��������, ��';
      Wsheet.Range['b12'].Value:='���� �������� � ��������� ����������';
      Wsheet.Range['b13'].Value:='���������� ����� *�-13, �/(��2*�)';
      Wsheet.Range['b14'].Value:='����������� ����������� ����, ����.�';
      Wsheet.Range['b15'].Value:='������� ��������� � ��, ��2';
      Wsheet.Range['b16'].Value:='������������ ���� �����-235 *�-03, ��3';
      Wsheet.Range['b17'].Value:='������������ ���� �����-238 *�-03, ��3';


    Wsheet.Range['c2'].Value:=col1_data1;
    Wsheet.Range['c3'].Value:=col1_data2;
    Wsheet.Range['c4'].Value:=col1_data3;
    Wsheet.Range['c5'].Value:=col1_data4;
    Wsheet.Range['c6'].Value:=col1_data5;
    Wsheet.Range['c7'].Value:=col1_data6;
    Wsheet.Range['c8'].Value:=col1_data7;
    Wsheet.Range['c9'].Value:=col1_data8;
    Wsheet.Range['c10'].Value:=col1_data9;
    Wsheet.Range['c11'].Value:=col1_data10;
    Wsheet.Range['c12'].Value:=col1_data11;
    Wsheet.Range['c13'].Value:=col1_data12;
    Wsheet.Range['c14'].Value:=col1_data13;
    Wsheet.Range['c15'].Value:=col1_data14;
    Wsheet.Range['c16'].Value:=col1_data15;
    Wsheet.Range['c17'].Value:=col1_data16;

    Wsheet.Range['d2'].Value:=col2_data1;
    Wsheet.Range['d3'].Value:=col2_data2;
    Wsheet.Range['d4'].Value:=col2_data3;
    Wsheet.Range['d5'].Value:=col2_data4;
    Wsheet.Range['d6'].Value:=col2_data5;
    Wsheet.Range['d7'].Value:=col2_data6;
    Wsheet.Range['d8'].Value:=col2_data7;
    Wsheet.Range['d9'].Value:=col2_data8;
    Wsheet.Range['d10'].Value:=col2_data9;
    Wsheet.Range['d11'].Value:=col2_data10;
    Wsheet.Range['d12'].Value:=col2_data11;
    Wsheet.Range['d13'].Value:=col2_data12;
    Wsheet.Range['d14'].Value:=col2_data13;
    Wsheet.Range['d15'].Value:=col2_data14;
    Wsheet.Range['d16'].Value:=col2_data15;
    Wsheet.Range['d17'].Value:=col2_data16;

    Wsheet.Range['e2'].Value:=col3_data1;
    Wsheet.Range['e3'].Value:=col3_data2;
    Wsheet.Range['e4'].Value:=col3_data3;
    Wsheet.Range['e5'].Value:=col3_data4;
    Wsheet.Range['e6'].Value:=col3_data5;
    Wsheet.Range['e7'].Value:=col3_data6;
    Wsheet.Range['e8'].Value:=col3_data7;
    Wsheet.Range['e9'].Value:=col3_data8;
    Wsheet.Range['e10'].Value:=col3_data9;
    Wsheet.Range['e11'].Value:=col3_data10;
    Wsheet.Range['e12'].Value:=col3_data11;
    Wsheet.Range['e13'].Value:=col3_data12;
    Wsheet.Range['e14'].Value:=col3_data13;
    Wsheet.Range['e15'].Value:=col3_data14;
    Wsheet.Range['e16'].Value:=col3_data15;
    Wsheet.Range['e17'].Value:=col3_data16;







end;

procedure TMars.MainControllerChange(Sender: TObject);
begin
    if MainController.ActivePageIndex = 1 then
    begin
      if not materialsIsset then
      begin

          showmessage('������� ��������� ��������');
          MainController.ActivePageIndex := 0;
      end;

    end;

    if MainController.ActivePageIndex = 2 then
    begin
      if not termoIsset then
      begin
      
        if not materialsIsset then
        begin

            showmessage('������� ��������� ��������');
            MainController.ActivePageIndex := 0;
        end
        else
        begin
            showmessage('��������� �������� ������');
            MainController.ActivePageIndex := 1;
        end;

      end
      else
      begin

        FR_ReactorType.Text := reactorType;
        FR_MaterialObl.Text := shellMaterial;
        FR_CassetType.Text := �assetteType;
        FR_Fuel.Text := FuelMaterial;
        FR_CassetMaterial.Text := �assetteMaterial;
        FR_MatrixMaterial.Text := matrixMaterial;

        FR_Result_ReactorType.Text := reactorType;
        FR_Result_MaterialObl.Text := shellMaterial;
        FR_Result_CassetType.Text := �assetteType;
        FR_Result_FuelType.Text := FuelMaterial;
        FR_Result_CassetMaterial.Text := �assetteMaterial;
        FR_Result_MatrixMaterial.Text := matrixMaterial;


        if fuelMaterialGroup.ItemIndex = 0 then
        begin
          FR_PlotnGor.Text := floatToStr(9.6);
          FR_ChisloAtomovUrVMollekuleGor.Text := floatToStr(1);
          FR_ChisloAtomIogoElemVMollekuleGor.Text := floatToStr(2);
          FR_MolekulVesGor.Text := floatToStr(267);
          FR_MicroSechZahvNeitrYadrIogoElementaTopliva.Text := floatToStr(0.0002);
          FR_MicroSechRassNeitrYadrIogoElemTopl.Text := floatToStr(3.75);
        end;

        if fuelMaterialGroup.ItemIndex = 1 then
        begin
          FR_PlotnGor.Text := floatToStr(9.6);
          FR_ChisloAtomovUrVMollekuleGor.Text := floatToStr(1);
          FR_ChisloAtomIogoElemVMollekuleGor.Text := floatToStr(2);
          FR_MolekulVesGor.Text := floatToStr(267);
          FR_MicroSechZahvNeitrYadrIogoElementaTopliva.Text := floatToStr(0.0002);
          FR_MicroSechRassNeitrYadrIogoElemTopl.Text := floatToStr(3.75);
        end;

        if fuelMaterialGroup.ItemIndex = 2 then
        begin
          FR_PlotnGor.Text := floatToStr(9.6);
          FR_ChisloAtomovUrVMollekuleGor.Text := floatToStr(1);
          FR_ChisloAtomIogoElemVMollekuleGor.Text := floatToStr(2);
          FR_MolekulVesGor.Text := floatToStr(267);
          FR_MicroSechZahvNeitrYadrIogoElementaTopliva.Text := floatToStr(0.0002);
          FR_MicroSechRassNeitrYadrIogoElemTopl.Text := floatToStr(3.75);
        end;

        if fuelMaterialGroup.ItemIndex = 3 then
        begin
          FR_PlotnGor.Text := floatToStr(6.5);
          FR_ChisloAtomovUrVMollekuleGor.Text := floatToStr(1);
          FR_ChisloAtomIogoElemVMollekuleGor.Text := floatToStr(3);
          FR_MolekulVesGor.Text := floatToStr(316);
          FR_MicroSechZahvNeitrYadrIogoElementaTopliva.Text := floatToStr(0.24);
          FR_MicroSechRassNeitrYadrIogoElemTopl.Text := floatToStr(1.4);
        end;

        if fuelMaterialGroup.ItemIndex = 4 then
        begin
          FR_PlotnGor.Text := floatToStr(6.5);
          FR_ChisloAtomovUrVMollekuleGor.Text := floatToStr(1);
          FR_ChisloAtomIogoElemVMollekuleGor.Text := floatToStr(3);
          FR_MolekulVesGor.Text := floatToStr(316);
          FR_MicroSechZahvNeitrYadrIogoElementaTopliva.Text := floatToStr(0.24);
          FR_MicroSechRassNeitrYadrIogoElemTopl.Text := floatToStr(1.4);
        end;

        if fuelMaterialGroup.ItemIndex = 5 then
        begin
          FR_PlotnGor.Text := floatToStr(12);
          FR_ChisloAtomovUrVMollekuleGor.Text := floatToStr(1);
          FR_ChisloAtomIogoElemVMollekuleGor.Text := floatToStr(1);
          FR_MolekulVesGor.Text := floatToStr(326);
          FR_MicroSechZahvNeitrYadrIogoElementaTopliva.Text := floatToStr(0.185);
          FR_MicroSechRassNeitrYadrIogoElemTopl.Text := floatToStr(6.2);
        end;



        if ShellGroup.ItemIndex = 0 then
        begin
          FR_MacroSechZahvNeitrMaterObolTvela.Text := floatToStr(0.24);
          FR_MacroSechRassNeitrMaterOblTvela.Text := floatToStr(0.85);
        end;

        if ShellGroup.ItemIndex = 1 then
        begin
          FR_MacroSechZahvNeitrMaterObolTvela.Text := floatToStr(0.045);
          FR_MacroSechRassNeitrMaterOblTvela.Text := floatToStr(0.22);
        end;



        if tvsMaterialGroup.ItemIndex = 0 then
        begin
          FR_MacroSechZahvNeitrKonstrMaterCasset.Text := floattostr(0.24);
          FR_MacroSechRassNeitrKonstrMaterCasset.Text := floattostr(0.85);
        end;

        if tvsMaterialGroup.ItemIndex = 1 then
        begin
          FR_MacroSechZahvNeitrKonstrMaterCasset.Text := floattostr(0.045);
          FR_MacroSechRassNeitrKonstrMaterCasset.Text := floattostr(0.22);
        end;

        if tvsMaterialGroup.ItemIndex = 2 then
        begin
          FR_MacroSechZahvNeitrKonstrMaterCasset.Text := floattostr(0.02);
          FR_MacroSechRassNeitrKonstrMaterCasset.Text := floattostr(0.1);
        end;


        if matrixMaterialGroup.ItemIndex = 0 then
        begin
          FR_MacroSechZahvNeitrMaterMatr.Text := floattostr(0.24);
          FR_MacroSechRassNeitrMaterMatr.Text := floattostr(0.85);
        end;

        if matrixMaterialGroup.ItemIndex = 1 then
        begin
          FR_MacroSechZahvNeitrMaterMatr.Text := floattostr(0.045);
          FR_MacroSechRassNeitrMaterMatr.Text := floattostr(0.22);
        end;

        if matrixMaterialGroup.ItemIndex = 2 then
        begin
          FR_MacroSechZahvNeitrMaterMatr.Text := floattostr(0.02);
          FR_MacroSechRassNeitrMaterMatr.Text := floattostr(0.1);
        end;




        FrTab.RowCount := 17;
        FrTab.ColCount := 5;
        FrTab.ColWidths[0] := Round(FrTab.Width * 0.05);
        FrTab.ColWidths[1] := Round(FrTab.Width * 0.65);
        FrTab.ColWidths[2] := Round(FrTab.Width * 0.10);
        FrTab.ColWidths[3] := Round(FrTab.Width * 0.10);
        FrTab.ColWidths[4] := Round(FrTab.Width * 0.10);
        
        
      end;

    end;


end;








procedure TMars.reactorGroupContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
    if reactorGroup.ItemIndex = 0 then
    begin
          ShowMessage('vvrd');
    end;

    if reactorGroup.ItemIndex = 1 then
    begin
          ShowMessage('vvrk');
    end;
end;





procedure TMars.reactorGroupEnter(Sender: TObject);
begin
  //termoisset:= false;
  //phisTIsset := false;
  //MarstIsset := false;
  //TrController.TabIndex := 0;
  //FrController.TabIndex := 0;
end;

procedure TMars.TasksControllClick(Sender: TObject);
begin

   case TasksControll.TabIndex + 1 of
      1:
       begin
           Task1Panel.Visible := true;
           Task2Panel.Visible := false;
           Task3Panel.Visible := false;
           Task4Panel.Visible := false;
           Task5Panel.Visible := false;
           Task6Panel.Visible := false;
           Task7Panel.Visible := false;
         end;

      2:
       begin
           Task1Panel.Visible := false;
           Task2Panel.Visible := true;
           Task3Panel.Visible := false;
           Task4Panel.Visible := false;
           Task5Panel.Visible := false;
           Task6Panel.Visible := false;
           Task7Panel.Visible := false;
         end;

      3:
       begin
           Task1Panel.Visible := false;
           Task2Panel.Visible := false;
           Task3Panel.Visible := true;
           Task4Panel.Visible := false;
           Task5Panel.Visible := false;
           Task6Panel.Visible := false;
           Task7Panel.Visible := false;
         end;

      4:
       begin
           Task1Panel.Visible := false;
           Task2Panel.Visible := false;
           Task3Panel.Visible := false;
           Task4Panel.Visible := true;
           Task5Panel.Visible := false;
           Task6Panel.Visible := false;
           Task7Panel.Visible := false;
         end;

      5:
       begin
           Task1Panel.Visible := false;
           Task2Panel.Visible := false;
           Task3Panel.Visible := false;
           Task4Panel.Visible := false;
           Task5Panel.Visible := true;
           Task6Panel.Visible := false;
           Task7Panel.Visible := false;
         end;

      6:
       begin
           Task1Panel.Visible := false;
           Task2Panel.Visible := false;
           Task3Panel.Visible := false;
           Task4Panel.Visible := false;
           Task5Panel.Visible := false;
           Task6Panel.Visible := true;
           Task7Panel.Visible := false;
         end;

      7:
       begin
           Task1Panel.Visible := false;
           Task2Panel.Visible := false;
           Task3Panel.Visible := false;
           Task4Panel.Visible := false;
           Task5Panel.Visible := false;
           Task6Panel.Visible := false;
           Task7Panel.Visible := true;
         end;


   end;
end;

procedure TMars.ToFrClick(Sender: TObject);
begin
    MainController.TabIndex := 2;
        FR_ReactorType.Text := reactorType;
        FR_MaterialObl.Text := shellMaterial;
        FR_CassetType.Text := �assetteType;
        FR_Fuel.Text := FuelMaterial;
        FR_CassetMaterial.Text := �assetteMaterial;
        FR_MatrixMaterial.Text := matrixMaterial;

        FR_Result_ReactorType.Text := reactorType;
        FR_Result_MaterialObl.Text := shellMaterial;
        FR_Result_CassetType.Text := �assetteType;
        FR_Result_FuelType.Text := FuelMaterial;
        FR_Result_CassetMaterial.Text := �assetteMaterial;
        FR_Result_MatrixMaterial.Text := matrixMaterial;


        if fuelMaterialGroup.ItemIndex = 0 then
        begin
          FR_PlotnGor.Text := floatToStr(9.6);
          FR_ChisloAtomovUrVMollekuleGor.Text := floatToStr(1);
          FR_ChisloAtomIogoElemVMollekuleGor.Text := floatToStr(2);
          FR_MolekulVesGor.Text := floatToStr(267);
          FR_MicroSechZahvNeitrYadrIogoElementaTopliva.Text := floatToStr(0.0002);
          FR_MicroSechRassNeitrYadrIogoElemTopl.Text := floatToStr(3.75);
        end;

        if fuelMaterialGroup.ItemIndex = 1 then
        begin
          FR_PlotnGor.Text := floatToStr(9.6);
          FR_ChisloAtomovUrVMollekuleGor.Text := floatToStr(1);
          FR_ChisloAtomIogoElemVMollekuleGor.Text := floatToStr(2);
          FR_MolekulVesGor.Text := floatToStr(267);
          FR_MicroSechZahvNeitrYadrIogoElementaTopliva.Text := floatToStr(0.0002);
          FR_MicroSechRassNeitrYadrIogoElemTopl.Text := floatToStr(3.75);
        end;

        if fuelMaterialGroup.ItemIndex = 2 then
        begin
          FR_PlotnGor.Text := floatToStr(9.6);
          FR_ChisloAtomovUrVMollekuleGor.Text := floatToStr(1);
          FR_ChisloAtomIogoElemVMollekuleGor.Text := floatToStr(2);
          FR_MolekulVesGor.Text := floatToStr(267);
          FR_MicroSechZahvNeitrYadrIogoElementaTopliva.Text := floatToStr(0.0002);
          FR_MicroSechRassNeitrYadrIogoElemTopl.Text := floatToStr(3.75);
        end;

        if fuelMaterialGroup.ItemIndex = 3 then
        begin
          FR_PlotnGor.Text := floatToStr(6.5);
          FR_ChisloAtomovUrVMollekuleGor.Text := floatToStr(1);
          FR_ChisloAtomIogoElemVMollekuleGor.Text := floatToStr(3);
          FR_MolekulVesGor.Text := floatToStr(316);
          FR_MicroSechZahvNeitrYadrIogoElementaTopliva.Text := floatToStr(0.24);
          FR_MicroSechRassNeitrYadrIogoElemTopl.Text := floatToStr(1.4);
        end;

        if fuelMaterialGroup.ItemIndex = 4 then
        begin
          FR_PlotnGor.Text := floatToStr(6.5);
          FR_ChisloAtomovUrVMollekuleGor.Text := floatToStr(1);
          FR_ChisloAtomIogoElemVMollekuleGor.Text := floatToStr(3);
          FR_MolekulVesGor.Text := floatToStr(316);
          FR_MicroSechZahvNeitrYadrIogoElementaTopliva.Text := floatToStr(0.24);
          FR_MicroSechRassNeitrYadrIogoElemTopl.Text := floatToStr(1.4);
        end;

        if fuelMaterialGroup.ItemIndex = 5 then
        begin
          FR_PlotnGor.Text := floatToStr(12);
          FR_ChisloAtomovUrVMollekuleGor.Text := floatToStr(1);
          FR_ChisloAtomIogoElemVMollekuleGor.Text := floatToStr(1);
          FR_MolekulVesGor.Text := floatToStr(326);
          FR_MicroSechZahvNeitrYadrIogoElementaTopliva.Text := floatToStr(0.185);
          FR_MicroSechRassNeitrYadrIogoElemTopl.Text := floatToStr(6.2);
        end;



        if ShellGroup.ItemIndex = 0 then
        begin
          FR_MacroSechZahvNeitrMaterObolTvela.Text := floatToStr(0.24);
          FR_MacroSechRassNeitrMaterOblTvela.Text := floatToStr(0.85);
        end;

        if ShellGroup.ItemIndex = 1 then
        begin
          FR_MacroSechZahvNeitrMaterObolTvela.Text := floatToStr(0.045);
          FR_MacroSechRassNeitrMaterOblTvela.Text := floatToStr(0.22);
        end;



        if tvsMaterialGroup.ItemIndex = 0 then
        begin
          FR_MacroSechZahvNeitrKonstrMaterCasset.Text := floattostr(0.24);
          FR_MacroSechRassNeitrKonstrMaterCasset.Text := floattostr(0.85);
        end;

        if tvsMaterialGroup.ItemIndex = 1 then
        begin
          FR_MacroSechZahvNeitrKonstrMaterCasset.Text := floattostr(0.045);
          FR_MacroSechRassNeitrKonstrMaterCasset.Text := floattostr(0.22);
        end;

        if tvsMaterialGroup.ItemIndex = 2 then
        begin
          FR_MacroSechZahvNeitrKonstrMaterCasset.Text := floattostr(0.02);
          FR_MacroSechRassNeitrKonstrMaterCasset.Text := floattostr(0.1);
        end;


        if matrixMaterialGroup.ItemIndex = 0 then
        begin
          FR_MacroSechZahvNeitrMaterMatr.Text := floattostr(0.24);
          FR_MacroSechRassNeitrMaterMatr.Text := floattostr(0.85);
        end;

        if matrixMaterialGroup.ItemIndex = 1 then
        begin
          FR_MacroSechZahvNeitrMaterMatr.Text := floattostr(0.045);
          FR_MacroSechRassNeitrMaterMatr.Text := floattostr(0.22);
        end;

        if matrixMaterialGroup.ItemIndex = 2 then
        begin
          FR_MacroSechZahvNeitrMaterMatr.Text := floattostr(0.02);
          FR_MacroSechRassNeitrMaterMatr.Text := floattostr(0.1);
        end;




        FrTab.RowCount := 17;
        FrTab.ColCount := 5;
        FrTab.ColWidths[0] := Round(FrTab.Width * 0.05);
        FrTab.ColWidths[1] := Round(FrTab.Width * 0.65);
        FrTab.ColWidths[2] := Round(FrTab.Width * 0.10);
        FrTab.ColWidths[3] := Round(FrTab.Width * 0.10);
        FrTab.ColWidths[4] := Round(FrTab.Width * 0.10);

end;

procedure TMars.TrControllerChange(Sender: TObject);
begin
    if MarsTIsset = true then
    begin
      ScrollBox2.VertScrollBar.Position := 0;
      TR_TaskNumberResultOutput.Caption := '������' + ' ' + IntToStr(TasksControll.TabIndex + 1);
      TR_ReactorTypeResultOutput.Text := reactorType;
      TR_CassetTypeResultOutput.Text := �assetteType;
      TR_ShellMaterialTypeResultOutput.Text := shellMaterial;
      TR_FuelTypeResultOutput.Text := fuelMaterial;
    end
    else
    begin
      TrController.TabIndex := 0;
      showMessage('������� ���� ������ ��� �������, � ����� ������� ������ �������');

    end;
end;

procedure TMars.TR_ExcelClick(Sender: TObject);
var
Wsheet : OleVariant;
it : integer;
begin
     ExcelApp := CreateOleObject('Excel.Application');
     ExcelApp.Visible := True;
     ExcelApp.Workbooks.Add;
     Wsheet := ExcelApp.WorkSheets[1];
     Wsheet.Activate;

     Wsheet.Range['a1'].ColumnWidth := 10;
     Wsheet.Range['b1'].ColumnWidth := 65;
     Wsheet.Range['c1'].ColumnWidth := 20;

     Wsheet.Range['f1'].ColumnWidth := 20;
     Wsheet.Range['g1'].ColumnWidth := 20;

     //Wsheet.Range['a1','c5'].Value := 'data';
     //Wsheet.Range['a1','c5'].Borders.LineStyle:=1;
     
     Wsheet.Range['f1'].Value := '��� ��������';
     Wsheet.Range['g1'].Value := kmr;
     Wsheet.Range['f2'].Value := '�������� ��������';
     Wsheet.Range['g2'].Value := shellMaterial;
     Wsheet.Range['f3'].Value := '��� �������';
     Wsheet.Range['g3'].Value := �assetteType;
     Wsheet.Range['f4'].Value := '�������';
     Wsheet.Range['g4'].Value := FuelMaterial;
     Wsheet.Range['f5'].Value := '������';
     Wsheet.Range['g5'].Value := '������ ����� ' + inttostr(TasksControll.TabIndex + 1);     

     Wsheet.Range['f1','g5'].Borders.LineStyle:=1;
     Wsheet.Range['f1','f5'].Font.FontStyle:= 'Bold';
     Wsheet.Range['a1','c1'].Font.FontStyle:= 'Bold';
     


     
     if kmr = '����' then
     begin
        Wsheet.Range['a1','c31'].Borders.LineStyle:=1;
     end;

     if kmr = '����' then
     begin
        Wsheet.Range['a1','c28'].Borders.LineStyle:=1;
     end;

     Wsheet.Range['a1'].Value := '�';
     Wsheet.Range['b1'].Value := '��������';
     Wsheet.Range['c1'].Value := '��������';

     if TasksControll.TabIndex + 1 = 1 then
      begin
      Wsheet.Range['b2'].Value:= '��������� ������ �� � ��������';
      Wsheet.Range['c2'].Value:= hkd;
      Wsheet.Range['b3'].Value:= '��������� ���������� ���������, �/��3';
      Wsheet.Range['c3'].Value:=dlq;
      Wsheet.Range['b4'].Value:= '�������� ������� �������� �������� ������������� �� �����  � ��, �/�';
      Wsheet.Range['c4'].Value:=wvh;
      Wsheet.Range['b5'].Value:= '���� ���� � ������ ��';
      Wsheet.Range['c5'].Value:= rh20;

        Wsheet.Range['b6'].Value:='������� �����, ��';
        Wsheet.Range['c6'].Value:=dtv;
        Wsheet.Range['b7']:='����� ����� �������, ��';
        Wsheet.Range['c7']:=dltv;
        Wsheet.Range['b8']:='����� ����� ���������, ��';
        Wsheet.Range['c8']:=dlmk;
        Wsheet.Range['b9']:='����� ������';
        Wsheet.Range['c9']:=nks;
        Wsheet.Range['b10']:='������ ��, ��';
        Wsheet.Range['c10']:=haz;

        N_data:=11;
        Ik:=29;
      end;

      if TasksControll.TabIndex + 1 = 2 then
      begin
      Wsheet.Range['b2'].Value:= '��������� ������ �� � ��������';
      Wsheet.Range['c2'].Value:= hkd;
      Wsheet.Range['b3']:= '����� ����� ���������, ��';
      Wsheet.Range['c3'].Value:=dlmk;
      Wsheet.Range['b4']:= '��������� ���������� ���������, �/��3';
      Wsheet.Range['c4']:=dlq;
      Wsheet.Range['b5']:= '�������� ������� �������� �������� ������������� �� �����  � ��, �/�';
      Wsheet.Range['c5']:=wvh;

        Wsheet.Range['b6']:='������� �����, ��';
        Wsheet.Range['c6']:=dtv;
        Wsheet.Range['b7']:='����� ����� �������, ��';
        Wsheet.Range['c7']:=dltv;
        Wsheet.Range['b8']:='����� ������';
        Wsheet.Range['c8']:=nks;
        Wsheet.Range['b9']:='������ ��, ��';
        Wsheet.Range['c9']:=haz;
        Wsheet.Range['b10']:='���� ���� � ������ ��';
        Wsheet.Range['c10']:=rh20;

        N_data:=11;
        Ik:=29;
      end;

      if TasksControll.TabIndex + 1 = 3 then
      begin
      Wsheet.Range['b2']:= '������� �����, ��';
      Wsheet.Range['c2']:= dtv;
      Wsheet.Range['b3']:= '����� ����� �������, ��';
      Wsheet.Range['c3']:= dltv;
      Wsheet.Range['b4']:= '����� ����� ���������, ��';
      Wsheet.Range['c4']:=dlmk;
      Wsheet.Range['b5']:= '��������� ���������� ���������, �/��3';
      Wsheet.Range['c5']:=dlq;
      Wsheet.Range['b6']:= '�������� ������� �������� �������� ������������� �� �����  � ��, �/�';
      Wsheet.Range['c6']:=wvh;

        Wsheet.Range['b7']:='����� ������';
        Wsheet.Range['c7']:=nks;
        Wsheet.Range['b8']:='��������� ������ �� � ��������';
        Wsheet.Range['c8']:=hkd;
        Wsheet.Range['b9']:='������ ��, ��';
        Wsheet.Range['c9']:=haz;
        Wsheet.Range['b10']:='���� ���� � ������ ��';
        Wsheet.Range['c10']:=rh20;

        N_data:=11;
        Ik:=30;
      end;

      if TasksControll.TabIndex + 1 = 4 then
      begin
      Wsheet.Range['b2']:= '������� �����, ��';
      Wsheet.Range['c2']:= dtv;
      Wsheet.Range['b3']:= '����� ����� �������, ��';
      Wsheet.Range['c3']:= dltv;
      Wsheet.Range['b4']:= '����� ����� ���������, ��';
      Wsheet.Range['c4']:= dlmk;
      Wsheet.Range['b5']:= '��������� ������ �� � ��������';
      Wsheet.Range['c5']:= hkd;
      Wsheet.Range['b6']:= '��������� ���������� ���������, �/��3';
      Wsheet.Range['c6']:= dlq;

        Wsheet.Range['b7']:='����� ������';
        Wsheet.Range['c7']:= nks;
        Wsheet.Range['b8']:='������ ��, ��';
        Wsheet.Range['c8']:= haz;
        Wsheet.Range['b9']:='�������� ������� �������� �������� ������������� �� �����  � ��, �/�';
        Wsheet.Range['c9']:= wvh;
        Wsheet.Range['b10']:='���� ���� � ������ ��';
        Wsheet.Range['c10']:= rh20;

        N_data:=11;
        Ik:=30;
      end;

      if TasksControll.TabIndex + 1 = 5 then
      begin
      Wsheet.Range['b2']:= '������� �����, ��';
      Wsheet.Range['c2']:= dtv;
      Wsheet.Range['b3']:= '����� ����� �������, ��';
      Wsheet.Range['c3']:= dltv;
      Wsheet.Range['b4']:= '����� ����� ���������, ��';
      Wsheet.Range['c4']:= dlmk;
      Wsheet.Range['b5']:= '����� ������';
      Wsheet.Range['c5']:= nks;
      Wsheet.Range['b6']:= '��������� ���������� ���������, �/��3';
      Wsheet.Range['c6']:= dlq;

        Wsheet.Range['b7']:='��������� ������ �� � ��������';
        Wsheet.Range['c7']:= hkd;
        Wsheet.Range['b8']:='������ ��, ��';
        Wsheet.Range['c8']:= haz;
        Wsheet.Range['b9']:='�������� ������� �������� �������� ������������� �� �����  � ��, �/�';
        Wsheet.Range['c9']:= wvh;
        Wsheet.Range['b10']:='���� ���� � ������ ��';
        Wsheet.Range['c10']:= rh20;

        N_data:=11;
        Ik:=30;
      end;

      if TasksControll.TabIndex + 1 = 6 then
      begin
      Wsheet.Range['b2']:= '������� �����, ��';
      Wsheet.Range['c2']:= dtv;
      Wsheet.Range['b3']:= '����� ����� ���������, ��';
      Wsheet.Range['c3']:= dlmk;
      Wsheet.Range['b4']:= '����� ������';
      Wsheet.Range['c4']:= nks;
      Wsheet.Range['b5']:= '��������� ���������� ���������, �/��3';
      Wsheet.Range['c5']:= dlq;
      Wsheet.Range['b6']:= '�������� ������� �������� �������� ������������� �� �����  � ��, �/�';
      Wsheet.Range['c6']:= wvh;

        Wsheet.Range['b7']:='����� ����� �������, ��';
        Wsheet.Range['c7']:= dltv;
        Wsheet.Range['b8']:='��������� ������ �� � ��������';
        Wsheet.Range['c8']:= hkd;
        Wsheet.Range['b9']:='������ ��, ��';
        Wsheet.Range['c9']:= haz;
        Wsheet.Range['b10']:='���� ���� � ������ ��';
        Wsheet.Range['c10']:= rh20;

        N_data:=11;
        Ik:=30;
      end;

      if TasksControll.TabIndex + 1 = 7 then
      begin
      Wsheet.Range['b2']:= '������� �����, ��';
      Wsheet.Range['c2']:= dtv;
      Wsheet.Range['b3']:= '����� ����� �������, ��';
      Wsheet.Range['c3']:= dltv;
      Wsheet.Range['b4']:= '����� ����� ���������, ��';
      Wsheet.Range['c4']:= dlmk;
      Wsheet.Range['b5']:= '����� ������';
      Wsheet.Range['c5']:= nks;
      Wsheet.Range['b6']:= '������ ��, ��';
      Wsheet.Range['c6']:= haz;

        Wsheet.Range['b7']:='��������� ������ �� � ��������';
        Wsheet.Range['c7']:= hkd;
        Wsheet.Range['b8']:='��������� ���������� ���������, �/��3';
        Wsheet.Range['c8']:= dlq;
        Wsheet.Range['b9']:='�������� ������� �������� �������� ������������� �� �����  � ��, �/�';
        Wsheet.Range['c9']:= wvh;
        Wsheet.Range['b10']:='���� ���� � ������ ��';
        Wsheet.Range['c10']:= rh20;

        N_data:=11;
        Ik:=30;
      end;

      Ik := 0;

      Wsheet.Range[Format('b%d',[N_data])]:='����� ���� � �������';
      Wsheet.Range[Format('c%d',[N_data])]:= ztv;

      Wsheet.Range[Format('b%d',[N_data + 1])]:='������� �������, ��';
      Wsheet.Range[Format('c%d',[N_data + 1])]:=dks;

      Wsheet.Range[Format('b%d',[N_data + 2])]:='������� ��, ��';
      Wsheet.Range[Format('c%d',[N_data + 2])]:=daz;

      Wsheet.Range[Format('b%d',[N_data + 3])]:='���� ��������������� ���������� ������� � ������ ��';
      Wsheet.Range[Format('c%d',[N_data + 3])]:=rk;

      Wsheet.Range[Format('b%d',[N_data + 4])]:='���� ���������� �������� ������ � ������ ��';
      Wsheet.Range[Format('c%d',[N_data + 4])]:=rob;

      Wsheet.Range[Format('b%d',[N_data + 5])]:='���� ������� � ������';
      Wsheet.Range[Format('c%d',[N_data + 5])]:=rtop;

      if Kmr='����' then
      begin
        Ik:=7;
        Wsheet.Range[Format('b%d',[N_data + 6])]:='���� ��,������� �������������';
        Wsheet.Range[Format('c%d',[N_data + 6])]:=le;
      end
      else
        Ik:=6;
      Wsheet.Range[Format('b%d',[N_data + Ik])]:='������� �������� ����� � ��, ��/�2';
      Wsheet.Range[Format('c%d',[N_data + Ik])]:=qsr;

      Wsheet.Range[Format('b%d',[N_data + Ik + 1])]:='�����������  �������� ����� � ��, ��/�2';
      Wsheet.Range[Format('c%d',[N_data + Ik + 1])]:=qkr;

      Wsheet.Range[Format('b%d',[N_data + Ik + 2])]:='����� �� �������';
      Wsheet.Range[Format('c%d',[N_data + Ik + 2])]:=kqp;

      Wsheet.Range[Format('b%d',[N_data + Ik + 3])]:='������������ ����������� �������, ����.�';
      Wsheet.Range[Format('c%d',[N_data + Ik + 3])]:=ttmax;

      Wsheet.Range[Format('b%d',[N_data + Ik + 4])]:='����������� ������������� �� ������ �� ���, ����.�';
      Wsheet.Range[Format('c%d',[N_data + Ik + 4])]:=tvimk;

      Wsheet.Range[Format('b%d',[N_data + Ik + 5])]:='����������� ������������� �� ������ �� ������ �� ������ �� ���, ����.�';
      Wsheet.Range[Format('c%d',[N_data + Ik + 5])]:=tviks;

      Wsheet.Range[Format('b%d',[N_data + Ik + 6])]:='������� �������� ����� ����������� � ��,  �3/��';
      Wsheet.Range[Format('c%d',[N_data + Ik + 6])]:=vazsr;

      Wsheet.Range[Format('b%d',[N_data + Ik + 7])]:='����������� ����������� ��, �2';
      Wsheet.Range[Format('c%d',[N_data + Ik + 7])]:=saz;

      Wsheet.Range[Format('b%d',[N_data + Ik + 8])]:='������ ������������� ����� ��, ��/�';
      Wsheet.Range[Format('c%d',[N_data + Ik + 8])]:=gaz;

      Wsheet.Range[Format('b%d',[N_data + Ik + 9])]:='�������� �������������, ���';
      Wsheet.Range[Format('c%d',[N_data + Ik + 9])]:=p;

      if Kmr='����' then
      begin
        Ik:=18;
        Wsheet.Range[Format('b%d',[N_data + 17])]:='�������� �������������� �� ������ �� A3';
        Wsheet.Range[Format('c%d',[N_data + 17])]:=xk;

        Wsheet.Range[Format('b%d',[N_data + 18])]:='������� �������� o������� ��������������';
        Wsheet.Range[Format('c%d',[N_data + 18])]:=fi;
      end
      else
        Ik:=15;
      Wsheet.Range[Format('b%d',[N_data + Ik + 1])]:='�������������� ���������,�/��3';
      Wsheet.Range[Format('c%d',[N_data + Ik + 1])]:=ddlq;
      Wsheet.Range[Format('b%d',[N_data + Ik + 2])]:='�������������� �������� �������� ������������� �� ����� � ��, �/�';
      Wsheet.Range[Format('c%d',[N_data + Ik + 2])]:=wvhd;

      if kmr = '����' then
      begin
        for it := 1 to 30 do
          begin
             Wsheet.Range[Format('a%d',[it + 1])]:=it;
          end;

      end;

      if kmr = '����' then
      begin
        for it := 1 to 27 do
          begin
             Wsheet.Range[Format('a%d',[it + 1])]:=it;
          end;

      end;




      

     

     
     
     
     
     
     

end;

end.








