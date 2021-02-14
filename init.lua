
-- Load support for intllib.
local path = minetest.get_modpath(minetest.get_current_modname()) .. "/"

local S = minetest.get_translator and minetest.get_translator("livingnether") or
		dofile(path .. "intllib.lua")

mobs.intllib = S


-- Check for custom mob spawn file
local input = io.open(path .. "spawn.lua", "r")

if input then
	mobs.custom_spawn_animal = true
	input:close()
	input = nil
end


-- Animals
dofile(path .. "razorback.lua") -- 
dofile(path .. "lavawalker.lua") -- 
dofile(path .. "tardigrade.lua") -- 
dofile(path .. "flyingrod.lua") -- 
dofile(path .. "cyst.lua") -- 
dofile(path .. "whip.lua") -- 
dofile(path .. "noodlemaster.lua") -- 
dofile(path .. "sokaarcher.lua") -- 
dofile(path .. "sokameele.lua") -- 



-- Load custom spawning
if mobs.custom_spawn_animal then
	dofile(path .. "spawn.lua")
end



print (S("[MOD] Mobs Redo Animals loaded"))
