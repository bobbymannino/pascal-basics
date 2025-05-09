program MultipleTables;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmMain_u in 'Forms\frmMain_u.pas' {frmMain},
  dmTables_u in 'DataModules\dmTables_u.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
