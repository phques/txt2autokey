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
Z [ ] { + ~ ^ \ } * % | &
< C D M B ? U O L > J Q `
Y S T H F ; A E R P @
G W N V X ! I = K #

z 1 2 3 4 5 6 7 8 9 0 : /
( c d m b - u o l ) j q $
y s t h f , a e r p '
g w n v x _ i . k "

*/

#Include includes.ahk

*sc029::sc02c			; ` :: z
+sc002::Send {sc01a}	; ! :: [
 sc002::sc002			; 1 :: 1
+sc003::Send {sc01b}	; @ :: ]
 sc003::sc003			; 2 :: 2
+sc004::+sc01a			; # :: {
 sc004::sc004			; 3 :: 3
+sc005::+sc00d			; $ :: +
 sc005::sc005			; 4 :: 4
+sc006::+sc029			; % :: ~
 sc006::sc006			; 5 :: 5
+sc008::Send {sc02b}	; & :: \
 sc008::sc008			; 7 :: 7
+sc009::+sc01b			; * :: }
 sc009::sc009			; 8 :: 8
+sc00a::+sc009			; ( :: *
 sc00a::sc00a			; 9 :: 9
+sc00b::+sc006			; ) :: %
 sc00b::sc00b			; 0 :: 0
+sc00c::+sc02b			; _ :: |
 sc00c::+sc027			; - :: :
+sc00d::+sc008			; + :: &
 sc00d::sc035			; = :: /
+sc010::+sc033			; Q :: <
 sc010::+sc00a			; q :: (
*sc011::sc02e			; w :: c
*sc012::sc020			; e :: d
*sc013::sc032			; r :: m
*sc014::sc030			; t :: b
+sc015::+sc035			; Y :: ?
 sc015::sc00c			; y :: -
*sc017::sc018			; i :: o
*sc018::sc026			; o :: l
+sc019::+sc034			; P :: >
 sc019::+sc00b			; p :: )
*sc01a::sc024			; [ :: j
*sc01b::sc010			; ] :: q
+sc02b::Send {sc029}	; | :: `
 sc02b::+sc005			; \ :: $
*sc01e::sc015			; a :: y
*sc020::sc014			; d :: t
*sc021::sc023			; f :: h
*sc022::sc021			; g :: f
+sc023::Send {sc027}	; H :: ;
 sc023::sc033			; h :: ,
*sc024::sc01e			; j :: a
*sc025::sc012			; k :: e
*sc026::sc013			; l :: r
*sc027::sc019			; ; :: p
+sc028::+sc003			; " :: @
 sc028::sc028			; ' :: '
*sc02c::sc022			; z :: g
*sc02d::sc011			; x :: w
*sc02e::sc031			; c :: n
*sc030::sc02d			; b :: x
+sc031::+sc002			; N :: !
 sc031::+sc00c			; n :: _
*sc032::sc017			; m :: i
+sc033::Send {sc00d}	; < :: =
 sc033::sc034			; , :: .
*sc034::sc025			; . :: k
+sc035::+sc004			; ? :: #
 sc035::+sc028			; / :: "
