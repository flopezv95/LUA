-- Escribe codigo
require "library"
prepareWindow()

creature = drawCreature(layer, "griphon", 256, 256)
creatureSizeX, creatureSizeY = getCreatureSize("griphon")
mousePositionX = 0
mousePositionY = 0
maxVelocityX = 350
maxVelocityY = 350
velocityX = maxVelocityX
velocityY = 0
changes = 0
gameOver = false

function onUpdate(seconds)
    creaturePositionX, creaturePositionY = getPropPosition(creature)
    -- Empieza tu código para mover a la criatura
     creaturePositionX = creaturePositionX + velocityX*seconds
     creaturePositionY = creaturePositionY + velocityY*seconds
    -- Termina tu código
    setPropPosition(creature, creaturePositionX, creaturePositionY)
    if ((creaturePositionX + creatureSizeX) < 0  or creaturePositionX > 1024 or (creaturePositionY + creatureSizeY) < 0 or creaturePositionY > 768) and gameOver~= true  then
        gameOver = true
    end
end

function onClickLeft(down)
    if down then
        print("Clicked Left")
        creaturePositionX, creaturePositionY = getPropPosition(creature)
        -- Escribe tu código aqui para botón izquierdo ratón
        if gameOver ~= true then
        changes =  math.random(1, 4)
        changeDirection(changes)
        end
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

