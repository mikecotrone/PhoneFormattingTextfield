#tag Window
Begin Window Demo_Window
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   "0"
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   406
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   1344557055
   MenuBarVisible  =   True
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "Phone Formatting Textfield Project"
   Type            =   "0"
   Visible         =   True
   Width           =   686
   Begin PhoneFormattingTextfield.phoneNumberFormatTextfield phoneNumberFormatTextfield1
      AllowAutoDeactivate=   True
      AllowFocusRing  =   False
      AllowMultipleNumbers=   False
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF00
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      dNumInt         =   0
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   26
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      keyPressedBeforeLastKeyInt=   0
      lastKeyPressedInt=   0
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   1
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   260
      Transparent     =   True
      Underline       =   False
      ValidationMask  =   ""
      Value           =   ""
      Visible         =   True
      Width           =   160
   End
   Begin Label DemoPurpose_Label
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   191
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   True
      Scope           =   2
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   10
      Transparent     =   True
      Underline       =   False
      Value           =   "Class Purpose: This class was designed to perform proper formatting of 10 digit NANP (NPA + NXX + 4 Digits) using the following format of (XXX)XXX-XXXX\n\nIf you are interested in extending this class with new features please fork this project, make you local changes, and then create a pull request from my project. I will review your changes and then merge them into my project.\n\nDefault behaviour (Click on textfield, go to inspector, look down to behavior and set ""Allow Multiple Numbers"". If you click true the multiple number format expected is (XXX)XXX-XXXX,(XXX)XXX-XXXX,(XXX)XXX-XXXX.\n\nIts currenly designed for UP to 3 phone numbers (10 Digit) by design."
      Visible         =   True
      Width           =   644
   End
   Begin Label DemoExample1_Label
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   228
      Transparent     =   True
      Underline       =   False
      Value           =   "Example 1: Formatting for 1 phone number"
      Visible         =   True
      Width           =   451
   End
   Begin Line Line1
      Index           =   -2147483648
      InitialParent   =   ""
      LineColor       =   &c999A9800
      LockedInPosition=   False
      Scope           =   2
      TabPanelIndex   =   0
      Thickness       =   1.0
      Transparent     =   True
      Visible         =   True
      X1              =   0.0
      X2              =   686.0
      Y1              =   201.0
      Y2              =   201.0
   End
   Begin PhoneFormattingTextfield.phoneNumberFormatTextfield phoneNumberFormatTextfield2
      AllowAutoDeactivate=   True
      AllowFocusRing  =   False
      AllowMultipleNumbers=   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF00
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      dNumInt         =   0
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   26
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      keyPressedBeforeLastKeyInt=   0
      lastKeyPressedInt=   0
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   1
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   341
      Transparent     =   True
      Underline       =   False
      ValidationMask  =   ""
      Value           =   ""
      Visible         =   True
      Width           =   323
   End
   Begin Label DemoExample1_Label1
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   309
      Transparent     =   True
      Underline       =   False
      Value           =   "Example 2: Formatting for up to 3 numbers"
      Visible         =   True
      Width           =   451
   End
End
#tag EndWindow

#tag WindowCode
#tag EndWindowCode

