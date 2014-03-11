VERSION 5.00
Begin VB.Form Form4 
   Caption         =   "Form4"
   ClientHeight    =   3120
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   4680
   LinkTopic       =   "Form4"
   ScaleHeight     =   3120
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command4 
      Caption         =   "View Sold items"
      Height          =   735
      Left            =   1440
      TabIndex        =   16
      Top             =   6840
      Width           =   4695
   End
   Begin VB.CommandButton Command3 
      Caption         =   "View Auctions"
      Height          =   855
      Left            =   1440
      TabIndex        =   15
      Top             =   5640
      Width           =   4695
   End
   Begin VB.TextBox Text6 
      Height          =   1095
      Left            =   10200
      TabIndex        =   14
      Top             =   4200
      Width           =   4215
   End
   Begin VB.TextBox Text5 
      Height          =   1095
      Left            =   10200
      TabIndex        =   13
      Top             =   3000
      Width           =   4215
   End
   Begin VB.TextBox Text4 
      Height          =   1095
      Left            =   10200
      TabIndex        =   12
      Top             =   1800
      Width           =   4215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "SOLD"
      BeginProperty Font 
         Name            =   "Lucida Console"
         Size            =   26.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2775
      Left            =   6960
      TabIndex        =   11
      Top             =   5640
      Width           =   8175
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Place an auction"
      Height          =   735
      Left            =   1440
      TabIndex        =   6
      Top             =   4680
      Width           =   4695
   End
   Begin VB.TextBox Text3 
      Height          =   615
      Left            =   3960
      TabIndex        =   5
      Top             =   3240
      Width           =   2055
   End
   Begin VB.TextBox Text2 
      Height          =   735
      Left            =   3960
      TabIndex        =   4
      Top             =   2160
      Width           =   2055
   End
   Begin VB.TextBox Text1 
      Height          =   735
      Left            =   3960
      TabIndex        =   3
      Top             =   1200
      Width           =   2055
   End
   Begin VB.Label Label7 
      Caption         =   "Item ID"
      Height          =   855
      Left            =   6960
      TabIndex        =   10
      Top             =   4320
      Width           =   3015
   End
   Begin VB.Label Label6 
      Caption         =   "Password"
      Height          =   855
      Left            =   6960
      TabIndex        =   9
      Top             =   3120
      Width           =   3015
   End
   Begin VB.Label Label5 
      Caption         =   "User Name"
      Height          =   855
      Left            =   6960
      TabIndex        =   8
      Top             =   1920
      Width           =   3015
   End
   Begin VB.Label Label4 
      Caption         =   "                                          FOR THE ADMINISTRATOR ONLY"
      BeginProperty Font 
         Name            =   "Lucida Console"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   6720
      TabIndex        =   7
      Top             =   360
      Width           =   8775
   End
   Begin VB.Line Line4 
      X1              =   6600
      X2              =   15600
      Y1              =   9000
      Y2              =   9000
   End
   Begin VB.Line Line3 
      X1              =   15600
      X2              =   15600
      Y1              =   240
      Y2              =   9000
   End
   Begin VB.Line Line2 
      X1              =   6600
      X2              =   15600
      Y1              =   240
      Y2              =   240
   End
   Begin VB.Line Line1 
      X1              =   6600
      X2              =   6600
      Y1              =   240
      Y2              =   9000
   End
   Begin VB.Label Label3 
      Caption         =   "Bid amount"
      Height          =   735
      Left            =   1440
      TabIndex        =   2
      Top             =   3120
      Width           =   2175
   End
   Begin VB.Label Label2 
      Caption         =   "Your PAN No"
      Height          =   615
      Left            =   1440
      TabIndex        =   1
      Top             =   2160
      Width           =   2175
   End
   Begin VB.Label Label1 
      Caption         =   "Item ID"
      Height          =   615
      Left            =   1440
      TabIndex        =   0
      Top             =   1200
      Width           =   2175
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim con As New ADODB.Connection
Dim rs1 As New ADODB.Recordset
Dim rs2 As New ADODB.Recordset

con.Open "Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=auction_system"
strsql1 = "select * from item where item_id='" & Text1.Text & "'"
rs1.Open strsql1, con
If Not rs1.EOF And Not rs1.BOF Then

    strsql2 = "select * from customer where PAN='" & Text2.Text & "'"
    rs2.Open strsql2, con
    con.Execute strsql2
        If Not rs2.EOF And Not rs2.BOF Then
        strsql3 = "insert into auction values('" & Text1.Text & "','" & Text2.Text & "'," & Text3.Text & ")"
        con.Execute strsql3
        
        strsql4 = "insert into auction_room(auction_id,item_id)(select auction_id,item_id from auction where auction_id >=(select max(auction_id) from auction))"
        con.Execute strsql4
        MsgBox "Sucess"

        Else
        MsgBox "Plz register as a customer to place an auction"

        End If

Else
MsgBox "Invalid item id"
End If
con.Execute strsql1
End Sub

Private Sub Command2_Click()
Dim con As New ADODB.Connection
Dim rs1 As New ADODB.Recordset
Dim rs2 As New ADODB.Recordset

con.Open "Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=auction_system"
strsql1 = "select * from administrator where root_name='" & Text4.Text & "' and root_password='" & Text5.Text & "'"
rs1.Open strsql1, con
If Not rs1.EOF And Not rs1.BOF Then
    strsql2 = "insert into sold(item_id,winner)(select item_id,max_bid_holder From auction where max_bid >=(select max(max_bid) From auction where item_id='" & Text6.Text & "' ))"
    strsql3 = "delete from auction where item_id= '" & Text6.Text & "'"
    strsql4 = "update item set items_sold=items_sold+1 where item_id= '" & Text6.Text & "'"
    strsql5 = "update item set items_in_stock=items_in_stock-1 where item_id= '" & Text6.Text & "'"
    
    con.Execute strsql2
    con.Execute strsql3
    con.Execute strsql4
    con.Execute strsql5
    
    MsgBox "Sucess"

Else
MsgBox "Wrong UserName Or Password"
End If
con.Execute strsql1
End Sub

Private Sub Command3_Click()
Form5.Show
Me.Hide
End Sub

Private Sub Command4_Click()
Form6.Show
Me.Hide
End Sub
