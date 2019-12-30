unit FFP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask;

type
  TFFP_ = class(TForm)
    LBLFPNCODG: TLabel;
    DBEDFPNCODG: TDBEdit;
    LBLFPDDATA: TLabel;
    DBEDFPDDATA: TDBEdit;
    DBNVDSFP: TDBNavigator;
    DBGRDSEV: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFP_: TFFP_;

implementation

uses DMIGEPREV;

{$R *.dfm}

procedure TFFP_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     FREE;
end;



end.
