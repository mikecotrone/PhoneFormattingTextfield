#tag Class
Protected Class phoneNumberFormatTextfield
Inherits TextField
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  // CAPTURE THE KEY PRESSED
		  Me.lastKeyPressedInt = Asc(Key)
		  
		  
		  If Me.AllowMultipleNumbers = True Then
		    
		    // BLOCK TWO COMMAS IN A ROW
		    If Me.lastKeyPressedInt = Me.keyPressedBeforeLastKeyInt AND Me.lastKeyPressedInt = 44 Then
		      Return True
		    End If
		    
		    // BLOCK ALL KEYS AFTER 3 NUMBER SETS BY DESIGN
		    If dNumInt >= 41 AND Me.lastKeyPressedInt = 44 Then
		      Return True
		    End If
		  End If
		  
		  // BLOCK RUN ON NUMBERS
		  If Me.lastKeyPressedInt >= 48 AND Me.lastKeyPressedInt <=57 AND (dNumInt = 13 OR dNumInt = 27 OR dNumInt = 41) Then
		    Return True
		  End If
		  
		  // BLOCK USER FROM ADDING A COMMA IN THE MIDDLE OF A 10 DIGIT NUMBER
		  If Me.lastKeyPressedInt = 44 AND (dNumInt = 13 OR dNumInt = 27) Then
		    // ALLOW
		    
		  Elseif Me.lastKeyPressedInt = 44 AND (dNumInt <> 14 OR dNumInt = 28) Then
		    Return True
		  End If
		  
		  // ONLY ALLOW DIGITS AND COMMAS
		  Select Case Me.lastKeyPressedInt
		    
		  Case 8
		    // ALLOW BACKSPACE
		    
		  Case 48 to 57
		    // ALLOW NUMBERS
		    
		  Case 44
		    // COMMA
		    If me.AllowMultipleNumbers = False Then
		      Return True
		    End if
		    
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
		Sub TextChange()
		  // USE NANP 10 DIGIT PHONE NUMBER FILTERING ON TEXTFIELD TEXT
		  RaiseEvent FormatTextfieldText() 
		  RaiseEvent TextChange()
		End Sub
	#tag EndEvent


	#tag Hook, Flags = &h0
		Event FormatTextfieldText()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event KeyDown()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event KeyUp()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TextChange()
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mallowMultipleNumbers
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mallowMultipleNumbers = value
			End Set
		#tag EndSetter
		AllowMultipleNumbers As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		dNumInt As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		keyPressedBeforeLastKeyInt As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		lastKeyPressedInt As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mallowMultipleNumbers As Boolean
	#tag EndProperty


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
			Name="AllowMultipleNumbers"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
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
			Name="Value"
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
