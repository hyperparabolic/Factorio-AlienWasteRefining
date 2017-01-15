data:extend({
    {
        type = "particle",
        name = "alien-waste-particle",
        flags = {"not-on-map"},
        life_time = 180,
        pictures = 
        {
            {
                filename = "__Alien_Waste_Refining__/graphics/entity/alien-waste-particle-1.png",
                priority = "extra-high",
                width = 5,
                height = 5,
                frame_count = 1
            },
            {
                filename = "__Alien_Waste_Refining__/graphics/entity/alien-waste-particle-2.png",
                priority = "extra-high",
                width = 5,
                height = 5,
                frame_count = 1
            },
            {
                filename = "__Alien_Waste_Refining__/graphics/entity/alien-waste-particle-3.png",
                priority = "extra-high",
                width = 5,
                height = 5,
                frame_count = 1
            },
            {
                filename = "__Alien_Waste_Refining__/graphics/entity/alien-waste-particle-4.png",
                priority = "extra-high",
                width = 5,
                height = 5,
                frame_count = 1
            }
        },
        shadows = 
        {
            {
                filename = "__Alien_Waste_Refining__/graphics/entity/alien-waste-particle-shadow-1.png",
                priority = "extra-high",
                width = 5,
                height = 5,
                frame_count = 1
            },
            {
                filename = "__Alien_Waste_Refining__/graphics/entity/alien-waste-particle-shadow-2.png",
                priority = "extra-high",
                width = 5,
                height = 5,
                frame_count = 1
            },
            {
                filename = "__Alien_Waste_Refining__/graphics/entity/alien-waste-particle-shadow-3.png",
                priority = "extra-high",
                width = 5,
                height = 5,
                frame_count = 1
            },
            {
                filename = "__Alien_Waste_Refining__/graphics/entity/alien-waste-particle-shadow-4.png",
                priority = "extra-high",
                width = 5,
                height = 5,
                frame_count = 1
            },
        }
    }
})


data:extend({
    {
        type = "autoplace-control",
        name = "alien-waste",
        richness = true,
        order = "b-e"
    },
    {
        type = "noise-layer",
        name = "alien-waste"
    },
    {
        type = "item",
        name = "alien-waste",
        icon = "__Alien_Waste_Refining__/graphics/icons/alien-waste.png",
        flags = {"goes-to-main-inventory"},
        subgroup = "raw-resource",
        order = "b-d[alien-waste]",
        stack_size = 50
    },
    {
        type = "fluid",
        name = "alien-waste-water",
        default_temperature = 25,
        heat_capacity = "1KJ",
        base_color = {0.76, 0.52, 0.92},
        flow_color = {0.89, 0.43, 0.92},
        max_temperature = 100,
        icon = "__Alien_Waste_Refining__/graphics/icons/alien-waste-water.png",
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
        order = "a[fluid]-b[alien-waste-water]"
    },
    {
        type = "resource",
        name = "alien-waste",
        icon = "__Alien_Waste_Refining__/graphics/icons/alien-waste.png",
        flags = {"placeable-neutral"},
        order = "a-b-a",
        minable = 
        {
            hardness = 1.4,
            mining_particle = "alien-waste-particle",
            mining_time = 2,
            result = "alien-waste"
        },
        collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
        stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
        stages = 
        {
            sheet = 
            {
                filename = "__Alien_Waste_Refining__/graphics/entity/alien-waste.png",
                width = 38,
                height = 38,
                frame_count = 4,
                variation_count = 8
            }
        },
        map_color = {r=0.76, g=0.52, b=0.92}
    }
})