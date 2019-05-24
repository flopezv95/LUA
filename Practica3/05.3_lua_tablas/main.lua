-- Escribe codigo
require "library"
prepareWindow()

mousePositionX = nil
mousePositionY = nil

-- Define tus variables globales
    creatures = {grifo = "creatures/gryphon.png", mago = "creatures/mage.png", grunt = "creatures/grunt.png", peon = "creatures/peon.png", dragon="creatures/dragon.png" }
    mapa = {
    {
        name = "grifo",
        position = { x = 300, y = 100},
    },
    {
        name = "grunt",
        position = { x = 50, y = 100},
    },
    {
        name = "mago",
        position = { x = 200, y = 200},
    },
    {
        name = "peon",
        position = { x = 400, y = 100},
    },
    {
        name = "dragon",
        position = { x = 400, y = 400},
    },
}
-- Fin de tus variables globales

-- Define tus funciones y llamadas
function addCreature(NameCreature, posXCreature, posYCreature)

    addImage(creatures[NameCreature], posXCreature, posYCreature)

end
-- Fin de tus funciones

function addCreature(creature_name, posX, posY)
    texture_name = creatures[creature_name]
    addImage(texture_name, posX, posY)
end

function drawMap(map)
    for iCreature = 1, #mapa do
        addCreature(mapa[iCreature].name, mapa[iCreature].position.x, mapa[iCreature].position.y)
    end
end


drawMap(mapa)

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

