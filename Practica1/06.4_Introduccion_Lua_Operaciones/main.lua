-- Escribe codigo
require "library"
prepareWindow()

pointA_X = 0
pointA_Y = 0
pointB_X = 0
pointB_Y = 0

creature = drawCreature(layer, "griphon", 256, 256)
pointA = drawCreature(layer, "blue_pin", pointA_X, pointA_Y)
pointB = drawCreature(layer, "green_pin", pointB_X, pointB_Y)

mousePositionX = nil
mousePositionY = nil
positionAIsDefine = false
positionBIsDefine = false

function onUpdate(seconds)
    creaturePositionX, creaturePositionY = getPropPosition(creature)
    velocidadLinealX,velocidadLinealY = 0
    -- Empieza tu código
     if positionAIsDefine and positionBIsDefine then
        distanceABX = pointB_X - pointA_X
        distanceABY = pointB_Y - pointA_Y
        res = math.sqrt((math.abs(distanceABX))+ (math.abs(distanceABY)))
        velocidadLinealX = distanceABX / res
        velocidadLinealY = distanceABY / res
        creaturePositionX = creaturePositionX + velocidadLinealX*seconds
        creaturePositionY = creaturePositionY + velocidadLinealY*seconds
     end
    -- Termina tu código
    setPropPosition(creature, creaturePositionX, creaturePositionY)
    setPropPosition(pointA, pointA_X, pointA_Y)
    setPropPosition(pointB, pointB_X, pointB_Y)
end

function onClickLeft(down)
    print("Clicked Left")
    if down then
        -- Escribe tu código para el botón izquierdo
        pointA_X = mousePositionX - 32
        pointA_Y = mousePositionY - 90
        positionAIsDefine = true
        -- Termina tu código
        setPropPosition(creature, pointA_X - 32, pointA_Y)
    end
end

function onClickRight(down)
    print("Clicked Right")
    if down then
        -- Escribe tu código para el botón derecho
        pointB_X = mousePositionX - 32
        pointB_Y = mousePositionY - 90
        positionBIsDefine = true
        -- Termina tu código
        setPropPosition(creature, pointA_X - 32, pointA_Y)
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

