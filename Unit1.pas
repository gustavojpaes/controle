unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.DBXOdbc, Data.FMTBcd,
  Vcl.StdCtrls, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, unit2, unit3, Data.DBXFirebird, Vcl.Mask,
  Data.Win.ADODB;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    SQLConnection1: TSQLConnection;
    SQLDataSet1: TSQLDataSet;
    ClientDataSet1DATA: TDateField;
    ClientDataSet1TIPO: TStringField;
    ClientDataSet1DESCRICAO: TStringField;
    ClientDataSet1VALOR: TFMTBCDField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Button6: TButton;
    SQLDataSet1DATA: TDateField;
    SQLDataSet1TIPO: TStringField;
    SQLDataSet1DESCRICAO: TStringField;
    SQLDataSet1VALOR: TFMTBCDField;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Button8: TButton;
    DBEdit3: TDBEdit;
    Button7: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button5: TButton;
    Button9: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
ClientDataSet1.Insert;
ClientDataSet1DATA.Text:= DateToStr(date());
form2.ShowModal;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
ClientDataSet1.Edit;
form2.ShowModal;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
ClientDataSet1.Delete;
ClientDataSet1.ApplyUpdates(0);

end;

procedure TForm1.Button5Click(Sender: TObject);
begin
form3.ShowModal;
end;

procedure TForm1.Button6Click(Sender: TObject);

begin
ClientDataSet1.Active:=false;
SQLDataSet1.Active:=false;
SQLDataSet1.CommandText:='';
SQLDataSet1.CommandText:=('select * from controle where data between '+QuotedStr(MaskEdit1.text)+'and'+QuotedStr(MaskEdit2.text) );
SQLDataSet1.Active:=true;
ClientDataSet1.Active:=true;

end;

procedure TForm1.Button7Click(Sender: TObject);
var
 credito, debito, total : real;
begin
 credito:= 0;
 debito:= 0;
 total:= 0;

With ClientDataSet1 do
     begin
          First;
          While Not Eof do
                begin
                if  FieldByName('tipo').Value = 'c' Then
                credito:= credito + FieldbyName('valor').Value
                else
                 debito:= debito + FieldByName('valor').Value;
                Next;
                end;

     end;
DBEdit1.Text:=  FormatFloat('R$ #,##0.00',credito);
DBEdit2.Text:= FormatFloat('R$ #,##0.00',debito);
total:= credito - debito;
DBEdit3.Text := FormatFloat('R$ #,##0.00',total);
if debito > credito then
    dbedit3.Font.Color:= clRed
    else dbedit3.Font.Color:= clWindowText;
end;




procedure TForm1.Button8Click(Sender: TObject);
begin
ClientDataSet1.Active:=false;
SQLDataSet1.Active:=false;
SQLDataSet1.CommandText:='select * from controle';
SQLDataSet1.Active:=true;
ClientDataSet1.IndexFieldNames:= 'data';
ClientDataSet1.Active:=true;

end;

procedure TForm1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
If ClientDataSet1TIPO.Value ='d' then
Dbgrid1.Canvas.Font.Color:= clRed;
Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
end;

procedure TForm1.DBGrid1TitleClick(Column: TColumn);
begin
ClientDataSet1.IndexFieldNames:= Column.FieldName;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
Button8.Click;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ClientDataSet1.Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
       SQLDataSet1.Active:=true;
ClientDataSet1.Active:=true;
end;

end.
