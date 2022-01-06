; ■無変換・変換キー単独は無変換キーとして機能させる
sc07B:: Send {Blind}{sc07B}
sc079:: Send {Blind}{sc079}

;■変換（移動系＋BackSpace/Enter）
; 変換+k : ↑
; 変換+h : ←
; 変換+j : ↓
; 変換+l : →
; 変換+n : Home（文頭に移動）
; 変換+m : End（文末に移動）
; 変換+u : BackSpace
; 変換+i : Enter
sc079 & k:: Send, {Blind}{Up}
sc079 & h:: Send, {Blind}{Left}
sc079 & j:: Send, {Blind}{Down}
sc079 & l:: Send, {Blind}{Right}

sc079 & n:: Send, {Blind}{Home}
sc079 & m:: Send, {Blind}{End}

sc079 & u:: Send, {Blind}{BS}
sc079 & i:: Send, {Blind}{Enter}

;■無変換（テキスト編集）
;  無変換+k : １行削除
;  無変換+c : １行コピー
;  無変換+x : １行切り取り
sc07B & k::Send,{Blind}{End}+{Home}{BS}
sc07B & c::Send,{Blind}{End}+{Home}^{c}
sc07B & x::Send,{Blind}{End}+{Home}^{x}

;■ 日付関係
;:todayで現在日付を入力
#Hotstring *
#Hotstring O
get_week()
{
    FormatTime, downum,, WDay
    dowtable := "日月火水木金土"
    startpos := ((downum-1))+1
    dowstr := ""
    StringMid, dowstr, dowtable, %startpos%, 1
    return dowstr
}
::;today::
    FormatTime, now,, yyyy/MM/dd
    dowstr := get_week()
    Clipboard = %now%(%dowstr%)
    Send,^v
return

;:nowで現在日時を入力
::;now::
    FormatTime, now,, yyyyMMdd_HHmmss
    Clipboard = %now%
    Send,^v
return


;■SQL
::;limit::
    Send, select * from  limit 100;{Left 11}
Return

::;select::
    Send, select * from  ;{Left 2}
Return

;■ドキュメントテンプレート
::;task::
    Send,■目的`n`n`n■概要`n`n`n■完了条件`n`n{Left 15}
return
