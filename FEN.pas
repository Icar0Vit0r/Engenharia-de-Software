unit FEN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, Grids, DBGrids, ExtDlgs,
  ComCtrls, Buttons;

type
  TFEN_ = class(TForm)
    LBLENCDESC: TLabel;
    DBEDENCDESC: TDBEdit;
    LBLENCCPF: TLabel;
    DBEDENCCPF: TDBEdit;
    LBLENCRG: TLabel;
    DBEDENCRG: TDBEdit;
    LBLENCCNPJ: TLabel;
    DBEDENCCNPJ: TDBEdit;
    LBLENCIE: TLabel;
    LBLENCIM: TLabel;
    DBEDENCIM: TDBEdit;
    LBLENCAPEL: TLabel;
    DBEDENCAPEL: TDBEdit;
    LBLENCSEXO: TLabel;
    DBENCSEXO: TDBEdit;
    LBLENDNASC: TLabel;
    DBEDENDNASC: TDBEdit;
    LBLENNCADT: TLabel;
    DBEDENNCADT: TDBEdit;
    LBLENDCADT: TLabel;
    DBEDENDCADT: TDBEdit;
    LBLENHCADT: TLabel;
    DBEDENHCADT: TDBEdit;
    LBLENCTIPO: TLabel;
    DBEDENCTIPO: TDBEdit;
    DBNVDSEN: TDBNavigator;
    DBGRDSEN: TDBGrid;
    DBRGENCTIPO: TDBRadioGroup;
    LBLENNCGEC: TLabel;
    DBLKCBENNCGEC: TDBLookupComboBox;
    LBLENNIDAD: TLabel;
    DBEDENNIDAD: TDBEdit;
    DBEDENCIE: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    BTNED: TButton;
    BTNEM: TButton;
    BTNCA: TButton;
    Controle: TPageControl;
    TABSHEETSEGPENS: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    DBNavigator2: TDBNavigator;
    DBLKCBERCDSTA: TDBLookupComboBox;
    DBGrid2: TDBGrid;
    DBLKCBERCDSCR: TDBLookupComboBox;
    TABSHEETORGAO: TTabSheet;
    Label4: TLabel;
    Label3: TLabel;
    DBNavigator3: TDBNavigator;
    DBLKCBERCDSCA: TDBLookupComboBox;
    DBGrid3: TDBGrid;
    DBLKCBERCDSEN: TDBLookupComboBox;
    TABSHEETUSUARIO: TTabSheet;
    Label5: TLabel;
    DBNavigator4: TDBNavigator;
    DBLookupComboBox1: TDBLookupComboBox;
    DBGrid4: TDBGrid;
    TABSHEETGERENTE: TTabSheet;
    TABSHEETEXCLUIDO: TTabSheet;
    DBNavigator5: TDBNavigator;
    Label6: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBGrid5: TDBGrid;
    DBNavigator6: TDBNavigator;
    Label7: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBGrid6: TDBGrid;
    TABSHEETREPLEGAL: TTabSheet;
    TABSHEETFONTEPAG: TTabSheet;
    TABSHEETEXSEGURADO: TTabSheet;
    TABSHEETOBITO: TTabSheet;
    DBNavigator7: TDBNavigator;
    Label8: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    DBGrid7: TDBGrid;
    DBNavigator8: TDBNavigator;
    Label9: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DBGrid8: TDBGrid;
    DBNavigator9: TDBNavigator;
    Label10: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    DBGrid9: TDBGrid;
    DBNavigator10: TDBNavigator;
    Label11: TLabel;
    DBLookupComboBox7: TDBLookupComboBox;
    DBGrid10: TDBGrid;
    OpenPictureDialogFoto: TOpenPictureDialog;
    BTFoto: TBitBtn;
    Label12: TLabel;
    DBIMENOFOTO: TDBImage;
    Label13: TLabel;
    DBEDERDCADT: TDBEdit;
    Label14: TLabel;
    DBEDERDCANC: TDBEdit;
    DBEDERDCADT1: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBEDRDCANC2: TDBEdit;
    Label17: TLabel;
    DBLKCB1: TDBLookupComboBox;
    Label18: TLabel;
    DBEDERDCANC3: TDBEdit;
    Label19: TLabel;
    DBEDDCADT2: TDBEdit;
    Label20: TLabel;
    DBEDERDCADT4: TDBEdit;
    Label21: TLabel;
    DBEDDERDCANC4: TDBEdit;
    Label22: TLabel;
    DBEDERDCADT5: TDBEdit;
    Label23: TLabel;
    DBEDERDCADT6: TDBEdit;
    Label24: TLabel;
    DBEDERDCADT7: TDBEdit;
    Label25: TLabel;
    DBEDERDCANC7: TDBEdit;
    Label26: TLabel;
    DBEDERDCADT8: TDBEdit;
    Label27: TLabel;
    DBEDERDCANC8: TDBEdit;
    Label28: TLabel;
    DBERDCANC9: TDBEdit;
    Label29: TLabel;
    DBEDERDCADT9: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBRGENCTIPOChange(Sender: TObject);
    procedure BTfotoClick(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure BTNEDClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BTNCAClick(Sender: TObject);
    procedure BTNEMClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEN_: TFEN_;

implementation

uses DMIGEPREV, FED, FCA, FEM;

{$R *.dfm}

procedure TFEN_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     DMIGEPREV_.QRVL.Open;
     DMIGEPREV_.QRVLD3.Close;
     FREE;
end;

procedure TFEN_.DBRGENCTIPOChange(Sender: TObject);
begin
     DBEDENCCPF.Enabled := (DBRGENCTIPO.ItemIndex = 0);
     DBEDENCRG.Enabled := (DBRGENCTIPO.ItemIndex = 0);
     DBEDENCCNPJ.Enabled := (DBRGENCTIPO.ItemIndex = 1);
     DBEDENCIE.Enabled := (DBRGENCTIPO.ItemIndex = 1);
     DBEDENCIM.Enabled := (DBRGENCTIPO.ItemIndex = 1);
     DBEDENCAPEL.Enabled := (DBRGENCTIPO.ItemIndex = 0);
     DBENCSEXO.Enabled := (DBRGENCTIPO.ItemIndex = 0);
     DBEDENDNASC.Enabled := (DBRGENCTIPO.ItemIndex = 0);
     DBEDENNIDAD.Enabled := (DBRGENCTIPO.ItemIndex = 0);
     DBLKCBENNCGEC.Enabled := (DBRGENCTIPO.ItemIndex = 0);

     {programação if(DBRadioGroup1.ItemIndex = 0)then
     begin
          DBEDENCCPF.Visible := true;
          DBEDENCRG.Enabled := true;
          DBEDENCAPEL.Enabled := true;
          DBEDENCCNPJ.Enabled := false;
          DBEDENCIE.Enabled := false;
          DBEDENCIM.Enabled := false;
          DBENCSEXO.Enabled := true;
          DBedit10.Enabled := true;
          DBedit11.Enabled := true;
          DBedit12.Enabled := true;
          DBedit13.Enabled := true;
          DBedit14.Enabled := true;
          DBedit15.Enabled := true;
          BTfoto.Enabled := true;
          DBLookupComboBox1.Enabled := true;
     end
     else
     begin
         if(DBRadioGroup1.ItemIndex = 1)then
         begin
              DBEdit6.Enabled := true;
              DBedit7.Enabled := true;
              DBedit8.Enabled := true;
              DBEdit4.Enabled := false;
              DBedit5.Enabled := false;
              DBedit9.Enabled := false;
              DBedit10.Enabled := false;
              DBedit11.Enabled := false;
              DBedit12.Enabled := false;
              DBLookupComboBox1.Enabled := false;
         end;
     end;}
end;

procedure TFEN_.BTfotoClick(Sender: TObject);
begin
     IF(SELF.OpenPictureDialogFoto.Execute)THEN
     BEGIN
          SELF.DBIMENOFOTO.Picture.LoadFromFile(SELF.OpenPictureDialogFoto.FileName);
     END;
end;

procedure TFEN_.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
      if(button in [nbfirst, nbprior, nbnext, nblast, nbcancel
          ,nbrefresh])then
      begin
            inserindo := false;
      end;

      if(button in [nbpost])and(inserindo)then
      begin
           DMIGEPREV_.Query1.Close;
           DMIGEPREV_.Query1.Open;
           DMIGEPREV_.Query1.Last;
           codigo := DMIGEPREV_.Query1enncodg.asinteger + 1;
           DMIGEPREV_.TBENTIDADEENNCODG.Value := codigo;
      end;
end;

procedure TFEN_.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
     if(button in [nbinsert])then
     begin
          inserindo := true;
     end;
end;

procedure TFEN_.BTNEDClick(Sender: TObject);
begin
     FED_:= TFED_.Create(APPLICATION);
     FED_.Show;
end;

procedure TFEN_.FormCreate(Sender: TObject);
begin
     DMIGEPREV_.QRVL.Open;
     DMIGEPREV_.QRVLD3.Open;
     TABSHEETUSUARIO.TabVisible := (DMIGEPREV_.TBENTIDADE_RELACAOERNCGRE.AsInteger = 1);
     TABSHEETGERENTE.TabVisible := (DMIGEPREV_.TBENTIDADE_RELACAOERNCGRE.AsInteger = 2);
     TABSHEETSEGPENS.TabVisible := (DMIGEPREV_.TBENTIDADE_RELACAOERNCGRE.AsInteger = 3)OR
     (DMIGEPREV_.TBENTIDADE_RELACAOERNCGRE.AsInteger = 4);
     TABSHEETEXCLUIDO.TabVisible := (DMIGEPREV_.TBENTIDADE_RELACAOERNCGRE.AsInteger = 5);
     TABSHEETREPLEGAL.TabVisible := (DMIGEPREV_.TBENTIDADE_RELACAOERNCGRE.AsInteger = 6);
     TABSHEETFONTEPAG.TabVisible := (DMIGEPREV_.TBENTIDADE_RELACAOERNCGRE.AsInteger = 8);
     TABSHEETORGAO.TabVisible := (DMIGEPREV_.TBENTIDADE_RELACAOERNCGRE.AsInteger = 7);
     TABSHEETEXSEGURADO.TabVisible := (DMIGEPREV_.TBENTIDADE_RELACAOERNCGRE.AsInteger = 9);
     TABSHEETOBITO.TabVisible := (DMIGEPREV_.TBENTIDADE_RELACAOERNCGRE.AsInteger = 10);
     BTNCA.Enabled := (DMIGEPREV_.TBENTIDADE_RELACAOERNCGRE.AsInteger = 7);
end;

procedure TFEN_.BTNCAClick(Sender: TObject);
begin
     FCA_:= TFCA_.Create(APPLICATION);
     FCA_.Show;
end;

procedure TFEN_.BTNEMClick(Sender: TObject);
begin
     FEM_:= TFEM_.Create(APPLICATION);
     FEM_.Show;
end;









end.
