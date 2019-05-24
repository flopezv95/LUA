-- Escribe codigo
require "library"
seq = require "sequence"
window_layer, debug_layer = prepareWindow()

worldSizeX = 1024
worldSizeY = 768

mousePositionX = nil
mousePositionY = nil


-- Para usar la clase Sequence
my_sequence = seq.Sequence:new()
-- Define tus variables globales
myTable1 = addEntity("Image/table_chess.png", 100, 150,500,50)
myTable2 = addEntity("Image/table_chess2.png", 100, 150,500,50)
myTable3 = addEntity("Image/table_chess.png", 100, 150,500,50)
myTable4 = addEntity("Image/table_chess2.png", 100, 150,500,50)
myTable5 = addEntity("Image/table_chess.png", 100, 150,500,50)
myTable6 = addEntity("Image/table_chess2.png", 100, 150,500,50)
myTable7 = addEntity("Image/table_chess.png", 100, 150,500,50)
myTable8 = addEntity("Image/table_chess2.png", 100, 150,500,50)
rey = addEntity("Image/rey.png", 100, 150,65,65)
rey_noir = addEntity("Image/rey_noir.png", 100, 150,65,65)
reina = addEntity("Image/reina.png", 100, 150,65,65)
reina_noir = addEntity("Image/reina_noir.png", 100, 150,65,65)
alfil = addEntity("Image/alfil.png", 100, 150,65,65)
alfil_noir = addEntity("Image/alfil_noir.png", 100, 150,65,65)
alfil2 = addEntity("Image/alfil.png", 100, 150,65,65)
alfil_noir2 = addEntity("Image/alfil_noir.png", 100, 150,65,65)
caballo = addEntity("Image/caballo.png", 100, 150,65,65)
caballo_noir = addEntity("Image/caballo_noir.png", 100, 150,65,65)
caballo2 = addEntity("Image/caballo.png", 100, 150,65,65)
caballo_noir2 = addEntity("Image/caballo_noir.png", 100, 150,65,65)
torre = addEntity("Image/torre.png", 100, 150,65,65)
torre_noir = addEntity("Image/torre_noir.png", 100, 150,65,65)
torre2 = addEntity("Image/torre.png", 100, 150,65,65)
torre_noir2 = addEntity("Image/torre_noir.png", 100, 150,65,65)
peon = addEntity("Image/peon.png", 100, 150,65,65)
peon2 = addEntity("Image/peon.png", 100, 150,65,65)
peon3 = addEntity("Image/peon.png", 100, 150,65,65)
peon4 = addEntity("Image/peon.png", 100, 150,65,65)
peon5 = addEntity("Image/peon.png", 100, 150,65,65)
peon6 = addEntity("Image/peon.png", 100, 150,65,65)
peon7 = addEntity("Image/peon.png", 100, 150,65,65)
peon8 = addEntity("Image/peon.png", 100, 150,65,65)
peon_noir = addEntity("Image/peon_noir.png", 100, 150,65,65)
peon2_noir = addEntity("Image/peon_noir.png", 100, 150,65,65)
peon3_noir = addEntity("Image/peon_noir.png", 100, 150,65,65)
peon4_noir = addEntity("Image/peon_noir.png", 100, 150,65,65)
peon5_noir = addEntity("Image/peon_noir.png", 100, 150,65,65)
peon6_noir = addEntity("Image/peon_noir.png", 100, 150,65,65)
peon7_noir = addEntity("Image/peon_noir.png", 100, 150,65,65)
peon8_noir = addEntity("Image/peon_noir.png", 100, 150,65,65)

-- Fin de tus variables globales

