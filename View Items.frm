VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form Form2 
   Caption         =   "Form2"
   ClientHeight    =   3120
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   ScaleHeight     =   3120
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command3 
      Caption         =   "Place an auction"
      Height          =   1455
      Left            =   8400
      TabIndex        =   14
      Top             =   4080
      Width           =   6495
   End
   Begin VB.CommandButton Command2 
      Caption         =   "View all items"
      Height          =   1575
      Left            =   8400
      TabIndex        =   13
      Top             =   1560
      Width           =   6375
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   735
      Left            =   12840
      Top             =   480
      Width           =   3135
      _ExtentX        =   5530
      _ExtentY        =   1296
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   "Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=auction_system"
      OLEDBString     =   "Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=auction_system"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.CommandButton Command1 
      Caption         =   "View item details"
      Height          =   855
      Left            =   2040
      TabIndex        =   12
      Top             =   6360
      Width           =   4335
   End
   Begin VB.TextBox Text6 
      Height          =   615
      Left            =   4200
      TabIndex        =   11
      Top             =   5160
      Width           =   2175
   End
   Begin VB.TextBox Text5 
      Height          =   735
      Left            =   4200
      TabIndex        =   10
      Top             =   4200
      Width           =   2175
   End
   Begin VB.TextBox Text4 
      Height          =   615
      Left            =   4200
      TabIndex        =   9
      Top             =   3360
      Width           =   2175
   End
   Begin VB.TextBox Text3 
      Height          =   735
      Left            =   4200
      TabIndex        =   8
      Top             =   2400
      Width           =   2175
   End
   Begin VB.TextBox Text2 
      Height          =   735
      Left            =   4200
      TabIndex        =   7
      Top             =   1440
      Width           =   2175
   End
   Begin VB.TextBox Text1 
      Height          =   735
      Left            =   4200
      TabIndex        =   6
      Top             =   480
      Width           =   2175
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   11760
      Y1              =   1320
      Y2              =   1320
   End
   Begin VB.Label Label6 
      Caption         =   "Qty in stock"
      Height          =   615
      Left            =   2040
      TabIndex        =   5
      Top             =   5160
      Width           =   1695
   End
   Begin VB.Label Label5 
      Caption         =   "Qty sold"
      Height          =   615
      Left            =   2040
      TabIndex        =   4
      Top             =   4200
      Width           =   1695
   End
   Begin VB.Label Label4 
      Caption         =   "Year"
      Height          =   495
      Left            =   2040
      TabIndex        =   3
      Top             =   3360
      Width           =   1695
   End
   Begin VB.Label Label3 
      Caption         =   "Type"
      Height          =   615
      Left            =   2040
      TabIndex        =   2
      Top             =   2400
      Width           =   1695
   End
   Begin VB.Label Label2 
      Caption         =   "Name"
      Height          =   615
      Left            =   2040
      TabIndex        =   1
      Top             =   1440
      Width           =   1695
   End
   Begin VB.Label Label1 
      Caption         =   "Enter Item ID"
      Height          =   615
      Left            =   2040
      TabIndex        =   0
      Top             =   480
      Width           =   1695
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim con As New ADODB.Connection
Dim rs As New ADODB.Recordset

con.Open "Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=auction_system"
strsql = "select * from item where item_id='" & Text1.Text & "'"
rs.Open strsql, con
If Not rs.EOF And Not rs.BOF Then
Text2.Text = rs("item_name")
Text3.Text = rs("item_type")
Text4.Text = rs("item_year")
Text5.Text = rs("items_sold")
Text6.Text = rs("items_in_stock")
Else
MsgBox "Invalid item Id"
End If
con.Execute strsql
End Sub

Private Sub Command2_Click()
Form3.Show
Me.Hide
End Sub

Private Sub Command3_Click()
Form4.Show
Me.Hide
End Sub
