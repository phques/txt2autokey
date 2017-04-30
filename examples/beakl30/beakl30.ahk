/*
From  (../../qwertyMain30.txt)
Q W E R T Y U I O P
A S D F G H J K L :
Z X C V B N M < > ?

q w e r t y u i o p
a s d f g h j k l ;
z x c v b n m , . /

To  (kbd.txt)
Q N L C F X : O H J
P R T S D U A E I K
V B M G W ; < > Y Z

q n l c f x . o h j
p r t s d u a e i k
v b m g w / , ? y z

*/

#Include includes.ahk

*sc011::sc031			; w :: n
*sc012::sc026			; e :: l
*sc013::sc02e			; r :: c
*sc014::sc021			; t :: f
*sc015::sc02d			; y :: x
+sc016::+sc027			; U :: :
 sc016::sc034			; u :: .
*sc017::sc018			; i :: o
*sc018::sc023			; o :: h
*sc019::sc024			; p :: j
*sc01e::sc019			; a :: p
*sc01f::sc013			; s :: r
*sc020::sc014			; d :: t
*sc021::sc01f			; f :: s
*sc022::sc020			; g :: d
*sc023::sc016			; h :: u
*sc024::sc01e			; j :: a
*sc025::sc012			; k :: e
*sc026::sc017			; l :: i
*sc027::sc025			; ; :: k
*sc02c::sc02f			; z :: v
*sc02d::sc030			; x :: b
*sc02e::sc032			; c :: m
*sc02f::sc022			; v :: g
*sc030::sc011			; b :: w
+sc031::Send {sc027}	; N :: ;
 sc031::sc035			; n :: /
*sc032::sc033			; m :: ,
+sc033::+sc034			; < :: >
 sc033::+sc035			; , :: ?
*sc034::sc015			; . :: y
*sc035::sc02c			; / :: z
