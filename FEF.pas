unit FEF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGrids, ExtCtrls, StdCtrls, Mask;

type
  TFEF_ = class(TForm)
    DBNVDSEF: TDBNavigator;
    DBGRDSEF: TDBGrid;
    DBLKCBEFNCGFP: TDBLookupComboBox;
    LBLEFNCGFP: TLabel;
    DBEDEFNCODG: TDBEdit;
    DBLKCBENCDSEN: TDBLookupComboBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEF_: TFEF_;

implementation

uses DMIGEPREV;

{$R *.dfm}

procedure TFEF_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     DMIGEPREV_.QRVLD2.Close;
     FREE;
end;

procedure TFEF_.FormCreate(Sender: TObject);
begin
     DMIGEPREV_.QRVLD2.Open;
end;

end.
