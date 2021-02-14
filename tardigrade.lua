mobs:register_mob("livingnether:tardigrade", {
	stepheight = 2,
	type = "animal",
	passive = true,
	attack_type = "dogfight",
	group_attack = true,
	owner_loyal = true,
	attack_npcs = false,
	reach = 2,
	damage = 2,
	hp_min = 90,
	hp_max = 120,
	armor = 100,
	collisionbox = {-0.6, -0.01, -0.6, 0.6, 0.95, 0.6},
	visual = "mesh",
	mesh = "Tardigrade.b3d",
	textures = {
		{"texturetardigrade.png"},
	},
	makes_footstep_sound = true,
	sounds = {
		random = "livingnether_tardigrade",
	},
	walk_velocity = 1,
	run_velocity = 2,
        walk_chance = 17,
	runaway = true,
        runaway_from = {"animalworld:bear", "animalworld:crocodile", "animalworld:tiger", "animalworld:spider", "animalworld:spidermale", "animalworld:shark", "animalworld:hyena", "animalworld:kobra", "animalworld:monitor", "animalworld:snowleopard", "animalworld:volverine", "player"},
	jump = false,
	jump_height = 3,
	pushable = true,
	view_range = 7,
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	fear_height = 3,
	animation = {
		speed_normal = 75,
		stand_start = 0,
		stand_end = 100,
		walk_start = 100,
		walk_end = 200,
		punch_start = 200,
		punch_end = 300,

		die_start = 1, -- we dont have a specific death animation so we will
		die_end = 2, --   re-use 2 standing frames at a speed of 1 fps and
		die_speed = 1, -- have mob rotate when dying.
		die_loop = false,
		die_rotate = true,
	},
	on_rightclick = function(self, clicker)

		if mobs:feed_tame(self, clicker, 8, true, true) then return end
		if mobs:protect(self, clicker) then return end
		if mobs:capture_mob(self, clicker, 0, 5, 50, false, nil) then return end
	end,
})

if not mobs.custom_spawn_animal then
mobs:spawn({
	name = "livingnether:tardigrade",
	nodes = {"nether:rack"},
	min_light = 0,
	interval = 60,
	active_object_count = 4,
	chance = 8000, -- 15000
	min_height = -8000,
	max_height = -3000,
})
end

mobs:register_egg("livingnether:tardigrade", ("Tardigrade"), "atardigrade.png")


mobs:alias_mob("livingnether:tardigrade", "livingnether:tardigrade") -- compatibility

