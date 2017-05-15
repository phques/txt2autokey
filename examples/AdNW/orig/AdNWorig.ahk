/*
From  (../../qwertyMain32.txt)
Q W E R T Y U I O P {
A S D F G H J K L : "
Z X C V B N M < > ?

q w e r t y u i o p [
a s d f g h j k l ; '
z x c v b n m , . /

To  (kbd.txt)
K U " ! @ V G C L J F
H I E A O D T R N S :
X Y ? \ Q B P W M Z

k u ' . _ v g c l j f
h i e a o d t r n s ;
x y , / q b p w m z

*/

#Include includes.ahk

*sc010::sc025			; q :: k
*sc011::sc016			; w :: u
*sc012::sc028			; e :: '
+sc013::+sc002			; R :: !
 sc013::sc034			; r :: .
+sc014::+sc003			; T :: @
 sc014::+sc00c			; t :: _
*sc015::sc02f			; y :: v
*sc016::sc022			; u :: g
*sc017::sc02e			; i :: c
*sc018::sc026			; o :: l
*sc019::sc024			; p :: j
*sc01a::sc021			; [ :: f
*sc01e::sc023			; a :: h
*sc01f::sc017			; s :: i
*sc020::sc012			; d :: e
*sc021::sc01e			; f :: a
*sc022::sc018			; g :: o
*sc023::sc020			; h :: d
*sc024::sc014			; j :: t
*sc025::sc013			; k :: r
*sc026::sc031			; l :: n
*sc027::sc01f			; ; :: s
*sc028::sc027			; ' :: ;
*sc02c::sc02d			; z :: x
*sc02d::sc015			; x :: y
+sc02e::+sc035			; C :: ?
 sc02e::sc033			; c :: ,
+sc02f::Send {sc02b}	; V :: \
 sc02f::sc035			; v :: /
*sc030::sc010			; b :: q
*sc031::sc030			; n :: b
*sc032::sc019			; m :: p
*sc033::sc011			; , :: w
*sc034::sc032			; . :: m
*sc035::sc02c			; / :: z
