/*
From  (../../../qwertyMain30.txt)
Q W E R T Y U I O P
A S D F G H J K L :
Z X C V B N M < > ?

q w e r t y u i o p
a s d f g h j k l ;
z x c v b n m , . /

To  (kbd2.txt)
X C D M B / U O L J
K S T H F Y A E R P
G W N V Q ? I < > Z

x c d m b : u o l j
k s t h f y a e r p
g w n v q ; i . , z

*/

#Include includes.ahk

*sc010::sc02d			; q :: x
*sc011::sc02e			; w :: c
*sc012::sc020			; e :: d
*sc013::sc032			; r :: m
*sc014::sc030			; t :: b
+sc015::Send {sc035}	; Y :: /
 sc015::+sc027			; y :: :
*sc017::sc018			; i :: o
*sc018::sc026			; o :: l
*sc019::sc024			; p :: j
*sc01e::sc025			; a :: k
*sc020::sc014			; d :: t
*sc021::sc023			; f :: h
*sc022::sc021			; g :: f
*sc023::sc015			; h :: y
*sc024::sc01e			; j :: a
*sc025::sc012			; k :: e
*sc026::sc013			; l :: r
*sc027::sc019			; ; :: p
*sc02c::sc022			; z :: g
*sc02d::sc011			; x :: w
*sc02e::sc031			; c :: n
*sc030::sc010			; b :: q
+sc031::+sc035			; N :: ?
 sc031::sc027			; n :: ;
*sc032::sc017			; m :: i
+sc033::+sc033			; < :: <
 sc033::sc034			; , :: .
+sc034::+sc034			; > :: >
 sc034::sc033			; . :: ,
*sc035::sc02c			; / :: z
