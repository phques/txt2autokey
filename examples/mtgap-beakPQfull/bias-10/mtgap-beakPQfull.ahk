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
Z [ ] < > + ^ % { } | & `
X C N D V * U O L J $ @ ~
Y R S T P ; A E H G K
F W M B Q ? I = ! #

z 1 2 3 4 5 6 7 8 9 0 : /
x c n d v - u o l j ( ) \
y r s t p , a e h g k
f w m b q _ i " . '

*/

#Include includes.ahk

*sc029::sc02c			; ` :: z
+sc002::Send {sc01a}	; ! :: [
 sc002::sc002			; 1 :: 1
+sc003::Send {sc01b}	; @ :: ]
 sc003::sc003			; 2 :: 2
+sc004::+sc033			; # :: <
 sc004::sc004			; 3 :: 3
+sc005::+sc034			; $ :: >
 sc005::sc005			; 4 :: 4
+sc006::+sc00d			; % :: +
 sc006::sc006			; 5 :: 5
+sc008::+sc006			; & :: %
 sc008::sc008			; 7 :: 7
+sc009::+sc01a			; * :: {
 sc009::sc009			; 8 :: 8
+sc00a::+sc01b			; ( :: }
 sc00a::sc00a			; 9 :: 9
+sc00b::+sc02b			; ) :: |
 sc00b::sc00b			; 0 :: 0
+sc00c::+sc008			; _ :: &
 sc00c::+sc027			; - :: :
+sc00d::Send {sc029}	; + :: `
 sc00d::sc035			; = :: /
*sc010::sc02d			; q :: x
*sc011::sc02e			; w :: c
*sc012::sc031			; e :: n
*sc013::sc020			; r :: d
*sc014::sc02f			; t :: v
+sc015::+sc009			; Y :: *
 sc015::sc00c			; y :: -
*sc017::sc018			; i :: o
*sc018::sc026			; o :: l
*sc019::sc024			; p :: j
+sc01a::+sc005			; { :: $
 sc01a::+sc00a			; [ :: (
+sc01b::+sc003			; } :: @
 sc01b::+sc00b			; ] :: )
+sc02b::+sc029			; | :: ~
 sc02b::sc02b			; \ :: \
*sc01e::sc015			; a :: y
*sc01f::sc013			; s :: r
*sc020::sc01f			; d :: s
*sc021::sc014			; f :: t
*sc022::sc019			; g :: p
+sc023::Send {sc027}	; H :: ;
 sc023::sc033			; h :: ,
*sc024::sc01e			; j :: a
*sc025::sc012			; k :: e
*sc026::sc023			; l :: h
*sc027::sc022			; ; :: g
*sc028::sc025			; ' :: k
*sc02c::sc021			; z :: f
*sc02d::sc011			; x :: w
*sc02e::sc032			; c :: m
*sc02f::sc030			; v :: b
*sc030::sc010			; b :: q
+sc031::+sc035			; N :: ?
 sc031::+sc00c			; n :: _
*sc032::sc017			; m :: i
+sc033::Send {sc00d}	; < :: =
 sc033::+sc028			; , :: "
+sc034::+sc002			; > :: !
 sc034::sc034			; . :: .
+sc035::+sc004			; ? :: #
 sc035::sc028			; / :: '
