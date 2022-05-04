#RequireAdmin
#include<OpenCV-Match_UDF.au3>


Global $winHD = WinGetHandle("[CLASS:UnityWndClass]")

$wintext = WinGetText($winHD)
Local $splitText = StringSplit($wintext,@CRLF)
Global $controlHD = ControlGetHandle($winHD,"",$splitText[1])
Opt("MouseCoordMode",2)

_OpenCV_Startup()

ControlClick($controlHD,"","","left",1,1306, 816)
$pic = @ScriptDir&"\PIC_GAME\22.png"

$pic1 = @ScriptDir&"\PIC_GAME\ok.png"

;~ While True
;~ 	$loop = True
;~ 	ControlClick($winHD,"","","left",1,265, 440)
;~ 	Sleep(500)
;~ 	ControlClick($winHD,"","","left",1,368, 477)
;~ 	Sleep(500)

;~ 	$limit = _MatchPicture($pic1, $winHD, 0, 0,549, 979)
;~ 	If IsArray($limit) Then
;~ 		ControlClick($winHD,"","","left",1,296, 842)
;~ 		Sleep(500)
;~ 		ContinueLoop
;~ 	EndIf

;~ 	ControlClick($winHD,"","","left",1,255, 724)
;~ 	Sleep(500)
;~ 	While $loop
;~ 		$adds = _MatchPicture($pic, $winHD, 0, 0,573, 979)
;~ 		If IsArray($adds) Then

;~ 			ControlClick($winHD,"","","left",1,130, 894)
;~ 			$loop = True
;~ 		Else

;~ 			$loop = False
;~ 		EndIf
;~ 	WEnd
;~ 	ControlClick($winHD,"","","left",1,391, 896)
;~ 	Sleep(500)
;~ 	$limit = _MatchPicture($pic1, $winHD, 0, 0,549, 979)
;~ 	If IsArray($limit) Then
;~ 		ControlClick($winHD,"","","left",1,296, 842)
;~ 		Sleep(500)
;~ 		ContinueLoop
;~ 	EndIf

;~ WEnd