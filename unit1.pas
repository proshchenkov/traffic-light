unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Spin, crt;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    SpinEdit1: TSpinEdit;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  k: integer;
  b: boolean;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  if (Shape1.Visible = True) then
  begin
    Shape1.Visible := False;
    Shape2.Visible := False;
    Shape3.Visible := False;
  end
  else
  begin
    Shape1.Visible := True;
    Shape2.Visible := True;
    Shape3.Visible := True;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if (Shape1.Shape = stRectangle) then
  begin
    Shape1.Shape := stCircle;
    Shape2.Shape := stCircle;
    Shape3.Shape := stCircle;
  end
  else
  begin
    Shape1.Shape := stRectangle;
    Shape2.Shape := stRectangle;
    Shape3.Shape := stRectangle;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if (not b) then
  begin
    Timer1.Interval := SpinEdit1.Value;
    k := 0;
    Timer1.Enabled := True;
    b := True;
  end
  else
  begin
    b := False;
    Timer1.Enabled := False;
  end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  k := k + 1;
  if k mod 3 = 1 then
  begin
    Shape1.Visible := True;
    Shape2.Visible := False;
    Shape3.Visible := False;
  end
  else
  if k mod 3 = 2 then
  begin
    Shape1.Visible := False;
    Shape2.Visible := True;
    Shape3.Visible := False;
  end
  else
  begin
    Shape1.Visible := False;
    Shape2.Visible := False;
    Shape3.Visible := True;
  end;
end;

end.
