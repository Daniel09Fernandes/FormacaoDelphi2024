unit Form.Principal.Mensagens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.Generics.Collections;

const
  WM_MYMESSAGE = WM_APP + WM_USER + 1;

type
  TfrmPrincipalMensagens = class(TForm)
    PanelControles: TPanel;
    ButtonProcessamento: TButton;
    EditAviso: TEdit;
    EditTexto: TEdit;
    EditHWND: TEdit;
    ButtonFormWin: TButton;
    ButtonFreeze: TButton;
    PanelMessage: TPanel;
    EditHandleDestino: TEdit;
    ButtonPost: TButton;
    ButtonSend: TButton;
    LabelMsg: TLabel;
    EditMsg: TEdit;
    LabelW: TLabel;
    LabelL: TLabel;
    EditW: TEdit;
    EditL: TEdit;
    ButtonShowForm: TButton;
    PanelBotoes: TPanel;
    ButtonClick: TButton;
    ButtonSetText: TButton;
    ButtonClose: TButton;
    ButtonShake: TButton;
    ButtonSetParent: TButton;
    PanelBuscal: TPanel;
    PanelAtivaBusca: TPanel;
    CheckBoxAtivar: TCheckBox;
    ListBoxHandles: TListBox;
    MemoLog: TMemo;
    TimerBusca: TTimer;
    procedure ButtonFormWinClick(Sender: TObject);
    procedure ButtonFreezeClick(Sender: TObject);
    procedure ButtonProcessamentoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonSendClick(Sender: TObject);
    procedure ButtonPostClick(Sender: TObject);
    procedure ButtonShowFormClick(Sender: TObject);
    procedure ButtonClickClick(Sender: TObject);
    procedure ButtonCloseClick(Sender: TObject);
    procedure ButtonSetTextClick(Sender: TObject);
    procedure ButtonShakeClick(Sender: TObject);
    procedure EditAvisoChange(Sender: TObject);
    procedure CheckBoxAtivarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ListBoxHandlesClick(Sender: TObject);
    procedure TimerBuscaTimer(Sender: TObject);
    procedure ButtonSetParentClick(Sender: TObject);
  private
    { Private declarations }
    FListaWnds: TDictionary<string, THandle>;
    procedure CriaControlesWin;
    procedure wmMyMessage(var Msg: TMessage); message WM_MYMESSAGE;
  public
    { Public declarations }
  end;

var
  frmPrincipalMensagens: TfrmPrincipalMensagens;
  NovaClasse: TWndClass;
  lFormWin: HWND;
  lEdtHandle: HWND;
  lBtnHandle: NativeInt;

  OldWndProc: TFarProc;

implementation

{$R *.dfm}

uses Form.Destino;

procedure ClickButtonWin;
var
  lText: array [0..255] of char;
begin
  GetWindowText(lEdtHandle, lText, Length(lText));
  MessageBox(lFormWin, Pchar('Voce Digitou: "'+lText+ '"'),'Aviso',MB_APPLMODAL or MB_ICONINFORMATION + MB_OK);
end;

function NossaWndProc(pHandle: HWND; uMsg: UINT;
  pWParam: WPARAM; pLParam: LPARAM): LRESULT;  stdcall;
begin
  Result := 0;

  case uMsg of
    WM_DESTROY: PostQuitMessage(0);
    WM_ACTIVATE: Winapi.Windows.SetFocus(lEdtHandle);
    WM_COMMAND:
      begin
        if pLParam = lBtnHandle then
        begin
          case pWParam of
            BN_CLICKED: ClickButtonWin;
          end;
        end;
      end
      else
        Result := DefWindowProc(pHandle, uMsg, pWParam, pLParam);
  end;
end;

procedure TfrmPrincipalMensagens.ButtonClickClick(Sender: TObject);
begin
  SendMessage(StrToInt(EditHandleDestino.Text),WM_LBUTTONDOWN,0,0);
  sleep(100);
  SendMessage(StrToInt(EditHandleDestino.Text),WM_LBUTTONUP,0,0);
end;

procedure TfrmPrincipalMensagens.ButtonCloseClick(Sender: TObject);
begin
  SendMessage(StrToInt(EditHandleDestino.Text),WM_CLOSE,0,0);
