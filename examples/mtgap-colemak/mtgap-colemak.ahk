/*
From  (../../qwertyMain30.txt)
Q W E R T Y U I O P
A S D F G H J K L :
Z X C V B N M < > ?

q w e r t y u i o p
a s d f g h j k l ;
z x c v b n m , . /

To  (kbd.txt)
X F C P V J L U Y Z
R A S T B K N E I O
? W D G Q M H / < >

x f c p v j l u y z
r a s t b k n e i o
, w d g q m h ; . :

*/

#Include includes.ahk

*sc010::sc02d			; q :: x
*sc011::sc021			; w :: f
*sc012::sc02e			; e :: c
*sc013::sc019			; r :: p
*sc014::sc02f			; t :: v
*sc015::sc024			; y :: j
*sc016::sc026			; u :: l
*sc017::sc016			; i :: u
*sc018::sc015			; o :: y
*sc019::sc02c			; p :: z
*sc01e::sc013			; a :: r
*sc01f::sc01e			; s :: a
*sc020::sc01f			; d :: s
*sc021::sc014			; f :: t
*sc022::sc030			; g :: b
*sc023::sc025			; h :: k
*sc024::sc031			; j :: n
*sc025::sc012			; k :: e
*sc026::sc017			; l :: i
*sc027::sc018			; ; :: o
+sc02c::+sc035			; Z :: ?
 sc02c::sc033			; z :: ,
*sc02d::sc011			; x :: w
*sc02e::sc020			; c :: d
*sc02f::sc022			; v :: g
*sc030::sc010			; b :: q
*sc031::sc032			; n :: m
*sc032::sc023			; m :: h
+sc033::Send {sc035}	; < :: /
 sc033::sc027			; , :: ;
+sc034::+sc033			; > :: <
 sc034::sc034			; . :: .
+sc035::+sc034			; ? :: >
 sc035::+sc027			; / :: :
