; �����ϊ��E�ϊ��L�[�P�Ƃ͖��ϊ��L�[�Ƃ��ċ@�\������
sc07B:: Send {Blind}{sc07B}
sc079:: Send {Blind}{sc079}

;���ϊ��i�ړ��n�{BackSpace/Enter�j
; �ϊ�+k : ��
; �ϊ�+h : ��
; �ϊ�+j : ��
; �ϊ�+l : ��
; �ϊ�+n : Home�i�����Ɉړ��j
; �ϊ�+m : End�i�����Ɉړ��j
; �ϊ�+u : BackSpace
; �ϊ�+i : Enter
sc079 & k:: Send, {Blind}{Up}
sc079 & h:: Send, {Blind}{Left}
sc079 & j:: Send, {Blind}{Down}
sc079 & l:: Send, {Blind}{Right}

sc079 & n:: Send, {Blind}{Home}
sc079 & m:: Send, {Blind}{End}

sc079 & u:: Send, {Blind}{BS}
sc079 & i:: Send, {Blind}{Enter}

;�����ϊ��i�e�L�X�g�ҏW�j
;  ���ϊ�+k : �P�s�폜
;  ���ϊ�+c : �P�s�R�s�[
;  ���ϊ�+x : �P�s�؂���
sc07B & k::Send,{Blind}{End}+{Home}{BS}
sc07B & c::Send,{Blind}{End}+{Home}^{c}
sc07B & x::Send,{Blind}{End}+{Home}^{x}


;�� ���t�֌W
;:today�Ō��ݓ��t�����
#Hotstring *
#Hotstring O
get_week()
{
    FormatTime, downum,, WDay
    dowtable := "�����ΐ��؋��y"
    startpos := ((downum-1))+1
    dowstr := ""
    StringMid, dowstr, dowtable, %startpos%, 1
    return dowstr
}
:::today::
    FormatTime, now,, yyyy/MM/dd
    dowstr := get_week()
    Clipboard = %now%(%dowstr%)
    Send,^v
return

;:now�Ō��ݓ��������
:::now::
    FormatTime, now,, yyyyMMdd_HHmmss
    Clipboard = %now%
    Send,^v
return