end;

procedure TfrmPrincipalMensagens.ButtonFormWinClick(Sender: TObject);
begin
  NovaClasse.style := 0;
  NovaClasse.lpfnWndProc := @NossaWndProc; // @DefWindowProc;
  NovaClasse.cbClsExtra := 0;
  NovaClasse.cbWndExtra := 0;
  NovaClasse.hInstance := HInstance;
  NovaClasse.hIcon := 0;
  NovaClasse.hCursor := LoadCursor(0,IDC_ARROW);
  NovaClasse.hbrBackground := COLOR_WINDOW;
  NovaClasse.lpszMenuName := nil;
  NovaClasse.lpszClassName := 'TMainForm';

  Winapi.Windows.RegisterClass(NovaClasse);

  lFormWin := CreateWindow('TMainForm',
    'Criacao de Componentes',
    WS_OVERLAPPEDWINDOW,
    Integer(CW_USEDEFAULT),
    Integer(CW_USEDEFAULT),
    320, 200,
    0,
    0,
    HInstance,
    nil);

  CriaControlesWin;

  ShowWindow(lFormWin,SW_SHOWNORMAL);

end;

procedure TfrmPrincipalMensagens.ButtonFreezeClick(Sender: TObject);
begin
  Sleep(7000)
end;

procedure TfrmPrincipalMensagens.ButtonPostClick(Sender: TObject);
begin
  PostMessage(
    StrToIntDef(EditHandleDestino.Text, Handle),
    StrToIntDef(EditMsg.Text, WM_MYMESSAGE),
    StrToIntDef(EditW.Text,0), StrToIntDef(EditL.Text,0));
end;

procedure TfrmPrincipalMensagens.ButtonProcessamentoClick(Sender: TObject);
begin
{  While True do
  begin
    Caption := EditAviso.Text;
    Sleep(10);
    Application.ProcessMessages;
  end;
}
end;

procedure TfrmPrincipalMensagens.ButtonSendClick(Sender: TObject);
begin
  SendMessage(
    StrToIntDef(EditHandleDestino.Text, Handle),
    StrToIntDef(EditMsg.Text, WM_MYMESSAGE),
    StrToIntDef(EditW.Text,0), StrToIntDef(EditL.Text,0));
end;

procedure TfrmPrincipalMensagens.ButtonSetParentClick(Sender: TObject);
begin
  if not Assigned(frmDestino) then
    frmDestino := TfrmDestino.Create(Self);

  frmDestino.Show;

  Winapi.Windows.SetParent(StrToInt(EditHandleDestino.Text),frmDestino.Handle);
end;

procedure TfrmPrincipalMensagens.ButtonSetTextClick(Sender: TObject);
begin
  SetWindowText(StrToInt(EditHandleDestino.Text),PChar(EditTexto.Text));
end;

procedure TfrmPrincipalMensagens.ButtonShakeClick(Sender: TObject);

  procedure WindowShake(wHandle: THandle);
  const
    MAXDELTA = 4;
    SHAKETIMES = 500;
  var
    oRect, wRect: TRect;
    deltax: Integer;
    deltay: Integer;
    cnt: Integer;
    dx, dy: Integer;
  begin
    //posicao original
    GetWindowRect(wHandle, wRect);
    oRect := wRect;
    Randomize;
    for cnt := 0 to SHAKETIMES do
    begin
      deltax := Round(Random(MAXDELTA));
      deltay := Round(Random(MAXDELTA));
      dx := Round(1 + Random(2));
      if dx = 2 then
        dx := -1;
      dy := Round(1 + Random(2));
      if dy = 2 then
        dy := -1;

      OffsetRect(wRect, dx * deltax, dy * deltay);
      MoveWindow(wHandle, wRect.Left, wRect.top, wRect.Right - wRect.Left,
       wRect.Bottom - wRect.Top,True);
    end;
    // Retorna posicao Original de inicio
    MoveWindow(wHandle, oRect.Left, oRect.top, oRect.Right - oRect.Left,
       oRect.Bottom - oRect.Top,True);
  end;
begin
  WindowShake(StrToInt(EditHandleDestino.Text));
end;

