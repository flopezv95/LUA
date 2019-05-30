-- Escribe codigo
require "library"
prepareWindow()

carta_image = drawImage(layer, "cards\\A_C.png", 650, 256, 79, 123)
carta_image2 = drawImage(layer, "cards\\A_T.png", 550, 256, 79, 123)
carta_image3 = drawImage(layer, "cards\\A_P.png", 450, 256, 79, 123)
carta_image4 = drawImage(layer, "cards\\A_D.png", 350, 256, 79, 123)
mousePositionX = 0
mousePositionY = 0
corazon = false
trebol = false
pica = false
diamante = false

function onUpdate(seconds)
end

function onClickLeft(down)
    if down then
        print("Clicked Left")
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
    key_pressed = convertKeyToChar(key)
    print("Key pressed: ", key_pressed)
    -- Escribe tu código para gestion de teclado
    if key_pressed == 'c' or key_pressed == 'C' then
        if down then
            corazon = true
        else
           corazon = false
        end
        trebol = false
        pica = false
        diamante = false
     elseif key_pressed == 'd' or key_pressed == 'D' then
        if down then
            diamante = true
        else
           diamante = false
        end
        trebol = false
        pica = false
        corazon = false
      elseif key_pressed == 'p' or key_pressed == 'P' then
         if down then
            pica = true
         else
            pica = false
         end
         trebol = false
         diamante = false
         corazon = false
       elseif key_pressed == 't' or key_pressed == 'T' then
          if down then
            trebol = true
          else
            trebol = false
          end
          pica = false
          diamante = false
          corazon = false
    end
    changeCards(key_pressed)
    -- Termina tu código
end


