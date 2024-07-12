unit unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    cbb1: TComboBox;
    lbl7: TLabel;
    lbl8: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    dbgrd1: TDBGrid;
    Button6: TButton;
    lbl9: TLabel;
    edt6: TEdit;
    procedure posisiawal;
    procedure bersih;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure edt6Change(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: string;

implementation
uses Unit2;
{$R *.dfm}

procedure TForm1.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
end;


procedure TForm1.Button1Click(Sender: TObject);
//button baru
begin
bersih;
Button1.Enabled:= False;
Button2.Enabled:= True;
Button3.Enabled:= True;
Button4.Enabled:= True;
button5.Enabled:= True;
button6.Enabled:= False;
edt1.Enabled:=True;
edt2.Enabled:=True;
edt3.Enabled:=True;
edt4.Enabled:=True;
edt5.Enabled:=True;
edt6.Enabled:=True;
cbb1.Enabled:=True;
end;

procedure TForm1.posisiawal;
begin
button1.Enabled:=True;
button2.Enabled:=False;
button3.Enabled:=False;
button4.Enabled:=False;
button5.Enabled:=False;
button6.Enabled:=True;
edt1.Enabled:=False;
edt2.Enabled:=False;
edt3.Enabled:=False;
edt4.Enabled:=False;
edt5.Enabled:=False;
edt6.Enabled:=True;
cbb1.Enabled:=False;
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
cbb1.Text:= 'Pilih----';
end;



procedure TForm1.button2Click(Sender: TObject);
//button simpan
begin
  if edt1.Text = '' then
  begin
    ShowMessage('Nama kustomer harus terisi!');
  end
  else if DataModule2.zqry1.Locate('nama', edt1.Text, []) then
  begin
    ShowMessage('Nama Kustomer ' + edt1.Text + ' sudah ada dalam database');
  end
  else
  begin
    with DataModule2.zqry1 do
    begin
      Insert;
      SQL.Clear;
      SQL.Add('INSERT INTO kustomer VALUES (NULL, "' + edt1.Text + '", "' + edt2.Text + '", "' + edt3.Text + '", "' + edt4.Text + '", "' + edt5.Text + '", "' + cbb1.Text + '")');

      ExecSQL;
      SQL.Clear;
      SQL.Add('SELECT * FROM kustomer');
      Open;
    end;
    ShowMessage('Data berhasil disimpan');
  end;
  posisiawal;
end;

procedure TForm1.button3Click(Sender: TObject);
//button EDIT(button update)
 begin
 if edt1.Text = '' then
begin
  ShowMessage('Nik kustomer harus terisi!');
end
else if (edt1.Text = DataModule2.zqry1.FieldByName('nik').AsString) and
         (edt2.Text = DataModule2.zqry1.FieldByName('nama').AsString) and
         (edt3.Text = DataModule2.zqry1.FieldByName('telp').AsString) and
         (edt4.Text = DataModule2.zqry1.FieldByName('email').AsString) and
         (edt5.Text = DataModule2.zqry1.FieldByName('alamat').AsString) and
         (cbb1.Text = DataModule2.zqry1.FieldByName('member').AsString) then
begin
  ShowMessage('nik kustomer' + edt1.Text + ' dan deskripsi tidak mengalami perubahan');
end
else
begin
  with DataModule2.zqry1 do
  begin
    SQL.Clear;
    SQL.Add('UPDATE kustomer SET nik="' + edt1.Text + '", nama="' + edt2.Text + '", telp="' + edt3.Text + '", email="' + edt4.Text + '", alamat="' + edt5.Text + '", member="' + cbb1.Text + '" WHERE id="' + a + '"');
    ExecSQL;

    SQL.Clear;
    SQL.Add('SELECT * FROM kustomer');
    Open;
  end;
  ShowMessage('Data berhasil disimpan');
end;
posisiawal;
end;

procedure TForm1.button4Click(Sender: TObject);
//button delete
begin
if MessageDlg('Apakah Anda Yakin Menghapus Data Ini',mtWarning,[mbYes,mbNo],0)=mryes then
begin
with DataModule2.zqry1 do
begin
     SQL.Clear;
     SQL.Add('delete from kustomer where id="'+a+'"');
     ExecSQL;

     SQL.Clear;
     SQL.Add('select * from kustomer');
     Open;
end;
   ShowMessage('Data Berhasil DiHapus!');
end else
begin
  ShowMessage('Data Batal Dihapus!');
end;
posisiawal;
end;

procedure TForm1.button5Click(Sender: TObject);
//button batal
begin
begin
edt1.Text:='';
edt2.Text:='';
edt3.Text:='';
edt4.Text:='';
edt5.Text:='';
cbb1.Text:='';
end;
posisiawal;
end;


procedure TForm1.cbb1Change(Sender: TObject);
begin
case cbb1.ItemIndex of
    0: lbl8.Caption := '10%';
    1: lbl8.Caption := '5%';
end;
end;


procedure TForm1.dbgrd1CellClick(Column: TColumn);
//dbgrid - event - cellclick
begin
    edt1.Text := DataModule2.zqry1.Fields[1].AsString;
    edt2.Text := DataModule2.zqry1.Fields[2].AsString;
    edt3.Text := DataModule2.zqry1.Fields[3].AsString;
    edt4.Text := DataModule2.zqry1.Fields[4].AsString;
    edt5.Text := DataModule2.zqry1.Fields[5].AsString;
    cbb1.Text := DataModule2.zqry1.Fields[6].AsString;
    a:=DataModule2.zqry1.Fields[0].AsString;

    button1.Enabled:=False;
    button2.Enabled:=True;
    button3.Enabled:=True;
    button4.Enabled:=True;
    button5.Enabled:=False;
end;

procedure TForm1.edt6Change(Sender: TObject);
//search
begin
begin
with DataModule2.zqry1 do
begin
  SQL.Clear;
  SQL.Add('select * from kustomer where nama like"%'+edt6.Text+'%"');
  Open;
end;
end;
end;

procedure TForm1.button6Click(Sender: TObject);
//button laporan
begin
begin
DataModule2.frxrprt1.ShowReport();
end;
posisiawal;
end;


end.
