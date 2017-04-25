/*
From  (../../qwertyMain30.txt)
Q W E R T Y U I O P
A S D F G H J K L :
Z X C V B N M < > ?

q w e r t y u i o p
a s d f g h j k l ;
z x c v b n m , . /

To  (myOwn1_3imp.txt)
X B U P J < > D C K
A R I N Y Q E T S L
W ? H F Z / O M G V

x b u p j : . d c k
a r i n y q e t s l
w , h f z ; o m g v

*/

#Include includes.ahk

*sc010::sc02d			; q :: x
*sc011::sc030			; w :: b
*sc012::sc016			; e :: u
*sc013::sc019			; r :: p
*sc014::sc024			; t :: j
+sc015::+sc033			; Y :: <
 sc015::+sc027			; y :: :
*sc016::sc034			; u :: .
*sc017::sc020			; i :: d
*sc018::sc02e			; o :: c
*sc019::sc025			; p :: k
*sc01f::sc013			; s :: r
*sc020::sc017			; d :: i
*sc021::sc031			; f :: n
*sc022::sc015			; g :: y
*sc023::sc010			; h :: q
*sc024::sc012			; j :: e
*sc025::sc014			; k :: t
*sc026::sc01f			; l :: s
*sc027::sc026			; ; :: l
*sc02c::sc011			; z :: w
+sc02d::+sc035			; X :: ?
 sc02d::sc033			; x :: ,
*sc02e::sc023			; c :: h
*sc02f::sc021			; v :: f
*sc030::sc02c			; b :: z
+sc031::Send {sc035}	; N :: /
 sc031::sc027			; n :: ;
*sc032::sc018			; m :: o
*sc033::sc032			; , :: m
*sc034::sc022			; . :: g
*sc035::sc02f			; / :: v
