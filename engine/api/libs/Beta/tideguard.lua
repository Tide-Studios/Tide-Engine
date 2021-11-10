TideGuard = {}
local run = false
local a= [[

]]
 --- Put your code here

if run == true then
a = "--// Decompiled Code. \n" .. a
function Obfuscate(b)
    local c =
        "function IllIlllIllIlllIlllIlllIll(IllIlllIllIllIll) if (IllIlllIllIllIll==(((((919 + 636)-636)*3147)/3147)+919)) then return not true end if (IllIlllIllIllIll==(((((968 + 670)-670)*3315)/3315)+968)) then return not false end end; "
    local d = c
    local e = ""
    local f = {"IllIllIllIllI", "IIlllIIlllIIlllIIlllII", "IIllllIIllll"}
    local g = [[local IlIlIlIlIlIlIlIlII = {]]
    local h = [[local IllIIllIIllIII = loadstring]]
    local i = [[local IllIIIllIIIIllI = table.concat]]
    local j = [[local IIIIIIIIllllllllIIIIIIII = "''"]]
    local k = "local " .. f[math.random(1, #f)] .. " = (7*3-9/9+3*2/0+3*3);"
    local l = "local " .. f[math.random(1, #f)] .. " = (3*4-7/7+6*4/3+9*9);"
    local m = "--// Obfuscated with TideGuard 1.1 \n\n"
    for n = 1, string.len(b) do
        e = e .. "'\\" .. string.byte(b, n) .. "',"
    end
    local o = "function IllIIIIllIIIIIl(" .. f[math.random(1, #f)] .. ")"
    local p = "function " .. f[math.random(1, #f)] .. "(" .. f[math.random(1, #f)] .. ")"
    local q = "local " .. f[math.random(1, #f)] .. " = (5*3-2/8+9*2/9+8*3)"
    local r = "end"
    local s = "IllIIIIllIIIIIl(900283)"
    local t = "function IllIlllIllIlllIlllIlllIllIlllIIIlll(" .. f[math.random(1, #f)] .. ")"
    local q = "function " .. f[math.random(1, #f)] .. "(" .. f[math.random(1, #f)] .. ")"
    local u = "local " .. f[math.random(1, #f)] .. " = (9*0-7/5+3*1/3+8*2)".." --[[ Trying too hard, boi--]] ".."local lol = 'l'".."local LOK = 'll'".." local LOKK = 10".." local LOKKL = 20 - 10 ".." local LOKKLL = 20".." local LOKKKLL = 20".." local LOKKKKLLL = 292".." local XOK = string.reverse('LOL')".." local XOK = 10".." local XOKK = 10".." local XOKKK = 40".." local XOKKKK = 50".." local LO = 10".." local LLO = 20".." local LLLO = 30".." local LLLOO = 10".." local LLLOOO = 20".." local LLLOOOO = 40".." local LOLL = TideguardLL + TideGuard - TideguardX - TideguardXX".." local VM = {'45','65','39','41'}".."local XK = 45".." local KXX = 10".." local HXA = {1,2,3,4,5,6,7,8,9,10,11,12,45,65,7876,76875}".." local JKP = string.byte('APxSDFG')".." local KLI = {'\99','BLKA','OA','\114',10 + 5/6*8/9*2}".." local SLA = {'\111','Baks','siU','lKA'}".."local Km = {'\108','\68','\84','\97','\116'}"
    local v = "end"
    local w = "IllIlllIllIlllIlllIlllIllIlllIIIlll(9083)"
    local x =
        m ..
        d ..
            k ..
                l ..
                    i ..
                        ";" ..
                            o ..
                                " " ..
                                    p ..
                                        " " ..
                                            q ..
                                                " " ..
                                                    r ..
                                                        " " ..
                                                            r ..
                                                                " " ..
                                                                    r ..
                                                                        ";" ..
                                                                            s ..
                                                                                ";" ..
                                                                                    t ..
                                                                                        " " ..
                                                                                            q ..
                                                                                                " " ..
                                                                                                    u ..
                                                                                                        " " ..
                                                                                                            v ..
                                                                                                                " " ..
                                                                                                                    v ..
                                                                                                                        ";" ..
                                                                                                                            w ..
                                                                                                                                ";" ..
                                                                                                                                    h ..
                                                                                                                                        ";" ..
                                                                                                                                            g ..
                                                                                                                                                e ..
                                                                                                                                                    "}" ..
                                                                                                                                                        "IllIIllIIllIII(IllIIIllIIIIllI(IlIlIlIlIlIlIlIlII,IIIIIIIIllllllllIIIIIIII))()"
                                                                                                                      os.remove("engine/temp/output.lua")                                  
  local output = io.open("engine/temp/output.lua","w+")
  output:write(x)
  output:close()
  
end
do
    Obfuscate(a)
end

end







return TideGuard