/*
From  (../../../qwertyMain30.txt)
Q W E R T Y U I O P
A S D F G H J K L :
Z X C V B N M < > ?

q w e r t y u i o p
a s d f g h j k l ;
z x c v b n m , . /

To  (kbd.txt)
V C M P Q < U O L J
W S T H F ? A E R Y
G D N B Z > I / K X

v c m p q : u o l j
w s t h f , a e r y
g d n b z ; i . k x

*/

#Include includes.ahk

*sc010::sc02f			; q :: v
*sc011::sc02e			; w :: c
*sc012::sc032			; e :: m
*sc013::sc019			; r :: p
*sc014::sc010			; t :: q
+sc015::+sc033			; Y :: <
 sc015::+sc027			; y :: :
*sc017::sc018			; i :: o
*sc018::sc026			; o :: l
*sc019::sc024			; p :: j
*sc01e::sc011			; a :: w
*sc020::sc014			; d :: t
*sc021::sc023			; f :: h
*sc022::sc021			; g :: f
+sc023::+sc035			; H :: ?
 sc023::sc033			; h :: ,
*sc024::sc01e			; j :: a
*sc025::sc012			; k :: e
*sc026::sc013			; l :: r
*sc027::sc015			; ; :: y
*sc02c::sc022			; z :: g
*sc02d::sc020			; x :: d
*sc02e::sc031			; c :: n
*sc02f::sc030			; v :: b
*sc030::sc02c			; b :: z
+sc031::+sc034			; N :: >
 sc031::sc027			; n :: ;
*sc032::sc017			; m :: i
+sc033::Send {sc035}	; < :: /
 sc033::sc034			; , :: .
*sc034::sc025			; . :: k
*sc035::sc02d			; / :: x
