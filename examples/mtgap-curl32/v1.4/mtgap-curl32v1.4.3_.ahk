/*
From  (../../qwertyMain32.txt)
Q W E R T Y U I O P {
A S D F G H J K L : "
Z X C V B N M < > ?

q w e r t y u i o p [
a s d f g h j k l ; '
z x c v b n m , . /

To  (kbd.txt)
# U O F ¬ © M D G Q Z
A I E N Y V H T S R W
\ | C P ^ X L K B J

' u o f ? @ m d g q z
a i e n y v h t s r w
_ $ c p / x l k b j

*/

#Include includes.ahk

+sc010::+sc004			; Q :: #
 sc010::sc028			; q :: '
*sc011::sc016			; w :: u
*sc012::sc018			; e :: o
*sc013::sc021			; r :: f
+sc014::Send {sc000}	; T :: Â¬
 sc014::+sc035			; t :: ?
+sc015::Send {sc000}	; Y :: Â©
 sc015::+sc003			; y :: @
*sc016::sc032			; u :: m
*sc017::sc020			; i :: d
*sc018::sc022			; o :: g
*sc019::sc010			; p :: q
*sc01a::sc02c			; [ :: z
*sc01f::sc017			; s :: i
*sc020::sc012			; d :: e
*sc021::sc031			; f :: n
*sc022::sc015			; g :: y
*sc023::sc02f			; h :: v
*sc024::sc023			; j :: h
*sc025::sc014			; k :: t
*sc026::sc01f			; l :: s
*sc027::sc013			; ; :: r
*sc028::sc011			; ' :: w
+sc02c::Send {sc02b}	; Z :: \
 sc02c::+sc00c			; z :: _
+sc02d::+sc02b			; X :: |
 sc02d::+sc005			; x :: $
*sc02f::sc019			; v :: p
+sc030::+sc007			; B :: ^
 sc030::sc035			; b :: /
*sc031::sc02d			; n :: x
*sc032::sc026			; m :: l
*sc033::sc025			; , :: k
*sc034::sc030			; . :: b
*sc035::sc024			; / :: j
