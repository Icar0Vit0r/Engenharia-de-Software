unit QRCT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, jpeg;

type
  TQRCT_ = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRImage1: TQRImage;
    QRBand3: TQRBand;
    QRSysData3: TQRSysData;
    QRBand4: TQRBand;
    QRBand5: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRCT_: TQRCT_;

implementation

uses DMIGEPREV;

{$R *.dfm}

end.
