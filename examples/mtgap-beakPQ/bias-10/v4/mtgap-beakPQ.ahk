/*
From  (../../../qwertyMain30.txt)
Q W E R T Y U I O P
A S D F G H J K L :
Z X C V B N M < > ?

q w e r t y u i o p
a s d f g h j k l ;
z x c v b n m , . /

To  (kbd.txt)
K L D F X < U O C J
P R T H V ? A E S Y
W M N B Q > I / G Z

k l d f x : u o c j
p r t h v , a e s y
w m n b q ; i . g z

*/

#Include includes.ahk

*sc010::sc025			; q :: k
*sc011::sc026			; w :: l
*sc012::sc020			; e :: d
*sc013::sc021			; r :: f
*sc014::sc02d			; t :: x
+sc015::+sc033			; Y :: <
 sc015::+sc027			; y :: :
*sc017::sc018			; i :: o
*sc018::sc02e			; o :: c
*sc019::sc024			; p :: j
*sc01e::sc019			; a :: p
*sc01f::sc013			; s :: r
*sc020::sc014			; d :: t
*sc021::sc023			; f :: h
*sc022::sc02f			; g :: v
+sc023::+sc035			; H :: ?
 sc023::sc033			; h :: ,
*sc024::sc01e			; j :: a
*sc025::sc012			; k :: e
*sc026::sc01f			; l :: s
*sc027::sc015			; ; :: y
*sc02c::sc011			; z :: w
*sc02d::sc032			; x :: m
*sc02e::sc031			; c :: n
*sc02f::sc030			; v :: b
*sc030::sc010			; b :: q
+sc031::+sc034			; N :: >
 sc031::sc027			; n :: ;
*sc032::sc017			; m :: i
+sc033::Send {sc035}	; < :: /
 sc033::sc034			; , :: .
*sc034::sc022			; . :: g
*sc035::sc02c			; / :: z
