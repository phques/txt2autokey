/*
From  (../../qwertyMain32.txt)
Q W E R T Y U I O P {
A S D F G H J K L : "
Z X C V B N M < > ?

q w e r t y u i o p [
a s d f g h j k l ; '
z x c v b n m , . /

To  (kbd.txt)
J Y U ` @ M D C P Q Z
I H A E O L T S N R V
| K \ ^ ` W G F B X

j y u ' ! m d c p q z
i h a e o l t s n r v
$ k 0 2 # w g f b x

*/

#Include includes.ahk

*sc010::sc024			; q :: j
*sc011::sc015			; w :: y
*sc012::sc016			; e :: u
+sc013::Send {U+00AC}	; R :: ¬
 sc013::sc028			; r :: '
+sc014::+sc003			; T :: @
 sc014::+sc002			; t :: !
*sc015::sc032			; y :: m
*sc016::sc020			; u :: d
*sc017::sc02e			; i :: c
*sc018::sc019			; o :: p
*sc019::sc010			; p :: q
*sc01a::sc02c			; [ :: z
*sc01e::sc017			; a :: i
*sc01f::sc023			; s :: h
*sc020::sc01e			; d :: a
*sc021::sc012			; f :: e
*sc022::sc018			; g :: o
*sc023::sc026			; h :: l
*sc024::sc014			; j :: t
*sc025::sc01f			; k :: s
*sc026::sc031			; l :: n
*sc027::sc013			; ; :: r
*sc028::sc02f			; ' :: v
+sc02c::+sc02b			; Z :: |
 sc02c::+sc005			; z :: $
*sc02d::sc025			; x :: k
+sc02e::Send {sc02b}	; C :: \
 sc02e::sc00b			; c :: 0
+sc02f::+sc007			; V :: ^
 sc02f::sc003			; v :: 2
+sc030::Send {U+00A9}	; B :: ©
 sc030::+sc004			; b :: #
*sc031::sc011			; n :: w
*sc032::sc022			; m :: g
*sc033::sc021			; , :: f
*sc034::sc030			; . :: b
*sc035::sc02d			; / :: x
