
global menuItems := {}

OpenWinlistMenu()
{
    menuItems := {}

    Menu mymenu, add, dummy, onMenuItem
    Menu mymenu, deleteAll
    
    createWinMenu('Explorer', 'ahk_class CabinetWClass')
    createWinMenu('Explorer', 'ahk_exe 2xExplorer.exe')
    createWinMenu('Explorer', 'ahk_exe xplorer2_lite.exe')
    createWinMenu('NotepadPP', 'ahk_class Notepad++')
    createWinMenu('Chrome', 'ahk_exe chrome.exe')
    createWinMenu('DevStudio', 'ahk_exe devenv.exe')
    createWinMenu('PLine', 'ahk_exe EnvironmentManager.exe')
    createWinMenu('PLine', 'ahk_exe pragmaview.exe')
    createWinMenu('PLine', 'ahk_exe pragmaswitch.exe')
    createWinMenu('PLine', 'ahk_exe pconfig.exe')
    createWinMenu('PLine', 'ahk_exe incmgr.exe')

    Menu mymenu, show
}

createWinMenu(submenuName, wintitle)
{
    winList := WinGetList(wintitle)
    if (menuItems[submenuName])
        winids := menuItems[submenuName]
    else
        winids := []

    For index, winid in winList {
        title := WinGetTitle('ahk_id %winid%')
        if (strlen(title)) {
            Menu %submenuName%, add, %title%, onMenuItem
            winids.push(winid)
        }
        
    }
    
    menuItems[submenuName] := winids
    
    if (winids.Length)
        Menu mymenu, add, %submenuName%, :%submenuName%
}

onMenuItem(ItemName, ItemPos, MenuName)
{
    itemWinList := menuItems[MenuName]
    winid := itemWinList[ItemPos]
    WinActivate 'ahk_id %winid%'
}



