
#include extendDoSend.ahk

SetupExtend2(extendKey)
{
    SetExtendKey(extendKey)

    extHK('1', 'F1')
    extHK('2', 'F2')
    extHK('3', 'F3')
    extHK('4', 'F4')
    extHK('5', 'F5')
    extHK('6', 'F6')
    extHK('7', 'F7')
    extHK('8', 'F8')
    extHK('9', 'F9')
    extHK('0', 'F10')
    extHK('-', 'F11')
    extHK('=', 'F12')

    extHK('q', 'insert')
    extHK('w', 'Escape')
    extHK('e', 'Tab')
    extHK('r', 'Alt')

    extHK('CapsLock', 'LWin')
    extHK('a', 'Control')
    extHK('f', 'Shift')
    extHK('g', '!','Esc') ; or with r-w!

    extHK('z', '^','z')
    extHK('x', '^','x')
    extHK('c', '^','c')
    extHK('v', '^','v')

    extHK('y', 'PgUp')
    extHK('u', 'Home')
    extHK('i', 'Up')
    extHK('o', 'End')
    extHK('p', 'Delete')
    extHK('[', 'Escape')

    extHK('h', 'PgDn')
    extHK('j', 'Left')
    extHK('k', 'Down')
    extHK('l', 'Right')
    extHK('`;', 'Backspace')

    extHK('m', '^','c')
    extHK(',', '^','x')
    extHK('.', '^','v')
    extHK('/', '^','z')
}
