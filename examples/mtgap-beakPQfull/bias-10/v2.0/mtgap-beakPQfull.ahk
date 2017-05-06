/*
From  (../../../qwertyFull.txt)
~ ! @ # $ % ^ & * ( ) _ +
Q W E R T Y U I O P { } |
A S D F G H J K L : "
Z X C V B N M < > ?

` 1 2 3 4 5 6 7 8 9 0 - =
q w e r t y u i o p [ ] \
a s d f g h j k l ; '
z x c v b n m , . /

To  (kbd.txt)
Z < > [ ] # ~ @ { } % | ^
V C D F * \ U O L + J Q `
W S T H B = A E R Y &
G M N P X ? I " K !

z 1 2 3 4 5 6 7 8 9 0 : /
v c d f ) ; u o l _ j q $
w s t h b , a e r y (
g m n p x - i . k '

*/

#Include includes.ahk

*sc029::sc02c			; ` :: z
+sc002::+sc033			; ! :: <
 sc002::sc002			; 1 :: 1
+sc003::+sc034			; @ :: >
 sc003::sc003			; 2 :: 2
+sc004::Send {sc01a}	; # :: [
 sc004::sc004			; 3 :: 3
+sc005::Send {sc01b}	; $ :: ]
 sc005::sc005			; 4 :: 4
+sc006::+sc004			; % :: #
 sc006::sc006			; 5 :: 5
+sc007::+sc029			; ^ :: ~
 sc007::sc007			; 6 :: 6
+sc008::+sc003			; & :: @
 sc008::sc008			; 7 :: 7
+sc009::+sc01a			; * :: {
 sc009::sc009			; 8 :: 8
+sc00a::+sc01b			; ( :: }
 sc00a::sc00a			; 9 :: 9
+sc00b::+sc006			; ) :: %
 sc00b::sc00b			; 0 :: 0
+sc00c::+sc02b			; _ :: |
 sc00c::+sc027			; - :: :
+sc00d::+sc007			; + :: ^
 sc00d::sc035			; = :: /
*sc010::sc02f			; q :: v
*sc011::sc02e			; w :: c
*sc012::sc020			; e :: d
*sc013::sc021			; r :: f
+sc014::+sc009			; T :: *
 sc014::+sc00b			; t :: )
+sc015::Send {sc02b}	; Y :: \
 sc015::sc027			; y :: ;
*sc017::sc018			; i :: o
*sc018::sc026			; o :: l
+sc019::+sc00d			; P :: +
 sc019::+sc00c			; p :: _
*sc01a::sc024			; [ :: j
*sc01b::sc010			; ] :: q
+sc02b::Send {sc029}	; | :: `
 sc02b::+sc005			; \ :: $
*sc01e::sc011			; a :: w
*sc020::sc014			; d :: t
*sc021::sc023			; f :: h
*sc022::sc030			; g :: b
+sc023::Send {sc00d}	; H :: =
 sc023::sc033			; h :: ,
*sc024::sc01e			; j :: a
*sc025::sc012			; k :: e
*sc026::sc013			; l :: r
*sc027::sc015			; ; :: y
+sc028::+sc008			; " :: &
 sc028::+sc00a			; ' :: (
*sc02c::sc022			; z :: g
*sc02d::sc032			; x :: m
*sc02e::sc031			; c :: n
*sc02f::sc019			; v :: p
*sc030::sc02d			; b :: x
+sc031::+sc035			; N :: ?
 sc031::sc00c			; n :: -
*sc032::sc017			; m :: i
+sc033::+sc028			; < :: "
 sc033::sc034			; , :: .
*sc034::sc025			; . :: k
+sc035::+sc002			; ? :: !
 sc035::sc028			; / :: '
