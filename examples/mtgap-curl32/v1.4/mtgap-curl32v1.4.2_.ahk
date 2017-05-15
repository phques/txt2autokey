/*
From  (../../qwertyMain32.txt)
Q W E R T Y U I O P {
A S D F G H J K L : "
Z X C V B N M < > ?

q w e r t y u i o p [
a s d f g h j k l ; '
z x c v b n m , . /

To  (kbd.txt)
J L M B Z © F O U Q ^
H R N S V P T E I A @
K X C W ¬ G D | Y #

j l m b z $ f o u q /
h r n s v p t e i a _
k x c w \ g d ' y ?

*/

#Include includes.ahk

*sc010::sc024			; q :: j
*sc011::sc026			; w :: l
*sc012::sc032			; e :: m
*sc013::sc030			; r :: b
*sc014::sc02c			; t :: z
+sc015::Send {sc000}	; Y :: Â©
 sc015::+sc005			; y :: $
*sc016::sc021			; u :: f
*sc017::sc018			; i :: o
*sc018::sc016			; o :: u
*sc019::sc010			; p :: q
+sc01a::+sc007			; { :: ^
 sc01a::sc035			; [ :: /
*sc01e::sc023			; a :: h
*sc01f::sc013			; s :: r
*sc020::sc031			; d :: n
*sc021::sc01f			; f :: s
*sc022::sc02f			; g :: v
*sc023::sc019			; h :: p
*sc024::sc014			; j :: t
*sc025::sc012			; k :: e
*sc026::sc017			; l :: i
*sc027::sc01e			; ; :: a
+sc028::+sc003			; " :: @
 sc028::+sc00c			; ' :: _
*sc02c::sc025			; z :: k
*sc02f::sc011			; v :: w
+sc030::Send {sc000}	; B :: Â¬
 sc030::sc02b			; b :: \
*sc031::sc022			; n :: g
*sc032::sc020			; m :: d
+sc033::+sc02b			; < :: |
 sc033::sc028			; , :: '
*sc034::sc015			; . :: y
+sc035::+sc004			; ? :: #
 sc035::+sc035			; / :: ?
