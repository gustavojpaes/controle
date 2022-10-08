unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXFirebird, Data.FMTBcd, Data.DB,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, Datasnap.Provider,
  Data.SqlExpr;

type
  TForm3 = class(TForm)
    SQLConnection1: TSQLConnection;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1TIPO: TStringField;
    ClientDataSet1DESCRICAO: TStringField;
    ClientDataSet1VALOR: TSingleField;
    ClientDataSet1DATA: TDateField;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
close;
end;

end.
