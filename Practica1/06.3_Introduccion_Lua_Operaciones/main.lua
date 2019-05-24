-- Escribe codigo
require "library"
window_layer = prepareWindow()
require "prepare"

player_health = 0 -- vida actual del personaje
max_player_health = 200 -- vida m�xima que puede tener el personaje

start_health_bar = 118 --Pixel en la dimensi�n horizontal donde comienza la barra de energ�a
end_health_bar = 222 --Pixel en la dimensi�n horizontal donde termina la barra de energ�a

function onUpdate(seconds)
    healthPositionX, healthPositionY = getPropPosition(health_prop)
    -- Empieza tu c�digo
    healthPositionX = (((player_health))/((max_player_health)/(end_health_bar-start_health_bar))) + 118
    -- Termina tu c�digo
    setPropPosition(health_prop, healthPositionX, healthPositionY)
end

function onClickLeft(down)
    print("Clicked Left")
    if down then
        -- Empieza tu c�digo para bot�n izquierdo
        if player_health >= max_player_health then
            player_health = max_player_health
        else
            player_health = player_health + 1
             print(player_health)
        end
        -- Termina tu c�digo para bot�n izquierdo
    end
end

function onClickRight(down)
    print("Clicked Right")
    if down then
        -- Empieza tu c�digo para bot�n derecho
         if player_health <= 0 then
            player_health = 0
        else
            player_health = player_health - 1
             print(player_health)
        end
        -- Termina tu c�digo para bot�n derecho
    end
end


function onMouseMove(posX, posY)
    --print("Mouse Moved to " .. posX .. ","..posY)
end

function onKeyPress(key, down)
    print("Key pressed: "..key)
end



callbackConfiguration(onClickLeft, onClickRight, onMouseMove, onKeyPress)
mainLoop()

