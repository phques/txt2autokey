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

To  (ktest.txt)
Q [ ] + $ @ ~ \ { } % J ^
X C D M B = U O L < > | `
Y S T H F / A E R P #
G W N V & : I * K Z

q 1 2 3 4 5 6 7 8 9 0 j !
x c d m b ( u o l , - ' ?
y s t h f . a e r p _
g w n v " ; i ) k z

*/

#Include includes.ahk

*sc029::sc010			; ` :: q
+sc002::Send {sc01a}	; ! :: [
 sc002::sc002			; 1 :: 1
+sc003::Send {sc01b}	; @ :: ]
 sc003::sc003			; 2 :: 2
+sc004::+sc00d			; # :: +
 sc004::sc004			; 3 :: 3
+sc006::+sc003			; % :: @
 sc006::sc006			; 5 :: 5
+sc007::+sc029			; ^ :: ~
 sc007::sc007			; 6 :: 6
+sc008::Send {sc02b}	; & :: \
 sc008::sc008			; 7 :: 7
+sc009::+sc01a			; * :: {
 sc009::sc009			; 8 :: 8
+sc00a::+sc01b			; ( :: }
 sc00a::sc00a			; 9 :: 9
+sc00b::+sc006			; ) :: %
 sc00b::sc00b			; 0 :: 0
*sc00c::sc024			; - :: j
+sc00d::+sc007			; + :: ^
 sc00d::+sc002			; = :: !
*sc010::sc02d			; q :: x
*sc011::sc02e			; w :: c
*sc012::sc020			; e :: d
*sc013::sc032			; r :: m
*sc014::sc030			; t :: b
+sc015::Send {sc00d}	; Y :: =
 sc015::+sc00a			; y :: (
*sc017::sc018			; i :: o
*sc018::sc026			; o :: l
*sc019::sc033			; p :: ,
+sc01a::+sc034			; { :: >
 sc01a::sc00c			; [ :: -
+sc01b::+sc02b			; } :: |
 sc01b::sc028			; ] :: '
+sc02b::Send {sc029}	; | :: `
 sc02b::+sc035			; \ :: ?
*sc01e::sc015			; a :: y
*sc020::sc014			; d :: t
*sc021::sc023			; f :: h
*sc022::sc021			; g :: f
+sc023::Send {sc035}	; H :: /
 sc023::sc034			; h :: .
*sc024::sc01e			; j :: a
*sc025::sc012			; k :: e
*sc026::sc013			; l :: r
*sc027::sc019			; ; :: p
+sc028::+sc004			; " :: #
 sc028::+sc00c			; ' :: _
*sc02c::sc022			; z :: g
*sc02d::sc011			; x :: w
*sc02e::sc031			; c :: n
+sc030::+sc008			; B :: &
 sc030::+sc028			; b :: "
*sc031::sc027			; n :: ;
*sc032::sc017			; m :: i
+sc033::+sc009			; < :: *
 sc033::+sc00b			; , :: )
*sc034::sc025			; . :: k
*sc035::sc02c			; / :: z
