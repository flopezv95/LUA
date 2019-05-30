-- Escribe codigo
require "library"
prepareWindow()

creature = drawCreature(layer, "griphon", 256, 256)
mousePositionX = 0
mousePositionY = 0
mouseOutOfTheCreaature = false
velocity = 30

function onUpdate(seconds)
    creaturePositionX, creaturePositionY = getPropPosition(creature)
    -- Empieza tu c�digo para mover a la criatura
     creaturePositionX = creaturePositionX + velocity*seconds
    -- Termina tu c�digo
    setPropPosition(creature, creaturePositionX, creaturePositionY)
end

function onClickLeft(down)
    print("Clicked Left")
end

function onClickRight(down)
    print("Clicked Right")
end

function onMouseMove(posX, posY)
    mousePositionX = posX
    mousePositionY = posY
    creatureSizeX, creatureSizeY = getCreatureSize("griphon")
    creaturePositionX, creaturePositionY = getPropPosition(creature)
    -- Escribe tu c�digo aqui para el movimiento del rat�n
    if creaturePositionX < mousePositionX and (creaturePositionX+creatureSizeX) > mousePositionX and creaturePositionY < mousePositionY and (creaturePositionY+creatureSizeY) > mousePositionY then
        if mouseOutOfTheCreaature then
            velocity = -velocity 
            mouseOutOfTheCreaature = false
        end
    else
       mouseOutOfTheCreaature = true
    end
    -- Termina tu c�digo
end

function onKeyPress(key, down)
    print("Key pressed: "..key)
end



callbackConfiguration(onClickLeft, onClickRight, onMouseMove, onKeyPress)
mainLoop()

