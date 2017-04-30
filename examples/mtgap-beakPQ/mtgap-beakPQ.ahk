/*
From  (../../qwertyMain30.txt)
Q W E R T Y U I O P
A S D F G H J K L :
Z X C V B N M < > ?

q w e r t y u i o p
a s d f g h j k l ;
z x c v b n m , . /

To  (kbd.txt)
Z C N D V ? U O L Q
P R S T F Y A E H G
W B M K J / I < > X

z c n d v : u o l q
p r s t f y a e h g
w b m k j ; i . , x

*/

#Include includes.ahk

*sc010::sc02c			; q :: z
*sc011::sc02e			; w :: c
*sc012::sc031			; e :: n
*sc013::sc020			; r :: d
*sc014::sc02f			; t :: v
+sc015::+sc035			; Y :: ?
 sc015::+sc027			; y :: :
*sc017::sc018			; i :: o
*sc018::sc026			; o :: l
*sc019::sc010			; p :: q
*sc01e::sc019			; a :: p
*sc01f::sc013			; s :: r
*sc020::sc01f			; d :: s
*sc021::sc014			; f :: t
*sc022::sc021			; g :: f
*sc023::sc015			; h :: y
*sc024::sc01e			; j :: a
*sc025::sc012			; k :: e
*sc026::sc023			; l :: h
*sc027::sc022			; ; :: g
*sc02c::sc011			; z :: w
*sc02d::sc030			; x :: b
*sc02e::sc032			; c :: m
*sc02f::sc025			; v :: k
*sc030::sc024			; b :: j
+sc031::Send {sc035}	; N :: /
 sc031::sc027			; n :: ;
*sc032::sc017			; m :: i
+sc033::+sc033			; < :: <
 sc033::sc034			; , :: .
+sc034::+sc034			; > :: >
 sc034::sc033			; . :: ,
*sc035::sc02d			; / :: x
