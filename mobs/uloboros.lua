mobs:register_mob("bls_mobs:uloboros", {
    type = "monster",
    hp_max = 28,
    hp_min = 17,
    collisionbox = {-0.5, 0.00, -0.5, 0.5, 0.8, 0.5},
    visual = "mesh",
    mesh = "uloboros.x",
    textures = {{"uloboros.png"}},
    visual_size = {x=4, y=4},
    makes_footstep_sound = true,
    view_range = 22,
    walk_velocity = 1.5,
    fear_height = 4,
    run_velocity = 2.5,
    rotate = 270,
    sounds = {
        random = "uloboros",
    },
    damage = 5,
    reach = 2,
    jump = true,
    drops = {
        {name = "bls_mobs:life_energy",
        chance = 1,
        min = 1,
        max = 4,},
        {name = "bls_mobs:spider_leg",
        chance = 2,
        min = 1,
        max = 8,},
        {name = "bls_mobs:silk_gland",
        chance = 4,
        min = 1,
        max = 3,},
        {name = "bls_mobs:spider_meat",
        chance = 4,
        min = 1,
        max = 2,},
    },
    armor = 80,
    drawtype = "front",
    water_damage = 1,
    lava_damage = 7,
    light_damage = 0,
    group_attack=true,
    attack_animals=true,
    knock_back=2,
    blood_texture="bls_mobs_blood_blue.png",
    stepheight=1.1,
    on_rightclick = nil,
    attack_type = "dogfight",
    animation = {
        speed_normal = 20,
        speed_run = 30,
        stand_start = 1,
        stand_end = 80,
        walk_start = 120,
        walk_end = 160,
        run_start = 120,
        run_end = 160,
        punch_start = 80,
        punch_end = 110,
    },
    do_custom = function(self)
        bls_mobs.webber_ability(self, "bls_mobs:web", 2)
    end,
})


mobs:spawn_specific(
    "bls_mobs:uloboros",
    {"caverealms:stone_with_lichen" },
    {"air"},
    0, -- min_light
    13, -- max_light
    10, -- interval
    500000/bls_mobs.multimobs, --chance
    3, -- aoc
    -7000, -- min_height
    -700 -- max_height
)
