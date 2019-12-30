unit FTA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask;

type
  TFTA_ = class(TForm)
    LBLTANCODG: TLabel;
    DBEDTANCODG: TDBEdit;
    LBLTACDESC: TLabel;
    DBEDTACDESC: TDBEdit;
    DBNVDSTA: TDBNavigator;
    DBGRDSTA: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTA_: TFTA_;

implementation

uses DMIGEPREV;

{$R *.dfm}

procedure TFTA_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      FREE;
end;

end.
