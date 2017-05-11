

s:= "  as     asdd "
t := Trim(s)
t := RegExReplace(t, "\s{2,}", " ")

MsgBox % "'" s "'"
MsgBox % "'" t "'"