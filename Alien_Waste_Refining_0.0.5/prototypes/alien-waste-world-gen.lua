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
        type = "resource",
        name = "alien-waste",
        icon = "__Alien_Waste_Refining__/graphics/icons/alien-waste.png",
        flags = {"placeable-neutral"},
        order = "a-b-a",
        minable = 
        {
            hardness = 1.4,
            mining_time = 2,
            result = "alien-artifact"
        },
        collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
        stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
        stages = 
        {
            sheet = 
            {
                filename = "__Alien_Waste_Refining__/graphics/entity/alien-waste.png",
                tint = {r=0.54, g=0.8, b=0.75},
                width = 38,
                height = 38,
                frame_count = 4,
                variation_count = 8
            }
        },
        autoplace = 
        {
            control = "alien-waste",
            sharpness = 1,
            richness_multiplier = 5000,
            richness_multiplier_distance_bonus = 20,
            richness_base = 2000,
            coverage = 0.02,
            peaks = {
            {
                noise_layer = "alien-waste",
                noise_octaves_difference = -1.5,
                noise_persistence = 0.3,
                starting_area_weight_optimal = 0,
                starting_area_weight_range = 0,
                starting_area_weight_max_range = 2,
            },
            {
                noise_layer = "alien-waste",
                noise_octaves_difference = -2,
                noise_persistence = 0.3,
                starting_area_weight_optimal = 1,
                starting_area_weight_range = 0,
                starting_area_weight_max_range = 2,
            },
            {
                influence = 0.15,
                starting_area_weight_optimal = 1,
                starting_area_weight_range = 0,
                starting_area_weight_max_range = 2,
            }
        }
        },
        map_color = {r=0.380, g=0.560, b=0.515}
    }
})