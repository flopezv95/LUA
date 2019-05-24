-- Escribe codigo
EnemyScape = EnemyClass:new("mage",100,100,50)

function EnemyScape:new(imageName,posX,posY,life)     
    local Enemy = {}
    Enemy[1] = imageName
    Enemy[2] = posX 
    Enemy[3] = posY
    Enemy[4] = life
    Enemy[5] = 0
    Enemy[6] = life/2 
    setmetatable(Enemy, self)     
    self.__index = self     
    return Enemy
end 

function EnemyScape: scape()
    if (self[4]< self[6]) then
        enemySizeX,enemySizeY = self:getEnemySize()
        positionX = math.random(0 + enemySizeX , 1024 - enemySizeX)
        positionY = math.random(0 + enemySizeY , 768 - enemySizeX)
        setPropPosition(self[5], positionX, positionY)
    end
end