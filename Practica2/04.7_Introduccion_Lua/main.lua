-- Escribe codigo
require "library"
prepareWindow()

mousePositionX = nil
mousePositionY = nil

number_cards_X = 5
number_cards_Y = 3
card_sizeX = 79
card_sizeY = 123

card_init_X = 20
card_init_Y = 20

startGame = false

numCardsCorazon = 0
numCardsTrebol = 0
numCardsPica = 0
numCardsDiamante = 0
-- Define tus variables globales
cards = {
    {
        Card = "cards\\A_C.png",
        Type = "C",
    },
    {
         Card = "cards\\A_P.png",
         Type = "P",
    },
    {
         Card = "cards\\A_D.png",
         Type = "D",
    },
    {
         Card = "cards\\A_T.png",
         Type = "T",
    },
    {
        Card = "cards\\2_C.png",
        Type = "C",
    },
    {
         Card = "cards\\2_P.png",
         Type = "P",
    },
    {
         Card = "cards\\2_D.png",
         Type = "D",
    },
    {
         Card = "cards\\2_T.png",
         Type = "T",
    },
    {
        Card = "cards\\3_C.png",
        Type = "C",
    },
    {
         Card = "cards\\3_P.png",
         Type = "P",
    },
    {
         Card = "cards\\3_D.png",
         Type = "D",
    },
    {
         Card = "cards\\3_T.png",
         Type = "T",
    },
    {
        Card = "cards\\4_C.png",
        Type = "C",
    },
    {
         Card = "cards\\4_P.png",
         Type = "P",
    },
    {
         Card = "cards\\4_D.png",
         Type = "D",
    },
    {
         Card = "cards\\4_T.png",
         Type = "T",
    },
    {
        Card = "cards\\5_C.png",
        Type = "C",
    },
    {
         Card = "cards\\5_P.png",
         Type = "P",
    },
    {
         Card = "cards\\5_D.png",
         Type = "D",
    },
    {
         Card = "cards\\5_T.png",
         Type = "T",
    },
    {
        Card = "cards\\6_C.png",
        Type = "C",
    },
    {
         Card = "cards\\6_P.png",
         Type = "P",
    },
    {
         Card = "cards\\6_D.png",
         Type = "D",
    },
    {
         Card = "cards\\6_T.png",
         Type = "T",
    },
    {
        Card = "cards\\7_C.png",
        Type = "C",
    },
    {
         Card = "cards\\7_P.png",
         Type = "P",
    },
    {
         Card = "cards\\7_D.png",
         Type = "D",
    },
    {
         Card = "cards\\7_T.png",
         Type = "T",
    },
    {
        Card = "cards\\8_C.png",
        Type = "C",
    },
    {
         Card = "cards\\8_P.png",
         Type = "P",
    },
    {
         Card = "cards\\8_D.png",
         Type = "D",
    },
    {
         Card = "cards\\8_T.png",
         Type = "T",
    },
    {
        Card = "cards\\9_C.png",
        Type = "C",
    },
    {
         Card = "cards\\9_P.png",
         Type = "P",
    },
    {
         Card = "cards\\9_D.png",
         Type = "D",
    },
    {
         Card = "cards\\9_T.png",
         Type = "T",
    },
    {
        Card = "cards\\10_C.png",
        Type = "C",
    },
    {
         Card = "cards\\10_P.png",
         Type = "P",
    },
    {
         Card = "cards\\10_D.png",
         Type = "D",
    },
    {
         Card = "cards\\10_T.png",
         Type = "T",
    },
    {
        Card = "cards\\J_C.png",
        Type = "C",
    },
    {
         Card = "cards\\J_P.png",
         Type = "P",
    },
    {
         Card = "cards\\J_D.png",
         Type = "D",
    },
    {
         Card = "cards\\J_T.png",
         Type = "T",
    },
    {
        Card = "cards\\Q_C.png",
        Type = "C",
    },
    {
         Card = "cards\\Q_P.png",
         Type = "P",
    },
    {
         Card = "cards\\Q_D.png",
         Type = "D",
    },
    {
         Card = "cards\\Q_T.png",
         Type = "T",
    },
    {
        Card = "cards\\K_C.png",
        Type = "C",
    },
    {
         Card = "cards\\K_P.png",
         Type = "P",
    },
    {
         Card = "cards\\K_D.png",
         Type = "D",
    },
    {
         Card = "cards\\K_T.png",
         Type = "T",
    },
}
CardsInTheField = {}
IDCardsInTheField = {}
-- Termina tu definicion de variables

