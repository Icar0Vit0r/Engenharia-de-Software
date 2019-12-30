unit FVB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGrids, ExtCtrls, StdCtrls, Mask;

type
  TFVB_ = class(TForm)
    LBLVBNCODG: TLabel;
    DBEDVBNCODG: TDBEdit;
    LBLVBCDESC: TLabel;
    DBEDVBCDESC: TDBEdit;
    LBLVBNCGEN: TLabel;
    DBEDVBNCGEN: TDBEdit;
    DBNVDSVB: TDBNavigator;
    DBGRDSVB: TDBGrid;
    DBLKCBVBENCODG: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVB_: TFVB_;

implementation

uses DMIGEPREV;

{$R *.dfm}

procedure TFVB_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     DMIGEPREV_.QRVL.Close;
     FREE;
end;

procedure TFVB_.FormCreate(Sender: TObject);
begin
     DMIGEPREV_.QRVL.Open;
end;

end.
