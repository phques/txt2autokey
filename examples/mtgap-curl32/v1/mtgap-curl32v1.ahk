/*
From  (../../qwertyMain32.txt)
Q W E R T Y U I O P {
A S D F G H J K L : "
Z X C V B N M < > ?

q w e r t y u i o p [
a s d f g h j k l ; '
z x c v b n m , . /

To  (kbd.txt)
@ P U % ` Q M D C X Z
I N E A # F H T S R W
Y ^ O K � V L B G J

$ p u ( ) q m d c x z
i n e a ! f h t s r w
y / o k ? v l b g j

*/

#Include includes.ahk

+sc010::+sc003			; Q :: @
 sc010::+sc005			; q :: $
*sc011::sc019			; w :: p
*sc012::sc016			; e :: u
+sc013::+sc006			; R :: %
 sc013::+sc00a			; r :: (
+sc014::Send {sc029}	; T :: `
 sc014::+sc00b			; t :: )
*sc015::sc010			; y :: q
*sc016::sc032			; u :: m
*sc017::sc020			; i :: d
*sc018::sc02e			; o :: c
*sc019::sc02d			; p :: x
*sc01a::sc02c			; [ :: z
*sc01e::sc017			; a :: i
*sc01f::sc031			; s :: n
*sc020::sc012			; d :: e
*sc021::sc01e			; f :: a
+sc022::+sc004			; G :: #
 sc022::+sc002			; g :: !
*sc023::sc021			; h :: f
*sc024::sc023			; j :: h
*sc025::sc014			; k :: t
*sc026::sc01f			; l :: s
*sc027::sc013			; ; :: r
*sc028::sc011			; ' :: w
*sc02c::sc015			; z :: y
+sc02d::+sc007			; X :: ^
 sc02d::sc035			; x :: /
*sc02e::sc018			; c :: o
*sc02f::sc025			; v :: k
+sc030::Send {sc000}	; B :: ©
 sc030::+sc035			; b :: ?
*sc031::sc02f			; n :: v
*sc032::sc026			; m :: l
*sc033::sc030			; , :: b
*sc034::sc022			; . :: g
*sc035::sc024			; / :: j
