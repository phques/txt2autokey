/*
From  (../../qwertyMain30.txt)
Q W E R T Y U I O P
A S D F G H J K L :
Z X C V B N M < > ?

q w e r t y u i o p
a s d f g h j k l ;
z x c v b n m , . /

To  (kbd.txt)
X G D M Z / F O U Q
R S T H V P N E I A
W B L K J Y C < > ?

x g d m z : f o u q
r s t h v p n e i a
w b l k j y c . , ;

*/

#Include includes.ahk

*sc010::sc02d			; q :: x
*sc011::sc022			; w :: g
*sc012::sc020			; e :: d
*sc013::sc032			; r :: m
*sc014::sc02c			; t :: z
+sc015::Send {sc035}	; Y :: /
 sc015::+sc027			; y :: :
*sc016::sc021			; u :: f
*sc017::sc018			; i :: o
*sc018::sc016			; o :: u
*sc019::sc010			; p :: q
*sc01e::sc013			; a :: r
*sc020::sc014			; d :: t
*sc021::sc023			; f :: h
*sc022::sc02f			; g :: v
*sc023::sc019			; h :: p
*sc024::sc031			; j :: n
*sc025::sc012			; k :: e
*sc026::sc017			; l :: i
*sc027::sc01e			; ; :: a
*sc02c::sc011			; z :: w
*sc02d::sc030			; x :: b
*sc02e::sc026			; c :: l
*sc02f::sc025			; v :: k
*sc030::sc024			; b :: j
*sc031::sc015			; n :: y
*sc032::sc02e			; m :: c
+sc033::+sc033			; < :: <
 sc033::sc034			; , :: .
+sc034::+sc034			; > :: >
 sc034::sc033			; . :: ,
+sc035::+sc035			; ? :: ?
 sc035::sc027			; / :: ;
