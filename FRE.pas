unit FRE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask;

type
  TFRE_ = class(TForm)
    LBLRENCODG: TLabel;
    DBEDRENCODG: TDBEdit;
    LBLRECDESC: TLabel;
    DBEDRECDESC: TDBEdit;
    DBNVDSRE: TDBNavigator;
    DBGRDSRE: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRE_: TFRE_;

implementation

uses DMIGEPREV;

{$R *.dfm}

procedure TFRE_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     FREE;
end;

end.
