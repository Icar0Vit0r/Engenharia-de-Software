unit FMAIN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFMAIN_ = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Estado1: TMenuItem;
    Sair1: TMenuItem;
    Cidade1: TMenuItem;
    Bairro1: TMenuItem;
    ipoLogradouro1: TMenuItem;
    Logradouro1: TMenuItem;
    EstadoCivil1: TMenuItem;
    ipoAposentadoria1: TMenuItem;
    Categoria1: TMenuItem;
    Lei1: TMenuItem;
    Verba1: TMenuItem;
    Evento1: TMenuItem;
    FolhadePagamento1: TMenuItem;
    EntidadeFolha1: TMenuItem;
    EntidadeEventoFolha1: TMenuItem;
    CadastrodeEndereo1: TMenuItem;
    CadastrodeFolha1: TMenuItem;
    CadastrodeEntidade1: TMenuItem;
    CadastrodeAposentado1: TMenuItem;
    CadastrodeLeiseVerbas1: TMenuItem;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    Usurio1: TMenuItem;
    Gerente1: TMenuItem;
    Pensionista1: TMenuItem;
    Excluido1: TMenuItem;
    RepresentanteLegal1: TMenuItem;
    Orgo1: TMenuItem;
    FontePagadora1: TMenuItem;
    ExSegurado1: TMenuItem;
    Segurado1: TMenuItem;
    Obito1: TMenuItem;
    procedure Estado1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Cidade1Click(Sender: TObject);
    procedure Bairro1Click(Sender: TObject);
    procedure ipoLogradouro1Click(Sender: TObject);
    procedure Logradouro1Click(Sender: TObject);
    procedure EstadoCivil1Click(Sender: TObject);
    procedure ipoAposentadoria1Click(Sender: TObject);
    procedure Categoria1Click(Sender: TObject);
    procedure Relao1Click(Sender: TObject);
    procedure Entidade1Click(Sender: TObject);
    procedure Endereco1Click(Sender: TObject);
    procedure Contato1Click(Sender: TObject);
    procedure Email1Click(Sender: TObject);
    procedure Lei1Click(Sender: TObject);
    procedure Verba1Click(Sender: TObject);
    procedure Cargo1Click(Sender: TObject);
    procedure Evento1Click(Sender: TObject);
    procedure FolhadePagamento1Click(Sender: TObject);
    procedure EntidadeFolha1Click(Sender: TObject);
    procedure EntidadeEventoFolha1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Usurio1Click(Sender: TObject);
    procedure Gerente1Click(Sender: TObject);
    procedure Segurado1Click(Sender: TObject);
    procedure Pensionista1Click(Sender: TObject);
    procedure Excluido1Click(Sender: TObject);
    procedure RepresentanteLegal1Click(Sender: TObject);
    procedure Orgo1Click(Sender: TObject);
    procedure FontePagadora1Click(Sender: TObject);
    procedure ExSegurado1Click(Sender: TObject);
    procedure Obito1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMAIN_: TFMAIN_;

implementation

uses FES, FCD, FBR, FTL, FLG, FEC, FTA, FCR, FRE, FEN, FED, FCT, FEM, FLE,
  FVB, FCA, FEV, FFP, FEF, FEE, FSOBRE, DMIGEPREV;

{$R *.dfm}

procedure TFMAIN_.Estado1Click(Sender: TObject);
begin
    FES_:= TFES_.CREATE(APPLICATION);
   WITH FES_ DO
   BEGIN
       SHOW ; // Abre de forma não Modal
   END;
end;

procedure TFMAIN_.Sair1Click(Sender: TObject);
begin
     Close;
end;

procedure TFMAIN_.Cidade1Click(Sender: TObject);
begin
     FCD_:= TFCD_.CREATE(APPLICATION);
    WITH FCD_ DO
    BEGIN
       SHOW ; // Abre de forma não Modal
    END;
end;

procedure TFMAIN_.Bairro1Click(Sender: TObject);
begin
     FBR_:= TFBR_.CREATE(APPLICATION);
    WITH FBR_ DO
    BEGIN
       SHOW ; // Abre de forma não Modal
    END;
end;

procedure TFMAIN_.ipoLogradouro1Click(Sender: TObject);
begin
     FTL_:= TFTL_.CREATE(APPLICATION);
    WITH FTL_ DO
    BEGIN
       SHOW ; // Abre de forma não Modal
    END;
end;

procedure TFMAIN_.Logradouro1Click(Sender: TObject);
begin
     FLG_:= TFLG_.CREATE(APPLICATION);
    WITH FLG_ DO
    BEGIN
       SHOW ; // Abre de forma não Modal
    END;
end;

procedure TFMAIN_.EstadoCivil1Click(Sender: TObject);
begin
     FEC_:= TFEC_.CREATE(APPLICATION);
    WITH FEC_ DO
    BEGIN
       SHOW ; // Abre de forma não Modal
    END;

end;

procedure TFMAIN_.ipoAposentadoria1Click(Sender: TObject);
begin
     FTA_:= TFTA_.CREATE(APPLICATION);
    WITH FTA_ DO
    BEGIN
       SHOW ; // Abre de forma não Modal
    END;
end;

procedure TFMAIN_.Categoria1Click(Sender: TObject);
begin
     FCR_:= TFCR_.CREATE(APPLICATION);
    WITH FCR_ DO
    BEGIN
       SHOW ; // Abre de forma não Modal
    END;
end;

procedure TFMAIN_.Relao1Click(Sender: TObject);
begin
     FRE_:= TFRE_.CREATE(APPLICATION);
    WITH FRE_ DO
    BEGIN
       SHOW ; // Abre de forma não Modal
    END;
