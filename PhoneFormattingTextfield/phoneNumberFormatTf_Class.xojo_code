#tag Class
Protected Class phoneNumberFormatTf_Class
Inherits TextField
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  // CAPTURE THE KEY PRESSED
		  Me.lastKeyPressedInt = Asc(Key)
		  
		  // BLOCK ONLY ALLOW MAX 13
		  If Me.lastKeyPressedInt >= 48 AND Me.lastKeyPressedInt <=57 AND dNumInt = 13 Then
		    Return True
		  End If
		  
		  // ONLY ALLOW DIGITS
		  Select Case Me.lastKeyPressedInt
		  Case 8
		    // ALLOW BACKSPACE
		    
		  Case 48 to 57
		    // ALLOW NUMBERS
		    
		  Else
		    // BLOCK THE REST
		    Return True
		    
		  End Select
		  
		  // CALL KEYDOWN EVENT
		  RaiseEvent KeyDown()
		  
		  // CALL KEYUP
		  RaiseEvent KeyUp()
		End Function
	#tag EndEvent

	#tag Event
		Sub KeyUp(Key As String)
		  Me.keyPressedBeforeLastKeyInt = Me.lastKeyPressedInt
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  // SET MAX DIGITS AND OVERRIDE IDE VALUE IF SET
		  Me.MaximumCharactersAllowed = 13
		End Sub
	#tag EndEvent

	#tag Event
		Sub TextChange()
		  // USE NANP 10 DIGIT PHONE NUMBER FILTERING ON TEXTFIELD TEXT
		  Call formatPastedNum()
		  Call formatThisMess()
		  RaiseEvent TextChange()
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function cleanDigits(inText as String) As String()
		  // CLEAN DIGIT STRING FROM ( ) AND -
		  
		  Var messStrArr() as String = inText.Split("")
		  For i as Integer = messStrArr.LastRowIndex DownTo 0
		    if messStrArr(i) = ")" OR messStrArr(i) = "(" OR messStrArr(i) = "-" Then
		      messStrArr.Remove (i)
		    end if
		  Next i
		  
		  Return messStrArr()
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function formatPastedNum() As Boolean
		  // HOUSE KEEPING
		  Var parenFirstStr As String = "("
		  Var parenLastStr As String = ")"
		  Var hyphenStr As String = "-"
		  Var finalStr as String
		  
		  // GRAB CLEAN DIGITS
		  Var textBufferStrArr() as String = cleanDigits(Me.Text)
		  For i as Integer = 0 to textBufferStrArr.LastRowIndex
		    If i = 0 Then
		      textBufferStrArr.Insert(i, parenFirstStr)
		    Elseif i = 4 Then
		      textBufferStrArr.Insert(i, parenLastStr)
		    Elseif i = 8 Then
		      textBufferStrArr.Insert(i, hyphenStr)
		      Exit
		    End If
		  Next i
		  
		  // BUILD STRING
		  For x As Integer = 0 To textBufferStrArr.LastRowIndex
		    finalStr = finalStr + textBufferStrArr(x)
		  Next x
		  
		  Me.Text = finalStr
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function formatThisMess() As Boolean
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
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event KeyDown()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event KeyUp()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TextChange()
	#tag EndHook


	#tag Property, Flags = &h0
		dNumInt As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		keyPressedBeforeLastKeyInt As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		lastKeyPressedInt As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Text"
			Visible=true
			Group="Initial State"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="Integer"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="80"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="22"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowAutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackgroundColor"
			Visible=true
			Group="Appearance"
			InitialValue="&hFFFFFF"
			Type="Color"
			EditorType="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasBorder"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Format"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tooltip"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Password"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextColor"
			Visible=true
			Group="Appearance"
			InitialValue="&h000000"
			Type="Color"
			EditorType="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Transparent"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FontName"
			Visible=true
			Group="Font"
			InitialValue="System"
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FontSize"
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FontUnit"
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="FontUnits"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Pixel"
				"2 - Point"
				"3 - Inch"
				"4 - Millimeter"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bold"
			Visible=true
			Group="Font"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Italic"
			Visible=true
			Group="Font"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Underline"
			Visible=true
			Group="Font"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DataSource"
			Visible=true
			Group="Database Binding"
			InitialValue=""
			Type="String"
			EditorType="DataSource"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DataField"
			Visible=true
			Group="Database Binding"
			InitialValue=""
			Type="String"
			EditorType="DataField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowTabs"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextAlignment"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="TextAlignments"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Left"
				"2 - Center"
				"3 - Right"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowSpellChecking"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaximumCharactersAllowed"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ValidationMask"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReadOnly"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="lastKeyPressedInt"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dNumInt"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="keyPressedBeforeLastKeyInt"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hint"
			Visible=true
			Group="Initial State"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Visible=false
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
