//do
//	for i=1 to 10
//		Print("Hello, World! "+str(i))
//	next i
//	sync()
//loop 

SetVirtualResolution(1024,768)

playerx as float
playery as float
lazerx as float = -100
lazery as float
lazer_fired = 0


#include "Loader.agc"
#include "PlayerMove.agc"
#include "PlayerShoots.agc"
#include "Sounds.agc"

//load sprites and sounds
Gosub Loader
Gosub Load_sounds

//Sets sprite to top most layer

SetJoystickScreenPosition(1,512,380)
sx=512
sy=380

do
	Gosub PlayerMove
	Gosub PlayerShoots
	sync()
loop
