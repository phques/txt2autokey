; builds a menu of active windows 
; selecting a menu entry will activate that window

global menuItems := {}

OpenWinlistMenu()
{
    menuItems := {}

    ; delete any old menu entries
    Menu mymenu, add, dummy, onMenuItem
    Menu mymenu, deleteAll
    
    createWinMenu('Explorer', 'ahk_class CabinetWClass')
    createWinMenu('Explorer', 'ahk_exe 2xExplorer.exe')
    createWinMenu('Explorer', 'ahk_exe xplorer2_lite.exe')
    createWinMenu('NotepadPP', 'ahk_class Notepad++')
    createWinMenu('Chrome', 'ahk_exe chrome.exe')
    createWinMenu('DevStudio', 'ahk_exe devenv.exe')
    
    createWinMenu('PLine', 'ahk_exe EnvironmentManager.exe')
    createWinMenu('PLine', 'ahk_exe pragmageo.exe')
    createWinMenu('PLine', 'ahk_exe pragmaview.exe')
    createWinMenu('PLine', 'ahk_exe pragmaswitch.exe')
    createWinMenu('PLine', 'ahk_exe pconfig.exe')
    createWinMenu('PLine', 'ahk_exe incmgr.exe')
    
    createWinMenu('ICCP', 'ahk_exe Iccp.ObjectMgr.exe')
    createWinMenu('ICCP', 'ahk_exe Iccp.Translator.exe')
    createWinMenu('ICCP', 'ahk_exe Iccp.Filter.exe')
    createWinMenu('ICCP', 'ahk_exe Iccp.BusinessLogic.exe')
    createWinMenu('ICCP', 'ahk_exe liveDataSimul.exe')

    Menu mymenu, show
}

createWinMenu(submenuName, wintitle)
{
    winList := WinGetList(wintitle)
    if (menuItems[submenuName]) {
        winids := menuItems[submenuName]
    }
    else {
        winids := []
        ; delete any old menu entries
        Menu %submenuName%, add, dummy, onMenuItem
        Menu %submenuName%, deleteAll
    }

    For index, winid in winList {
        title := WinGetTitle('ahk_id %winid%')
        if (strlen(title)) {
            Menu %submenuName%, add, %title%, onMenuItem
            winids.push(winid)
        }
        
    }
    
    menuItems[submenuName] := winids
    
    ; if only 1 menu entry, dont create a submenu
    if (winids.Length == 1)
        Menu mymenu, add, %submenuName%, onMenuItem
    else if (winids.Length)
        Menu mymenu, add, %submenuName%, :%submenuName%
}

onMenuItem(ItemName, ItemPos, MenuName)
{
    if (MenuName == 'mymenu') {
        ; this is a single entry placed directly on the main menu
        ; but its info is saved under the 'submenu' name, at pos1
        MenuName := ItemName  ; submenu name is = itemname
        ItemPos := 1
    }
        
    ; get window ids list of this submenu and then the winId for the selected item
    itemWinList := menuItems[MenuName]
    winid := itemWinList[ItemPos]
    ; activate the selected window
    WinActivate 'ahk_id %winid%'
}



