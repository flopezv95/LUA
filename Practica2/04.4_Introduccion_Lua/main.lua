-- Escribe codigo
require "library"
prepareWindow()

mousePositionX = nil
mousePositionY = nil

-- Define tus variables globales
creatureSizeX, creatureSizeY = getCreatureSize("griphon")
CreaturesInTheGame = 5 
creaturesGame = {}
creaturesGame.creature1 = {creature = 0, health = 25}
creaturesGame.creature2 = {creature = 0, health = 25}
creaturesGame.creature3 = {creature = 0, health = 25}
creaturesGame.creature4 = {creature = 0, health = 25}
creaturesGame.creature5 = {creature = 0, health = 25}
creaturePositionX1,creaturePositionY1,creaturePositionX2, creaturePositionY2 = 0,0,0,0
creaturePositionX3, creaturePositionY3,creaturePositionX4, creaturePositionY4 = 0,0,0,0
creaturePositionX5, creaturePositionY5 = 0,0
 
-- Termina tu definicion de variables

function onUpdate(seconds)
    for num = 1, CreaturesInTheGame do 
         if creaturesGame["creature"..num].health == 0 then
            removeCreature(creaturesGame["creature"..num].creature) 
            creaturesGame["creature"..num].creature = 0
            creaturesGame["creature"..num].health = 25
         end
    end 
end

function onClickLeft(down)
    print("Clicked Left")
    if not down then
        -- Escribe tu código para el botón izquierdo
        if  creaturesGame["creature1"].creature == 0 then
            creaturesGame["creature1"].creature =addCreature("griphon", (mousePositionX - (creatureSizeX/2)) , (mousePositionY - (creatureSizeY/2)))
            creaturePositionX1, creaturePositionY1 = getPropPosition(creaturesGame["creature1"].creature)
        elseif creaturesGame["creature2"].creature == 0 then
            creaturesGame["creature2"].creature =addCreature("griphon", (mousePositionX - (creatureSizeX/2)) , (mousePositionY - (creatureSizeY/2)))
            creaturePositionX2, creaturePositionY2 = getPropPosition(creaturesGame["creature2"].creature)
        elseif creaturesGame["creature3"].creature == 0 then
            creaturesGame["creature3"].creature =addCreature("griphon", (mousePositionX - (creatureSizeX/2)) , (mousePositionY - (creatureSizeY/2)))
            creaturePositionX3, creaturePositionY3 = getPropPosition(creaturesGame["creature3"].creature)
        elseif creaturesGame["creature4"].creature == 0 then
            creaturesGame["creature4"].creature =addCreature("griphon", (mousePositionX - (creatureSizeX/2)) , (mousePositionY - (creatureSizeY/2)))
            creaturePositionX4, creaturePositionY4 = getPropPosition(creaturesGame["creature4"].creature)
        elseif creaturesGame["creature5"].creature == 0 then
            creaturesGame["creature5"].creature =addCreature("griphon", (mousePositionX - (creatureSizeX/2)) , (mousePositionY - (creatureSizeY/2)))
            creaturePositionX5, creaturePositionY5 = getPropPosition(creaturesGame["creature5"].creature)
        end
        -- Termina tu código
    end
end

function onClickRight(down)
    print("Clicked Right")
    if not down then
        -- Escribe tu código para el botón derecho
        if creaturePositionX1 < mousePositionX and (creaturePositionX1 +creatureSizeX) > mousePositionX and creaturePositionY1 < mousePositionY and (creaturePositionY1 +creatureSizeY) > mousePositionY then
            creaturesGame["creature1"].health = creaturesGame["creature1"].health - 5;
        elseif creaturePositionX2 < mousePositionX and (creaturePositionX2 + creatureSizeX) > mousePositionX and creaturePositionY2 < mousePositionY and (creaturePositionY2 + creatureSizeY) > mousePositionY  then
            creaturesGame["creature2"].health = creaturesGame["creature2"].health - 5;
        elseif creaturePositionX3 < mousePositionX and (creaturePositionX3 +creatureSizeX) > mousePositionX and creaturePositionY3 < mousePositionY and (creaturePositionY3 + creatureSizeY) > mousePositionY then
            creaturesGame["creature3"].health = creaturesGame["creature3"].health - 5;
        elseif creaturePositionX4 < mousePositionX and (creaturePositionX4 +creatureSizeX) > mousePositionX and creaturePositionY4 < mousePositionY and (creaturePositionY4 + creatureSizeY) > mousePositionY then
            creaturesGame["creature4"].health = creaturesGame["creature4"].health - 5;
        elseif creaturePositionX5 < mousePositionX and (creaturePositionX5 +creatureSizeX) > mousePositionX and creaturePositionY5 < mousePositionY and (creaturePositionY5 + creatureSizeY) > mousePositionY then
            creaturesGame["creature5"].health = creaturesGame["creature5"].health - 5;
        end
        -- Termina tu código
    end
end

function onMouseMove(posX, posY)
    mousePositionX = posX
    mousePositionY = posY
    --print("Mouse Moved to " .. posX .. ","..posY)
end

function onKeyPress(key, down)
    print("Key pressed: "..key)
end



callbackConfiguration(onClickLeft, onClickRight, onMouseMove, onKeyPress)
mainLoop()

