unit FCD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons;

type
  TFCD_ = class(TForm)
    LBLCDCUF: TLabel;
    DBEDCDCUF: TDBEdit;
    LBLCDNCODG: TLabel;
    DBEDCDNCODG: TDBEdit;
    LBLCDCDESC: TLabel;
    DBEDCDCDESC: TDBEdit;
    DBNVDSCD: TDBNavigator;
    DBGRDSCD: TDBGrid;
    DBLKCBCDCUF: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCD_: TFCD_;

implementation

uses DMIGEPREV, FENG;

{$R *.dfm}

procedure TFCD_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     FREE;
end;

procedure TFCD_.BitBtn1Click(Sender: TObject);
begin
     DMIGEPREV_.QRCDG.Close;//Abrindo e fechando a query para atualizar os dados
     DMIGEPREV_.QRCDG.Open;
     FCDG_ := TFCDG_.CREATE(FCD_);
     FCDG_.SHOW; // QREP.PRINT;
end;



end.
