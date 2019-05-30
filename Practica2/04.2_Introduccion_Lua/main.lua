-- Escribe codigo
require "library"
prepareWindow()

creature = drawCreature(layer, "griphon", 256, 256)
mousePositionX = 0
mousePositionY = 0
maxVelocityX = 30
maxVelocityY = 30
velocityX = maxVelocityX
velocityY = 0
changes = 0

function onUpdate(seconds)
    creaturePositionX, creaturePositionY = getPropPosition(creature)
    -- Empieza tu código para mover a la criatura
    creaturePositionX = creaturePositionX + velocityX*seconds
    creaturePositionY = creaturePositionY + velocityY*seconds
    -- Termina tu código
    setPropPosition(creature, creaturePositionX, creaturePositionY)
end

function onClickLeft(down)
    if down then
        print("Clicked Left")
        creatureSizeX, creatureSizeY = getCreatureSize("griphon")
        creaturePositionX, creaturePositionY = getPropPosition(creature)
        -- Escribe tu código aqui para botón izquierdo ratón
        if changes >= 4 then
            changes = 0
        end
        changes = changes + 1
        changeDirection(changes)
        -- Termina tu código
    end
end

function changeDirection(times)
    if times == 1 then
        velocityX = -maxVelocityX
        velocityY = 0
    elseif times == 2 then
        velocityX = 0
        velocityY = -maxVelocityY
    elseif times == 3 then
        velocityX = maxVelocityX
        velocityY = 0
     elseif times == 4 then
        velocityX = 0
        velocityY = maxVelocityY
    end
end

function onClickRight(down)
    print("Clicked Right")
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

