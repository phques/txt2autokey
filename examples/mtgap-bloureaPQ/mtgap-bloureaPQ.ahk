/*
From  (../../qwertyMain30Plus.txt)
Q W E R T Y U I O P { } |
A S D F G H J K L : "
Z X C V B N M < > ?

q w e r t y u i o p [ ] \
a s d f g h j k l ; '
z x c v b n m , . /

To  (mtgap-bloureaPQ.txt)
B L O U ? J D C P Y { } |
H R E A / G T S N I '
K X < > Z W M F V Q

b l o u : j d c p y [ ] \
h r e a ; g t s n i "
k x , . z w m f v q

*/

#Include includes.ahk

*sc010::sc030			; q :: b
*sc011::sc026			; w :: l
*sc012::sc018			; e :: o
*sc013::sc016			; r :: u
+sc014::+sc035			; T :: ?
 sc014::+sc027			; t :: :
*sc015::sc024			; y :: j
*sc016::sc020			; u :: d
*sc017::sc02e			; i :: c
*sc018::sc019			; o :: p
*sc019::sc015			; p :: y
*sc01e::sc023			; a :: h
*sc01f::sc013			; s :: r
*sc020::sc012			; d :: e
*sc021::sc01e			; f :: a
+sc022::Send {sc035}	; G :: /
 sc022::sc027			; g :: ;
*sc023::sc022			; h :: g
*sc024::sc014			; j :: t
*sc025::sc01f			; k :: s
*sc026::sc031			; l :: n
*sc027::sc017			; ; :: i
+sc028::Send {sc028}	; " :: '
 sc028::+sc028			; ' :: "
*sc02c::sc025			; z :: k
*sc02e::sc033			; c :: ,
*sc02f::sc034			; v :: .
*sc030::sc02c			; b :: z
*sc031::sc011			; n :: w
*sc033::sc021			; , :: f
*sc034::sc02f			; . :: v
*sc035::sc010			; / :: q
