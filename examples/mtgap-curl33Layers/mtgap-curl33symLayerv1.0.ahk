/*
2017-05-22
v1.0

curlaz32, all symbols, no digits
try to remove costs that make no more sense here !

setksize curlaz32
use ~`!@#$%^&*()_+-=[]\{}|;':",./<>?~`!@#$%^&*()_+-=[]\{}|;':",./<>?
set keepShiftPairLetters 0
set keepShiftPairSpace 0
set keepShiftPairOther 1
set outRoll 0
set inRoll 0
set sameHand 0
set sameFingerP 0
set sameFingerR 0
set sameFingerM 0
set sameFingerI 0
set rowChangeUp 0
set rowChangeDown 0
set handWarp 0
set handSmooth 0
set homeJump 0
set homeJumpIndex 0
set doubleJump 0
set toCenter 0
set toOutside 0

keep distance default, to assign more common chars to easier keys ?
(set distance 0)


Hands: 49% 50%
Fingers: 5.0% 8.0% 25% 11% 0.00% 0.00% 13% 22% 9.0% 7.0%

 |  /  {  !  %   ~  *  }  :  &  ^
 (  )  ,  -  [   ]  "  .  '  _  $
 ?  #  =  \  `   +  ;  <  >  @

 |  /  {  !  %   ~  *  }  :  &  ^
 (  )  ,  -  [   ]  "  .  '  _  $
 ?  #  =  \  `   +  ;  <  >  @

Fitness:       1369967
Distance:      486712
Finger work:   29430
Inward rolls:  0.00%
Outward rolls: 0.00%
Same hand:     49.36%
Same finger:   0.00%
Row change:    6.48%
Home jump:     0.00%
Ring jump:     0.16%
To center:     0.00%
To outside:    0.00%

*/

; -- symbols layer --

#include ../common/layers.ahk
#include ../common/qwertyMasks.ahk

CreateSymbolsLayer(layerId, layerAccessKey, blockLayerAccessKey)
{ 
	layer := ""
	 . ' |  /  {  ! `%   ~  *  }  :  &  ^ '
	 . ' (  )  ,  -  [   ]  "  . `'  _  $ '
	 . ' ?  #  =  \ ``   + `;  <  >  @ '

	CreateLayer(layerId, layerAccessKey, blockLayerAccessKey)
	AddMappings(layerId, qwertyMask32, layer)
}
