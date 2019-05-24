-- Escribe codigo
require "library"
prepareWindow()

mousePositionX = nil
mousePositionY = nil

-- Define tus variables globales
    creatures = {grifo = "creatures/gryphon.png", mago = "creatures/mage.png", grunt = "creatures/grunt.png", peon = "creatures/peon.png", dragon="creatures/dragon.png" }
-- Fin de tus variables globales

-- Define tus funciones y llamadas
function addCreature(NameCreature)

    addImage(creatures[NameCreature],100,100)

end
-- Fin de tus funciones

addCreature("dragon")


function onUpdate(seconds)
end

function onClickLeft(down)
    print("Clicked Left")
    if not down then
        -- Escribe tu c�digo para el bot�n izquierdo
        -- Termina tu c�digo
    end
end

function onClickRight(down)
    print("Clicked Right")
    if not down then
        -- Escribe tu c�digo para el bot�n derecho
        -- Termina tu c�digo
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