#tag Events phoneNumberFormatTextfield1
	#tag Event
		Sub FormatTextfieldText()
		  
		  // NOTE THIS LOGIC IS ONLY BUILT ON THE NANP 10 DIGIT DIALING: NPA+NXX+(4)DIGITS
		  
		  // SUPPORT FOR THREE 10 DIGIT NANP NUMBERS
		  Me.dNumInt = Me.Text.Length
		  Var finalStr As String
		  
		  If (Me.dNumInt = 1  Or Me.dNumInt = 15 Or Me.dNumInt = 29 ) And Me.lastKeyPressedInt >= 48 And Me.lastKeyPressedInt <= 57  Then
		    // LEFT TO RIGHT
		    // USER IS TYPING AND WE ADD OPEN PARENTHESIS PROGRAMATICALLY
		    Var thisText() As String = Split(Me.Text,"")
		    Var parenFirst As String = "("
		    
		    // MANIPULATE ARRAY
		    If Me.dNumInt = 1 Then
		      thisText.Insert(0, parenFirst)
		    Else
		      thisText.Insert(thisText.LastRowIndex, parenFirst)
		    End If
		    
		    // PLAY OUT TO TEXTFIELD
		    For i As Integer = 0 To thisText.LastRowIndex
		      finalStr = finalStr + thisText(i)
		    Next i
		    Me.Text = finalStr
		    
		  Elseif (Me.dNumInt = 4 Or Me.dNumInt = 18 Or Me.dNumInt = 32) And Me.lastKeyPressedInt >= 48 And Me.lastKeyPressedInt <= 57 Then
		    // LEFT TO RIGHT
		    // USER IS TYPING DIGITS AND WE THEN ADD CLOSING PARENTHESIS PROGRAMATICALLY
		    Var thisText() As String = Split(Me.Text,"")
		    Var parenLast As String = ")"
		    
		    // MANIPULATE ARRAY
		    thisText.Append (parenLast)
		    
		    // PLAY OUT TO TEXTFIELD
		    For i As Integer = 0 To thisText.LastRowIndex
		      finalStr = finalStr + thisText(i)
		    Next i
		    Me.Text = finalStr
		    
		  Elseif (Me.dNumInt = 8 Or Me.dNumInt = 22 Or Me.dNumInt = 36) And Me.lastKeyPressedInt >= 48 And Me.lastKeyPressedInt <= 57 Then
		    // LEFT TO RIGHT
		    // USER IS TYPING DIGITS AND WE NEED TO ADD A HYPEN PROGRAMATICALLY
		    Var thisText() As String = Split(Me.Text,"")
		    Var hyphen As String = "-"
		    thisText.Append (hyphen)
		    
		    // PLAY OUT TO TEXTFIELD
		    For i As Integer = 0 To thisText.LastRowIndex
		      finalStr = finalStr + thisText(i)
		    Next i
		    Me.Text = finalStr
		    
		  Elseif (Me.dNumInt = 5 OR Me.dNumInt = 19 Or Me.dNumInt = 33) And Me.lastKeyPressedInt >= 48 And Me.lastKeyPressedInt <= 57 Then
		    // RIGHT TO LEFT
		    // USER DELTETED AND NOW IS TYPING DIGITS AGAIN AND WE THEN ADD CLOSING PARENTHESIS PROGRAMATICALLY
		    Var thisText() As String = Split(Me.Text,"")
		    Var parenLast As String = ")"
		    
		    // MANIPULATE ARRAY
		    thisText.Insert (thisText.LastRowIndex,parenLast)
		    
		    // PLAY OUT TO TEXTFIELD
		    For i As Integer = 0 To thisText.LastRowIndex
		      finalStr = finalStr + thisText(i)
		    Next i
		    Me.Text = finalStr
		    
		    
		  Elseif (Me.dNumInt = 5 OR Me.dNumInt = 19 Or Me.dNumInt = 33) AND Me.lastKeyPressedInt = 8  Then
		    // RIGHT TO LEFT
		    // USER IS PRESSING DELETE AND WE NEED TO DELETE THE HYPHEN PROGRAMATICALLY
		    Var thisText() As String = Split(Me.Text,"")
		    Var p As String = thisText.Pop
		    
		    // PLAY OUT TO TEXTFIELD
		    For i As Integer = 0 To thisText.LastRowIndex
		      finalStr = finalStr + thisText(i)
		    Next i
		    Me.Text = finalStr
		    
		  Elseif (Me.dNumInt = 9 OR Me.dNumInt = 23 Or Me.dNumInt = 37) AND Me.lastKeyPressedInt = 8 Then
		    // RIGHT TO LEFT
		    // REMOVE HYPHEN SINCE USER IS PRESSING DELETE
		    Var thisText() As String = Split(Me.Text,"")
		    Var p As String = thisText.Pop
		    
		    // PLAY OUT TO TEXTFIELD
		    For i As Integer = 0 To thisText.LastRowIndex
		      finalStr = finalStr + thisText(i)
		    Next i
		    Me.Text = finalStr
		    
		  Elseif (Me.dNumInt = 9  OR Me.dNumInt = 23  Or Me.dNumInt = 37) And Me.lastKeyPressedInt >= 48 And Me.lastKeyPressedInt <= 57 Then
		    // RIGHT TO LEFT
		    // ADD HYPHEN SINCE USER IS PRESSING DIGITS AFTER DELETING HYPHEN
		    Var thisText() As String = Split(Me.Text,"")
		    Var hyphen As String = "-"
		    thisText.Insert (thisText.LastRowIndex, hyphen)
		    
		    // PLAY OUT TO TEXTFIELD
		    For i As Integer = 0 To thisText.LastRowIndex
		      finalStr = finalStr + thisText(i)
		    Next i
		    Me.Text = finalStr
		    
		    
		  Elseif (Me.dNumInt = 13 Or Me.dNumInt = 27 Or Me.dNumInt = 41) AND Me.lastKeyPressedInt >= 48 And Me.lastKeyPressedInt <= 57 Then
		    // MAX OUT THE 10 DIGIT NUMBER (DONT ALLOW ANY NUMBERS ANY LONGER THAN 10 DIGITS)
		    Var thisText() As String = Split(Me.Text,"")
		    
		    If Me.dNumInt = 13 Then
		      For i As Integer = 0 To 12
		        finalStr = finalStr + thisText(i)
		      Next i
		      Me.Text = finalStr
		      
		    Elseif Me.dNumInt = 27 Then
		      For i As Integer = 0 To 26
		        finalStr = finalStr + thisText(i)
		      Next i
		      Me.Text = finalStr
		      
		      
		    End If
		    
		  Elseif (Me.dNumInt = 14 OR Me.dNumInt = 28) AND Me.lastKeyPressedInt = 44 Then
		    // ALLOW ONE COMMA ONLY AFTER ONE OR TWO PHONE NUMBERS
		    
		    
		  End If
		  
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub KeyDown()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events phoneNumberFormatTextfield2
	#tag Event
		Sub FormatTextfieldText()
		  
		  // NOTE THIS LOGIC IS ONLY BUILT ON THE NANP 10 DIGIT DIALING: NPA+NXX+(4)DIGITS
		  
		  // SUPPORT FOR THREE 10 DIGIT NANP NUMBERS
		  Me.dNumInt = Me.Text.Length
		  Var finalStr As String
		  
		  If (Me.dNumInt = 1  Or Me.dNumInt = 15 Or Me.dNumInt = 29 ) And Me.lastKeyPressedInt >= 48 And Me.lastKeyPressedInt <= 57  Then
		    // LEFT TO RIGHT
		    // USER IS TYPING AND WE ADD OPEN PARENTHESIS PROGRAMATICALLY
		    Var thisText() As String = Split(Me.Text,"")
		    Var parenFirst As String = "("
		    
		    // MANIPULATE ARRAY
		    If Me.dNumInt = 1 Then
		      thisText.Insert(0, parenFirst)
		    Else
		      thisText.Insert(thisText.LastRowIndex, parenFirst)
		    End If
		    
		    // PLAY OUT TO TEXTFIELD
		    For i As Integer = 0 To thisText.LastRowIndex
		      finalStr = finalStr + thisText(i)
		    Next i
		    Me.Text = finalStr
		    
		  Elseif (Me.dNumInt = 4 Or Me.dNumInt = 18 Or Me.dNumInt = 32) And Me.lastKeyPressedInt >= 48 And Me.lastKeyPressedInt <= 57 Then
		    // LEFT TO RIGHT
		    // USER IS TYPING DIGITS AND WE THEN ADD CLOSING PARENTHESIS PROGRAMATICALLY
		    Var thisText() As String = Split(Me.Text,"")
		    Var parenLast As String = ")"
		    
		    // MANIPULATE ARRAY
		    thisText.Append (parenLast)
		    
		    // PLAY OUT TO TEXTFIELD
		    For i As Integer = 0 To thisText.LastRowIndex
		      finalStr = finalStr + thisText(i)
		    Next i
		    Me.Text = finalStr
		    
		  Elseif (Me.dNumInt = 8 Or Me.dNumInt = 22 Or Me.dNumInt = 36) And Me.lastKeyPressedInt >= 48 And Me.lastKeyPressedInt <= 57 Then
		    // LEFT TO RIGHT
		    // USER IS TYPING DIGITS AND WE NEED TO ADD A HYPEN PROGRAMATICALLY
		    Var thisText() As String = Split(Me.Text,"")
		    Var hyphen As String = "-"
		    thisText.Append (hyphen)
		    
		    // PLAY OUT TO TEXTFIELD
		    For i As Integer = 0 To thisText.LastRowIndex
		      finalStr = finalStr + thisText(i)
		    Next i
		    Me.Text = finalStr
		    
		  Elseif (Me.dNumInt = 5 OR Me.dNumInt = 19 Or Me.dNumInt = 33) And Me.lastKeyPressedInt >= 48 And Me.lastKeyPressedInt <= 57 Then
		    // RIGHT TO LEFT
		    // USER DELTETED AND NOW IS TYPING DIGITS AGAIN AND WE THEN ADD CLOSING PARENTHESIS PROGRAMATICALLY
		    Var thisText() As String = Split(Me.Text,"")
		    Var parenLast As String = ")"
		    
		    // MANIPULATE ARRAY
		    thisText.Insert (thisText.LastRowIndex,parenLast)
		    
		    // PLAY OUT TO TEXTFIELD
		    For i As Integer = 0 To thisText.LastRowIndex
		      finalStr = finalStr + thisText(i)
		    Next i
		    Me.Text = finalStr
		    
		    
		  Elseif (Me.dNumInt = 5 OR Me.dNumInt = 19 Or Me.dNumInt = 33) AND Me.lastKeyPressedInt = 8  Then
		    // RIGHT TO LEFT
		    // USER IS PRESSING DELETE AND WE NEED TO DELETE THE HYPHEN PROGRAMATICALLY
		    Var thisText() As String = Split(Me.Text,"")
		    Var p As String = thisText.Pop
		    
		    // PLAY OUT TO TEXTFIELD
		    For i As Integer = 0 To thisText.LastRowIndex
		      finalStr = finalStr + thisText(i)
		    Next i
		    Me.Text = finalStr
		    
		  Elseif (Me.dNumInt = 9 OR Me.dNumInt = 23 Or Me.dNumInt = 37) AND Me.lastKeyPressedInt = 8 Then
		    // RIGHT TO LEFT
		    // REMOVE HYPHEN SINCE USER IS PRESSING DELETE
		    Var thisText() As String = Split(Me.Text,"")
		    Var p As String = thisText.Pop
		    
		    // PLAY OUT TO TEXTFIELD
		    For i As Integer = 0 To thisText.LastRowIndex
		      finalStr = finalStr + thisText(i)
		    Next i
		    Me.Text = finalStr
		    
		  Elseif (Me.dNumInt = 9  OR Me.dNumInt = 23  Or Me.dNumInt = 37) And Me.lastKeyPressedInt >= 48 And Me.lastKeyPressedInt <= 57 Then
		    // RIGHT TO LEFT
		    // ADD HYPHEN SINCE USER IS PRESSING DIGITS AFTER DELETING HYPHEN
		    Var thisText() As String = Split(Me.Text,"")
		    Var hyphen As String = "-"
		    thisText.Insert (thisText.LastRowIndex, hyphen)
		    
		    // PLAY OUT TO TEXTFIELD
		    For i As Integer = 0 To thisText.LastRowIndex
		      finalStr = finalStr + thisText(i)
		    Next i
		    Me.Text = finalStr
		    
		    
		  Elseif (Me.dNumInt = 13 Or Me.dNumInt = 27 Or Me.dNumInt = 41) AND Me.lastKeyPressedInt >= 48 And Me.lastKeyPressedInt <= 57 Then
		    // MAX OUT THE 10 DIGIT NUMBER (DONT ALLOW ANY NUMBERS ANY LONGER THAN 10 DIGITS)
		    Var thisText() As String = Split(Me.Text,"")
		    
		    If Me.dNumInt = 13 Then
		      For i As Integer = 0 To 12
		        finalStr = finalStr + thisText(i)
		      Next i
		      Me.Text = finalStr
		      
		    Elseif Me.dNumInt = 27 Then
		      For i As Integer = 0 To 26
		        finalStr = finalStr + thisText(i)
		      Next i
		      Me.Text = finalStr
		      
		      
		    End If
		    
		  Elseif (Me.dNumInt = 14 OR Me.dNumInt = 28) AND Me.lastKeyPressedInt = 44 Then
		    // ALLOW ONE COMMA ONLY AFTER ONE OR TWO PHONE NUMBERS
		    
		    
		  End If
		  
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub KeyDown()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
		EditorType="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="MenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
