local Nbd = 0
local function toass(t,w)
Nbd = Nbd + w
if Nbd ~= 100 then
Strd = "🐤 " .. t .. " in Proggress, " .. Nbd .. "%"
else
Strd = "🐤 " .. t .. ", " .. Nbd .. "%"
end
return gg.toast(Strd)
end
local Saver_CallApi = {}
Saver_CallApi['Api'] = {}
Saver_CallApi['Api']['First'] = {}
Saver_CallApi['Api']['Last'] = {}
Saver_CallApi['Get'] = {'gg','os','io','table','debug','math','string'}
Saver_CallApi['Saver'] = {}
for i in ipairs(Saver_CallApi['Get']) do
API_Name = Saver_CallApi['Get'][i]
for v, z in pairs(_G[API_Name]) do
Saver_CallApi['Saver'][#Saver_CallApi['Saver']+1] = {API_Name,v}
end
end
for i in ipairs(Saver_CallApi['Saver']) do
if Saver_CallApi['Saver'][i][2]:match('_') and string.len(tostring(Saver_CallApi['Saver'][i][2])) > 12 then
Saver_CallApi['Api']['First'][#Saver_CallApi['Api']['First']+1] = {Saver_CallApi['Saver'][i][1],Saver_CallApi['Saver'][i][1]..'.'..Saver_CallApi['Saver'][i][2],Saver_CallApi['Saver'][i][2]}
Saver_CallApi['Saver'][i] = {}
end
end
for i in ipairs(Saver_CallApi['Saver']) do
if Saver_CallApi['Saver'][i][2] ~= nil and Saver_CallApi['Saver'][i][1] ~= nil then
if string.len(tostring(Saver_CallApi['Saver'][i][2])) > 9 then
Saver_CallApi['Api']['First'][#Saver_CallApi['Api']['First']+1] = {Saver_CallApi['Saver'][i][1],Saver_CallApi['Saver'][i][1]..'.'..Saver_CallApi['Saver'][i][2],Saver_CallApi['Saver'][i][2]}
Saver_CallApi['Saver'][i] = {}
end
end
end
for i in ipairs(Saver_CallApi['Saver']) do
if Saver_CallApi['Saver'][i][2] ~= nil and Saver_CallApi['Saver'][i][1] ~= nil then
Saver_CallApi['Api']['First'][#Saver_CallApi['Api']['First']+1] = {Saver_CallApi['Saver'][i][1],Saver_CallApi['Saver'][i][1]..'.'..Saver_CallApi['Saver'][i][2],Saver_CallApi['Saver'][i][2]}
Saver_CallApi['Saver'][i] = {}
end
end
local APIList = Saver_CallApi['Api']['First']
local ns = {}
ns.vers = gg.VERSION
ns.verr = gg["VERSION_INT"]
ns.last = gg.getFile()
ns.info = nil
ns.cnf = gg["EXT_CACHE_DIR"] .. "/"
ns.config = ns.cnf .. gg.getFile():match("[^/]+$") .. ".cfg"
strongs = loadfile(ns.config)
if strongs ~= nil then ns.info = strongs() strongs = nil end
if ns.info == nil then ns.info = {ns.last, ns.last:gsub("/[^/]+$", ""), false, false, false,false} end
local function nesiaP(a,b,c) return gg.prompt(a,b,c) end
print('🛡️ Encryption by Kayracik v6.4 🛡️')
print('')
gg.setVisible(false)
while true do
goto nes1
:: nes1 ::
ns.prp = nesiaP({
"📁 File : ", 
"📂 Outpath :",
"🐥 use Expired Date",
"🐥 use Password", 
"🐥 Change Name",
"🐥 Reduce time for Encrypt"
}, ns.info, {
'file',
'path',
'checkbox',
'checkbox',
'checkbox',
'checkbox',
'checkbox'
})
goto nes2
:: nes2 ::
if ns.prp == nil then return end -- if
ns.file = ns.prp[1]
gg.saveVariable(ns.prp, ns.config)
ns.loading,ns.amr = loadfile(ns.file)
if ns.loading == nil then
gg.alert("🐣 Script can't be loaded. Please Fix First.")
print("🐣 Script can't be loaded. Please Fix First.\n\n" .. ns.amr)
break
end -- if
local time_1 = os.time()
ns.out = ns.prp[2] .. "/[6.4 ~😈]".. ns.file:match("[^/]+$"):gsub(".lua", "") .. ".lua"
ns.filename = "[6.4 ~😈]" .. ns.file:match("[^/]+$"):gsub(".lua", "") .. ".lua"
local function enc_str(c)
c = {c:byte(1,-1)}
c = table.concat(c, ',')
return 'string.char(table.unpack({' .. c .. '}))'
end
local function match(str)
inten = {}
stg = str
str = {str:byte(1,-1)}
for a in ipairs(str) do
if str[a] == 34 or str[a] == 39 then
bmg = {[1] = str[a]}
for e = a+1, #str do
if str[e] ~= str[a] then
bmg[#bmg+1] = str[e]
str[e] = ''
else
bmg[#bmg+1] = str[e]
str[e] = ''
break
end -- if
end -- for e
bmg = load('return ' ..string.char(table.unpack(bmg)))()
str[a] = enc_str(bmg)
bmg = {}
end -- if
end -- for a
last = ''
for u in ipairs(str) do
if type(str[u]) == 'number' then
last = last .. string.char(str[u])
end -- if type
if type(str[u]) == 'string' and str[u] ~= '' then
last = last .. str[u]
end
end -- for u
return last
end
Motch = Match
local Keamanan = ' ; local MekiLO = _G["loadfile"] ;_G["loadfile"] = function() return end ; local MekiLU = _G["print"] ; _G["print"] = function() return end ; '
local Keamanan = match(Keamanan)
-- Key & Encrypting Function
local KEY_1 = { }
local KEY_2 = { }
local DEGGER_KEY = { [1] = { }, [2] = { } , [3] = { }, [4] = { }, [5] = { } , [6] = { } }
for U = 1, 25 do
DEGGER_KEY[1][U] = math.random(18,30)
DEGGER_KEY[2][U] = math.random(18,30)
DEGGER_KEY[3][U] = math.random(18,30)
KEY_1[U] = (DEGGER_KEY[1][U] + DEGGER_KEY[2][U] + DEGGER_KEY[3][U]) % 48
end
for U = 1, 25 do
DEGGER_KEY[4][U] = math.random(18,30)
DEGGER_KEY[5][U] = math.random(18,30)
DEGGER_KEY[6][U] = math.random(18,30)
KEY_2[U] = (DEGGER_KEY[4][U] + DEGGER_KEY[5][U] + DEGGER_KEY[6][U]) % 60
end

local Hex = { } local Strongs = { }
for i = 0,255 do
Strongs[i] = string.char(i)
end

local StringNumber = { [0] = string.char(65) , [1] = string.char(97) }
for u = 1, 25 do
StringNumber[#StringNumber+1] = string.char(u + 65)
StringNumber[#StringNumber+1] = string.char(u + 97)
end
EncryptStr ={}
EncryptStr[1] = function(c)
c = {c:byte(1,-1)}
for i in ipairs(c) do
c[i] = (c[i] + KEY_1[1] + KEY_1[2] - KEY_1[3] - KEY_1[4] - KEY_1[5]) % 256
c[i] = Strongs[c[i]]
c[i] = c[i]:byte()
end
for i in ipairs(c) do
c[i] = (c[i] - KEY_1[6] + KEY_1[7] - KEY_1[8] + KEY_1[9] + KEY_1[10]) % 256
c[i] = Strongs[c[i]]
c[i] = c[i]:byte()
end
for i in ipairs(c) do
c[i] = (c[i] + KEY_1[11] + KEY_1[12] - KEY_1[13] + KEY_1[14] - KEY_1[15]) % 256
c[i] = Strongs[c[i]]
c[i] = c[i]:byte()
end
for i in ipairs(c) do
c[i] = (c[i] - KEY_1[16] + KEY_1[17] + KEY_1[18] + KEY_1[19] - KEY_1[20]) % 256
c[i] = Strongs[c[i]]
c[i] = c[i]:byte()
end
for i in ipairs(c) do
c[i] = (c[i] + KEY_1[21] - KEY_1[22] - KEY_1[23] - KEY_1[24] + KEY_1[25]) % 256
c[i] = Strongs[c[i]]
c[i] = c[i]:byte()
end
return "Il(lIl({" .. table.concat(c,',') .. "}), lI)"
end



EncryptStr[2] = function(c)
c = {c:byte(1,-1)}
for i in ipairs(c) do
c[i] = (c[i] - KEY_2[21] + KEY_2[22] + KEY_2[23] + KEY_2[24] - KEY_2[25]) % 256
c[i] = Strongs[c[i]]
c[i] = c[i]:byte()
end
for i in ipairs(c) do
c[i] = (c[i] + KEY_2[16] - KEY_2[17] - KEY_2[18] - KEY_2[19] + KEY_2[20]) % 256
c[i] = Strongs[c[i]]
c[i] = c[i]:byte()
end
for i in ipairs(c) do
c[i] = (c[i] - KEY_2[11] - KEY_2[12] + KEY_2[13] - KEY_2[14] + KEY_2[15]) % 256
c[i] = Strongs[c[i]]
c[i] = c[i]:byte()
end
for i in ipairs(c) do
c[i] = (c[i] + KEY_2[6] - KEY_2[7] + KEY_2[8] - KEY_2[9] - KEY_2[10]) % 256
c[i] = Strongs[c[i]]
c[i] = c[i]:byte()
end
for i in ipairs(c) do
c[i] = (c[i] - KEY_2[1] - KEY_2[2] + KEY_2[3] + KEY_2[4] + KEY_2[5]) % 256
c[i] = Strongs[c[i]]
c[i] = c[i]:byte()
end
return "DD2({" .. table.concat(c,',') .. "})"
end

EncryptStr[3] = function(...)
c = ...
RealSTR = c
c = { }
RealSTR:gsub('.', function(e)
c[#c+1] = e
return ''
end)
local Str3_Key = { }
for u = 1, 12 do
Str3_Key[u] = math.random(1,#StringNumber)
end
local iNum = {Str3_Key[6] + Str3_Key[7] + Str3_Key[11], Str3_Key[8] + Str3_Key[9], Str3_Key[12]}
for u in ipairs(c) do
iNum[1] = (iNum[1] + iNum[2] + Str3_Key[1] ) % ( iNum[2] + Str3_Key[2] )
iNum[2] = (iNum[2] + Str3_Key[3] ) % ( Str3_Key[6] + iNum[3] )
c[u] = c[u]:byte()
c[u] = (c[u] + iNum[1] + Str3_Key[5] - Str3_Key[1] + Str3_Key[4] - iNum[2]) % 256
c[u] = tostring(c[u])
c[u] = c[u]:gsub('.', function(T)
return StringNumber[tonumber(T)]
end)
c[u] = '"' .. c[u] .. '"'
iNum[3] = iNum[3] * iNum[2] + iNum[1] - Str3_Key[3] - Str3_Key[5] + iNum[3] + iNum[1] + Str3_Key[5]
end
for u in ipairs(Str3_Key) do
Str3_Key[u] = StringNumber[Str3_Key[u]]
end
return 'BDS({["lI"] = {' .. table.concat(c, ',') .. '},"'..table.concat(Str3_Key, '') .. '"})'
end



Lag = {}
for e in ipairs(DEGGER_KEY) do
Lag[#Lag+1] = '{' .. table.concat(DEGGER_KEY[e], ',') .. '}'
end
THE_DEGGER_KEY = '{' .. table.concat(Lag, ',') .. '}'
-- end key & enc function
local function match(str)
inten = {}
stg = str
str = {str:byte(1,-1)}
for a in ipairs(str) do
if str[a] == 34 or str[a] == 39 then
bmg = {[1] = str[a]}
for e = a+1, #str do
if str[e] ~= str[a] then
bmg[#bmg+1] = str[e]
str[e] = ''
else
bmg[#bmg+1] = str[e]
str[e] = ''
break
end -- if
end -- for e
bmg = load('return ' ..string.char(table.unpack(bmg)))()
str[a] = EncryptStr[math.random(1,2)](bmg)
bmg = {}
end -- if
end -- for a
last = ''
for u in ipairs(str) do
if type(str[u]) == 'number' then
last = last .. string.char(str[u])
end -- if type
if type(str[u]) == 'string' and str[u] ~= '' then
last = last .. str[u]
end
end -- for u
return last
end
toass('Matching String',5)
io.input(ns.file)
ns.svStr = io.read("*a")
if ns.svStr:match(string.char(table.unpack({37,91,37,61,37,91,46,45,37,93,61,93}))) then
repeat
ns.svStr = ns.svStr:gsub(string.char(table.unpack({37,91,37,61,37,91,46,45,37,93,61,93})), function(c)
c = load('return ' .. c)()
return enc_str(c)
end)
until ns.svStr:match(string.char(table.unpack({37,91,37,61,37,91,46,45,37,93,61,93}))) == nil
end
if ns.svStr:match(string.char(table.unpack({37,91,37,91,46,45,37,93,93}))) then
repeat
ns.svStr = ns.svStr:gsub(string.char(table.unpack({37,91,37,91,46,45,37,93,93})), function(c)
c = load('return ' .. c)()
return enc_str(c)
end)
until ns.svStr:match(string.char(table.unpack({37,91,37,91,46,45,37,93,93}))) == nil
end
toass('Checking Settings',20)
function Rand(l)
v = ''
a = {{65,90},{97,122},{48,57}}
for i = 1, l do
o=math.random(1,3)
v = v .. string.char(math.random(a[o][1], a[o][2]))
end
return v
end
if ns.prp[3] == true then
ns.settings2s = ns.cnf .. gg.getFile():match("[^/]+$") .. "_set.date.cfg"
strongs = loadfile(ns.settings2s)
if strongs ~= nil then ns.settings2 = strongs() strongs = nil end
if ns.settings2 == nil then ns.settings2 = {os.date("%Y%m%d"), 'ℹ️ Script Expired !!'} end
ns.Kemm =ns.settings2
goto ex1
:: ex1 ::
ns.settings2 = nesiaP({"⌚ Input the Date", "📝 Text of Expired"}, ns.Kemm, {'number','text'})
goto ex2
:: ex2 ::
if ns.settings2 == nil then goto ex1 end
gg.saveVariable(ns.settings2, ns.settings2s)
ns.svStr = ([[;;if os.date("%Y%m%d") >= "]]) ..ns.settings2[1]..([[" then print("]]) .. ns.settings2[2] ..([[") return gg.alert("]]) .. ns.settings2[2] ..([[") end;;;;]])..ns.svStr 
end
if ns.prp[4] == true then
ns.settings3s = ns.cnf .. gg.getFile():match("[^/]+$") .. "_set.pass.cfg"
strongs = loadfile(ns.settings3s)
if strongs ~= nil then ns.settings3 = strongs() strongs = nil end
if ns.settings3 == nil then ns.settings3 = {''} end
ns.Kem = ns.settings3
goto ex1
:: ex1 ::
ns.settings3 = nesiaP({"🔐 Input the Password :"}, ns.Kem, {'text'})
goto ex2
:: ex2 ::
if ns.settings3 == nil then goto ex1 end
gg.saveVariable(ns.settings3, ns.settings3s)
ns.svStr = ([[local BydzP = function(a);return gg.prompt({a}, {''}, {'text'});end
local BydzPass = function(Pass);pStr = ''
goto first
:: wrong ::
BydzGpass = BydzP('🔐 "' .. pStr .. '" is a Wrong Password !')
goto cekp
:: first ::
BydzGpass = BydzP('🔐 Input Password !')
goto cekp
:: cekp ::
if BydzGpass == nil then return false end;if BydzGpass[1] == Pass then;return true;elseif BydzGpass[1] ~= Pass and BydzGpass[1] ~= '' then;pStr = BydzGpass[1];goto wrong
end;end
Bydz2017.pass = BydzPass(']]) .. ns.settings3[1] .. ([[')
if not Bydz2017.pass or Bydz2017.pass ~= true then return end
]])..ns.svStr 
end
myName = '😈 Encryption by Kayracik Version 6.4 😈'
myToast = '😈 Encryption by Kayracik 😈'
if ns.prp[5] == true then
ns.settings4s = ns.cnf .. gg.getFile():match("[^/]+$") .. "_set.name.cfg"
strongs = loadfile(ns.settings4s)
if strongs ~= nil then ns.settings4 = strongs() strongs = nil end
if ns.settings4 == nil then ns.settings4 = {'',''} end
ns.Keem = ns.settings4
goto ex1
:: ex1 ::
ns.settings4 = nesiaP({"📝 Write ur Name :","📝 Write toast ( ur name ) :"}, ns.Keem, {'text', 'text'})
goto ex2
:: ex2 ::
if ns.settings4 == nil then goto ex1 end
gg.saveVariable(ns.settings4, ns.settings4s)
myName = ns.settings4[1]
myToast = ns.settings4[2]
end
toass('Adding Security & Matching Strings',10)
ns.svStr = 'local newTab = {_G["tostring"](_G["gg"]), _G["tostring"](_G["os"]), _G["tostring"](_G["io"]), _G["tostring"](_G["debug"]), _G["tostring"](_G["math"]), _G["tostring"](_G["table"])} ; for a in ipairs(newTab) do ; if string.match(newTab[a], "@") then ; return gg.alert("🐥 Choose ur Mama ?") ; end ; end ; if type(g) == "table" then return os.exit() end; ' .. ns.svStr
ns.file = ns.out
local lasmKey = Rand(16)
local lasmAlert = ([["🐣 Don't dissamsemble this script !"]])
local lines = ";io.input(gg.getFile());if io.read('*a'):match('" .. lasmKey .. "') == nil then ; return gg.alert(" .. lasmAlert .. ") ; end ;" .. ns.svStr
io.output(gg["EXT_CACHE_DIR"] .. "/ItsBYDZ.lua")
io.write(lines)
Lines = { }
for A in io.lines(gg["EXT_CACHE_DIR"] .. "/ItsBYDZ.lua") do
Lines[#Lines+1] = match(A)
end
lines = table.concat(Lines,'\n')
os.remove(gg["EXT_CACHE_DIR"] .. "/ItsBYDZ.lua")
ns.svStr = lines
ns.svStr = ns.svStr:gsub("gg.getRangesList", function(c)
return '_G[' ..EncryptStr[math.random(1,2)]("gg") .. "]["..EncryptStr[math.random(1,2)]("getRangesList").."]"
end)
toass('Matching GG API',10)
for a in ipairs(APIList) do
V = APIList[a]
if ns.svStr:match(V[2]) ~= nil then
repeat
ns.svStr = ns.svStr:gsub(V[2], function(c)
return "_G["..EncryptStr[math.random(1,2)](V[1]).."]["..EncryptStr[math.random(1,2)](V[3]).."]"
end)
until ns.svStr:match(V[2]) == nil
end
end

local asFar = "print%("
if ns.svStr:match("print%(") ~= nil then
repeat
ns.svStr = ns.svStr:gsub("print%(", function(c)
return "MekiLU("
end)
until ns.svStr:match("print%(") == nil
end
local asFar = "loadfile%("
if ns.svStr:match("loadfile%(") ~= nil then
repeat
ns.svStr = ns.svStr:gsub("loadfile%(", function(c)
return "MekiLO("
end)
until ns.svStr:match("loadfile%(") == nil
end
os.remove(ns.file)
Spammer= ';for j = 0, 8000, 0 do  Bydz["BydzReplace"] = {Bydz["Il"][j],Bydz["BydzReplace"][j],Bydz["Il"][j],Bydz["BydzReplace"][j],Bydz["Il"][j],Bydz["BydzReplace"][j],Bydz["Il"][j],Bydz["BydzReplace"][j]}  Bydz["Il"] = {Bydz["Il"][j],Bydz["BydzReplace"][j],Bydz["Il"][j],Bydz["BydzReplace"][j],Bydz["Il"][j],Bydz["BydzReplace"][j],Bydz["Il"][j],Bydz["BydzReplace"][j]}  for k = 0, 6000, 0 do  Bydz["BydzReplace"] = Bydz["BydzReplace"][k] * Bydz["Il"][k] << Bydz["BydzReplace"][k] + Bydz["Il"][k] - Bydz["Il"][k] ~ Bydz["BydzReplace"][k] >> Bydz["Il"][k] * Bydz["BydzReplace"][k]   Bydz["Il"] = Bydz["BydzReplace"][k] * Bydz["Il"][k] << Bydz["BydzReplace"][k] + Bydz["Il"][k] - Bydz["Il"][k] ~ Bydz["BydzReplace"][k] >> Bydz["Il"][k] * Bydz["BydzReplace"][k]   for h = 0, 70000, 0 do  Bydz["BydzReplace"] = {Bydz["Il"][h],Bydz["BydzReplace"][h],Bydz["Il"][h],Bydz["BydzReplace"][h],Bydz["Il"][h],Bydz["BydzReplace"][h],Bydz["Il"][h],Bydz["BydzReplace"][h]}  Bydz["Il"] = {Bydz["Il"][h],Bydz["BydzReplace"][h],Bydz["Il"][h],Bydz["BydzReplace"][h],Bydz["Il"][h],Bydz["BydzReplace"][h],Bydz["Il"][h],Bydz["BydzReplace"][h]}  for l = 0, 63759693, 0 do  Bydz["BydzReplace"] = Bydz["BydzReplace"][l] * Bydz["Il"][l] << Bydz["BydzReplace"][l] + Bydz["Il"][l] - Bydz["Il"][l] ~ Bydz["BydzReplace"][l] >> Bydz["Il"][l] * Bydz["BydzReplace"][l]   Bydz["Il"] = Bydz["BydzReplace"][l] * Bydz["Il"][l] << Bydz["BydzReplace"][l] + Bydz["Il"][l] - Bydz["Il"][l] ~ Bydz["BydzReplace"][l] >> Bydz["Il"][l] * Bydz["BydzReplace"][l]   for o = 0, 45553648, 0 do  Bydz["BydzReplace"] = {Bydz["Il"][o],Bydz["BydzReplace"][o],Bydz["Il"][o],Bydz["BydzReplace"][o],Bydz["Il"][o],Bydz["BydzReplace"][o],Bydz["Il"][o],Bydz["BydzReplace"][o]}  Bydz["Il"] = {Bydz["Il"][o],Bydz["BydzReplace"][o],Bydz["Il"][o],Bydz["BydzReplace"][o],Bydz["Il"][o],Bydz["BydzReplace"][o],Bydz["Il"][o],Bydz["BydzReplace"][o]}  for s = 0, 446274, 0 do  Bydz["BydzReplace"] = {Bydz["Il"][s],Bydz["BydzReplace"][s],Bydz["Il"][s],Bydz["BydzReplace"][s],Bydz["Il"][s],Bydz["BydzReplace"][s],Bydz["Il"][s],Bydz["BydzReplace"][s]}  Bydz["Il"] = {Bydz["Il"][s],Bydz["BydzReplace"][s],Bydz["Il"][s],Bydz["BydzReplace"][s],Bydz["Il"][s],Bydz["BydzReplace"][s],Bydz["Il"][s],Bydz["BydzReplace"][s]}  Bydz["BydzReplace"]({Bydz["Il"][s],Bydz["BydzReplace"][s],Bydz["Il"][s],Bydz["BydzReplace"][s],Bydz["Il"][s],Bydz["BydzReplace"][s],Bydz["Il"][s],Bydz["BydzReplace"][s]})  Bydz["Il"]({Bydz["Il"][s],Bydz["BydzReplace"][s],Bydz["Il"][s],Bydz["BydzReplace"][s],Bydz["Il"][s],Bydz["BydzReplace"][s],Bydz["Il"][s],Bydz["BydzReplace"][s]})  end  Bydz["BydzReplace"]({Bydz["Il"][o],Bydz["BydzReplace"][o],Bydz["Il"][o],Bydz["BydzReplace"][o],Bydz["Il"][o],Bydz["BydzReplace"][o],Bydz["Il"][o],Bydz["BydzReplace"][o]})  Bydz["Il"]({Bydz["Il"][o],Bydz["BydzReplace"][o],Bydz["Il"][o],Bydz["BydzReplace"][o],Bydz["Il"][o],Bydz["BydzReplace"][o],Bydz["Il"][o],Bydz["BydzReplace"][o]})  end  Bydz["BydzReplace"]({Bydz["Il"][l],Bydz["BydzReplace"][l],Bydz["Il"][l],Bydz["BydzReplace"][l],Bydz["Il"][l],Bydz["BydzReplace"][l],Bydz["Il"][l],Bydz["BydzReplace"][l]})  Bydz["Il"]({Bydz["Il"][l],Bydz["BydzReplace"][l],Bydz["Il"][l],Bydz["BydzReplace"][l],Bydz["Il"][l],Bydz["BydzReplace"][l],Bydz["Il"][l],Bydz["BydzReplace"][l]})  end  Bydz["BydzReplace"]({Bydz["Il"][h],Bydz["BydzReplace"][h],Bydz["Il"][h],Bydz["BydzReplace"][h],Bydz["Il"][h],Bydz["BydzReplace"][h],Bydz["Il"][h],Bydz["BydzReplace"][h]})  Bydz["Il"]({Bydz["Il"][h],Bydz["BydzReplace"][h],Bydz["Il"][h],Bydz["BydzReplace"][h],Bydz["Il"][h],Bydz["BydzReplace"][h],Bydz["Il"][h],Bydz["BydzReplace"][h]})  end  Bydz["BydzReplace"]({Bydz["Il"][k],Bydz["BydzReplace"][k],Bydz["Il"][k],Bydz["BydzReplace"][k],Bydz["Il"][k],Bydz["BydzReplace"][k],Bydz["Il"][k],Bydz["BydzReplace"][k]})  Bydz["Il"]({Bydz["Il"][k],Bydz["BydzReplace"][k],Bydz["Il"][k],Bydz["BydzReplace"][k],Bydz["Il"][k],Bydz["BydzReplace"][k],Bydz["Il"][k],Bydz["BydzReplace"][k]})  end  Bydz["BydzReplace"]({Bydz["Il"][j],Bydz["BydzReplace"][j],Bydz["Il"][j],Bydz["BydzReplace"][j],Bydz["Il"][j],Bydz["BydzReplace"][j],Bydz["Il"][j],Bydz["BydzReplace"][j]})  Bydz["Il"]({Bydz["Il"][j],Bydz["BydzReplace"][j],Bydz["Il"][j],Bydz["BydzReplace"][j],Bydz["Il"][j],Bydz["BydzReplace"][j],Bydz["Il"][j],Bydz["BydzReplace"][j]})  end;'
toass('Making Decoder',10)
local Decoder = Keamanan .. " ; BydzSPMMZ local DG = { } DG['Strongs'] = { } for G = 0, 255 do DG['Strongs'][string.char(G)] = G end BydzSPMMZ BydzSPMMZ DG['Key'] = {} DG['Deger'] = "..THE_DEGGER_KEY.." BydzSPMMZ BydzSPMMZ for U = 1, 25 do DG['Key'][U] = (DG['Deger'][1][U] + DG['Deger'][2][U] + DG['Deger'][3][U]) % 48 end BydzSPMMZ DG['IIIII'] = function(...) BydzSPMMZ c = ... for a in ipairs(c) do BydzSPMMZ c[a] = DG['Strongs'][string.char(c[a])] c[a] = (c[a] - DG['Key'][21] + DG['Key'][22] + DG['Key'][23] + DG['Key'][24] - DG['Key'][25]) % 256 end c = string.char(table.unpack(c)) ac = { } c:gsub('.', function(s) ac[#ac+1] = s end) return ac end BydzSPMMZ DG['IIII'] = function(...) c = ... for a in ipairs(c) do c[a] = DG['Strongs'][string.char(c[a])] c[a] = (c[a] + DG['Key'][16] - DG['Key'][17] - DG['Key'][18] - DG['Key'][19] + DG['Key'][20]) % 256 end return DG['IIIII'](c) end BydzSPMMZ DG['III'] = function(...) c = ... for a in ipairs(c) do c[a] = DG['Strongs'][string.char(c[a])] c[a] = (c[a] - DG['Key'][11] - DG['Key'][12] + DG['Key'][13] - DG['Key'][14] + DG['Key'][15]) % 256 end return DG['IIII'](c) end BydzSPMMZ DG['II'] = function(...) c = ... BydzSPMMZ for a in ipairs(c) do c[a] = DG['Strongs'][string.char(c[a])] c[a] = (c[a] + DG['Key'][6] - DG['Key'][7] + DG['Key'][8] - DG['Key'][9] - DG['Key'][10]) % 256 end return DG['III'](c) end DG['lI'] = function(...) c = ... BydzSPMMZ for a in ipairs(c) do c[a] = DG['Strongs'][string.char(c[a])] c[a] = (c[a] - DG['Key'][1] - DG['Key'][2] + DG['Key'][3] + DG['Key'][4] + DG['Key'][5]) % 256 end return DG['II'](c) end BydzSPMMZ local lIl = DG['lI'] local lI = string.char() local ll = table local Il = ll.concat BydzSPMMZ local BD = { } BD['Ctl'] = DG['Strongs'] BD['Key'] = { } BD['Deger'] = DG['Deger'] BydzSPMMZ for U = 1, 25 do BD['Key'][U] = (BD['Deger'][4][U] + BD['Deger'][5][U] + BD['Deger'][6][U]) % 60 end BydzSPMMZ BD['lIlIlIl'] = function(...) c = ... return string.char(table.unpack(c)) end BD['lIlIlI'] = function(...) BydzSPMMZ c = ... for i in ipairs(c) do c[i] = BD['Ctl'][string.char(c[i])] c[i] = (c[i] + BD['Key'][21] - BD['Key'][22] - BD['Key'][23] - BD['Key'][24] + BD['Key'][25]) % 256 end return BD['lIlIlIl'](c) end BydzSPMMZ BD['lIlIl'] = function(...) c = ... for i in ipairs(c) do c[i] = BD['Ctl'][string.char(c[i])] c[i] = (c[i] - BD['Key'][16] + BD['Key'][17] + BD['Key'][18] + BD['Key'][19] - BD['Key'][20]) % 256 end return BD['lIlIlI'](c) end BydzSPMMZ BD['lIlI'] = function(...) c = ... BydzSPMMZ for i in ipairs(c) do c[i] = BD['Ctl'][string.char(c[i])] c[i] = (c[i] + BD['Key'][11] + BD['Key'][12] - BD['Key'][13] + BD['Key'][14] - BD['Key'][15]) % 256 end return BD['lIlIl'](c) end BD['lIl'] = function(...) BydzSPMMZ c = ... for i in ipairs(c) do c[i] = BD['Ctl'][string.char(c[i])] c[i] = (c[i] - BD['Key'][6] + BD['Key'][7] - BD['Key'][8] + BD['Key'][9] + BD['Key'][10]) % 256 end return BD['lIlI'](c) end BydzSPMMZ BD['lI'] = function(...) c = ... for i in ipairs(c) do c[i] = BD['Ctl'][string.char(c[i])] c[i] = (c[i] + BD['Key'][1] + BD['Key'][2] - BD['Key'][3] - BD['Key'][4] - BD['Key'][5]) % 256 end return BD['lIl'](c) end local DD2 = BD['lI'] BydzSPMMZ local BS = { } local StringNumber = { [string.char(65)] = 0 , [string.char(97)] = 1} Lender = 1 for u = 1, 25 do Lender = Lender + 1 StringNumber[string.char(u + 65)] = Lender Lender = Lender + 1 StringNumber[string.char(u + 97)] = Lender end  BydzSPMMZ BS['lI'] = function(...) codes = ... BS['Key'] = { } BydzSPMMZ for u in codes[1]:gmatch('.') do u = StringNumber[u] BS['Key'][#BS['Key']+1] = u end local iNum = {BS['Key'][6] + BS['Key'][7] + BS['Key'][11], BS['Key'][8] + BS['Key'][9], BS['Key'][12]} local BydzSPC = codes['lI'] for u in ipairs(BydzSPC) do BydzSPMMZ iNum[1] = (iNum[1] + iNum[2] + BS['Key'][1] ) % ( iNum[2] + BS['Key'][2] ) iNum[2] = (iNum[2] + BS['Key'][3] ) % ( BS['Key'][6] + iNum[3] ) BydzSPMMZ BydzSPC[u] = BydzSPC[u]:gsub('.', function(T) return StringNumber[T] end) BydzSPC[u] = tonumber(BydzSPC[u]) BydzSPC[u] = (BydzSPC[u] - iNum[1] - BS['Key'][5] + BS['Key'][1] - BS['Key'][4] + iNum[2]) % 256 iNum[3] = iNum[3] * iNum[2] + iNum[1] - BS['Key'][3] - BS['Key'][5] + iNum[3] + iNum[1] + BS['Key'][5] end BydzSPMMZ return string.char(table.unpack(BydzSPC)) end local BDS = BS['lI'] BydzSPMMZ "
Decoder = Decoder:gsub('BydzSPMMZ', Spammer) .. ' ; \n '
local function enc_str(c)
c = {c:byte(1,-1)}
c = table.concat(c, ',')
return 'string.char(' .. c .. ')'
end
local function Motch(str)
inten = {}
stg = str
str = {str:byte(1,-1)}
for a in ipairs(str) do
if str[a] == 34 or str[a] == 39 then
bmg = {[1] = str[a]}
for e = a+1, #str do
if str[e] ~= str[a] then
bmg[#bmg+1] = str[e]
str[e] = ''
else
bmg[#bmg+1] = str[e]
str[e] = ''
break
end -- if
end -- for e
bmg = load('return ' ..string.char(table.unpack(bmg)))()
str[a] = enc_str(bmg)
bmg = {}
end -- if
end -- for a
last = ''
for u in ipairs(str) do
if type(str[u]) == 'number' then
last = last .. string.char(str[u])
end -- if type
if type(str[u]) == 'string' and str[u] ~= '' then
last = last .. str[u]
end
end -- for u
return last
end
toass('Comparing String',10)
ns.svStr = ([[local A = '\n]]) .. myName .. ([[\n',{"BydzReplace","BydzReplace","BydzReplace","BydzReplace","BydzReplace","BydzReplace","BydzReplace","BydzReplace"}
for i = 1,0 do local B = "]]) .. lasmKey .. ([[" ;end
return (function()
local _G,Bydz2017,Bydz2018,gg,os,io,math,table,debug,Bydz=_G,{},{},gg,os,io,math,table,debug,{}
local Func = {}
Func['Str'] = string
Func['char'] = Func['Str'].char
Func['Tab'] = table
Func['Pack'] = Func['Tab'].unpack
Bydz2017["Il"] = _G Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"]
Bydz2018["Il"] = _G Bydz2018["Il"] = Bydz2018["Il"] Bydz2018["Il"] = Bydz2017["Il"] Bydz2018["Il"] = Bydz2018["Il"] Bydz2018["Il"] = Bydz2018["Il"] Bydz2018["Il"] = Bydz2018["Il"] Bydz2018["Il"] = Bydz2018["Il"] Bydz2018["Il"] = Bydz2018["Il"] Bydz2018["Il"] = _G Bydz2018["Il"] = Bydz2018["Il"] Bydz2018["Il"] = Bydz2018["Il"] Bydz2018["Il"] = Bydz2018["Il"] Bydz2018["Il"] = Bydz2018["Il"] Bydz2018["Il"] = Bydz2018["Il"] Bydz2018["Il"] = Bydz2017["Il"] Bydz2018["Il"] = Bydz2018["Il"] Bydz2018["Il"] = Bydz2018["Il"] Bydz2018["Il"] = Bydz2018["Il"]
for j = 0, 8000, 0 do  Bydz2017["BydzReplace"] = {Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j]}  Bydz2017["Il"] = {Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j]}  for k = 0, 6000, 0 do  Bydz2017["BydzReplace"] = Bydz2017["BydzReplace"][k] * Bydz2017["Il"][k] << Bydz2017["BydzReplace"][k] + Bydz2017["Il"][k] - Bydz2017["Il"][k] ~ Bydz2017["BydzReplace"][k] >> Bydz2017["Il"][k] * Bydz2017["BydzReplace"][k]   Bydz2017["Il"] = Bydz2017["BydzReplace"][k] * Bydz2017["Il"][k] << Bydz2017["BydzReplace"][k] + Bydz2017["Il"][k] - Bydz2017["Il"][k] ~ Bydz2017["BydzReplace"][k] >> Bydz2017["Il"][k] * Bydz2017["BydzReplace"][k]   for h = 0, 70000, 0 do  Bydz2017["BydzReplace"] = {Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h]}  Bydz2017["Il"] = {Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h]}  for l = 0, 63759693, 0 do  Bydz2017["BydzReplace"] = Bydz2017["BydzReplace"][l] * Bydz2017["Il"][l] << Bydz2017["BydzReplace"][l] + Bydz2017["Il"][l] - Bydz2017["Il"][l] ~ Bydz2017["BydzReplace"][l] >> Bydz2017["Il"][l] * Bydz2017["BydzReplace"][l]   Bydz2017["Il"] = Bydz2017["BydzReplace"][l] * Bydz2017["Il"][l] << Bydz2017["BydzReplace"][l] + Bydz2017["Il"][l] - Bydz2017["Il"][l] ~ Bydz2017["BydzReplace"][l] >> Bydz2017["Il"][l] * Bydz2017["BydzReplace"][l]   for o = 0, 45553648, 0 do  Bydz2017["BydzReplace"] = {Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o]}  Bydz2017["Il"] = {Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o]}  for s = 0, 446274, 0 do  Bydz2017["BydzReplace"] = {Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s]}  Bydz2017["Il"] = {Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s]}  Bydz2017["BydzReplace"]({Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s]})  Bydz2017["Il"]({Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o]})  Bydz2017["Il"]({Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l]})  Bydz2017["Il"]({Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h]})  Bydz2017["Il"]({Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k]})  Bydz2017["Il"]({Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j]})  Bydz2017["Il"]({Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j]})  end
Func["Il"] = _G Func["Il"] = Func["Il"]  Func["Il"] = _G Func["Il"] = Func["Il"] Func["Il"] = Bydz2017["Il"] Func["Il"] = Bydz2018["Il"] Func["Il"] = Func["Il"] Func["Il"] = _G Func["Il"] = Func["Il"] Func["Il"] = Func["Il"] Func["Il"] = Func["Il"] Func["Il"] = Func["Il"] Func["Il"] = Func["Il"]
Func['BydzReplace'] ={["Il"] = "MbakMinul",['BydzReplace'] = "MbakMinul"}
Func['BydzReplace']["Il"] = {["Il"] = "MbakMinul",['BydzReplace'] = "MbakMinul"}
Func['BydzReplace']['BydzReplace'] = {["Il"] = "MbakMinul",['BydzReplace'] = "MbakMinul",["Il"] = "MbakMinul",['BydzReplace'] = "MbakMinul",["Il"] = "MbakMinul",['BydzReplace'] = "MbakMinul"}
]]) .. Motch('_G["gg"]["setVisible"](false) ;; _G["gg"]["toast"]("'..myToast..'")') .. ([[
for j = 0, 8000, 0 do  Bydz2017["BydzReplace"] = {Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j]}  Bydz2017["Il"] = {Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j]}  for k = 0, 6000, 0 do  Bydz2017["BydzReplace"] = Bydz2017["BydzReplace"][k] * Bydz2017["Il"][k] << Bydz2017["BydzReplace"][k] + Bydz2017["Il"][k] - Bydz2017["Il"][k] ~ Bydz2017["BydzReplace"][k] >> Bydz2017["Il"][k] * Bydz2017["BydzReplace"][k]   Bydz2017["Il"] = Bydz2017["BydzReplace"][k] * Bydz2017["Il"][k] << Bydz2017["BydzReplace"][k] + Bydz2017["Il"][k] - Bydz2017["Il"][k] ~ Bydz2017["BydzReplace"][k] >> Bydz2017["Il"][k] * Bydz2017["BydzReplace"][k]   for h = 0, 70000, 0 do  Bydz2017["BydzReplace"] = {Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h]}  Bydz2017["Il"] = {Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h]}  for l = 0, 63759693, 0 do  Bydz2017["BydzReplace"] = Bydz2017["BydzReplace"][l] * Bydz2017["Il"][l] << Bydz2017["BydzReplace"][l] + Bydz2017["Il"][l] - Bydz2017["Il"][l] ~ Bydz2017["BydzReplace"][l] >> Bydz2017["Il"][l] * Bydz2017["BydzReplace"][l]   Bydz2017["Il"] = Bydz2017["BydzReplace"][l] * Bydz2017["Il"][l] << Bydz2017["BydzReplace"][l] + Bydz2017["Il"][l] - Bydz2017["Il"][l] ~ Bydz2017["BydzReplace"][l] >> Bydz2017["Il"][l] * Bydz2017["BydzReplace"][l]   for o = 0, 45553648, 0 do  Bydz2017["BydzReplace"] = {Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o]}  Bydz2017["Il"] = {Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o]}  for s = 0, 446274, 0 do  Bydz2017["BydzReplace"] = {Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s]}  Bydz2017["Il"] = {Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s]}  Bydz2017["BydzReplace"]({Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s]})  Bydz2017["Il"]({Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o]})  Bydz2017["Il"]({Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l]})  Bydz2017["Il"]({Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h]})  Bydz2017["Il"]({Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k]})  Bydz2017["Il"]({Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j]})  Bydz2017["Il"]({Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j]})  end
for j = 0, 8000, 0 do  Bydz2017["BydzReplace"] = {Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j]}  Bydz2017["Il"] = {Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j]}  for k = 0, 6000, 0 do  Bydz2017["BydzReplace"] = Bydz2017["BydzReplace"][k] * Bydz2017["Il"][k] << Bydz2017["BydzReplace"][k] + Bydz2017["Il"][k] - Bydz2017["Il"][k] ~ Bydz2017["BydzReplace"][k] >> Bydz2017["Il"][k] * Bydz2017["BydzReplace"][k]   Bydz2017["Il"] = Bydz2017["BydzReplace"][k] * Bydz2017["Il"][k] << Bydz2017["BydzReplace"][k] + Bydz2017["Il"][k] - Bydz2017["Il"][k] ~ Bydz2017["BydzReplace"][k] >> Bydz2017["Il"][k] * Bydz2017["BydzReplace"][k]   for h = 0, 70000, 0 do  Bydz2017["BydzReplace"] = {Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h]}  Bydz2017["Il"] = {Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h]}  for l = 0, 63759693, 0 do  Bydz2017["BydzReplace"] = Bydz2017["BydzReplace"][l] * Bydz2017["Il"][l] << Bydz2017["BydzReplace"][l] + Bydz2017["Il"][l] - Bydz2017["Il"][l] ~ Bydz2017["BydzReplace"][l] >> Bydz2017["Il"][l] * Bydz2017["BydzReplace"][l]   Bydz2017["Il"] = Bydz2017["BydzReplace"][l] * Bydz2017["Il"][l] << Bydz2017["BydzReplace"][l] + Bydz2017["Il"][l] - Bydz2017["Il"][l] ~ Bydz2017["BydzReplace"][l] >> Bydz2017["Il"][l] * Bydz2017["BydzReplace"][l]   for o = 0, 45553648, 0 do  Bydz2017["BydzReplace"] = {Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o]}  Bydz2017["Il"] = {Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o]}  for s = 0, 446274, 0 do  Bydz2017["BydzReplace"] = {Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s]}  Bydz2017["Il"] = {Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s]}  Bydz2017["BydzReplace"]({Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s]})  Bydz2017["Il"]({Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o]})  Bydz2017["Il"]({Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l]})  Bydz2017["Il"]({Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h]})  Bydz2017["Il"]({Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k]})  Bydz2017["Il"]({Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j]})  Bydz2017["Il"]({Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j]})  end
]]) .. Decoder .. ns.svStr .. '\n' .. (Spammer:rep(80)) .. '\n'..([[;end)()]])
toass('Testing Script',10)
--io.output(ns.out)
--io.write(ns.svStr)

