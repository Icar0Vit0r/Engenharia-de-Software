unit FEE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Grids, DBGrids, ExtCtrls, Mask;

type
  TFEE_ = class(TForm)
    DBNVDSEE: TDBNavigator;
    Label1: TLabel;
    DBEDEENCGFP: TDBEdit;
    DBLKCBEENCGFP: TDBLookupComboBox;
    Label2: TLabel;
    DBEDEENCGEF: TDBEdit;
    DBLKCBEENCGEF: TDBLookupComboBox;
    Label3: TLabel;
    DBEDEENCODG: TDBEdit;
    Label4: TLabel;
    DBEDNCGEV: TDBEdit;
    Label5: TLabel;
    DBEDEYVALR: TDBEdit;
    Label6: TLabel;
    DBMEEMOBS: TDBMemo;
    DBGRDSEE: TDBGrid;
    DBLKCBEECDSEV: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEE_: TFEE_;

implementation

uses DMIGEPREV;

{$R *.dfm}

procedure TFEE_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     FREE;
end;

end.
