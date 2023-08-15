PlayerMove:

//move the sprite in x direction
playerx=playerx+GetDirectionX()*12

//check if player is at left edge
if playerx<0
	playerx=0
endif

//check if player is at right edge

if playerx>GetVirtualWidth()-GetSpriteWidth(1)
	playerx=GetVirtualWidth()-GetSpriteWidth(1)
endif

SetSpritePosition(1,playerx,playery)

return