function changeCards(key)
    if key == '1' then
        if corazon then
            print("Corazon")
            carta_image = drawImage(layer, "cards\\A_C.png", 650, 256, 79, 123)
        elseif pica then
            print("pica")
            carta_image3 = drawImage(layer, "cards\\A_P.png", 450, 256, 79, 123)
        elseif diamante then
            print("Diamante")
            carta_image4 = drawImage(layer, "cards\\A_D.png", 350, 256, 79, 123)
        elseif trebol then
            print("Trebol")
            carta_image2 = drawImage(layer, "cards\\A_T.png", 550, 256, 79, 123)   
         end
    elseif  key == '2' then
        if corazon then
            print("Corazon")
            carta_image = drawImage(layer, "cards\\2_C.png", 650, 256, 79, 123)
        elseif pica then
            print("pica")
            carta_image3 = drawImage(layer, "cards\\2_P.png", 450, 256, 79, 123)
        elseif diamante then
            print("Diamante")
            carta_image4 = drawImage(layer, "cards\\2_D.png", 350, 256, 79, 123)
        elseif trebol then
            print("Trebol")
            carta_image2 = drawImage(layer, "cards\\2_T.png", 550, 256, 79, 123)   
         end
    elseif  key == '3' then
        if corazon then
            print("Corazon")
            carta_image = drawImage(layer, "cards\\3_C.png", 650, 256, 79, 123)
        elseif pica then
            print("pica")
            carta_image3 = drawImage(layer, "cards\\3_P.png", 450, 256, 79, 123)
        elseif diamante then
            print("Diamante")
            carta_image4 = drawImage(layer, "cards\\3_D.png", 350, 256, 79, 123)
        elseif trebol then
            print("Trebol")
            carta_image2 = drawImage(layer, "cards\\3_T.png", 550, 256, 79, 123)   
         end
    elseif  key == '4' then
        if corazon then
            print("Corazon")
            carta_image = drawImage(layer, "cards\\4_C.png", 650, 256, 79, 123)
        elseif pica then
            print("pica")
            carta_image3 = drawImage(layer, "cards\\4_P.png", 450, 256, 79, 123)
        elseif diamante then
            print("Diamante")
            carta_image4 = drawImage(layer, "cards\\4_D.png", 350, 256, 79, 123)
        elseif trebol then
            print("Trebol")
            carta_image2 = drawImage(layer, "cards\\4_T.png", 550, 256, 79, 123)   
         end
    elseif  key == '5' then
        if corazon then
            print("Corazon")
            carta_image = drawImage(layer, "cards\\5_C.png", 650, 256, 79, 123)
        elseif pica then
            print("pica")
            carta_image3 = drawImage(layer, "cards\\5_P.png", 450, 256, 79, 123)
        elseif diamante then
            print("Diamante")
            carta_image4 = drawImage(layer, "cards\\5_D.png", 350, 256, 79, 123)
        elseif trebol then
            print("Trebol")
            carta_image2 = drawImage(layer, "cards\\5_T.png", 550, 256, 79, 123)   
         end
    elseif  key == '6' then
        if corazon then
            print("Corazon")
            carta_image = drawImage(layer, "cards\\6_C.png", 650, 256, 79, 123)
        elseif pica then
            print("pica")
            carta_image3 = drawImage(layer, "cards\\6_P.png", 450, 256, 79, 123)
        elseif diamante then
            print("Diamante")
            carta_image4 = drawImage(layer, "cards\\6_D.png", 350, 256, 79, 123)
        elseif trebol then
            print("Trebol")
            carta_image2 = drawImage(layer, "cards\\6_T.png", 550, 256, 79, 123)   
         end
    elseif  key == '7' then
        if corazon then
            print("Corazon")
            carta_image = drawImage(layer, "cards\\7_C.png", 650, 256, 79, 123)
        elseif pica then
            print("pica")
            carta_image3 = drawImage(layer, "cards\\7_P.png", 450, 256, 79, 123)
        elseif diamante then
            print("Diamante")
            carta_image4 = drawImage(layer, "cards\\7_D.png", 350, 256, 79, 123)
        elseif trebol then
            print("Trebol")
            carta_image2 = drawImage(layer, "cards\\7_T.png", 550, 256, 79, 123)   
         end
    elseif  key == '8' then
        if corazon then
            print("Corazon")
            carta_image = drawImage(layer, "cards\\8_C.png", 650, 256, 79, 123)
        elseif pica then
            print("pica")
            carta_image3 = drawImage(layer, "cards\\8_P.png", 450, 256, 79, 123)
        elseif diamante then
            print("Diamante")
            carta_image4 = drawImage(layer, "cards\\8_D.png", 350, 256, 79, 123)
        elseif trebol then
            print("Trebol")
            carta_image2 = drawImage(layer, "cards\\8_T.png", 550, 256, 79, 123)   
         end
    elseif  key == '9' then
        if corazon then
            print("Corazon")
            carta_image = drawImage(layer, "cards\\9_C.png", 650, 256, 79, 123)
        elseif pica then
            print("pica")
            carta_image3 = drawImage(layer, "cards\\9_P.png", 450, 256, 79, 123)
        elseif diamante then
            print("Diamante")
            carta_image4 = drawImage(layer, "cards\\9_D.png", 350, 256, 79, 123)
        elseif trebol then
            print("Trebol")
            carta_image2 = drawImage(layer, "cards\\9_T.png", 550, 256, 79, 123)   
         end
    elseif  key == 'J' or key == 'j' then
        if corazon then
            print("Corazon")
            carta_image = drawImage(layer, "cards\\J_C.png", 650, 256, 79, 123)
        elseif pica then
            print("pica")
            carta_image3 = drawImage(layer, "cards\\J_P.png", 450, 256, 79, 123)
        elseif diamante then
            print("Diamante")
            carta_image4 = drawImage(layer, "cards\\J_D.png", 350, 256, 79, 123)
        elseif trebol then
            print("Trebol")
            carta_image2 = drawImage(layer, "cards\\J_T.png", 550, 256, 79, 123)   
         end
    elseif  key == 'Q' or key == 'q' then
        if corazon then
            print("Corazon")
            carta_image = drawImage(layer, "cards\\Q_C.png", 650, 256, 79, 123)
        elseif pica then
            print("pica")
            carta_image3 = drawImage(layer, "cards\\Q_P.png", 450, 256, 79, 123)
        elseif diamante then
            print("Diamante")
            carta_image4 = drawImage(layer, "cards\\Q_D.png", 350, 256, 79, 123)
        elseif trebol then
            print("Trebol")
            carta_image2 = drawImage(layer, "cards\\Q_T.png", 550, 256, 79, 123)   
         end
    elseif  key == 'K' or key == 'k' then
        if corazon then
            print("Corazon")
            carta_image = drawImage(layer, "cards\\K_C.png", 650, 256, 79, 123)
        elseif pica then
            print("pica")
            carta_image3 = drawImage(layer, "cards\\K_P.png", 450, 256, 79, 123)
        elseif diamante then
            print("Diamante")
            carta_image4 = drawImage(layer, "cards\\K_D.png", 350, 256, 79, 123)
        elseif trebol then
            print("Trebol")
            carta_image2 = drawImage(layer, "cards\\K_T.png", 550, 256, 79, 123)   
         end
    end
end


callbackConfiguration(onClickLeft, onClickRight, onMouseMove, onKeyPress)
mainLoop()

