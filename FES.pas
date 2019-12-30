unit FES;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids;

type
  TFES_ = class(TForm)
    LBLESCUF: TLabel;
    DBEDESCUF: TDBEdit;
    LBLESCDESC: TLabel;
    DBEDESCDESC: TDBEdit;
    DBGRDSES: TDBGrid;
    DBNVDSES: TDBNavigator;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FES_: TFES_;

implementation

uses DMIGEPREV;

{$R *.dfm}

procedure TFES_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    WITH SELF DO // equivale a fun_ (this em java)
   BEGIN
       FREE; // Se for manualmente criado o form
   END;
end;

end.
