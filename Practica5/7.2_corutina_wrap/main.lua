-- Escribe codigo
require "library"
prepareWindow()

mousePositionX = nil
mousePositionY = nil

-- Define tus variables globales
    creatures = {
    {
        name = "grifo",
        life = 55,
    },
    {
        name = "grunt",
        life = 10,
    },
    {
        name = "mago",
        life = 25,
    },
    {
        name = "peon",
        life = 70,
    },
    {
        name = "dragon",
        life = 5,
    },
}
-- Fin de tus variables globales
function getData() 
    local datos = creatures
        for i = 1, #datos do 
            if datos[i].life > 50 then
                coroutine.yield(datos[i].name)
            end 
        end 
end
function datos() 
    return coroutine.wrap(getData) 
end
for d in datos() do 
    print("Creatures with the health > 50:", d) 
end

-- Define tus funciones y llamadas

-- Fin definicion funciones
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

