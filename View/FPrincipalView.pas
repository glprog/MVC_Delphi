unit FPrincipalView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConexao, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  VConexao: TConexao;
begin
  VConexao := TConexao.Create;
  VConexao.GetConn.Connected := True;
  try
    if VConexao.GetConn().Connected then
      ShowMessage('Conectado.');
  finally
    FreeAndNil(VConexao);
  end;
end;

initialization
  ReportMemoryLeaksOnShutdown := True;

end.