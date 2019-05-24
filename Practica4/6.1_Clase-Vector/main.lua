-- Escribe codigo
require "library"
require "Vector2D"
prepareWindow()


myVector1 = VectorClass:new(2,3)
myVector2 = VectorClass:new(8,12)

function onUpdate(seconds)
    -- Empieza tu c�digo para mover a la criatura
    -- Termina tu c�digo
end

function onClickLeft(down)
    if down then
        print("Clicked Left")
        -- Escribe tu c�digo aqui para bot�n izquierdo rat�n
        --Implementacion operador +
        print("Implementacion operador +")
        myVectorResSum = myVector1 + myVector2
        print(myVectorResSum)
        --Implementacion operador -
        print("Implementacion operador -")
        myVectorResSubs = myVector1 - myVector2
        print(myVectorResSubs)
        --Implementacion producto Escalar
        print("Producto Escalar:")
        myVectorResProductEsc=myVector1:dotProduct(myVector2)
        print(myVectorResProductEsc)
        --Implementacion longuitud
        print("Longuitud:")
        myLength=myVector1:length()
        print(myLength)
        --Implementacion normalizacion
        print("Normalizada:")
        myNormalize=myVector1:normalize()
        print(myNormalize)
        --Implementacion normalizacion
        print("Multiplicacion por un escalar:")
        myResMultEsc=myVector1:multiplyScale(3)
        print(myResMultEsc)
        -- Termina tu c�digo
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

