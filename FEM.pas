unit FEM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGrids, StdCtrls, Mask, ExtCtrls;

type
  TFEM_ = class(TForm)
    DBNVDSEM: TDBNavigator;
    LBLEMNCGEN: TLabel;
    DBEDEMNCGEN: TDBEdit;
    LBLEMNCODG: TLabel;
    DBEDEMNCODG: TDBEdit;
    LBLEMCDESC: TLabel;
    DBEDEMCDESC: TDBEdit;
    DBGRDSEM: TDBGrid;
    DBLKCBEMNCGEN: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEM_: TFEM_;

implementation

uses DMIGEPREV;

{$R *.dfm}

procedure TFEM_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     FREE;
end;

end.
