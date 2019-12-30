unit FED;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons;

type
  TFED_ = class(TForm)
    LBLEDNCODG: TLabel;
    DBEDEDNCODG: TDBEdit;
    LBLEDCDESC: TLabel;
    DBEDEDCDESC: TDBEdit;
    LBLEDNCGEN: TLabel;
    DBEDEDNCGEN: TDBEdit;
    LBLEDCCEP: TLabel;
    DBEDEDCCEP: TDBEdit;
    LBLEDCNUMR: TLabel;
    DBEDEDCNUMR: TDBEdit;
    LBLEDCOBS: TLabel;
    DBEDEDCOBS: TDBEdit;
    LBLEDMOBS: TLabel;
    DBMEDCOBS: TDBMemo;
    DBLKCBEDNCGEN: TDBLookupComboBox;
    DBNVDSED: TDBNavigator;
    DBGRDSED: TDBGrid;
    DBLKCBEDCCEP: TDBLookupComboBox;
    BTNCT: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTNCTClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FED_: TFED_;

implementation

uses DMIGEPREV, FCT;

{$R *.dfm}

procedure TFED_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     FREE;
end;

procedure TFED_.BTNCTClick(Sender: TObject);
begin
     FCT_:= TFCT_.Create(FED_);
     FCT_.Show;
end;

end.
