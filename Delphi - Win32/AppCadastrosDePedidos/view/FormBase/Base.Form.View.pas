unit Base.Form.View;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation;

type
  TFrBase = class(TForm)
    ToolBar1: TToolBar;
    Rectangle1: TRectangle;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Main: TRectangle;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrBase: TFrBase;

implementation

{$R *.fmx}

end.
