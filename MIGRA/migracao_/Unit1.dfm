object frmPrincipal: TfrmPrincipal
  Left = 490
  Top = 143
  BorderIcons = [biSystemMenu]
  Caption = 'Migra Excel Guto'
  ClientHeight = 279
  ClientWidth = 242
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbstatus: TLabel
    Left = 20
    Top = 233
    Width = 216
    Height = 19
    AutoSize = False
    Caption = 'lbstatus'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Button2: TButton
    Left = 911
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Receber'
    Enabled = False
    TabOrder = 0
    Visible = False
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 129
    Top = 52
    Width = 107
    Height = 25
    Caption = 'Ajusta Sexo'
    TabOrder = 1
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 911
    Top = 335
    Width = 75
    Height = 25
    Caption = 'Recebido'
    Enabled = False
    TabOrder = 2
    Visible = False
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 783
    Top = 397
    Width = 107
    Height = 25
    Caption = 'Produto'
    Enabled = False
    TabOrder = 3
    Visible = False
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 20
    Top = 53
    Width = 107
    Height = 25
    Caption = 'Ajusta Endereco'
    TabOrder = 4
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 20
    Top = 83
    Width = 107
    Height = 25
    Caption = 'Grupo'
    TabOrder = 5
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 129
    Top = 85
    Width = 107
    Height = 25
    Caption = 'Marca'
    TabOrder = 6
    OnClick = Button8Click
  end
  object ProgressBar: TProgressBar
    Left = 20
    Top = 253
    Width = 216
    Height = 17
    Max = 77738
    TabOrder = 7
  end
  object Button10: TButton
    Left = 783
    Top = 414
    Width = 107
    Height = 25
    Caption = 'PisCofins'
    TabOrder = 8
    Visible = False
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 20
    Top = 149
    Width = 107
    Height = 25
    Caption = 'Titulo A RECEBER'
    TabOrder = 9
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 324
    Top = 53
    Width = 107
    Height = 25
    Caption = 'T'#205'TULO RECEBIDOS'
    Enabled = False
    TabOrder = 10
    Visible = False
    OnClick = Button12Click
  end
  object Button13: TButton
    Left = 783
    Top = 366
    Width = 107
    Height = 25
    Caption = 'Titulo Despesas'
    TabOrder = 11
    Visible = False
    OnClick = Button13Click
  end
  object Button14: TButton
    Left = 783
    Top = 352
    Width = 107
    Height = 25
    Caption = 'Banco'
    TabOrder = 12
    Visible = False
    OnClick = Button14Click
  end
  object Button15: TButton
    Left = 783
    Top = 414
    Width = 107
    Height = 25
    Caption = 'CFOP'
    TabOrder = 13
    Visible = False
    OnClick = Button15Click
  end
  object Button16: TButton
    Left = 783
    Top = 383
    Width = 107
    Height = 25
    Caption = 'CST'
    TabOrder = 14
    Visible = False
    OnClick = Button16Click
  end
  object Button17: TButton
    Left = 783
    Top = 459
    Width = 107
    Height = 25
    Caption = 'IMP PIS COFINS'
    TabOrder = 15
    Visible = False
    OnClick = Button17Click
  end
  object Button18: TButton
    Left = 783
    Top = 459
    Width = 107
    Height = 25
    Caption = 'D'#233'bito Fornecedor'
    TabOrder = 16
    Visible = False
    OnClick = Button18Click
  end
  object Panel1: TPanel
    Left = 20
    Top = 320
    Width = 742
    Height = 17
    Caption = 'Panel1'
    TabOrder = 17
    Visible = False
  end
  object Button19: TButton
    Left = 783
    Top = 476
    Width = 107
    Height = 25
    Caption = 'Cliente'
    TabOrder = 18
    Visible = False
    OnClick = Button19Click
  end
  object Button20: TButton
    Left = 20
    Top = 200
    Width = 107
    Height = 25
    Caption = 'Estoque'
    TabOrder = 19
    OnClick = Button20Click
  end
  object Button22: TButton
    Left = 324
    Top = 84
    Width = 107
    Height = 25
    Caption = 'Titulo A PAGAR'
    Enabled = False
    TabOrder = 20
    OnClick = Button22Click
  end
  object Button23: TButton
    Left = 467
    Top = 247
    Width = 127
    Height = 25
    Caption = 'CLIENTE CONTROL'
    TabOrder = 21
    Visible = False
    OnClick = Button23Click
  end
  object Button24: TButton
    Left = 20
    Top = 22
    Width = 107
    Height = 25
    Caption = 'CLIENTE'
    TabOrder = 22
    OnClick = Button24Click
  end
  object Button25: TButton
    Left = 533
    Top = 22
    Width = 107
    Height = 25
    Caption = 'Cliente XLS'
    TabOrder = 23
    Visible = False
    OnClick = Button25Click
  end
  object Edit1: TEdit
    Left = 504
    Top = 64
    Width = 169
    Height = 21
    TabOrder = 24
    Text = 'Edit1'
    Visible = False
  end
  object Button26: TButton
    Left = 616
    Top = 62
    Width = 107
    Height = 25
    Caption = 'FONTE IBPT'
    TabOrder = 25
    Visible = False
    OnClick = Button24Click
  end
  object Button27: TButton
    Left = 616
    Top = 115
    Width = 107
    Height = 25
    Caption = 'FONTE IBPT TXT'
    TabOrder = 26
    Visible = False
    OnClick = Button27Click
  end
  object Button28: TButton
    Left = 622
    Top = 8
    Width = 107
    Height = 25
    Caption = 'GERA'
    TabOrder = 27
    Visible = False
    OnClick = Button28Click
  end
  object Button29: TButton
    Left = 467
    Top = 22
    Width = 107
    Height = 25
    Caption = 'Produto XLS ACC'
    TabOrder = 28
    Visible = False
    OnClick = Button29Click
  end
  object Button30: TButton
    Left = 616
    Top = 88
    Width = 107
    Height = 25
    Caption = 'Cod Rec'
    TabOrder = 29
    Visible = False
    OnClick = Button30Click
  end
  object Button31: TButton
    Left = 433
    Top = 53
    Width = 107
    Height = 25
    Caption = 'Titulo PAGOS'
    Enabled = False
    TabOrder = 30
    Visible = False
    OnClick = Button31Click
  end
  object Button32: TButton
    Left = 783
    Top = 352
    Width = 107
    Height = 25
    Caption = 'CST XLS'
    TabOrder = 31
    Visible = False
    OnClick = Button32Click
  end
  object Button33: TButton
    Left = 20
    Top = 108
    Width = 107
    Height = 25
    Caption = 'UNIDADE'
    Enabled = False
    TabOrder = 32
    OnClick = Button33Click
  end
  object Button35: TButton
    Left = 783
    Top = 521
    Width = 107
    Height = 25
    Caption = 'Produto'
    TabOrder = 33
    Visible = False
    OnClick = Button35Click
  end
  object Button36: TButton
    Left = 783
    Top = 507
    Width = 107
    Height = 25
    Caption = 'Ajusta CMF'
    TabOrder = 34
    Visible = False
    OnClick = Button36Click
  end
  object Button37: TButton
    Left = 783
    Top = 490
    Width = 107
    Height = 25
    Caption = 'StringList'
    TabOrder = 35
    Visible = False
    OnClick = Button37Click
  end
  object Button38: TButton
    Left = 783
    Top = 335
    Width = 107
    Height = 25
    Caption = 'CLICOU AQUI'
    TabOrder = 36
    Visible = False
    OnClick = Button38Click
  end
  object ckbCliente: TCheckBox
    Left = 467
    Top = 231
    Width = 127
    Height = 17
    Caption = 'Cliente'
    Checked = True
    State = cbChecked
    TabOrder = 37
    Visible = False
  end
  object btnXLSBatra: TButton
    Left = 129
    Top = 108
    Width = 107
    Height = 25
    Caption = 'Produto'
    TabOrder = 38
    OnClick = btnXLSBatraClick
  end
  object Button39: TButton
    Left = 467
    Top = 84
    Width = 107
    Height = 25
    Caption = 'GRUPO XLS ELLO'
    TabOrder = 39
    Visible = False
    OnClick = Button39Click
  end
  object Button40: TButton
    Left = 467
    Top = 113
    Width = 107
    Height = 25
    Caption = 'Produto XLS ELLO'
    TabOrder = 40
    Visible = False
    OnClick = Button40Click
  end
  object Button41: TButton
    Left = 467
    Top = 144
    Width = 107
    Height = 25
    Caption = 'Produto XLS BATRA2'
    TabOrder = 41
    Visible = False
    OnClick = Button41Click
  end
  object Button42: TButton
    Left = 467
    Top = 175
    Width = 107
    Height = 25
    Caption = 'Produto XLS OUT'
    TabOrder = 42
    Visible = False
    OnClick = Button42Click
  end
  object Button43: TButton
    Left = 467
    Top = 206
    Width = 127
    Height = 25
    Caption = 'Produto XLS CONTROL'
    TabOrder = 43
    Visible = False
    OnClick = Button43Click
  end
  object Button44: TButton
    Left = 616
    Top = 146
    Width = 127
    Height = 25
    Caption = 'Cliente '
    TabOrder = 44
    Visible = False
    OnClick = Button44Click
  end
  object Button45: TButton
    Left = 467
    Top = 272
    Width = 127
    Height = 25
    Caption = 'Gera Codigo Prod'
    TabOrder = 45
    Visible = False
    OnClick = Button45Click
  end
  object btnProdutoCASABONITA: TButton
    Left = 636
    Top = 367
    Width = 157
    Height = 25
    Caption = 'Produto XLS CASA BONITA'
    TabOrder = 46
    Visible = False
    OnClick = btnProdutoCASABONITAClick
  end
  object btnMarcaCASABONITA: TButton
    Left = 636
    Top = 343
    Width = 157
    Height = 25
    Caption = 'MARCA XLS CASA BONITA'
    TabOrder = 47
    Visible = False
    OnClick = btnMarcaCASABONITAClick
  end
  object btProdutoCNovo: TButton
    Left = 636
    Top = 393
    Width = 157
    Height = 25
    Caption = 'Produto XLS CLIENTE NOVO'
    TabOrder = 48
    Visible = False
    OnClick = btProdutoCNovoClick
  end
  object btnPComercialBatista: TButton
    Left = 636
    Top = 420
    Width = 157
    Height = 25
    Caption = 'Produto XLS COMERCIAL BATIS'
    TabOrder = 49
    Visible = False
    OnClick = btnPComercialBatistaClick
  end
  object btnPJequitivaMadereira: TButton
    Left = 636
    Top = 445
    Width = 157
    Height = 25
    Caption = 'Produto XLS JEQUIT MADEIRA'
    TabOrder = 50
    Visible = False
    OnClick = btnPJequitivaMadereiraClick
  end
  object btnComercialPinto: TButton
    Left = 636
    Top = 469
    Width = 157
    Height = 25
    Caption = 'Produto XLS COM. PINTO'
    TabOrder = 51
    Visible = False
    OnClick = btnComercialPintoClick
  end
  object btnClienteComercialPinto: TButton
    Left = 636
    Top = 493
    Width = 157
    Height = 25
    Caption = 'Cliente XLS COM. PINTO'
    TabOrder = 52
    Visible = False
    OnClick = btnClienteComercialPintoClick
  end
  object btnCRComercialPinto: TButton
    Left = 636
    Top = 516
    Width = 157
    Height = 25
    Caption = 'CR XLS COM. PINTO'
    TabOrder = 53
    Visible = False
    OnClick = btnCRComercialPintoClick
  end
  object btnComercialNicacio: TButton
    Left = 467
    Top = 485
    Width = 157
    Height = 25
    Caption = 'Produto XLS COM. NICACIO'
    TabOrder = 54
    Visible = False
    OnClick = btnComercialNicacioClick
  end
  object btnAMO: TButton
    Left = 467
    Top = 509
    Width = 157
    Height = 25
    Caption = 'Produto XLS AMO'
    TabOrder = 55
    Visible = False
    OnClick = btnAMOClick
  end
  object btnECOLAR: TButton
    Left = 492
    Top = 467
    Width = 157
    Height = 25
    Caption = 'Produto XLS ECO_LAR'
    TabOrder = 56
    Visible = False
    OnClick = btnECOLARClick
  end
  object btnCODBARRAECOLAR: TButton
    Left = 492
    Top = 491
    Width = 157
    Height = 25
    Caption = 'Codigo Barra XLS ECO_LAR'
    TabOrder = 57
    Visible = False
    OnClick = btnCODBARRAECOLARClick
  end
  object StringGrid1: TStringGrid
    Left = 535
    Top = 352
    Width = 95
    Height = 58
    TabOrder = 58
    Visible = False
    RowHeights = (
      24
      24
      69
      24
      24)
  end
  object Button46: TButton
    Left = 492
    Top = 416
    Width = 157
    Height = 25
    Caption = 'SECAO XLS ECO_LAR'
    TabOrder = 59
    Visible = False
    OnClick = Button46Click
  end
  object Button47: TButton
    Left = 492
    Top = 442
    Width = 157
    Height = 25
    Caption = 'SUBSECAO XLS ECO_LAR'
    TabOrder = 60
    Visible = False
    OnClick = Button47Click
  end
  object Button48: TButton
    Left = 341
    Top = 522
    Width = 157
    Height = 25
    Caption = 'Produto XLS L e R'
    TabOrder = 61
    Visible = False
    OnClick = Button48Click
  end
  object Button49: TButton
    Left = 492
    Top = 515
    Width = 157
    Height = 25
    Caption = 'GRUPO XLS ECO_LAR'
    TabOrder = 62
    Visible = False
    OnClick = Button49Click
  end
  object Button50: TButton
    Left = 347
    Top = 397
    Width = 157
    Height = 25
    Caption = 'Produto XLS MAN'
    Enabled = False
    TabOrder = 63
    Visible = False
    OnClick = Button50Click
  end
  object Button51: TButton
    Left = 347
    Top = 421
    Width = 157
    Height = 25
    Caption = 'Cliente XLS MAN'
    Enabled = False
    TabOrder = 64
    Visible = False
    OnClick = Button51Click
  end
  object Button52: TButton
    Left = 129
    Top = 22
    Width = 107
    Height = 25
    Caption = 'Fornecedor'
    TabOrder = 65
    OnClick = Button52Click
  end
  object Button53: TButton
    Left = 347
    Top = 500
    Width = 157
    Height = 25
    Caption = 'Produto XLS JJ EMB'
    TabOrder = 66
    Visible = False
    OnClick = Button53Click
  end
  object Button54: TButton
    Left = 347
    Top = 476
    Width = 157
    Height = 25
    Caption = 'GRUPO XLS JJ EMB'
    TabOrder = 67
    Visible = False
    OnClick = Button54Click
  end
  object btnM_NASCIMENTO: TButton
    Left = 226
    Top = 374
    Width = 157
    Height = 25
    Caption = 'Produto XLS M.C'
    TabOrder = 68
    Visible = False
    OnClick = btnM_NASCIMENTOClick
  end
  object btnC_NASCIMENTO: TButton
    Left = 242
    Top = 399
    Width = 157
    Height = 25
    Caption = 'Cliente  XLS M.C'
    TabOrder = 69
    Visible = False
    OnClick = btnC_NASCIMENTOClick
  end
  object Button55: TButton
    Left = 242
    Top = 343
    Width = 157
    Height = 25
    Caption = 'TELEFONE  XLS M.C'
    TabOrder = 70
    Visible = False
    OnClick = Button55Click
  end
  object Button56: TButton
    Left = 595
    Top = 33
    Width = 157
    Height = 25
    Caption = 'ANP'
    TabOrder = 71
    OnClick = Button56Click
  end
  object btnProdutoSouza: TButton
    Left = 20
    Top = 352
    Width = 157
    Height = 25
    Caption = 'Produto XLS SOUZA'
    TabOrder = 72
    OnClick = btnProdutoSouzaClick
  end
  object btnClienteSouza: TButton
    Left = 20
    Top = 384
    Width = 157
    Height = 25
    Caption = 'Cliente  XLS SOUZA'
    TabOrder = 73
    OnClick = btnClienteSouzaClick
  end
  object Button57: TButton
    Left = 20
    Top = 408
    Width = 157
    Height = 25
    Caption = 'Titulo XML SOUZA'
    TabOrder = 74
    OnClick = Button57Click
  end
  object Button1: TButton
    Left = 129
    Top = 149
    Width = 107
    Height = 25
    Caption = 'Titulo A RECEBER 2'
    TabOrder = 75
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    Left = 728
    Top = 72
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    MasterSource = DataSource1
    PacketRecords = 0
    Params = <>
    Left = 728
  end
  object ZConnection: TZConnection
    ControlsCodePage = cCP_UTF16
    AutoEncodeStrings = True
    ClientCodepage = 'latin1'
    Catalog = ''
    Properties.Strings = (
      'codepage=latin1'
      'client_encoding=latin1'
      'AutoEncodeStrings=ON'
      'controls_cp=CP_UTF16')
    TransactIsolationLevel = tiReadCommitted
    HostName = 'localhost'
    Port = 5432
    Database = 'db_sgc_migracao'
    User = 'postgres'
    Password = 'acessog10'
    Protocol = 'postgresql'
    Left = 130
    Top = 208
  end
  object ZQuery: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 802
    Top = 176
  end
  object ZQPF: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 842
    Top = 184
  end
  object ZQPJ: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 890
    Top = 216
  end
  object ZQPIMP: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 922
    Top = 216
  end
  object ZQEND: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 958
    Top = 216
  end
  object ZQTel: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 826
    Top = 248
  end
  object ZQPessoaImp: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 858
    Top = 249
  end
  object ZQCli: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 889
    Top = 248
  end
  object ZQDV: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 921
    Top = 248
  end
  object ZQDados: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 952
    Top = 249
  end
  object ZQProduto: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 826
    Top = 280
  end
  object ZQBaixa: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 860
    Top = 280
  end
  object ZQEmail: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 893
    Top = 280
  end
  object ZQEND1: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 927
    Top = 280
  end
  object ZQUPEND: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 977
    Top = 304
  end
  object ZQFor: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 997
    Top = 210
  end
  object ZQCatCli: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 982
    Top = 248
  end
  object ZQCMF: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 1006
    Top = 176
  end
  object ZQSEQCMF: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 1030
    Top = 216
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    AutoEncodeStrings = True
    Catalog = ''
    AutoCommit = False
    HostName = 'localhost'
    Port = 5432
    Database = ''
    User = 'admin'
    Password = ''
    Protocol = 'postgresql-8'
    Left = 210
    Top = 256
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 802
    Top = 8
  end
  object ZQuery2: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 834
    Top = 8
  end
  object ZQuery3: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 866
    Top = 8
  end
  object ZQuery4: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 898
    Top = 8
  end
  object ZQuery5: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 926
    Top = 8
  end
  object ZQuery6: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 802
    Top = 40
  end
  object ZQuery7: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 794
    Top = 121
  end
  object ZQuery8: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 865
    Top = 40
  end
  object ZQuery9: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 841
    Top = 128
  end
  object ZQuery10: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 928
    Top = 41
  end
  object ZQuery11: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 802
    Top = 72
  end
  object ZQuery12: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 836
    Top = 72
  end
  object ZQuery13: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 869
    Top = 72
  end
  object ZQuery14: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 903
    Top = 72
  end
  object ZQuery15: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 937
    Top = 72
  end
  object ZQuery16: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 957
    Top = 10
  end
  object ZQuery17: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 958
    Top = 40
  end
  object zGet: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 910
    Top = 128
  end
  object ZQSeqDados: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 1014
    Top = 248
  end
  object ZgetEnd: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 934
    Top = 184
  end
  object ZServerG10: TZConnection
    ControlsCodePage = cCP_UTF16
    AutoEncodeStrings = True
    Catalog = ''
    Properties.Strings = (
      'codepage=latin1'
      'client_encoding=latin1')
    AutoCommit = False
    HostName = ''
    Port = 5432
    Database = ''
    User = 'g10sistemas'
    Password = ''
    Protocol = 'postgresql-8'
    Left = 202
    Top = 208
  end
  object ZLocalhost: TZConnection
    ControlsCodePage = cCP_UTF16
    AutoEncodeStrings = True
    Catalog = ''
    Properties.Strings = (
      'codepage=latin1'
      'client_encoding=latin1')
    HostName = 'localhost'
    Port = 5432
    Database = ''
    User = 'admin'
    Password = ''
    Protocol = 'postgresql-8'
    Left = 130
    Top = 256
  end
  object zSet: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 910
    Top = 168
  end
  object zqSeq: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 262
    Top = 224
  end
end
