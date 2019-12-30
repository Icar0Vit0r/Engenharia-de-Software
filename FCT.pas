unit FCT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons;

type
  TFCT_ = class(TForm)
    LBLCTNCGEN: TLabel;
    DBEDCTNCGEN: TDBEdit;
    LBLCTNCGED: TLabel;
    DBEDCTNCGED: TDBEdit;
    LBLCTNCODG: TLabel;
    DBEDCTNCDOG: TDBEdit;
    LBLCTCDESC: TLabel;
    DBEDCTCDESC: TDBEdit;
    LBLCTCNUMR: TLabel;
    DBEDCTCNUMR: TDBEdit;
    DBNVDSCT: TDBNavigator;
    DBGRDSCT: TDBGrid;
    DBLKCBCTNCGEN: TDBLookupComboBox;
    DBLKCBCTNCGED: TDBLookupComboBox;
    BBPRINT: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBPRINTClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCT_: TFCT_;

implementation

uses DMIGEPREV, QRCT;

{$R *.dfm}

procedure TFCT_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     FREE;
end;

procedure TFCT_.BBPRINTClick(Sender: TObject);
begin
     DMIGEPREV_.QRCT.Close;//Abrindo e fechando a query para atualizar os dados
     DMIGEPREV_.QRCT.Open;
     QRCT_ := TQRCT_.CREATE(FCT_);

      // CAPTION := SELF.Caption;
         QRCT_.QRLabel1.CAPTION := 'IGEPREV';
      // QREP.ReportTitle := SELF.Caption;
         QRCT_.QuickRep1.Preview; // QREP.PRINT;

end;

procedure TFCT_.FormCreate(Sender: TObject);
begin
    BBPRINT.Enabled := (DMIGEPREV_.TBENTIDADEENNCODG.AsInteger = 2);
end;

end.
