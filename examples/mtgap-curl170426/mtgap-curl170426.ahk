/*
From  (../../qwertyMain30.txt)
Q W E R T Y U I O P
A S D F G H J K L :
Z X C V B N M < > ?

q w e r t y u i o p
a s d f g h j k l ;
z x c v b n m , . /

To  (kbd.txt)
< F U M X Q . D C >
H A I N V / E T S R
K Y L W Z G O P B J

? f u m x q , d c :
h a i n v ; e t s r
k y l w z g o p b j

*/

#Include includes.ahk

+sc010::+sc033			; Q :: <
 sc010::+sc035			; q :: ?
*sc011::sc021			; w :: f
*sc012::sc016			; e :: u
*sc013::sc032			; r :: m
*sc014::sc02d			; t :: x
*sc015::sc010			; y :: q
+sc016::Send {sc034}	; U :: .
 sc016::sc033			; u :: ,
*sc017::sc020			; i :: d
*sc018::sc02e			; o :: c
+sc019::+sc034			; P :: >
 sc019::+sc027			; p :: :
*sc01e::sc023			; a :: h
*sc01f::sc01e			; s :: a
*sc020::sc017			; d :: i
*sc021::sc031			; f :: n
*sc022::sc02f			; g :: v
+sc023::Send {sc035}	; H :: /
 sc023::sc027			; h :: ;
*sc024::sc012			; j :: e
*sc025::sc014			; k :: t
*sc026::sc01f			; l :: s
*sc027::sc013			; ; :: r
*sc02c::sc025			; z :: k
*sc02d::sc015			; x :: y
*sc02e::sc026			; c :: l
*sc02f::sc011			; v :: w
*sc030::sc02c			; b :: z
*sc031::sc022			; n :: g
*sc032::sc018			; m :: o
*sc033::sc019			; , :: p
*sc034::sc030			; . :: b
*sc035::sc024			; / :: j
