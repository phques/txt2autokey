/*
From  (../../qwertyMain32.txt)
Q W E R T Y U I O P {
A S D F G H J K L : "
Z X C V B N M < > ?

q w e r t y u i o p [
a s d f g h j k l ; '
z x c v b n m , . /

To  (kbdSec.txt)
W S T H X c U O P J Q
N G F M R K A E C I @
V B L D Z # Y | ^ ¬

w s t h x $ u o p j q
n g f m r k a e c i _
v b l d z ' y / ? \

*/

#Include includes.ahk

*sc010::sc011			; q :: w
*sc011::sc01f			; w :: s
*sc012::sc014			; e :: t
*sc013::sc023			; r :: h
*sc014::sc02d			; t :: x
+sc015::Send {sc02e}	; Y :: c
 sc015::+sc005			; y :: $
*sc017::sc018			; i :: o
*sc018::sc019			; o :: p
*sc019::sc024			; p :: j
*sc01a::sc010			; [ :: q
*sc01e::sc031			; a :: n
*sc01f::sc022			; s :: g
*sc020::sc021			; d :: f
*sc021::sc032			; f :: m
*sc022::sc013			; g :: r
*sc023::sc025			; h :: k
*sc024::sc01e			; j :: a
*sc025::sc012			; k :: e
*sc026::sc02e			; l :: c
*sc027::sc017			; ; :: i
+sc028::+sc003			; " :: @
 sc028::+sc00c			; ' :: _
*sc02c::sc02f			; z :: v
*sc02d::sc030			; x :: b
*sc02e::sc026			; c :: l
*sc02f::sc020			; v :: d
*sc030::sc02c			; b :: z
+sc031::+sc004			; N :: #
 sc031::sc028			; n :: '
*sc032::sc015			; m :: y
+sc033::+sc02b			; < :: |
 sc033::sc035			; , :: /
+sc034::+sc007			; > :: ^
 sc034::+sc035			; . :: ?
+sc035::Send {sc000}	; ? :: Â¬
 sc035::sc02b			; / :: \
