#RequireAdmin
#include<OpenCV-Match_UDF.au3>


Global $winHD = WinGetHandle("BlueStacks 1")
$wintext = WinGetText($winHD)
Local $splitText = StringSplit($wintext,@CRLF)
Global $controlHD = ControlGetHandle($winHD,"",$splitText[1])
Opt("MouseCoordMode",2)

_OpenCV_Startup()

$pic = @ScriptDir&"\PIC_GAME\22.png"

$pic1 = @ScriptDir&"\PIC_GAME\ok.png"

While True
	$loop = True
	ControlClick($controlHD,"","","left",1,365, 611)
	Sleep(500)
	ControlClick($controlHD,"","","left",1,510, 629)
	Sleep(500)

	$limit = _MatchPicture($pic1, $controlHD, 0, 0,316, 894)
	If IsArray($limit) Then
		ControlClick($controlHD,"","","left",1,384, 896)
		Sleep(500)
		ContinueLoop
	EndIf

	ControlClick($controlHD,"","","left",1,255, 724)
	Sleep(500)
	While $loop
		$adds = _MatchPicture($pic, $controlHD, 0, 0,691, 1202)
		If IsArray($adds) Then

			ControlClick($controlHD,"","","left",1,164, 1097)
			$loop = True
		Else

			$loop = False
		EndIf
	WEnd
	ControlClick($controlHD,"","","left",1,481, 1091)
	Sleep(500)
	$limit = _MatchPicture($pic1, $controlHD, 0, 0,549, 979)
	If IsArray($limit) Then
		ControlClick($controlHD,"","","left",1,296, 842)
		Sleep(500)
		ContinueLoop
	EndIf

WEnd