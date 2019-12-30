unit FEC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls;

type
  TFEC_ = class(TForm)
    LBLECNCODG: TLabel;
    DBEDECNCODG: TDBEdit;
    LBLECCDESC: TLabel;
    DBEDECCDESC: TDBEdit;
    DBNVDSEC: TDBNavigator;
    DBGRDSEC: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEC_: TFEC_;

implementation

uses DMIGEPREV;

{$R *.dfm}

procedure TFEC_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     FREE;
end;

end.
