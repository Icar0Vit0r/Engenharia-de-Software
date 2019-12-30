unit FSOBRE;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, jpeg;

type
  TFSOBRE_ = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    IGEPREV: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    OKButton: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSOBRE_: TFSOBRE_;

implementation

{$R *.dfm}

end.
 
