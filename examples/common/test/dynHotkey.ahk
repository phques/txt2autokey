

createHotKey(pre, post)
{
	; convert to scancode representation 'scXXX'
	sc := GetKeySC(pre)
	scPre := Format("sc{:03x}", sc)

	sc := GetKeySC(post)
	scPost := Format("sc{:03x}", sc)

	; create function object with params thath hotkey will call : doLayerKey(..)
	; local fn
	fnDown := Func("doLayerKey").Bind(post, 0)
	fnUp := Func("doLayerKey").Bind(post, 1)

	HotKey %scPre% & %scPost%, %fnDown%
	HotKey %scPre% & %scPost% up, %fnUp%
	
}


