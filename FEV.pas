unit FEV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask;

type
  TFEV_ = class(TForm)
    LBLEVNCODG: TLabel;
    DBEVEVNCODG: TDBEdit;
    LBLEVCDESC: TLabel;
    DBEDEVCDESC: TDBEdit;
    LBLEVCTIPO: TLabel;
    DBEDEVCTIPO: TDBEdit;
    DBNVDSEV: TDBNavigator;
    DBGRDSEV: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEV_: TFEV_;

implementation

uses DMIGEPREV;

{$R *.dfm}

procedure TFEV_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     FREE;
end;

end.
