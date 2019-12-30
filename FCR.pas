unit FCR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask;

type
  TFCR_ = class(TForm)
    LBLCRNCODG: TLabel;
    DBEDCRNCODG: TDBEdit;
    LBLCRCDESC: TLabel;
    DBEDCRCDESC: TDBEdit;
    DBNVDSCR: TDBNavigator;
    DBGRDSCR: TDBGrid;
    CBINDEXES: TComboBox;
    EDCODIGO: TEdit;
    BTNPESQUISA1: TButton;
    CRSICDESC: TEdit;
    BTNPESQUISA2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CBINDEXESChange(Sender: TObject);
    procedure BTNPESQUISA1Click(Sender: TObject);
    procedure BTNPESQUISA2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCR_: TFCR_;

implementation

uses DMIGEPREV;

{$R *.dfm}

procedure TFCR_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     FREE;
end;

procedure TFCR_.CBINDEXESChange(Sender: TObject);
begin
     DMIGEPREV_.TBCATEGORIA.IndexName :=
     DMIGEPREV_.TBCATEGORIA.IndexDefs.Items[CBINDEXES.ITEMINDEX].NAME;

end;



procedure TFCR_.BTNPESQUISA1Click(Sender: TObject);
begin
    IF NOT(EDCODIGO.Text='')THEN
    BEGIN
         DMIGEPREV_.TBCATEGORIA.IndexName:='';
         TRY
           DMIGEPREV_.TBCATEGORIA.FindKey([EDCODIGO.Text]);
         EXCEPT
           SHOWMESSAGE('Codigo Invalido!');
         END;
    END;
end;

procedure TFCR_.BTNPESQUISA2Click(Sender: TObject);
begin
     IF NOT(CRSICDESC.Text='')THEN
     BEGIN
          DMIGEPREV_.TBCATEGORIA.IndexName:='SICRCDESC';
          TRY
             DMIGEPREV_.TBCATEGORIA.FindNearest([CRSICDESC.Text]);
          EXCEPT
             SHOWMESSAGE('Descricão Inválida!');
          END;
     END;
end;

end.
