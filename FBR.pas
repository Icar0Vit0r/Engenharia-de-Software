unit FBR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids, Buttons;

type
  TFBR_ = class(TForm)
    LBLBRNCGCD: TLabel;
    DBEdit1: TDBEdit;
    LBLBRNCODG: TLabel;
    DBEDBRNCODG: TDBEdit;
    LBLBRCDESC: TLabel;
    DBEDBRCDESC: TDBEdit;
    LBLBRCUF: TLabel;
    DBEDBRCUF: TDBEdit;
    DBNVDSBR: TDBNavigator;
    DBLKCBBRCUF: TDBLookupComboBox;
    DBLKCBBRNCGCD: TDBLookupComboBox;
    DBGRDSBR: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBR_: TFBR_;

implementation

uses DMIGEPREV, FENG;

{$R *.dfm}

procedure TFBR_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     FREE;
end;


end.
