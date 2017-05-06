/*
From  (../../qwertyMain30.txt)
Q W E R T Y U I O P
A S D F G H J K L :
Z X C V B N M < > ?

q w e r t y u i o p
a s d f g h j k l ;
z x c v b n m , . /

To  (kbd.txt)
K C D M X < > U P Q
R S T H V / A E N I
G B L F Z ? O Y W J

k c d m x : . u p q
r s t h v ; a e n i
g b l f z , o y w j

*/

#Include includes.ahk

*sc010::sc025			; q :: k
*sc011::sc02e			; w :: c
*sc012::sc020			; e :: d
*sc013::sc032			; r :: m
*sc014::sc02d			; t :: x
+sc015::+sc033			; Y :: <
 sc015::+sc027			; y :: :
*sc016::sc034			; u :: .
*sc017::sc016			; i :: u
*sc018::sc019			; o :: p
*sc019::sc010			; p :: q
*sc01e::sc013			; a :: r
*sc020::sc014			; d :: t
*sc021::sc023			; f :: h
*sc022::sc02f			; g :: v
+sc023::Send {sc035}	; H :: /
 sc023::sc027			; h :: ;
*sc024::sc01e			; j :: a
*sc025::sc012			; k :: e
*sc026::sc031			; l :: n
*sc027::sc017			; ; :: i
*sc02c::sc022			; z :: g
*sc02d::sc030			; x :: b
*sc02e::sc026			; c :: l
*sc02f::sc021			; v :: f
*sc030::sc02c			; b :: z
+sc031::+sc035			; N :: ?
 sc031::sc033			; n :: ,
*sc032::sc018			; m :: o
*sc033::sc015			; , :: y
*sc034::sc011			; . :: w
*sc035::sc024			; / :: j
