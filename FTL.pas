unit FTL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask;

type
  TFTL_ = class(TForm)
    LBLTLNCODG: TLabel;
    DBEDTLNCODG: TDBEdit;
    LBLTLCDESC: TLabel;
    DBEDTLCDESC: TDBEdit;
    DBNVDSTL: TDBNavigator;
    DBGRDSTL: TDBGrid;
    EDCODIGO: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EDCODIGOChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTL_: TFTL_;

implementation

uses DMIGEPREV;

{$R *.dfm}

procedure TFTL_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     FREE;
end;

procedure TFTL_.EDCODIGOChange(Sender: TObject);
begin
  IF NOT (EDCODIGO.TEXT = '') then // Ap�strofes
 BEGIN
 DMIGEPREV_.TBLOGRADOURO.indexname := ''; // Indice Prim�rio
 TRY
 DMIGEPREV_.TBTIPOLOGRADOURO.FindKey( [EDCODIGO.TEXT]);
 EXCEPT
 SHOWMESSAGE ('C�digo Inv�lido');
 END; // Try
 END; // IF
end;

end.