ns.loaders,ns.error=load(ns.svStr)
if ns.loaders == nil then
print(ns.error)
return gg.alert('🐣 Error !!')
end
time_ = (os.time() - time_1)
textTime = ''
if time_ > 60 then
min = time_ / 60
sec = time_ - (60*min)
textTime = min.." Minute "..sec.." Seconds"
elseif time_ < 60 then
textTime = time_.." Seconds"
end
local dec_hex = function(...)
Str = ...
bydzBoy = {}
Str = Str:gsub('..', function(c)
c = tonumber(c, 16)
bydzBoy[#bydzBoy+1] = c
return ''
end)
return string.char(table.unpack(bydzBoy))
end
RvarS = {}
Var_Save__ = "0102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F2021222324262728292A2B2C2D2E2F303132333435363738393A3B3C3D3E3F404142434445464748494A4B4C4D4E4F505152535455565758595A5B5C5D5E5F606162636465666768696A6B6C6D6E6F707172737475767778797A7B7C7D7E7F808182838485868788898A8B8C8D8E8F909192939495969798999A9B9C9D9E9FA0A1A2A3A4A5A6A7A8A9AAABACADAEAFB0B1B2B3B4B5B6B7B8B9BABBBCBDBEBFC0C1C2C3C4C5C6C7C8C9CACBCCCDCECFD0D1D2D3D4D5D6D7D8D9DADBDCDDDEDFE0E1E2E3E4E5E6E7E8E9EAEBECEDEEEFF0F1F2F3F4F5F6F7F8F9FAFBFCFDFEFF"
Var_Save__:gsub('..', function(c)
RvarS[#RvarS+1] = string.char(tonumber(c, 16))
return RvarS[#RvarS]
end)
RandVar = function(num)
Flaa = string.char(0)
for u = 2, num do
Flaa = Flaa .. RvarS[math.random(1,#RvarS)]
end
return Flaa
end
function Dumper(codes)
local codes = load(codes)
local Dumped=string.dump(codes, true)
Original = dec_hex("0403000000496C")
Original2 = dec_hex("040C0000004279647A5265706C616365")
Replaced = ''
Replaced2 = ''
toass('Adding Security 2',5)
if ns.prp[6] == false then
Replaced = Replaced .. RandVar(1000)
Replaced2 = Replaced2 .. RandVar(1000)
else
Replaced = Replaced .. (dec_hex("07")):rep(1000)
Replaced2 = Replaced2 .. (dec_hex("08")):rep(1000)
end
Replaced = Replaced .. (dec_hex("00")):rep(9000)
Replaced2 = Replaced2 .. (dec_hex("00")):rep(9000)
Rpc = [[0411270000]]
Replaced = dec_hex(Rpc) .. Replaced
Rpg = [[0411270000]]
Replaced2 = dec_hex(Rpg) .. Replaced2
Dumped = Dumped:gsub(Original,Replaced)
Dumped = Dumped:gsub(Original2,Replaced2)
Rpq = [[040A0000004D62616B4D696E756C]]
Rpw = [[04000000]]
Dumped = Dumped:gsub(dec_hex(Rpq),dec_hex(Rpw))
Dumped = Dumped:gsub(string.char(table.unpack({0,128,0,31,0,128,0,31,0,128,0,31})),string.char(0,0x80,0,0x1F,0x0,0x80,0x0,0x1B,math.random(0x70,0xff),math.random(0x80,0xff),math.random(0xb0,0xff),0x1F))
Hfk = [[1B4C7561520001040404080019930D0A1A0A000000000000000000010A15000000010000004B0000]]
Jdh=[[1B4C7561520001040404080019930D0A1A0A000000000000000000010A14000000010000004B0000]]
if ns.prp[5] == false then 
Dumped = Dumped:gsub(dec_hex(Hfk),dec_hex(Jdh))
end
Jdbc = [[001F0080000500000004300000000AF0]]
Dbchz = [[000500000004300000000AF0]]
Dumped = Dumped:gsub(dec_hex(Jdbc),dec_hex(Dbchz))
Dumped = Dumped:gsub(string.char(0x0,0x0,0x0,0x4,0x0,0x0,0x0,0x1B,0x80,0x0,0x80,0x17,0x80,0x0,0x0,0x17,0x80,0x0,0x0,0x17,0x0,0x0,0x0,0x4,0x0,0x80,0x0),string.char(0x80,0x31,0x10,0x17,0x80,0x1,0x10,0x17,0x80,0x8,0x82,0x3,0x80,0x5,0x0,0x18,0x80,0x8,0x0,0x19,0x0,0x80,0x5,0x1A,0x8,0x80,0x2A))
Dumped = Dumped:gsub(string.char(0x01,0x00,0x00,0x00,0x1f,0x00,0x80,0x00), string.char(0x00,0x00,0x00,0x00))
JGdbc = dec_hex("0061000080410101")
GDbchz = dec_hex("0061000080813E01")
Dumped = Dumped:gsub(JGdbc,GDbchz)
return Dumped
end
toass('Dumping Script',10)
ns.svStr = Dumper(ns.svStr)
--ns.svStr = string.dump(load(ns.svStr), true)
toass('Testing Script',5)
ns.loaders,ns.error=load(ns.svStr)
if ns.loaders == nil then
print(ns.error)
return gg.alert('🐣 Error !!')
end
io.output(ns.out)
io.write(ns.svStr)
gg.alert('🌟 Script was Successfully Encrypted !\n⌚ Time : ' .. textTime)
print("📣 Script was Successfully Encrypted !")
print("")
print("📂 File writted to : " .. ns.filename)
print("⛄ Thanks for using Kayracik 6.4 🌟")
break
end -- while