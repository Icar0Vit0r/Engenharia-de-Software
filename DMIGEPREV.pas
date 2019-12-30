unit DMIGEPREV;

interface

uses
  SysUtils, Classes, DB, DBTables, DateUtils;

type
  TDMIGEPREV_ = class(TDataModule)
    DSBAIRRO: TDataSource;
    TBBAIRRO: TTable;
    DBIGEPREV: TDatabase;
    TBCARGO: TTable;
    DSCARGO: TDataSource;
    TBCIDADE: TTable;
    DSCIDADE: TDataSource;
    TBCONTATO: TTable;
    DSCONTATO: TDataSource;
    TBEMAIL: TTable;
    DSEMAIL: TDataSource;
    TBENDERECO: TTable;
    DSENDERECO: TDataSource;
    TBENTIDADE: TTable;
    DSENTIDADE: TDataSource;
    TBENTIDADE_FOLHA: TTable;
    DSENTIDADE_FOLHA: TDataSource;
    TBENTIDADE_RELACAO: TTable;
    DSENTIDADE_RELACAO: TDataSource;
    TBESTADO: TTable;
    DSESTADO: TDataSource;
    TBESTADOCIVIL: TTable;
    DSESTADOCIVIL: TDataSource;
    DSEVENTO: TDataSource;
    TBEVENTO: TTable;
    DSEVENTO_ENT_FOL: TDataSource;
    TBEVENTO_ENT_FOL: TTable;
    DSFOLHAPAGAMENTO: TDataSource;
    TBFOLHAPAGAMENTO: TTable;
    TBLEI: TTable;
    DSLEI: TDataSource;
    TBLOGRADOURO: TTable;
    DSLOGRADOURO: TDataSource;
    TBBAIRROBRNCGCD: TFloatField;
    TBBAIRROBRNCODG: TFloatField;
    TBBAIRROBRCDESC: TStringField;
    TBRELACAO: TTable;
    DSRELACAO: TDataSource;
    TBTIPOAPOSENTADORIA: TTable;
    DSTIPOAPOSENTADORIA: TDataSource;
    TBVERBA: TTable;
    DSVERBA: TDataSource;
    TBCATEGORIA: TTable;
    DSCATEGORIA: TDataSource;
    TBTIPOLOGRADOURO: TTable;
    DSTIPOLOGRADOURO: TDataSource;
    TBENDERECOEDNCGEN: TFloatField;
    TBENDERECOEDNCODG: TFloatField;
    TBENDERECOEDCDESC: TStringField;
    TBENDERECOEDCCEP: TStringField;
    TBENDERECOEDCNUMR: TStringField;
    TBENDERECOEDCOBS: TStringField;
    TBENDERECOEDMOBS: TMemoField;
    TBESTADOESCUF: TStringField;
    TBESTADOESCDESC: TStringField;
    TBCIDADECDCUF: TStringField;
    TBCIDADECDNCODG: TFloatField;
    TBCIDADECDCDESC: TStringField;
    TBCONTATOCTNCGEN: TFloatField;
    TBCONTATOCTNCGED: TFloatField;
    TBCONTATOCTNCODG: TFloatField;
    TBCONTATOCTCDESC: TStringField;
    TBCONTATOCTCNUMR: TStringField;
    TBLEILENCODG: TFloatField;
    TBLEILECDESC: TStringField;
    TBLEILECNUMR: TStringField;
    TBLOGRADOUROLGCCEP: TStringField;
    TBLOGRADOUROLGCDESC: TStringField;
    TBLOGRADOUROLGNCGTL: TFloatField;
    TBLOGRADOUROLGCUF: TStringField;
    TBLOGRADOUROLGNCGCD: TFloatField;
    TBLOGRADOUROLGNCGBR: TFloatField;
    TBBAIRROBRCUF: TStringField;
    TBTIPOLOGRADOUROTLNCODG: TFloatField;
    TBTIPOLOGRADOUROTLCDESC: TStringField;
    TBLOGRADOUROLGCDSUF: TStringField;
    TBLOGRADOUROLGCDSBR: TStringField;
    TBLOGRADOUROLGCDSTL: TStringField;
    TBLOGRADOUROLGCDSCD: TStringField;
    TBESTADOCIVILECNCODG: TFloatField;
    TBESTADOCIVILECCDESC: TStringField;
    TBTIPOAPOSENTADORIATANCODG: TFloatField;
    TBTIPOAPOSENTADORIATACDESC: TStringField;
    TBCATEGORIACRNCODG: TFloatField;
    TBCATEGORIACRCDESC: TStringField;
    TBRELACAORENCODG: TFloatField;
    TBRELACAORECDESC: TStringField;
    TBENTIDADEENNCODG: TFloatField;
    TBENTIDADEENCDESC: TStringField;
    TBENTIDADEENCTIPO: TStringField;
    TBENTIDADEENCCPF: TStringField;
    TBENTIDADEENCRG: TStringField;
    TBENTIDADEENCCNPJ: TStringField;
    TBENTIDADEENCIE: TStringField;
    TBENTIDADEENCIM: TStringField;
    TBENTIDADEENCAPEL: TStringField;
    TBENTIDADEENCSEXO: TStringField;
    TBENTIDADEENDNASC: TDateField;
    TBENTIDADEENNCGEC: TFloatField;
    TBENTIDADEENNCADT: TFloatField;
    TBENTIDADEENDCADT: TDateField;
    TBENTIDADEENHCADT: TTimeField;
    TBENTIDADEENCDSEC: TStringField;
    TBENDERECOEDCDSLG: TStringField;
    TBEMAILEMNCGEN: TFloatField;
    TBEMAILEMNCODG: TFloatField;
    TBEMAILEMCDESC: TStringField;
    TBLEILEDDATA: TDateField;
    TBLEILEMFUND: TMemoField;
    TBVERBAVBNCODG: TFloatField;
    TBVERBAVBCDESC: TStringField;
    TBVERBAVBNCGEN: TFloatField;
    TBEVENTOEVNCODG: TFloatField;
    TBEVENTOEVCDESC: TStringField;
    TBEVENTOEVCTIPO: TStringField;
    TBFOLHAPAGAMENTOFPNCODG: TFloatField;
    TBFOLHAPAGAMENTOFPDDATA: TDateField;
    TBENTIDADEENNIDAD: TIntegerField;
    QRCT: TQuery;
    QRCTCTNCODG: TFloatField;
    QRCTCTCDESC: TStringField;
    QRCTCTCNUMR: TStringField;
    QRCTENCCNPJ: TStringField;
    QRCTEDCCEP: TStringField;
    DSQRCT: TDataSource;
    TBENTIDADE_FOLHAEFNCGFP: TFloatField;
    TBENTIDADE_FOLHAEFNCODG: TFloatField;
    TBENTIDADE_FOLHAEFNCGEN: TFloatField;
    QRCDG: TQuery;
    DSQRCDG: TDataSource;
    Query1: TQuery;
    Query1ENNCODG: TFloatField;
    TBENTIDADE_RELACAOERNCGRE: TFloatField;
    TBENTIDADE_RELACAOERNCGEN: TFloatField;
    DSQRVL: TDataSource;
    QRVL: TQuery;
    QRVLENNCODG: TFloatField;
    QRVLENCDESC: TStringField;
    TBVERBAVBCDSEN: TStringField;
    TBCARGOCANCGEN: TFloatField;
    TBCARGOCANCODG: TFloatField;
    TBCARGOCACDESC: TStringField;
    QRVLD2: TQuery;
    DSQRVLD2: TDataSource;
    QRVLD2ENNCODG: TFloatField;
    QRVLD2ENCDESC: TStringField;
    QRVLD3: TQuery;
    TBENTIDADE_RELACAOERNCGTA: TFloatField;
    TBENTIDADE_RELACAOERNC2EN: TFloatField;
    TBENTIDADE_RELACAOERCDSTA: TStringField;
    TBENTIDADE_RELACAOERNCGCR: TFloatField;
    TBENTIDADE_RELACAOERCDSCR: TStringField;
    TBENTIDADE_RELACAOERNCGCA: TFloatField;
    TBENTIDADE_RELACAOERCDSCA: TStringField;
    TBENTIDADE_RELACAOERCDSEN: TStringField;
    TBENTIDADEENOFOTO: TBlobField;
    TBEVENTO_ENT_FOLEENCGFP: TFloatField;
    TBEVENTO_ENT_FOLEENCGEF: TFloatField;
    TBEVENTO_ENT_FOLEENCODG: TFloatField;
    TBEVENTO_ENT_FOLEENCGEV: TFloatField;
    TBEVENTO_ENT_FOLEEYVALR: TCurrencyField;
    TBEVENTO_ENT_FOLEEMOBS: TMemoField;
    TBEVENTO_ENT_FOLEECDSEV: TStringField;
    TBENTIDADE_FOLHAENCDSEN: TStringField;
    TBENTIDADE_RELACAOERDCADT: TDateField;
    TBENTIDADE_RELACAOERDCANC: TDateField;
    QRCDGCOUNTOFCDCUF: TIntegerField;
    QRCDGESCDESC: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure TBENTIDADECalcFields(DataSet: TDataSet);
    procedure TBENTIDADEAfterPost(DataSet: TDataSet);
    procedure TBENTIDADEBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMIGEPREV_: TDMIGEPREV_;
  inserindo: boolean;
  codigo: integer;

