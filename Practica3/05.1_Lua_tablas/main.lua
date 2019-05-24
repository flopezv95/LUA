-- Escribe codigo
require "library"
require "prepare"

-- Define tus variables globales
punto1 = {x = 10 , y = 10}
punto2 = {x = 50 , y = 10}
punto3 = {x = 10 , y = 50}
punto4 = {x = 50 , y = 50}
-- Termina tu definicion de variables

function pintarPunto(punto)
    -- Rellenar código para pintar un punto en la pantalla
    drawPoint(punto.x,punto.y)
    -- Fin de código
end

function pintarCuadrado(puntoUpLeft,puntoUpRigth,puntoDownLeft,puntoDownRigth)
    finish = true
    puntoProvisional = {x = puntoUpLeft.x , y = puntoUpLeft.y}
    while finish == true do
        if puntoProvisional.x< puntoUpRigth.x then
            pintarPunto(puntoProvisional)
            puntoProvisional.x =  puntoProvisional.x + 1
        else
            if puntoProvisional.y < puntoDownLeft.y then
                puntoProvisional.y =  puntoProvisional.y + 1
                puntoProvisional.x = puntoUpLeft.x
            else
               finish = false
            end
        end
    end
    finish = true
end

function onUpdate(seconds)
end

function onDraw()
    -- Empieza tu código, que debe emplear la funcion pintarPunto
    --pintarPunto(punto1)
            pintarCuadrado(punto1,punto2,punto3,punto4)
    -- Termina tu código
end



function onClickLeft(down)
    print("Clicked Left")
    if down then
    end
end

function onClickRight(down)
    print("Clicked Right")
    if down then
    end
end


function onMouseMove(posX, posY)
    --print("Mouse Moved to " .. posX .. ","..posY)
end

function onKeyPress(key, down)
    print("Key pressed: "..key)
end



callbackConfiguration(onClickLeft, onClickRight, onMouseMove, onKeyPress, onDraw, window_layer)
mainLoop()

