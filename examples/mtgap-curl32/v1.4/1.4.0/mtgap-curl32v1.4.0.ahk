/*
From  (../../qwertyMain32.txt)
Q W E R T Y U I O P {
A S D F G H J K L : "
Z X C V B N M < > ?

q w e r t y u i o p [
a s d f g h j k l ; '
z x c v b n m , . /

To  (kbd.txt)
X M C B J © F O U Q ¬
L R S T K P N E I A @
W V D G Z Y H ^ | #

x m c b j $ f o u q \
l r s t k p n e i a _
w v d g z y h / ' ?

*/

#Include includes.ahk

*sc010::sc02d			; q :: x
*sc011::sc032			; w :: m
*sc012::sc02e			; e :: c
*sc013::sc030			; r :: b
*sc014::sc024			; t :: j
+sc015::Send {sc000}	; Y :: Â©
 sc015::+sc005			; y :: $
*sc016::sc021			; u :: f
*sc017::sc018			; i :: o
*sc018::sc016			; o :: u
*sc019::sc010			; p :: q
+sc01a::Send {sc000}	; { :: Â¬
 sc01a::sc02b			; [ :: \
*sc01e::sc026			; a :: l
*sc01f::sc013			; s :: r
*sc020::sc01f			; d :: s
*sc021::sc014			; f :: t
*sc022::sc025			; g :: k
*sc023::sc019			; h :: p
*sc024::sc031			; j :: n
*sc025::sc012			; k :: e
*sc026::sc017			; l :: i
*sc027::sc01e			; ; :: a
+sc028::+sc003			; " :: @
 sc028::+sc00c			; ' :: _
*sc02c::sc011			; z :: w
*sc02d::sc02f			; x :: v
*sc02e::sc020			; c :: d
*sc02f::sc022			; v :: g
*sc030::sc02c			; b :: z
*sc031::sc015			; n :: y
*sc032::sc023			; m :: h
+sc033::+sc007			; < :: ^
 sc033::sc035			; , :: /
+sc034::+sc02b			; > :: |
 sc034::sc028			; . :: '
+sc035::+sc004			; ? :: #
 sc035::+sc035			; / :: ?
