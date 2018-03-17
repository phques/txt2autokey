; builds a menu of active windows 
; selecting a menu entry will activate that window
; winid := itemsWinids[menu.Handle][ItemPos]
global itemsWinids := {}

OpenWinlistMenu()
{
    ; create menu
    menus := []
    itemsWinids := {}
    
    menus.push(createWinMenu('Explorer', 
        ['ahk_class CabinetWClass', 
        'ahk_exe 2xExplorer.exe', 
        'ahk_exe xplorer2_lite.exe']))
    menus.push(createWinMenu('NotepadPP', ['ahk_class Notepad++']))
    menus.push(createWinMenu('Chrome', ['ahk_exe chrome.exe']))
    menus.push(createWinMenu('DevStudio', ['ahk_exe devenv.exe']))
    menus.push(createWinMenu('PLine', 
        ['ahk_exe EnvironmentManager.exe',
        'ahk_exe pragmageo.exe',
        'ahk_exe pragmaview.exe',
        'ahk_exe pragmaswitch.exe',
        'ahk_exe pconfig.exe',
        'ahk_exe incmgr.exe']))
    menus.push(createWinMenu('ICCP', 
        ['ahk_exe Iccp.ObjectMgr.exe',
        'ahk_exe Iccp.Translator.exe',
        'ahk_exe Iccp.Filter.exe',
        'ahk_exe Iccp.BusinessLogic.exe',
        'ahk_exe liveDataSimul.exe']))

    myMenu := MenuCreate()
    for idx, menuItem in menus {
        myMenu.Add(menuItem.title, menuItem.menu)
    }

    ; show it
    mymenu.Show()

    ; destroy menu / submenus
    for idx, menuItem in menus {
        menuItem.menu.Delete()
    }
    myMenu.Delete()
}

createWinMenu(submenuName, wintitles)
{
    ret := {}
    ret.title := submenuName
    ret.menu := MenuCreate()
    
    for idx1, wintitle in wintitles {
        winids := WinGetList(wintitle)
        For idx2, winid in winids {
            title := WinGetTitle('ahk_id ' . winid)
            if (strlen(title)) {
                idx := ret.menu.Handle
                if (!itemsWinids[idx])
                    itemsWinids[idx] := []
                itemsWinids[idx].Push(winid)
                
                ret.menu.Add(title, "onMenuItem")
            }
        }
    }
    
    return ret
}

onMenuItem(ItemName, ItemPos, Menu)
{
    ; activate the selected window
    idx := Menu.Handle
    winid := itemsWinids[idx][ItemPos]
    WinActivate 'ahk_id ' . winid
}


