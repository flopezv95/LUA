-- Escribe codigo
require "library"
prepareWindow()

mousePositionX = nil
mousePositionY = nil

-- Define tus variables globales
    creatures = {{creature = "creatures/gryphon.png"}, {creature = "creatures/mage.png"}, {creature = "creatures/grunt.png"}, {creature = "creatures/peon.png"}, {creature="creatures/dragon.png"} }
-- Fin de tus variables globales

-- Define tus funciones y llamadas
function addCreature()
    for iName=1, #creatures do 
      posY = math.random(50, 700)
      posX = math.random(50, 900)
      texture_name = creatures[iName].creature
      addImage(texture_name, posX, posY) 
      coroutine.yield() 
    end
end
-- Fin de tus funciones
co = coroutine.create(addCreature) 

function onUpdate(seconds)
end

function onClickLeft(down)
    print("Clicked Left")
    if not down then
        -- Escribe tu código para el botón izquierdo
        print("state of co is", coroutine.status(co))
        coroutine.resume(co)
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

