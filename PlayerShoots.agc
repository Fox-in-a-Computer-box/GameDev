PlayerShoots:

//check if player has fired
if GetPointerPressed() =1 and lazer_fired=0
	playsound(lazer)
	lazer_fired=1
	//find midpoint of sprite then subtract half of lazersprites width then set as x value
	lazerx=GetSpriteX(1)+GetSpriteWidth(1)/2-GetSpriteWidth(3)/2
	lazery=GetSpriteY(1)-GetSpriteHeight(3) +30
endif

if lazer_fired=1
	lazery=lazery-12
endif

//if lazer is offscreen then hide it
if lazery<-GetSpriteHeight(3)
	lazer_fired = 0
endif

SetSpritePosition(3,lazerx,lazery)

return
