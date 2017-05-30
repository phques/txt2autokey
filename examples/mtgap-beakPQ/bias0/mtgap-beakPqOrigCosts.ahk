/*
From  (../../common/qwertyMain30.txt)
Q W E R T Y U I O P
A S D F G H J K L :
Z X C V B N M < > ?

q w e r t y u i o p
a s d f g h j k l ;
z x c v b n m , . /

To  (kbd.txt)
X L N D V < U O P Q
B R S T M / A E H K
W F C G J ? I > Y Z

x l n d v : u o p q
b r s t m , a e h k
w f c g j ; i . y z

*/

#Include includes.ahk

*sc010::sc02d			; q :: x
*sc011::sc026			; w :: l
*sc012::sc031			; e :: n
*sc013::sc020			; r :: d
*sc014::sc02f			; t :: v
+sc015::+sc033			; Y :: <
 sc015::+sc027			; y :: :
*sc017::sc018			; i :: o
*sc018::sc019			; o :: p
*sc019::sc010			; p :: q
*sc01e::sc030			; a :: b
*sc01f::sc013			; s :: r
*sc020::sc01f			; d :: s
*sc021::sc014			; f :: t
*sc022::sc032			; g :: m
+sc023::Send {sc035}	; H :: /
 sc023::sc033			; h :: ,
*sc024::sc01e			; j :: a
*sc025::sc012			; k :: e
*sc026::sc023			; l :: h
*sc027::sc025			; ; :: k
*sc02c::sc011			; z :: w
*sc02d::sc021			; x :: f
*sc02f::sc022			; v :: g
*sc030::sc024			; b :: j
+sc031::+sc035			; N :: ?
 sc031::sc027			; n :: ;
*sc032::sc017			; m :: i
*sc033::sc034			; , :: .
*sc034::sc015			; . :: y
*sc035::sc02c			; / :: z
