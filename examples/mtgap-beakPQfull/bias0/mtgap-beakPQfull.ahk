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
| + [ $ \ ^ ~ { } ] % J Z
< Y O U = B D N L > Q @ `
G H E A ; M T S R P #
K * I ? & V C F W X

: 1 2 3 4 5 6 7 8 9 0 j z
( y o u - b d n l ) q / !
g h e a , m t s r p "
k ' i . _ v c f w x

*/

#Include includes.ahk

+sc029::+sc02b			; ~ :: |
 sc029::+sc027			; ` :: :
+sc002::+sc00d			; ! :: +
 sc002::sc002			; 1 :: 1
+sc003::Send {sc01a}	; @ :: [
 sc003::sc003			; 2 :: 2
+sc004::+sc005			; # :: $
 sc004::sc004			; 3 :: 3
+sc005::Send {sc02b}	; $ :: \
 sc005::sc005			; 4 :: 4
+sc006::+sc007			; % :: ^
 sc006::sc006			; 5 :: 5
+sc007::+sc029			; ^ :: ~
 sc007::sc007			; 6 :: 6
+sc008::+sc01a			; & :: {
 sc008::sc008			; 7 :: 7
+sc009::+sc01b			; * :: }
 sc009::sc009			; 8 :: 8
+sc00a::Send {sc01b}	; ( :: ]
 sc00a::sc00a			; 9 :: 9
+sc00b::+sc006			; ) :: %
 sc00b::sc00b			; 0 :: 0
*sc00c::sc024			; - :: j
*sc00d::sc02c			; = :: z
+sc010::+sc033			; Q :: <
 sc010::+sc00a			; q :: (
*sc011::sc015			; w :: y
*sc012::sc018			; e :: o
*sc013::sc016			; r :: u
+sc014::Send {sc00d}	; T :: =
 sc014::sc00c			; t :: -
*sc015::sc030			; y :: b
*sc016::sc020			; u :: d
*sc017::sc031			; i :: n
*sc018::sc026			; o :: l
+sc019::+sc034			; P :: >
 sc019::+sc00b			; p :: )
*sc01a::sc010			; [ :: q
+sc01b::+sc003			; } :: @
 sc01b::sc035			; ] :: /
+sc02b::Send {sc029}	; | :: `
 sc02b::+sc002			; \ :: !
*sc01e::sc022			; a :: g
*sc01f::sc023			; s :: h
*sc020::sc012			; d :: e
*sc021::sc01e			; f :: a
+sc022::Send {sc027}	; G :: ;
 sc022::sc033			; g :: ,
*sc023::sc032			; h :: m
*sc024::sc014			; j :: t
*sc025::sc01f			; k :: s
*sc026::sc013			; l :: r
*sc027::sc019			; ; :: p
+sc028::+sc004			; " :: #
 sc028::+sc028			; ' :: "
*sc02c::sc025			; z :: k
+sc02d::+sc009			; X :: *
 sc02d::sc028			; x :: '
*sc02e::sc017			; c :: i
+sc02f::+sc035			; V :: ?
 sc02f::sc034			; v :: .
+sc030::+sc008			; B :: &
 sc030::+sc00c			; b :: _
*sc031::sc02f			; n :: v
*sc032::sc02e			; m :: c
*sc033::sc021			; , :: f
*sc034::sc011			; . :: w
*sc035::sc02d			; / :: x
