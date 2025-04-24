unit frmMain_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation;

type
  TTheme = (Light, Dark);

  TfrmMain = class(TForm)
    btnToggleTheme: TButton;
    lblTheme: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    StyleBookWooooo: TStyleBook;
    StyleBookDarkSide: TStyleBook;
    procedure FormCreate(Sender: TObject);
    procedure btnToggleThemeClick(Sender: TObject);
  private
    { Private declarations }
    theme: TTheme;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}
{$R *.iPad.fmx IOS}

procedure TfrmMain.btnToggleThemeClick(Sender: TObject);
begin
  if theme = TTheme.Dark then
  begin
  lblTheme.Text := 'Theme: Light';
  theme:=TTheme.Light;
  StyleBook := StyleBookWooooo;
  end
else
begin
  lblTheme.text := 'Theme: Dark';
  theme := TTheme.Dark;
  StyleBook := StyleBookDarkSide;
end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  theme := TTheme.Light;

  // Disables fullscreen icon in menu
  Self.BorderIcons := [TBorderIcon.biSystemMenu, TBorderIcon.biMinimize];
end;

end.