procedure TfrmPrincipalMensagens.ButtonShowFormClick(Sender: TObject);
begin
  TfrmDestino.Create(Self).Show;
end;

procedure TfrmPrincipalMensagens.CheckBoxAtivarClick(Sender: TObject);
begin
  TimerBusca.Enabled := CheckBoxAtivar.Checked;
end;

procedure TfrmPrincipalMensagens.CriaControlesWin;
begin
  lEdtHandle := CreateWindowEx(WS_EX_CLIENTEDGE,
    'EDIT',
    '',
    WS_CHILD OR WS_VISIBLE OR ES_AUTOVSCROLL OR ES_NOHIDESEL,
    8, 16, 160, 21,
    lFormWin,
    0,
    HInstance,
    nil);

  lBtnHandle := CreateWindow('BUTTON',
  'Exibe Texto',
  WS_CHILD OR WS_VISIBLE OR BS_PUSHBUTTON OR BS_TEXT,
  8,40,96,25,
  lFormWin,
  0,
  HInstance,
  0);

end;


procedure TfrmPrincipalMensagens.EditAvisoChange(Sender: TObject);
begin
  Caption := EditAviso.Text;
end;

procedure TfrmPrincipalMensagens.FormCreate(Sender: TObject);
begin
  EditHWND.Text := IntToStr(Self.Handle);
  EditMsg.Text := IntToStr(WM_MYMESSAGE);
  FListaWnds := TDictionary<string, THandle>.Create;
end;

procedure TfrmPrincipalMensagens.FormDestroy(Sender: TObject);
begin
  FListaWnds.Destroy;
end;

procedure TfrmPrincipalMensagens.ListBoxHandlesClick(Sender: TObject);
begin
  if ((FListaWnds.Count > 0) and (FListaWnds.ContainsKey(ListBoxHandles.Items[ListBoxHandles.ItemIndex]))) then
  begin
    EditHandleDestino.Text := IntToStr(FListaWnds[ListBoxHandles.Items[ListBoxHandles.ItemIndex]]);
  end;
end;

procedure TfrmPrincipalMensagens.TimerBuscaTimer(Sender: TObject);
var
  lPoint: TPoint;
  lHandle: HWND;
  lArrCaption: array [0..255] of Char;
  lCaption: string;
  lClassName: string;
begin
  GetCursorPos(lPoint);
  lHandle := WindowFromPoint(lPoint);

  GetWindowText(lHandle, @lArrCaption, Length(lArrCaption));
  lCaption := string(lArrCaption);

  WinApi.Windows.GetClassName(lHandle,@lArrCaption,Length(lArrCaption));
  lClassName := string(lArrCaption);

  if not FListaWnds.ContainsKey(lCaption + ' - '+lClassName) then
  begin
    if not FListaWnds.ContainsKey(lClassName) then
    begin
      if not FListaWnds.ContainsKey(IntToStr(lHandle)) then
      begin
        if lCaption <> '' then
        begin
          ListBoxHandles.Items.Add(lCaption + ' - '+lClassName);
          FListaWnds.Add(lCaption + ' - '+lClassName, lHandle);
        end else if lClassName <> '' then
        begin
          ListBoxHandles.Items.Add(lClassName);
          FListaWnds.Add(lClassName, lHandle);
        end
        else
        begin
          ListBoxHandles.Items.Add(IntToStr(lHandle));
          FListaWnds.Add(IntToStr(lHandle), lHandle);
        end;
      end
      else
      begin
        ListBoxHandles.ItemIndex := ListBoxHandles.Items.IndexOf(IntToStr(lHandle));
      end;
    end
    else
    begin
      ListBoxHandles.ItemIndex := ListBoxHandles.Items.IndexOf(lClassName);
    end;
  end
  else
  begin
    ListBoxHandles.ItemIndex := ListBoxHandles.Items.IndexOf(lCaption + ' - '+lClassName);
  end;
end;

procedure TfrmPrincipalMensagens.wmMyMessage(var Msg: TMessage);
begin
  MemoLog.Lines.Insert(
    0, msg.Msg.ToString + 'W: '+ Msg.WParam.ToString + ' L: '+msg.LParam.ToString);
end;

end.
