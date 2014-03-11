VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3120
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3120
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command3 
      Caption         =   "View Items"
      Height          =   2295
      Left            =   11760
      TabIndex        =   28
      Top             =   1920
      Width           =   3375
   End
   Begin VB.TextBox Text13 
      Height          =   495
      Left            =   8640
      TabIndex        =   27
      Top             =   4920
      Width           =   1815
   End
   Begin VB.TextBox Text12 
      Height          =   495
      Left            =   8640
      TabIndex        =   26
      Top             =   3960
      Width           =   1815
   End
   Begin VB.TextBox Text11 
      Height          =   495
      Left            =   8640
      TabIndex        =   25
      Top             =   3120
      Width           =   1815
   End
   Begin VB.TextBox Text10 
      Height          =   495
      Left            =   8640
      TabIndex        =   24
      Top             =   2160
      Width           =   1815
   End
   Begin VB.TextBox Text9 
      Height          =   495
      Left            =   8640
      TabIndex        =   23
      Top             =   1320
      Width           =   1815
   End
   Begin VB.TextBox Text8 
      Height          =   495
      Left            =   8640
      TabIndex        =   22
      Top             =   480
      Width           =   1815
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Register as customer"
      Height          =   615
      Left            =   6120
      TabIndex        =   21
      Top             =   7080
      Width           =   2415
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   735
      Left            =   13080
      Top             =   8160
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
      Caption         =   "Insert an employee"
      Height          =   615
      Left            =   360
      TabIndex        =   14
      Top             =   7200
      Width           =   2655
   End
   Begin VB.TextBox Text7 
      Height          =   615
      Left            =   3120
      TabIndex        =   13
      Top             =   5640
      Width           =   2295
   End
   Begin VB.TextBox Text6 
      Height          =   615
      Left            =   3120
      TabIndex        =   12
      Top             =   4800
      Width           =   2175
   End
   Begin VB.TextBox Text5 
      Height          =   615
      Left            =   3120
      TabIndex        =   11
      Top             =   3960
      Width           =   2175
   End
   Begin VB.TextBox Text4 
      Height          =   615
      Left            =   3000
      TabIndex        =   10
      Top             =   3120
      Width           =   2295
   End
   Begin VB.TextBox Text3 
      Height          =   735
      Left            =   3000
      TabIndex        =   9
      Top             =   2160
      Width           =   2295
   End
   Begin VB.TextBox Text2 
      Height          =   615
      Left            =   3000
      TabIndex        =   8
      Top             =   1320
      Width           =   2295
   End
   Begin VB.TextBox Text1 
      Height          =   615
      Left            =   3000
      TabIndex        =   7
      Top             =   480
      Width           =   2295
   End
   Begin VB.Label Label13 
      Caption         =   "Telephone"
      Height          =   495
      Left            =   6120
      TabIndex        =   20
      Top             =   4920
      Width           =   2175
   End
   Begin VB.Label Label12 
      Caption         =   "State"
      Height          =   495
      Left            =   6120
      TabIndex        =   19
      Top             =   3960
      Width           =   2175
   End
   Begin VB.Label Label11 
      Caption         =   "City"
      Height          =   495
      Left            =   6120
      TabIndex        =   18
      Top             =   3120
      Width           =   2175
   End
   Begin VB.Label Label10 
      Caption         =   "Last name"
      Height          =   495
      Left            =   6120
      TabIndex        =   17
      Top             =   2160
      Width           =   2175
   End
   Begin VB.Label Label9 
      Caption         =   "First name"
      Height          =   495
      Left            =   6120
      TabIndex        =   16
      Top             =   1320
      Width           =   2175
   End
   Begin VB.Label Label8 
      Caption         =   "PAN"
      Height          =   495
      Left            =   6240
      TabIndex        =   15
      Top             =   480
      Width           =   2055
   End
   Begin VB.Line Line1 
      X1              =   6000
      X2              =   6000
      Y1              =   240
      Y2              =   8880
   End
   Begin VB.Label Label7 
      Caption         =   "Salary"
      Height          =   495
      Left            =   360
      TabIndex        =   6
      Top             =   5640
      Width           =   2175
   End
   Begin VB.Label Label6 
      Caption         =   "Telephone"
      Height          =   495
      Left            =   360
      TabIndex        =   5
      Top             =   4800
      Width           =   2175
   End
   Begin VB.Label Label5 
      Caption         =   "State"
      Height          =   495
      Left            =   360
      TabIndex        =   4
      Top             =   3960
      Width           =   2175
   End
   Begin VB.Label Label4 
      Caption         =   "City"
      Height          =   495
      Left            =   480
      TabIndex        =   3
      Top             =   3120
      Width           =   2175
   End
   Begin VB.Label Label3 
      Caption         =   "Last name"
      Height          =   615
      Left            =   480
      TabIndex        =   2
      Top             =   2160
      Width           =   2175
   End
   Begin VB.Label Label2 
      Caption         =   "First name"
      Height          =   495
      Left            =   600
      TabIndex        =   1
      Top             =   1320
      Width           =   2055
   End
   Begin VB.Label Label1 
      Caption         =   "PAN"
      Height          =   495
      Left            =   600
      TabIndex        =   0
      Top             =   600
      Width           =   2055
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Combo1_Change()

End Sub

Private Sub Command1_Click()
Dim con As New ADODB.Connection
con.Open "Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=auction_system"
strsql = "insert into employee values('" & Text1.Text & "','" & Text2.Text & "','" & Text3.Text & "','" & Text4.Text & "','" & Text5.Text & "','" & Text6.Text & "'," & Text7.Text & ")"
con.Execute strsql
End Sub

Private Sub Command2_Click()
Dim con As New ADODB.Connection
con.Open "Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=auction_system"
strsql = "insert into customer values('" & Text8.Text & "','" & Text9.Text & "','" & Text10.Text & "','" & Text11.Text & "','" & Text12.Text & "','" & Text13.Text & "')"
con.Execute strsql
End Sub

Private Sub Command3_Click()
Form3.Show
Me.Hide
End Sub
