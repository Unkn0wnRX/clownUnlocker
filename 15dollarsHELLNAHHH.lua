-- some basic checks

if not menu.is_trusted_mode_enabled(1 << 1) then --Trust dem globalz on
    menu.notify("turn dem globalz on")
    menu.exit()
end

local function gunVan()
    for i = 33799, 33799, 1 do
        script.set_global_i(262145 + i, 1)
        system.wait(2)
    end
end
local function baseBallnKnifeLivery()
    for i = 33877, 33877, 1 do
        script.set_global_i(262145 + i, 0)
        system.wait(2)
    end
end
local function fiftyCarz()
    script.set_global_i(262145 + 32702, 1)
    script.set_global_i(262145 + 32688, 0)
end
local function carz()
    for i = 33957, 33972, 1 do
        script.set_global_i(262145 + i, 1)
        script.set_global_i(262145 + 33963, 1)
        system.wait(2)
    end
end
local function taxiJob()
    for i = 33770, 33770, 1 do
        script.set_global_i(262145 + i, 1)
        system.wait(2)
    end
end
local function streetDeala()
    for i = 34062, 34062, 1 do
        script.set_global_i(262145 + i, 1)
        system.wait(2)
    end
end

rootManu = menu.add_feature("i aint payin $15", "parent", 0) --Show dat shit in the scripts submenu
menu.add_feature("gun van", "action", rootManu.id, function(f) 
    gunVan()
end)
menu.add_feature("stupid liveries", "action", rootManu.id, function(f) 
    baseBallnKnifeLivery()
end)
menu.add_feature("50 car garage", "action", rootManu.id, function(f)
    fiftyCarz()
end)
menu.add_feature("cars", "toggle", rootManu.id, function(f)
     while f.on do
        carz()
    end 
end)
menu.add_feature("taxi jobe", "action", rootManu.id, function(f)
    taxiJob()
end)
menu.add_feature("street deala", "action", rootManu.id, function(f)
    streetDeala()
end)