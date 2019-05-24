-- Escribe codigo
VectorClass = {} 
function VectorClass:new(NumberX,NumberY)     
    local Vector = {}
    Vector[1] = NumberX
    Vector[2] = NumberY    
    setmetatable(Vector, self)     
    self.__index = self     
    return Vector
end 
function VectorClass.__tostring(Vector)     
    local res = ""     
    for i = 1, #Vector do
        if i==1 then        
            res = res.."X"..": "..Vector[i] 
        elseif i==2 then
            res = res.."Y"..": "..Vector[i]
        end
        if i < #Vector then            
            res = res.."\n"        
        end     
    end 
    return res
end

function VectorClass.__add(Vector, other_Vector)     
    ValueX = Vector[1] + other_Vector[1]
    ValueY = Vector[2] + other_Vector[2]
    VectorRes = VectorClass:new(ValueX,ValueY)   
    return VectorRes
end

function VectorClass.__sub(Vector, other_Vector)     
    ValueX = Vector[1] - other_Vector[1]
    ValueY = Vector[2] - other_Vector[2]
    VectorRes = VectorClass:new(ValueX,ValueY)   
    return VectorRes
end

function VectorClass:dotProduct(Vector)
    res = (self[1]*Vector[1]) + (self[2]*Vector[2]) 
    return res     
end 
function VectorClass:length()
    sum = (self[1]*self[1]) + (self[2]*self[2]) 
    res = math.sqrt(sum)
    return res     
end 
function VectorClass:normalize()
    sum = (self[1]*self[1]) + (self[2]*self[2]) 
    length = math.sqrt(sum)
    ValueX = self[1]/length
    ValueY = self[2]/length
    VectorRes = VectorClass:new(ValueX,ValueY) 
    return VectorRes     
end 

function VectorClass:multiplyScale(num)
    ValueX = self[1]* num
    ValueY = self[2]*num
    VectorRes = VectorClass:new(ValueX,ValueY) 
    return VectorRes     
end

