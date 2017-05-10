/*
From  (../../qwertyMain32.txt)
Q W E R T Y U I O P {
A S D F G H J K L : "
Z X C V B N M < > ?

q w e r t y u i o p [
a s d f g h j k l ; '
z x c v b n m , . /

To  (kbd.txt)
Q P U [ ] Z M D C K X
I N E A ? F H T S R W
Y / O < > V L B G J

q p u . ; z m d c k x
i n e a ' f h t s r w
y " o , : v l b g j

*/

#Include includes.ahk

*sc011::sc019			; w :: p
*sc012::sc016			; e :: u
+sc013::Send {sc01a}	; R :: [
 sc013::sc034			; r :: .
+sc014::Send {sc01b}	; T :: ]
 sc014::sc027			; t :: ;
*sc015::sc02c			; y :: z
*sc016::sc032			; u :: m
*sc017::sc020			; i :: d
*sc018::sc02e			; o :: c
*sc019::sc025			; p :: k
*sc01a::sc02d			; [ :: x
*sc01e::sc017			; a :: i
*sc01f::sc031			; s :: n
*sc020::sc012			; d :: e
*sc021::sc01e			; f :: a
+sc022::+sc035			; G :: ?
 sc022::sc028			; g :: '
*sc023::sc021			; h :: f
*sc024::sc023			; j :: h
*sc025::sc014			; k :: t
*sc026::sc01f			; l :: s
*sc027::sc013			; ; :: r
*sc028::sc011			; ' :: w
*sc02c::sc015			; z :: y
+sc02d::Send {sc035}	; X :: /
 sc02d::+sc028			; x :: "
*sc02e::sc018			; c :: o
*sc02f::sc033			; v :: ,
+sc030::+sc034			; B :: >
 sc030::+sc027			; b :: :
*sc031::sc02f			; n :: v
*sc032::sc026			; m :: l
*sc033::sc030			; , :: b
*sc034::sc022			; . :: g
*sc035::sc024			; / :: j