implementation


{$R *.dfm}

procedure TDMIGEPREV_.DataModuleCreate(Sender: TObject);
begin
      DMIGEPREV_.QRVLD2.Open;
      DMIGEPREV_.TBESTADO.Open;
      DMIGEPREV_.QRCDG.Open;
      DMIGEPREV_.TBCIDADE.Open;
      DMIGEPREV_.TBBAIRRO.Open;
      DMIGEPREV_.TBTIPOLOGRADOURO.Open;
      DMIGEPREV_.TBLOGRADOURO.Open;
      DMIGEPREV_.TBESTADOCIVIL.Open;
      DMIGEPREV_.TBTIPOAPOSENTADORIA.Open;
      DMIGEPREV_.TBCATEGORIA.Open;
      DMIGEPREV_.TBENTIDADE.Open;
      DMIGEPREV_.TBENTIDADE_RELACAO.Open;
      DMIGEPREV_.TBRELACAO.Open;
      DMIGEPREV_.Query1.Open;
      DMIGEPREV_.TBVERBA.Open;
      DMIGEPREV_.TBENDERECO.Open;
      DMIGEPREV_.TBCONTATO.Open;
      DMIGEPREV_.TBEMAIL.Open;
      DMIGEPREV_.TBLEI.Open;
      DMIGEPREV_.TBCARGO.Open;
      DMIGEPREV_.TBEVENTO.Open;
      DMIGEPREV_.TBFOLHAPAGAMENTO.Open;
      DMIGEPREV_.TBENTIDADE_FOLHA.Open;
      DMIGEPREV_.TBEVENTO_ENT_FOL.Open;
      DMIGEPREV_.QRCT.Open;
