/*
From  (../../qwertyMain30.txt)
Q W E R T Y U I O P
A S D F G H J K L :
Z X C V B N M < > ?

q w e r t y u i o p
a s d f g h j k l ;
z x c v b n m , . /

To  (kbdtst.txt)
X P L M K J F O U Q
R I N T B G S E H A
? V D W Z Y C / < >

x p l m k j f o u q
r i n t b g s e h a
. v d w z y c ; , :

*/

#Include includes.ahk

*sc010::sc02d			; q :: x
*sc011::sc019			; w :: p
*sc012::sc026			; e :: l
*sc013::sc032			; r :: m
*sc014::sc025			; t :: k
*sc015::sc024			; y :: j
*sc016::sc021			; u :: f
*sc017::sc018			; i :: o
*sc018::sc016			; o :: u
*sc019::sc010			; p :: q
*sc01e::sc013			; a :: r
*sc01f::sc017			; s :: i
*sc020::sc031			; d :: n
*sc021::sc014			; f :: t
*sc022::sc030			; g :: b
*sc023::sc022			; h :: g
*sc024::sc01f			; j :: s
*sc025::sc012			; k :: e
*sc026::sc023			; l :: h
*sc027::sc01e			; ; :: a
+sc02c::+sc035			; Z :: ?
 sc02c::sc034			; z :: .
*sc02d::sc02f			; x :: v
*sc02e::sc020			; c :: d
*sc02f::sc011			; v :: w
*sc030::sc02c			; b :: z
*sc031::sc015			; n :: y
*sc032::sc02e			; m :: c
+sc033::Send {sc035}	; < :: /
 sc033::sc027			; , :: ;
*sc034::sc033			; . :: ,
+sc035::+sc034			; ? :: >
 sc035::+sc027			; / :: :
