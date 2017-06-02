

; GroupAdd, Explorer, ahk_class CabinetWClass
; GroupAdd, Explorer, ahk_exe 2xExplorer.exe

list1 := WinGetList('ahk_class CabinetWClass')
list2 := WinGetList('ahk_exe 2xExplorer.exe')

msg := ''
For index, value in list1 {
    title := WinGetTitle('ahk_id %value%')
    msg .= 'Explorer ' . title . '`n'
}

For index, value in list2 {
    title := WinGetTitle('ahk_id %value%')
    msg .= '2xExplorer ' . title . '`n'
}

MsgBox % msg