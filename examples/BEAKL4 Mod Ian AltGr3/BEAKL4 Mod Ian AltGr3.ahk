/*
From  (fromQwerty.txt)
Q W E R T Y U I O P {
A S D F G H J K L : "
Z X C V B N M < > ?

q w e r t y u i o p [
a s d f g h j k l ; '
z x c v b n m , . /

To  (kbd.txt)
K Y O % @ f c l p q z
H I E A U D S T N R V
J ~ | ` @ W G M B X

k y o / ! f c l p q z
h i e a u d s t n r v
j ? | ( ) w g m b x

*/

#Include includes.ahk


*sc010::sc025			; q :: k
*sc011::sc015			; w :: y
*sc012::sc018			; e :: o
+sc013::+sc006			; R :: %
 sc013::sc035			; r :: /
+sc014::+sc003			; T :: @
 sc014::+sc002			; t :: !
*sc015::sc021			; y :: f
*sc016::sc02e			; u :: c
*sc017::sc026			; i :: l
*sc018::sc019			; o :: p
*sc019::sc010			; p :: q
*sc01a::sc02c			; [ :: z
*sc01e::sc023			; a :: h
*sc01f::sc017			; s :: i
*sc020::sc012			; d :: e
*sc021::sc01e			; f :: a
*sc022::sc016			; g :: u
*sc023::sc020			; h :: d
*sc024::sc01f			; j :: s
*sc025::sc014			; k :: t
*sc026::sc031			; l :: n
*sc027::sc013			; ; :: r
*sc028::sc02f			; ' :: v
*sc02c::sc024			; z :: j
+sc02d::+sc029			; X :: ~
 sc02d::+sc035			; x :: ?
+sc02e::+sc02b			; C :: |
 sc02e::+sc02b			; c :: |
+sc02f::Send {sc029}	; V :: `
 sc02f::+sc00a			; v :: (
+sc030::+sc003			; B :: @
 sc030::+sc00b			; b :: )
*sc031::sc011			; n :: w
*sc032::sc022			; m :: g
*sc033::sc032			; , :: m
*sc034::sc030			; . :: b
*sc035::sc02d			; / :: x
