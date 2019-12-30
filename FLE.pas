unit FLE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask;

type
  TFLE_ = class(TForm)
    LBLLENCODG: TLabel;
    DBEDLENCODG: TDBEdit;
    LBLRECDESC: TLabel;
    DBEDLECDESC: TDBEdit;
    LBLLECNUMR: TLabel;
    DBEDLECNUMR: TDBEdit;
    DBNVDSLE: TDBNavigator;
    DBGRDSLE: TDBGrid;
    LBLLEDDATA: TLabel;
    DBEDLEDDATA: TDBEdit;
    Label5: TLabel;
    DBMLEMFUND: TDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLE_: TFLE_;

implementation

uses DMIGEPREV;

{$R *.dfm}

procedure TFLE_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     FREE;
end;

end.
