unit FLG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, StdCtrls, Mask, ExtCtrls;

type
  TFLG_ = class(TForm)
    LBLLGCUF: TLabel;
    DBEDLGCUF: TDBEdit;
    LBLLGNCGCD: TLabel;
    DBEDLGNCGCD: TDBEdit;
    LBLLGNCGBR: TLabel;
    DBEDLGNCGBR: TDBEdit;
    LBLLGNCGTL: TLabel;
    DBEDLGNCGTL: TDBEdit;
    LBLLGCDESC: TLabel;
    DBEDLGCDESC: TDBEdit;
    LBLLGCCEP: TLabel;
    DBEDLGCCEP: TDBEdit;
    DBGRDSLG: TDBGrid;
    Label7: TLabel;
    DBLKCBLGCUF: TDBLookupComboBox;
    Label8: TLabel;
    Label9: TLabel;
    DBLKCBLGNCGBR: TDBLookupComboBox;
    Label10: TLabel;
    DBLKCBLGNCGTL: TDBLookupComboBox;
    Label11: TLabel;
    DBLKCBLGNCGCD: TDBLookupComboBox;
    DBNVDSLG: TDBNavigator;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLG_: TFLG_;

implementation

uses DMIGEPREV;

{$R *.dfm}

procedure TFLG_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      FREE;
end;

end.
