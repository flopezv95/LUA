-- Escribe codigo
require "library"
require "Enemy"
require "ScapeEnemy"
prepareWindow()


myEnemy1 = EnemyClass:new("griphon",100,100,50)
myEnemy1:drawEnemy()
myEnemy2 = EnemyScape:new("dragon",300,100,50)
myEnemy2:drawEnemy()
enemySizeX,enemySizeY = myEnemy1:getEnemySize()
enemySizeX2,enemySizeY2 = myEnemy2:getEnemySize()
enemyPositionX,enemyPositionY = myEnemy1:getEnemyPosition()

function onUpdate(seconds)
    -- Empieza tu código para mover a la criatura
    -- Termina tu código
end

function onClickLeft(down)
    if down then
        print("Clicked Left")
        -- Escribe tu código aqui para botón izquierdo ratón
        enemyPositionX2,enemyPositionY2 = myEnemy2:getEnemyPosition()
        if mousePositionX > enemyPositionX and (mousePositionX) < enemyPositionX + enemySizeX then
            if mousePositionY > enemyPositionY and (mousePositionY) < enemyPositionY + enemySizeY then 
                myEnemy1:healthCare(10)
            end
        elseif mousePositionX > enemyPositionX2 and (mousePositionX) < enemyPositionX2 + enemySizeX2 then
            if mousePositionY > enemyPositionY2 and (mousePositionY) < enemyPositionY2 + enemySizeY2 then
                myEnemy2:healthCare(10)
                myEnemy2:scape()
            end
        end
        -- Termina tu código
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

