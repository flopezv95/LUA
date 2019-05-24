-- Escribe codigo
require "library"
seq = require "sequence"
window_layer, debug_layer = prepareWindow()

worldSizeX = 1024
worldSizeY = 768

mousePositionX = nil
mousePositionY = nil

function SayHello()
    print("Hello")
end
-- Para usar la clase Sequence
my_sequence = seq.Sequence:new()
-- Define tus variables globales
myDragon = addEntity("creatures/dragon.png", 100, 100,68,68)
myWizard = addEntity("creatures/mage.png", -100, 100,68,68)
myFireBall = addEntity("creatures/fireball.png", -100, 100,34,34)
close = true
-- Fin de tus variables globales

-- Define tus funciones
function Start()
    setEntityPosition(myDragon, 100, 100) 
    setEntityRotation(myDragon, -90)
end
function SearchLook()
    rotateEntity(myDragon, 180, 2)
    my_sequence:sleep(2)
    rotateEntity(myDragon, -180, 2)
    my_sequence:sleep(2)
    rotateEntity(myDragon, 180, 2)
    my_sequence:sleep(2)
end
function StartWizard()
    setEntityPosition(myWizard, 600, 500) 
end
function LookAtTheWizard(angle,time)
    rotateEntity(myDragon, angle, 2)
    my_sequence:sleep(time)
end
function GoToWizard(offsetX,offsetY,time)
    positionXWizard,positionYWizard = getEntityPosition(myWizard)
    positionXDragon,positionYDragon = getEntityPosition(myDragon)
    moveEntity(myDragon,positionXWizard-positionXDragon+offsetX,positionYWizard-positionYDragon+offsetY, time)
end
function DragonEnoughClose()
   positionXWizard,positionYWizard = getEntityPosition(myWizard)
    positionXDragon,positionYDragon = getEntityPosition(myDragon)
    if ((positionXWizard - positionXDragon) < 200 and (positionYWizard - positionYDragon) < 200 )  then
         close = false
         scaleEntity(myWizard, 2, 2, 0.5) 
         my_sequence:sleep(0.5)
         scaleEntity(myWizard, -2, -2, 0.5)
         my_sequence:sleep(0.5)
    end
    my_sequence:sleep(0.1)
end
function WizardScape()
  positionXWizard,positionYWizard = getEntityPosition(myWizard)
  moveEntity(myWizard,800-positionXWizard,100-positionYWizard , 4)
  my_sequence:sleep(1)
end
function WizardAttack()
  my_sequence:sleep(7)
  setEntityRotation(myFireBall, 115)
  setEntityPosition(myFireBall, 800, 120)
  positionXDragon,positionYDragon = getEntityPosition(myDragon)
  positionXFireBall,positionYFireBall = getEntityPosition(myFireBall)
  moveEntity(myFireBall,positionXDragon-positionXFireBall,positionYDragon-positionYFireBall,4)
  scaleEntity(myWizard, 3, 3, 0.5) 
  my_sequence:sleep(0.5)
  scaleEntity(myWizard, -3, -3, 0.5) 
  my_sequence:sleep(0.5)
  my_sequence:sleep(1.2)
end
function DragonDie()
  removeEntity(myDragon) 
  removeEntity(myFireBall)
end
function my_sequence:run()
    Start()
    SearchLook() 
    StartWizard()
    LookAtTheWizard(-135,1)
    GoToWizard(0,0,20)
    while (close) do
       DragonEnoughClose()
    end
    WizardScape()
    LookAtTheWizard(-115,4)
    GoToWizard(-80,150,10)
    WizardAttack()
    DragonDie()
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