end;

procedure TDMIGEPREV_.DataModuleDestroy(Sender: TObject);
begin
     DMIGEPREV_.TBLOGRADOURO.Close;
     DMIGEPREV_.TBBAIRRO.Close;
     DMIGEPREV_.QRCDG.Close;
     DMIGEPREV_.TBCIDADE.Close;
     DMIGEPREV_.TBTIPOLOGRADOURO.Close;
     DMIGEPREV_.TBESTADO.Close;
     DMIGEPREV_.TBESTADOCIVIL.Close;
     DMIGEPREV_.TBTIPOAPOSENTADORIA.Close;
     DMIGEPREV_.TBCATEGORIA.Close;
     DMIGEPREV_.TBRELACAO.Close;
     DMIGEPREV_.TBCONTATO.Close;
     DMIGEPREV_.QRCT.Close;
     DMIGEPREV_.TBENDERECO.Close;
     DMIGEPREV_.TBEMAIL.Close;
     DMIGEPREV_.TBVERBA.Close;
     DMIGEPREV_.TBCARGO.Close;
     DMIGEPREV_.TBENTIDADE_RELACAO.Close;
     DMIGEPREV_.TBENTIDADE.Close;
     DMIGEPREV_.TBLEI.Close;
     DMIGEPREV_.TBEVENTO_ENT_FOL.Close;
     DMIGEPREV_.TBENTIDADE_FOLHA.Close;
     DMIGEPREV_.TBFOLHAPAGAMENTO.Close;
     DMIGEPREV_.TBEVENTO.Close;
     DMIGEPREV_.QRVLD2.Close;

end;

procedure TDMIGEPREV_.TBENTIDADECalcFields(DataSet: TDataSet);
Var
   anoNasc, anoatual: integer;
begin
     if(SELF.TBENTIDADEENDNASC.Text <> '')then
     begin
          anoAtual := strtoint(formatdatetime('yyyy',Date));
          anoNasc := strtoint(formatdatetime('yyyy',SELF.TBENTIDADEENDNASC.Value));
          SELF.TBENTIDADEENNIDAD.Value := anoAtual - anoNasc;
     end;
end;

procedure TDMIGEPREV_.TBENTIDADEAfterPost(DataSet: TDataSet);
begin
     if(inserindo)then
     begin
          SELF.TBENTIDADE_RELACAO.Insert;
          SELF.TBENTIDADE_RELACAOERNCGEN.Value := codigo;
          SELF.TBENTIDADE_RELACAO.Post;
          inserindo := false;
     end;
end;

procedure TDMIGEPREV_.TBENTIDADEBeforePost(DataSet: TDataSet);
begin
     IF(inserindo)then
     begin
          SELF.TBENTIDADEENDCADT.VALUE := DATE;
          SELF.TBENTIDADEENHCADT.VALUE := TIME;
     end;
end;

end.
