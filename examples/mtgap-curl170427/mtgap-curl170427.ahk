/*
From  (../../qwertyMain30.txt)
Q W E R T Y U I O P
A S D F G H J K L :
Z X C V B N M < > ?

q w e r t y u i o p
a s d f g h j k l ;
z x c v b n m , . /

To  (kbd.txt)
X F G M Z < > U P Q
D S T H K ? A E N I
V B L C W R O / Y J

x f g m z : . u p q
d s t h k ; a e n i
v b l c w r o , y j

*/

#Include includes.ahk

*sc010::sc02d			; q :: x
*sc011::sc021			; w :: f
*sc012::sc022			; e :: g
*sc013::sc032			; r :: m
*sc014::sc02c			; t :: z
+sc015::+sc033			; Y :: <
 sc015::+sc027			; y :: :
*sc016::sc034			; u :: .
*sc017::sc016			; i :: u
*sc018::sc019			; o :: p
*sc019::sc010			; p :: q
*sc01e::sc020			; a :: d
*sc020::sc014			; d :: t
*sc021::sc023			; f :: h
*sc022::sc025			; g :: k
+sc023::+sc035			; H :: ?
 sc023::sc027			; h :: ;
*sc024::sc01e			; j :: a
*sc025::sc012			; k :: e
*sc026::sc031			; l :: n
*sc027::sc017			; ; :: i
*sc02c::sc02f			; z :: v
*sc02d::sc030			; x :: b
*sc02e::sc026			; c :: l
*sc02f::sc02e			; v :: c
*sc030::sc011			; b :: w
*sc031::sc013			; n :: r
*sc032::sc018			; m :: o
+sc033::Send {sc035}	; < :: /
 sc033::sc033			; , :: ,
*sc034::sc015			; . :: y
*sc035::sc024			; / :: j