end;

procedure TFMAIN_.Entidade1Click(Sender: TObject);
begin
     FEN_:= TFEN_.CREATE(APPLICATION);
    WITH FEN_ DO
    BEGIN
       SHOW ; // Abre de forma não Modal
    END;
end;

procedure TFMAIN_.Endereco1Click(Sender: TObject);
begin
     FED_:= TFED_.CREATE(APPLICATION);
    WITH FED_ DO
    BEGIN
       SHOW ; // Abre de forma não Modal
    END;
end;

procedure TFMAIN_.Contato1Click(Sender: TObject);
begin
     FCT_:= TFCT_.CREATE(APPLICATION);
    WITH FCT_ DO
    BEGIN
       SHOW ; // Abre de forma não Modal
    END;
end;

procedure TFMAIN_.Email1Click(Sender: TObject);
begin
     FEM_:= TFEM_.CREATE(APPLICATION);
    WITH FEM_ DO
    BEGIN
        SHOW ; // Abre de forma não Modal
    END;
end;

procedure TFMAIN_.Lei1Click(Sender: TObject);
begin
     FLE_:= TFLE_.CREATE(APPLICATION);
    WITH FLE_ DO
    BEGIN
        SHOW ; // Abre de forma não Modal
    END;
end;


procedure TFMAIN_.Verba1Click(Sender: TObject);
begin
     FVB_:= TFVB_.CREATE(APPLICATION);
    WITH FVB_ DO
    BEGIN
        SHOW ; // Abre de forma não Modal
    END;
end;

procedure TFMAIN_.Cargo1Click(Sender: TObject);
begin
     FCA_:= TFCA_.CREATE(APPLICATION);
    WITH FCA_ DO
    BEGIN
        SHOW ; // Abre de forma não Modal
    END;
end;

procedure TFMAIN_.Evento1Click(Sender: TObject);
begin
     FEV_:= TFEV_.CREATE(APPLICATION);
    WITH FEV_ DO
    BEGIN
        SHOW ; // Abre de forma não Modal
    END;
end;

procedure TFMAIN_.FolhadePagamento1Click(Sender: TObject);
begin
     FFP_:= TFFP_.CREATE(APPLICATION);
    WITH FFP_ DO
    BEGIN
        SHOW ; // Abre de forma não Modal
    END;
end;

procedure TFMAIN_.EntidadeFolha1Click(Sender: TObject);
begin
     FEF_:= TFEF_.CREATE(APPLICATION);
    WITH FEF_ DO
    BEGIN
        SHOW ; // Abre de forma não Modal
    END;
end;

procedure TFMAIN_.EntidadeEventoFolha1Click(Sender: TObject);
begin
     FEE_:= TFEE_.CREATE(APPLICATION);
    WITH FEE_ DO
    BEGIN
        SHOW ; // Abre de forma não Modal
    END;
end;

procedure TFMAIN_.Sobre1Click(Sender: TObject);
begin
     FSOBRE_ := TFSOBRE_.CREATE(SELF);
     FSOBRE_.SHOWMODAL;
     FSOBRE_.FREE;
end;

procedure TFMAIN_.Usurio1Click(Sender: TObject);
begin
     DMIGEPREV_.TBRELACAO.FindKey([1]);
     FEN_:= TFEN_.Create(APPLICATION);
     FEN_.Show;
end;

procedure TFMAIN_.Gerente1Click(Sender: TObject);
begin
     DMIGEPREV_.TBRELACAO.FindKey([2]);
     FEN_:= TFEN_.Create(APPLICATION);
     FEN_.Show;
end;

procedure TFMAIN_.Segurado1Click(Sender: TObject);
begin
     DMIGEPREV_.TBRELACAO.FindKey([3]);
     FEN_:= TFEN_.Create(APPLICATION);
     FEN_.Show;
end;

procedure TFMAIN_.Pensionista1Click(Sender: TObject);
begin
     DMIGEPREV_.TBRELACAO.FindKey([4]);
     FEN_:= TFEN_.Create(APPLICATION);
     FEN_.Show;
end;

procedure TFMAIN_.Excluido1Click(Sender: TObject);
begin
     DMIGEPREV_.TBRELACAO.FindKey([5]);
     FEN_:= TFEN_.Create(APPLICATION);
     FEN_.Show;
end;

procedure TFMAIN_.RepresentanteLegal1Click(Sender: TObject);
begin
     DMIGEPREV_.TBRELACAO.FindKey([6]);
     FEN_:= TFEN_.Create(APPLICATION);
     FEN_.Show;
end;

procedure TFMAIN_.Orgo1Click(Sender: TObject);
begin
     DMIGEPREV_.TBRELACAO.FindKey([7]);
     FEN_:= TFEN_.Create(APPLICATION);
     FEN_.Show;
end;

procedure TFMAIN_.FontePagadora1Click(Sender: TObject);
begin
     DMIGEPREV_.TBRELACAO.FindKey([8]);
     FEN_:= TFEN_.Create(APPLICATION);
     FEN_.Show;
end;



procedure TFMAIN_.ExSegurado1Click(Sender: TObject);
begin
     DMIGEPREV_.TBRELACAO.FindKey([9]);
     FEN_:= TFEN_.Create(APPLICATION);
     FEN_.Show;
end;

procedure TFMAIN_.Obito1Click(Sender: TObject);
begin
     DMIGEPREV_.TBRELACAO.FindKey([10]);
     FEN_:= TFEN_.Create(APPLICATION);
     FEN_.Show;
end;

end.
