-- Escribe codigo
require "library"
require "xml"
prepareWindow()

mousePositionX = nil
mousePositionY = nil

-- Define tus variables globales
criature = readXML("criaturas.xml")

mapa = readXML("map.xml")
    
---- Fin de tus variables globales

-- Define tus funciones y llamadas
function addCreature(creatureName, posX, posY)
    for iIndex = 1, #criature do
      if creatureName == criature[iIndex][1][1] then
        addImage(criature[iIndex][2][1], posX, posY, tonumber(criature[iIndex][3][1][1]), tonumber(criature[iIndex][3][2][1]))
      end
    end
end

function drawMap(map)
    for iCreature = 1, #mapa do
        addCreature( mapa[iCreature][1][1], tonumber(mapa[iCreature][2][1][1]), tonumber(mapa[iCreature][2][2][1]))
    end
end

drawMap(mapa)
-- Fin de tus funciones

function onUpdate(seconds)
end

function onClickLeft(down)
    print("Clicked Left")
    if not down then
        -- Escribe tu código para el botón izquierdo
        -- Termina tu código
    end
end

function onClickRight(down)
    print("Clicked Right")
    if not down then
        -- Escribe tu código para el botón derecho
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

