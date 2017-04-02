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

To  (mtgap-curlRev3Full.txt)
` 1 2 3 4 5 6 7 8 9 0 & ~
X C D M K @ ! U P Q [ ] |
R S T H V / A E N I '
G B L F Z ? O Y W J

$ * ( { < = % _ > } ) - ^
x c d m k : . u p q + # \
r s t h v ; a e n i "
g b l f z , o y w j

*/

#Include includes.ahk

+sc029::Send {sc029}	; ~ :: `
 sc029::+sc005			; ` :: $
+sc002::Send {sc002}	; ! :: 1
 sc002::+sc009			; 1 :: *
+sc003::Send {sc003}	; @ :: 2
 sc003::+sc00a			; 2 :: (
+sc004::Send {sc004}	; # :: 3
 sc004::+sc01a			; 3 :: {
+sc005::Send {sc005}	; $ :: 4
 sc005::+sc033			; 4 :: <
+sc006::Send {sc006}	; % :: 5
 sc006::sc00d			; 5 :: =
+sc007::Send {sc007}	; ^ :: 6
 sc007::+sc006			; 6 :: %
+sc008::Send {sc008}	; & :: 7
 sc008::+sc00c			; 7 :: _
+sc009::Send {sc009}	; * :: 8
 sc009::+sc034			; 8 :: >
+sc00a::Send {sc00a}	; ( :: 9
 sc00a::+sc01b			; 9 :: }
+sc00b::Send {sc00b}	; ) :: 0
 sc00b::+sc00b			; 0 :: )
+sc00c::+sc008			; _ :: &
 sc00c::sc00c			; - :: -
+sc00d::+sc029			; + :: ~
 sc00d::+sc007			; = :: ^
*sc010::sc02d			; q :: x
*sc011::sc02e			; w :: c
*sc012::sc020			; e :: d
*sc013::sc032			; r :: m
*sc014::sc025			; t :: k
+sc015::+sc003			; Y :: @
 sc015::+sc027			; y :: :
+sc016::+sc002			; U :: !
 sc016::sc034			; u :: .
*sc017::sc016			; i :: u
*sc018::sc019			; o :: p
*sc019::sc010			; p :: q
+sc01a::Send {sc01a}	; { :: [
 sc01a::+sc00d			; [ :: +
+sc01b::Send {sc01b}	; } :: ]
 sc01b::+sc004			; ] :: #
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
+sc028::Send {sc028}	; " :: '
 sc028::+sc028			; ' :: "
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
