loader:
LoadImage(1,"foxsprite.png")
CreateSprite(1,1)

LoadImage(2,"background.png")
CreateSprite(2,2)

LoadImage(3,"lazersprite.png")
CreateSprite(3,3)

playerx=GetVirtualWidth()/2 - GetSpriteWidth(1)/2
playery=GetVirtualHeight()-GetSpriteHeight(1)

SetSpritePosition(1,playerx,playery)
//set lazersprite offscreen so that it is not seen but is still loaded
SetSpritePosition(3,-100,-100)
//sets sprite to top most layer
SetSpriteDepth(1,1)

return
