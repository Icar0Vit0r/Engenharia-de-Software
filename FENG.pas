unit FENG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DbChart;

type
  TFCDG_ = class(TForm)
    DBChart1: TDBChart;
    Series1: TPieSeries;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCDG_: TFCDG_;

implementation

uses DMIGEPREV;

{$R *.dfm}

procedure TFCDG_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     FREE;
end;

end.
