data:extend({
    {
        type = "technology",
        name = "alien-waste-refining",
        icon = "__Alien_Waste_Refining__/graphics/icons/alien-waste-technology.png",
        localised_description = {"technology-description.alien-waste-refining"},
        effects = 
        {
            {
                type = "unlock-recipe",
                recipe = "filter-alien-waste"
            },
            {
                type = "unlock-recipe",
                recipe = "clean-alien-waste-water"
            }
        },
        unit = 
        {
            count = 100,
            ingredients =
            {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
                {"science-pack-3", 1}
            },
            time = 60
        },
        order = "e-k"
    }
})