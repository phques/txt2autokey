/*
From  (../../qwertyFull.txt)
~ ! @ # $ % ^ & * ( ) _ +
Q W E R T Y U I O P { } |
A S D F G H J K L : "
Z X C V B N M < > ?

` 1 2 3 4 5 6 7 8 9 0 - =
q w e r t y u i o p [ ] \
a s d f g h j k l ; '
z x c v b n m , . /

To  (kbd.txt)
Q [ ] * + # ^ % { } | J `
X L N D V ! U O P @ $ & ~
B R S T C : A E H K ?
F W M G < > I = Y Z

q 1 2 3 4 5 6 7 8 9 0 j /
x l n d v ; u o p _ ( ) \
b r s t c , a e h k '
f w m g " - i . y z

*/

#Include includes.ahk

*sc029::sc010			; ` :: q
+sc002::Send {sc01a}	; ! :: [
 sc002::sc002			; 1 :: 1
+sc003::Send {sc01b}	; @ :: ]
 sc003::sc003			; 2 :: 2
+sc004::+sc009			; # :: *
 sc004::sc004			; 3 :: 3
+sc005::+sc00d			; $ :: +
 sc005::sc005			; 4 :: 4
+sc006::+sc004			; % :: #
 sc006::sc006			; 5 :: 5
+sc008::+sc006			; & :: %
 sc008::sc008			; 7 :: 7
+sc009::+sc01a			; * :: {
 sc009::sc009			; 8 :: 8
+sc00a::+sc01b			; ( :: }
 sc00a::sc00a			; 9 :: 9
+sc00b::+sc02b			; ) :: |
 sc00b::sc00b			; 0 :: 0
*sc00c::sc024			; - :: j
+sc00d::Send {sc029}	; + :: `
 sc00d::sc035			; = :: /
*sc010::sc02d			; q :: x
*sc011::sc026			; w :: l
*sc012::sc031			; e :: n
*sc013::sc020			; r :: d
*sc014::sc02f			; t :: v
+sc015::+sc002			; Y :: !
 sc015::sc027			; y :: ;
*sc017::sc018			; i :: o
*sc018::sc019			; o :: p
+sc019::+sc003			; P :: @
 sc019::+sc00c			; p :: _
+sc01a::+sc005			; { :: $
 sc01a::+sc00a			; [ :: (
+sc01b::+sc008			; } :: &
 sc01b::+sc00b			; ] :: )
+sc02b::+sc029			; | :: ~
 sc02b::sc02b			; \ :: \
*sc01e::sc030			; a :: b
*sc01f::sc013			; s :: r
*sc020::sc01f			; d :: s
*sc021::sc014			; f :: t
*sc022::sc02e			; g :: c
+sc023::+sc027			; H :: :
 sc023::sc033			; h :: ,
*sc024::sc01e			; j :: a
*sc025::sc012			; k :: e
*sc026::sc023			; l :: h
*sc027::sc025			; ; :: k
+sc028::+sc035			; " :: ?
 sc028::sc028			; ' :: '
*sc02c::sc021			; z :: f
*sc02d::sc011			; x :: w
*sc02e::sc032			; c :: m
*sc02f::sc022			; v :: g
+sc030::+sc033			; B :: <
 sc030::+sc028			; b :: "
+sc031::+sc034			; N :: >
 sc031::sc00c			; n :: -
*sc032::sc017			; m :: i
+sc033::Send {sc00d}	; < :: =
 sc033::sc034			; , :: .
*sc034::sc015			; . :: y
*sc035::sc02c			; / :: z
