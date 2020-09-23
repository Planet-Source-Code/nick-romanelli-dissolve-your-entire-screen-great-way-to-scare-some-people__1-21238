VERSION 5.00
Object = "{30F21E58-B687-11D4-9A46-444553540001}#2.0#0"; "IMAGEFX.OCX"
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   3090
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4905
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4905
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   2500
      Left            =   1560
      Top             =   360
   End
   Begin Image FX.ImageFX ImageFX1 
      Left            =   240
      Top             =   720
      _ExtentX        =   7673
      _ExtentY        =   3678
   End
   Begin VB.PictureBox pic1 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   135
      Left            =   0
      ScaleHeight     =   135
      ScaleWidth      =   15
      TabIndex        =   0
      Top             =   0
      Width           =   15
   End
   Begin VB.OLE OLE1 
      Class           =   "SoundRec"
      Height          =   495
      Left            =   840
      OleObjectBlob   =   "dissolve.frx":0000
      SourceDoc       =   "c:\matrix\dissolve\win95.wav"
      TabIndex        =   1
      Top             =   0
      Visible         =   0   'False
      Width           =   375
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Declare Sub keybd_event Lib "user32" (ByVal bVk As Byte, ByVal bScan As Byte, ByVal dwFlags As Long, ByVal dwExtraInfo As Long)
Option Explicit



Private Sub Form_Load()
Call keybd_event(vbKeySnapshot, 1, 0, 0)
DoEvents
pic1.Picture = Clipboard.GetData(vbCFBitmap)
MsgBox "Temperatures Critical, Meltdown Imminent!"
OLE1.DoVerb (1)
Timer1.Enabled = True
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
End
End Sub

Private Sub pic1_Click()
End
End Sub

Private Sub Timer1_Timer()
ImageFX1.Pixelate pic1, 20
End Sub
