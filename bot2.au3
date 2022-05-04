#RequireAdmin
#include<OpenCV-Match_UDF.au3>

Global $winHD = WinGetHandle("[CLASS:Qt5154QWindowOwnDCIcon]")
;~ MsgBox(0,"",$winHD)
$wintext = WinGetText($winHD)
Local $splitText = StringSplit($wintext,@CRLF)
Global $controlHD = ControlGetHandle($winHD,"",$splitText[1])
;~ MsgBox(0,"",$controlHD)
Opt("MouseCoordMode",2)

_OpenCV_Startup()

$pic = @ScriptDir&"\PIC_GAME\17.png"
$pic2 = @ScriptDir&"\PIC_GAME\28.png"
$pic3 = @ScriptDir&"\PIC_GAME\deal.png"

$pic4 = @ScriptDir&"\PIC_GAME\9.png"
$pic5 = @ScriptDir&"\PIC_GAME\29.png"
$pic6 = @ScriptDir&"\PIC_GAME\14.png"

$pic7 = @ScriptDir&"\PIC_GAME\ti.png"

$sub = @ScriptDir&"\PIC_GAME\27.png"

$picWhite = @ScriptDir&"\PIC_GAME\White.png"

$picGame = @ScriptDir&"\PIC_GAME\23.png"

$picAccount = @ScriptDir&"\PIC_GAME\26.png"

$picBack = @ScriptDir&"\PIC_GAME\30.png"


Global $check = True
While True

;~ 	$coord = _MatchPicture($picWhite, $controlHD, 165, 333,546, 648)
	$empty = _MatchPicture($sub, $controlHD, 0, 183,131, 294)
;~ 	If IsArray($coord) Then
;~  		MsgBox(0,"","empty find")
;~ 	Else
;~ 		MsgBox(0,"","empty not find")
;~  	EndIf
;~ 	If IsArray($empty) Then
;~ 		MsgBox(0,"","sub find")
;~ 	Else
;~ 		MsgBox(0,"","sub not find")
;~ 	EndIf
	If IsArray($empty) Then
;~ 		MsgBox(0,"","find $picWhite")

;~ 		MsgBox(0,"",$check)
		Sleep(1500)
		ControlClick($controlHD,"","","left",1,317, 576)
		Sleep(1500)
		ControlClick($controlHD,"","","left",1,468, 532)
		Sleep(2500)
		ControlClick($controlHD,"","","left",1,490, 1100)
		Sleep(1500)
		$limit = _MatchPicture($pic2, $controlHD, 0, 0,693, 1205)
		If IsArray($limit) Then
;~ 			MsgBox(0,"","limit")
			ControlClick($controlHD,"","","left",1,$limit[0], $limit[1])
			Sleep(1500)
			ControlClick($controlHD,"","","left",1,598, 1091)
			Sleep(2500)
			$ti = _MatchPicture($pic7, $controlHD, 0, 0,693, 1205)
			Sleep(1500)
			If IsArray($ti) Then
;~ 				MsgBox(0,"","Find Ti")
				ControlClick($controlHD,"","","left",1,$ti[0], $ti[1])
				Sleep(1000)
				ControlClick($controlHD,"","","left",1,544, 994)
				Sleep(1000)
				ContinueLoop
			Else

				ControlClick($controlHD,"","","left",1,579, 740)
				Sleep(1000)
				ControlClick($controlHD,"","","left",1,547, 994)
				Sleep(2000)
				ContinueLoop
			EndIf
		Else
;~ 			MsgBox(0,"","Not limit")

		EndIf
		$check = False

	Else
;~ 		MsgBox(0,"","Not find")

		$adds = _MatchPicture($pic6, $controlHD, 0, 0,693, 1205)
		If IsArray($adds) Then

			ControlClick($controlHD,"","","left",1,585, 764)
			Sleep(1000)
			ControlClick($controlHD,"","","left",1,551, 1005)
			ContinueLoop
		EndIf
		$earn = _MatchPicture($pic5, $controlHD, 0, 0,693, 1205)
		If IsArray($earn) Then
;~ 			MsgBox(0,"","Earn")
			ControlClick($controlHD,"","","left",1,$earn[0], $earn[1])
			ContinueLoop
		EndIf
		$check = True
		$game = _MatchPicture($picGame, $controlHD, 0, 0,1940, 1106)
		If IsArray($game) Then
;~ 			MsgBox(0,"","Game")
			ControlClick($controlHD,"","","left",1,$game[0], $game[1])
			ContinueLoop
		Else
;~ 			MsgBox(0,"","Not Game")
		EndIf
		$account = _MatchPicture($picAccount, $controlHD, 0, 0,693, 1205)
		If IsArray($account) Then
;~ 			MsgBox(0,"","Account")
			ControlClick($controlHD,"","","left",1,$account[0], $account[1])
			ContinueLoop
		Else
;~ 			MsgBox(0,"","Not Account")
		EndIf
		$back = _MatchPicture($picBack, $controlHD, 0, 0,693, 1205)
		If IsArray($back) Then
;~ 			MsgBox(0,"","Find Back")
			ControlClick($controlHD,"","","left",1,$back[0], $back[1])
			ContinueLoop
		Else
;~ 			MsgBox(0,"","Not Back")
		EndIf
	EndIf
;~ 	ControlClick($controlHD,"","","left",1,271, 554)
;~ 	Sleep(3000)
;~ 	$coord = _MatchPicture($pic, $controlHD, 308, 463,505, 625)
;~ 	If IsArray($coord) Then


;~ 	Else

;~ 		$bend = _MatchPicture($pic4, $controlHD, 0, 0,629, 1092)
;~ 		If IsArray($bend) Then

;~ 			ControlClick($controlHD,"","","left",1,47, 56)
;~ 			Sleep(2000)
;~ 			$earn = _MatchPicture($pic5, $controlHD, 0, 0,629, 1092)
;~ 			If IsArray($earn) Then
;~ 				ControlClick($controlHD,"","","left",1,539, 985)
;~ 				Sleep(2000)
;~ 			EndIf
;~ 			ContinueLoop
;~ 		EndIf
;~ 		ControlClick($controlHD,"","","left",1,394, 515)
;~ 		Sleep(2000)
;~ 		ControlClick($controlHD,"","","left",1,541, 1000)
;~ 		Sleep(2000)

;~ 		$limit = _MatchPicture($pic2, $controlHD, 0, 0,629, 1092)
;~ 		If IsArray($limit) Then

;~ 			ControlClick($controlHD,"","","left",1,305, 841)
;~ 			Sleep(1000)
;~ 			ControlClick($controlHD,"","","left",1,541, 982)
;~ 			Sleep(3000)
;~ 			$ti = _MatchPicture($pic7, $controlHD, 0, 0,629, 1092)
;~ 			If IsArray($ti) Then

;~ 				ControlClick($controlHD,"","","left",1,$ti[0], $ti[1])
;~ 				Sleep(1000)
;~ 				ControlClick($controlHD,"","","left",1,544, 994)
;~ 			Else
;~ 				ControlClick($controlHD,"","","left",1,581, 592)
;~ 				Sleep(1000)
;~ 				ControlClick($controlHD,"","","left",1,352, 464)
;~ 				Sleep(1000)
;~ 				ControlClick($controlHD,"","","left",1,544, 994)
;~ 				Sleep(2000)
;~ 			EndIf

;~ 		EndIf
;~ 	EndIf

WEnd
_OpenCV_Shutdown()



