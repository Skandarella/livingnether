mobs:register_mob("livingnether:flyingrod", {
stepheight = 3,
	type = "animal",
	passive = true,
        attack_type = "dogfight",
	attack_animals = false,
	reach = 2,
        damage = 1,
	hp_min = 45,
	hp_max = 60,
	armor = 100,
	collisionbox = {-0.3, -0.01, -1, 0.3, 0.3, 0.3},
	visual = "mesh",
	mesh = "Flyingrod.b3d",
	visual_size = {x = 1.0, y = 1.0},
	textures = {
		{"textureflyingrod.png"},
	},
	sounds = {
		random = "livingnether_flyingrod",
	},
	makes_footstep_sound = false,
	walk_velocity = 13,
	run_velocity = 13,
        walk_chance = 100,
	fall_speed = 0,
	jump = true,
        jump_height = 6,
	fly = true,
	stepheight = 3,
	drops = {
		{name = "animalworld:chicken_raw", chance = 1, min = 1, max = 1},
	        {name = "animalworld:chicken_feather", chance = 1, min = 1, max = 1},
	
	},
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
	fear_height = 0,
	animation = {
		speed_normal = 130,
		stand_start = 0,
		stand_end = 100,
		walk_start = 0,
		walk_end = 100,
		fly_start = 0, -- swim animation
		fly_end = 100,
		-- 50-70 is slide/water idle
	},

fly_in = {"air"},
	floats = 0,
view_range = 4,

	on_rightclick = function(self, clicker)

		-- feed or tame
		if mobs:feed_tame(self, clicker, 4, false, true) then return end
		if mobs:protect(self, clicker) then return end
		if mobs:capture_mob(self, clicker, 5, 50, 80, false, nil) then return end
	end,
})

if not mobs.custom_spawn_animal then
mobs:spawn({
	name = "livingnether:flyingrod",
	nodes = {"nether:rack"},
	min_light = 0,
	interval = 60,
	active_object_count = 5,
	chance = 8000, -- 15000
	min_height = -8000,
	max_height = -3000,
})
end

mobs:register_egg("livingnether:flyingrod", ("Flyingrod"), "aflyingrod.png")