-- Define tus funciones
function Start()
    setEntityPosition(myTable1, 490, 100)
    setEntityPosition(myTable2, 490, 150) 
    setEntityPosition(myTable3, 490, 200)
    setEntityPosition(myTable4, 490, 250)
    setEntityPosition(myTable5, 490, 300)
    setEntityPosition(myTable6, 490, 350)
    setEntityPosition(myTable7, 490, 400)
    setEntityPosition(myTable8, 490, 450)
    setEntityPosition(rey, 520, 450)
    setEntityPosition(rey_noir, 520, 100)
    setEntityPosition(reina, 460, 450)
    setEntityPosition(reina_noir, 460, 100)
    setEntityPosition(alfil, 400, 450)
    setEntityPosition(alfil_noir, 400, 100)
    setEntityPosition(alfil2, 580, 450)
    setEntityPosition(alfil_noir2, 580, 100)
    setEntityPosition(caballo, 335, 450)
    setEntityPosition(caballo_noir, 335, 100)
    setEntityPosition(caballo2, 640, 450)
    setEntityPosition(caballo_noir2, 640, 100)
    setEntityPosition(torre, 270, 450)
    setEntityPosition(torre_noir, 270, 100)
    setEntityPosition(torre2, 710, 450)
    setEntityPosition(torre_noir2, 710, 100)
    setEntityPosition(peon, 520, 400)
    setEntityPosition(peon2, 460, 400)
    setEntityPosition(peon3, 400, 400)
    setEntityPosition(peon4, 580, 400)
    setEntityPosition(peon5, 335, 400)
    setEntityPosition(peon6, 640, 400)
    setEntityPosition(peon7, 270, 400)
    setEntityPosition(peon8, 710, 400)
     setEntityPosition(peon_noir, 520, 145)
    setEntityPosition(peon2_noir, 460, 145)
    setEntityPosition(peon3_noir, 400, 145)
    setEntityPosition(peon4_noir, 580, 145)
    setEntityPosition(peon5_noir, 335, 145)
    setEntityPosition(peon6_noir, 640, 145)
    setEntityPosition(peon7_noir, 270, 145)
    setEntityPosition(peon8_noir, 710, 145)

end
function firstMove()
  moveEntity(peon,0,-100, 4)
  my_sequence:sleep(4)
  moveEntity(peon_noir,0,100, 4)
  my_sequence:sleep(4)
end
function secondMove()
  moveEntity(alfil2,-185,-150, 4)
  my_sequence:sleep(4)
  moveEntity(caballo_noir,60,100, 4)
  my_sequence:sleep(4)
end
function thirdMove()
  moveEntity(reina,250,-200, 4)
  my_sequence:sleep(4)
  moveEntity(caballo_noir2,-60,100, 4)
  my_sequence:sleep(4)
end
function lastMove()
  moveEntity(reina,-130,-100, 4)
  my_sequence:sleep(3)
  removeEntity(peon4_noir)
end
function my_sequence:run()
    Start()
    firstMove()
    secondMove()
    thirdMove()
    lastMove()
end
-- Fin de tus funciones
my_sequence:start()

function onDraw()
    -- Escribe tu código para pintar pixel a pixel
    
    -- Fin de tu código
end

function onUpdate(seconds)
    -- Escribe tu código para ejecutar cada frame
    -- Fin del código
end

function onClickLeft(down)
    -- Escribe tu código para el click del ratón izquierdo (down será true si se ha pulsado, false si se ha soltado)
    if down then

    end
    -- Fin del código
end

function onClickRight(down)
    -- Escribe tu código para el click del ratón derecho (down será true si se ha pulsado, false si se ha soltado)
    if down then
    
    end
    -- Fin del código
end

function onMouseMove(posX, posY)
    mousePositionX = posX
    mousePositionY = posY
    -- Escribe tu código cuando el ratón se mueve
    
    -- Fin del código
end

function onKeyPress(key, down)
    -- Escribe tu código para tecla pulsada (down será true si la tecla se ha pulsado, false si se ha soltado)
    
    -- Fin del código
end

callbackConfiguration(onClickLeft, onClickRight, onMouseMove, onKeyPress, onDraw, debug_layer)
mainLoop()

