/*
From  (../../qwertyMain32.txt)
Q W E R T Y U I O P {
A S D F G H J K L : "
Z X C V B N M < > ?

q w e r t y u i o p [
a s d f g h j k l ; '
z x c v b n m , . /

To  (kbd.txt)
Q P O U ¬ X D L C K Z
I N E A @ B H T S R W
| ^ Y # © F M V G J

q p o u $ x d l c k z
i n e a _ b h t s r w
/ ? y ' \ f m v g j

*/

#Include includes.ahk

*sc011::sc019			; w :: p
*sc012::sc018			; e :: o
*sc013::sc016			; r :: u
+sc014::Send {sc000}	; T :: Â¬
 sc014::+sc005			; t :: $
*sc015::sc02d			; y :: x
*sc016::sc020			; u :: d
*sc017::sc026			; i :: l
*sc018::sc02e			; o :: c
*sc019::sc025			; p :: k
*sc01a::sc02c			; [ :: z
*sc01e::sc017			; a :: i
*sc01f::sc031			; s :: n
*sc020::sc012			; d :: e
*sc021::sc01e			; f :: a
+sc022::+sc003			; G :: @
 sc022::+sc00c			; g :: _
*sc023::sc030			; h :: b
*sc024::sc023			; j :: h
*sc025::sc014			; k :: t
*sc026::sc01f			; l :: s
*sc027::sc013			; ; :: r
*sc028::sc011			; ' :: w
+sc02c::+sc02b			; Z :: |
 sc02c::sc035			; z :: /
+sc02d::+sc007			; X :: ^
 sc02d::+sc035			; x :: ?
*sc02e::sc015			; c :: y
+sc02f::+sc004			; V :: #
 sc02f::sc028			; v :: '
+sc030::Send {sc000}	; B :: Â©
 sc030::sc02b			; b :: \
*sc031::sc021			; n :: f
*sc033::sc02f			; , :: v
*sc034::sc022			; . :: g
*sc035::sc024			; / :: j
