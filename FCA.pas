unit FCA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ExtCtrls, Grids, DBGrids, StdCtrls, Mask;

type
  TFCA_ = class(TForm)
    LBLCANCODG: TLabel;
    DBEDCANCODG: TDBEdit;
    LBLCACDESC: TLabel;
    DBEDCACDESC: TDBEdit;
    DBGRDSCA: TDBGrid;
    DBNVDSCA: TDBNavigator;
    DBLKCBCANCGEN: TDBLookupComboBox;
    Label1: TLabel;
    DBEDCANCGEN: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCA_: TFCA_;

implementation

uses DMIGEPREV;

{$R *.dfm}



procedure TFCA_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     FREE;
end;

end.
