-- Escribe codigo
EnemyClass = {} 
function EnemyClass:new(imageName,posX,posY,life)     
    local Enemy = {}
    Enemy[1] = imageName
    Enemy[2] = posX 
    Enemy[3] = posY
    Enemy[4] = life
    Enemy[5] = 0  
    setmetatable(Enemy, self)     
    self.__index = self     
    return Enemy
end 
function EnemyClass.__tostring(Enemy)     
    local res = ""     
    for i = 1, #Enemy do
        if i==1 then        
            res = res.."ImagePath"..": "..Enemy[i] 
        elseif i==2 then
            res = res.."Position X"..": "..Enemy[i]
        elseif i==3 then
            res = res.."Position Y"..": "..Enemy[i]
        elseif i==4 then
            res = res.."Life"..": "..Enemy[i]
        end
        if i < #Enemy then            
            res = res.."\n"        
        end     
    end 
    return res
end

function EnemyClass:drawEnemy()
    if self[5]==0 then
        self[5]=drawCreature(layer,self[1],self[2],self[3])
    end
end

function EnemyClass:getEnemySize()
   return getCreatureSize(self[1])
end

function EnemyClass:getEnemyPosition()
   return getPropPosition(self[5])
end

function EnemyClass:healthCare(damage)
    if self[4] > 0 then
        if (self[4] - damage)> 0 then
            self[4] = self[4]-damage
        else
            self[4] = 0
        end
        if self[4] == 0 then
           self:reduceToHalfSize(); 
        end
    end
end

function EnemyClass:reduceToHalfSize()
    removeCreature(self[5])
    self[5]=0
    creatureSizeX, creatureSizeY = getCreatureSize(self[1])
    setCreatureSize(self[1],creatureSizeX/2,creatureSizeY/2)
    self:drawEnemy()
end

