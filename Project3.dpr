program Project3;

uses
  Vcl.Forms,
  Mars2022 in 'Mars2022.pas' {Mars},
  Vcl.Themes,
  Vcl.Styles,
  Polin in 'Polin.pas',
  plmn in 'plmn.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Charcoal Dark Slate');
  Application.CreateForm(TMars, Mars);
  Application.Run;
end.
