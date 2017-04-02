/*
From  (../../qwertyMain30.txt)
Q W E R T Y U I O P
A S D F G H J K L :
Z X C V B N M < > ?

q w e r t y u i o p
a s d f g h j k l ;
z x c v b n m , . /

To  (mtgap-curlRev3.txt)
X C D M K < > U P Q
R S T H V / A E N I
G B L F Z ? O Y W J

x c d m k : . u p q
r s t h v ; a e n i
g b l f z , o y w j

*/

#Include includes.ahk

q::x
w::c
e::d
r::m
t::k
+y::<
*y:::
u::.
i::u
o::p
p::q
a::r
d::t
f::h
g::v
+h::Send {/}
*h::`;
j::a
k::e
l::n
`;::i
z::g
x::b
c::l
v::f
b::z
+n::?
*n::,
m::o
,::y
.::w
/::j
