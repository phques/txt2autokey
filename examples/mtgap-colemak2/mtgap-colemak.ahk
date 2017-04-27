/*
From  (../../qwertyMain30.txt)
Q W E R T Y U I O P
A S D F G H J K L :
Z X C V B N M < > ?

q w e r t y u i o p
a s d f g h j k l ;
z x c v b n m , . /

To  (kbd.txt)
X W C G Q J L U Y ?
O R S T K P N E I A
V B D M Z F H / < >

x w c g q j l u y ;
o r s t k p n e i a
v b d m z f h , . :

*/

#Include includes.ahk

*sc010::sc02d			; q :: x
*sc012::sc02e			; e :: c
*sc013::sc022			; r :: g
*sc014::sc010			; t :: q
*sc015::sc024			; y :: j
*sc016::sc026			; u :: l
*sc017::sc016			; i :: u
*sc018::sc015			; o :: y
+sc019::+sc035			; P :: ?
 sc019::sc027			; p :: ;
*sc01e::sc018			; a :: o
*sc01f::sc013			; s :: r
*sc020::sc01f			; d :: s
*sc021::sc014			; f :: t
*sc022::sc025			; g :: k
*sc023::sc019			; h :: p
*sc024::sc031			; j :: n
*sc025::sc012			; k :: e
*sc026::sc017			; l :: i
*sc027::sc01e			; ; :: a
*sc02c::sc02f			; z :: v
*sc02d::sc030			; x :: b
*sc02e::sc020			; c :: d
*sc02f::sc032			; v :: m
*sc030::sc02c			; b :: z
*sc031::sc021			; n :: f
*sc032::sc023			; m :: h
+sc033::Send {sc035}	; < :: /
 sc033::sc033			; , :: ,
+sc034::+sc033			; > :: <
 sc034::sc034			; . :: .
+sc035::+sc034			; ? :: >
 sc035::+sc027			; / :: :
