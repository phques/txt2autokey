/*
From  (../../qwertyMain32.txt)
Q W E R T Y U I O P {
A S D F G H J K L : "
Z X C V B N M < > ?

q w e r t y u i o p [
a s d f g h j k l ; '
z x c v b n m , . /

To  (kbd.txt)
K W O B L H P R F G ~
x y u c j k h r w b &
[ { ( < + _ > ) } ]

V E A I M D S T C N `
i o e a . m t Sp n s z
8 4 0 2 6 9 3 1 5 7

*/

#Include includes.ahk

+sc010::+sc025			; Q :: K
 sc010::+sc02f			; q :: V
+sc011::+sc011			; W :: W
 sc011::+sc012			; w :: E
+sc012::+sc018			; E :: O
 sc012::+sc01e			; e :: A
+sc013::+sc030			; R :: B
 sc013::+sc017			; r :: I
+sc014::+sc026			; T :: L
 sc014::+sc032			; t :: M
+sc015::+sc023			; Y :: H
 sc015::+sc020			; y :: D
+sc016::+sc019			; U :: P
 sc016::+sc01f			; u :: S
+sc017::+sc013			; I :: R
 sc017::+sc014			; i :: T
+sc018::+sc021			; O :: F
 sc018::+sc02e			; o :: C
+sc019::+sc022			; P :: G
 sc019::+sc031			; p :: N
*sc01a::sc029			; [ :: `
+sc01e::Send {sc02d}	; A :: x
 sc01e::sc017			; a :: i
+sc01f::Send {sc015}	; S :: y
 sc01f::sc018			; s :: o
+sc020::Send {sc016}	; D :: u
 sc020::sc012			; d :: e
+sc021::Send {sc02e}	; F :: c
 sc021::sc01e			; f :: a
+sc022::Send {sc024}	; G :: j
 sc022::sc034			; g :: .
+sc023::Send {sc025}	; H :: k
 sc023::sc032			; h :: m
+sc024::Send {sc023}	; J :: h
 sc024::sc014			; j :: t
+sc025::Send {sc013}	; K :: r
 sc025::Space			; k :: Space (manually changed here)
+sc026::Send {sc011}	; L :: w
 sc026::sc031			; l :: n
+sc027::Send {sc030}	; : :: b
 sc027::sc01f			; ; :: s
+sc028::+sc008			; " :: &
 sc028::sc02c			; ' :: z
+sc02c::Send {sc01a}	; Z :: [
 sc02c::sc009			; z :: 8
+sc02d::+sc01a			; X :: {
 sc02d::sc005			; x :: 4
+sc02e::+sc00a			; C :: (
 sc02e::sc00b			; c :: 0
+sc02f::+sc033			; V :: <
 sc02f::sc003			; v :: 2
+sc030::+sc00d			; B :: +
 sc030::sc007			; b :: 6
+sc031::+sc00c			; N :: _
 sc031::sc00a			; n :: 9
+sc032::+sc034			; M :: >
 sc032::sc004			; m :: 3
+sc033::+sc00b			; < :: )
 sc033::sc002			; , :: 1
+sc034::+sc01b			; > :: }
 sc034::sc006			; . :: 5
+sc035::Send {sc01b}	; ? :: ]
 sc035::sc008			; / :: 7
