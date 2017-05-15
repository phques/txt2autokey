/*
From  (../../../qwertyMain30.txt)
Q W E R T Y U I O P
A S D F G H J K L :
Z X C V B N M < > ?

q w e r t y u i o p
a s d f g h j k l ;
z x c v b n m , . /

To  (kbd.txt)
J L N D B < U O Y Q
P R S T M / A E H G
Z W F C V ? I > K X

j l n d b : u o y q
p r s t m , a e h g
z w f c v ; i . k x

*/

#Include includes.ahk

*sc010::sc024			; q :: j
*sc011::sc026			; w :: l
*sc012::sc031			; e :: n
*sc013::sc020			; r :: d
*sc014::sc030			; t :: b
+sc015::+sc033			; Y :: <
 sc015::+sc027			; y :: :
*sc017::sc018			; i :: o
*sc018::sc015			; o :: y
*sc019::sc010			; p :: q
*sc01e::sc019			; a :: p
*sc01f::sc013			; s :: r
*sc020::sc01f			; d :: s
*sc021::sc014			; f :: t
*sc022::sc032			; g :: m
+sc023::Send {sc035}	; H :: /
 sc023::sc033			; h :: ,
*sc024::sc01e			; j :: a
*sc025::sc012			; k :: e
*sc026::sc023			; l :: h
*sc027::sc022			; ; :: g
*sc02d::sc011			; x :: w
*sc02e::sc021			; c :: f
*sc02f::sc02e			; v :: c
*sc030::sc02f			; b :: v
+sc031::+sc035			; N :: ?
 sc031::sc027			; n :: ;
*sc032::sc017			; m :: i
*sc033::sc034			; , :: .
*sc034::sc025			; . :: k
*sc035::sc02d			; / :: x