-- Escribe código para funciones necesarias
function printCards ()
    startGame = true
    position = 0
    offset = 100 --El offset lo agregue para que no queden todas en una esquina
    startPositionHorizontal = 1024 / (number_cards_X*card_sizeX)+ offset
    startPositionvertical = 768 / (number_cards_Y*card_sizeY) + offset
    limit = number_cards_X
    vertical = startPositionvertical
    for imycards = 1, (number_cards_X * number_cards_Y )  do
        if(imycards < (limit + 1)) then
            CardsInTheField[imycards]=(cards[math.random(1, 52)])
            IDCardsInTheField[imycards]=addImage(CardsInTheField[imycards].Card, (startPositionHorizontal+(card_sizeX* position)), vertical)
            position = position +1
            if imycards ==  limit then
                limit = limit + number_cards_X
                vertical = vertical + card_sizeY
                position = 0
            end
        end
    end 
   chooseTheTypeForPlay()
end
function chooseTheTypeForPlay()
    type = math.random(1, 4)
    if type == 1 then
        write("Seleccione corazon",650,200)
        write("Si no hay cliquear fuera",650,250)
    elseif type == 2 then
        write("Seleccione Trebol",650,200)
         write("Si no hay cliquear fuera",650,250)
    elseif type == 3  then
        write("Seleccione Pica",650,200)
         write("Si no hay cliquear fuera",650,250)
    elseif type == 4  then
        write("Seleccione Diamante",650,200)
         write("Si no hay cliquear fuera",650,250)
    end
    DefineConditionToWin(type)
end
function DefineConditionToWin(TypeSelected) 
    if TypeSelected == 1 then
       for imycardsInField = 1, (number_cards_X * number_cards_Y ) do
            if (CardsInTheField[imycardsInField ].Type == "C") then
              numCardsCorazon = numCardsCorazon + 1
            end
       end
    elseif TypeSelected == 2 then
        for imycardsInField = 1, (number_cards_X * number_cards_Y ) do
            if (CardsInTheField[imycardsInField ].Type == "T") then
              numCardsTrebol = numCardsTrebol + 1
            end
       end
    elseif TypeSelected == 3  then
        for imycardsInField = 1, (number_cards_X * number_cards_Y ) do
           if (CardsInTheField[imycardsInField ].Type == "P") then
              numCardsPica = numCardsPica + 1
            end
       end
    elseif TypeSelected == 4  then
       for imycardsInField = 1, (number_cards_X * number_cards_Y ) do
            if (CardsInTheField[imycardsInField ].Type == "D") then
              numCardsDiamante = numCardsDiamante + 1
            end
       end
    end
end

function MousePositionCard()
 for imycardsClick = 1, (number_cards_X * number_cards_Y ) do
    if(IDCardsInTheField[imycardsClick] ~= 0) then
        creaturePositionX, creaturePositionY = getPropPosition(IDCardsInTheField[imycardsClick])
          if (creaturePositionX < mousePositionX and (creaturePositionX + card_sizeX) > mousePositionX and creaturePositionY < mousePositionY and (creaturePositionY + card_sizeY) > mousePositionY) then
                if (CardsInTheField[imycardsClick].Type == "C") then
                  numCardsCorazon = numCardsCorazon - 1
                elseif (CardsInTheField[imycardsClick].Type == "T") then
                  numCardsTrebol = numCardsTrebol - 1
                elseif (CardsInTheField[imycardsClick].Type == "P") then
                  numCardsPica = numCardsPica - 1 
                elseif (CardsInTheField[imycardsClick].Type == "D") then
                  numCardsDiamante = numCardsDiamante - 1
                end
                removeCreature(IDCardsInTheField[imycardsClick]) 
                IDCardsInTheField[imycardsClick] = 0
          end
      end
  end
  verifyTheStateOfTheGame()
end

function verifyTheStateOfTheGame()
    if numCardsCorazon == 0 and numCardsTrebol==0 and numCardsPica==0 and numCardsDiamante==0 then
        won()
    elseif numCardsCorazon < 0 or numCardsTrebol<0 or numCardsPica<0 or numCardsDiamante<0 then
        lost()
    end
end
-- Termina tu código

function onUpdate(seconds)
end

function onClickLeft(down)
    print("Clicked Left")
    if not down then
        -- Escribe tu código para el botón izquierdo
        printCards()
        -- Termina tu código
        --resetGame()
    end
end



function onClickRight(down)
    print("Clicked Right")
    if not down then
        -- Escribe tu código para el botón derecho
        MousePositionCard()
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

