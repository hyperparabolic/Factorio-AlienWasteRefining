data:extend({
    {
        type = "recipe",
        name = "filter-alien-waste",
        category = "chemistry",
        energy_required = 1,
        enabled = false,
        ingredients =
        {
            {type="item", name="alien-waste", amount=100},
            {type="fluid", name="water", amount=100}
        },
        results=
        {
            {type="fluid", name="alien-waste-water", amount=100},
            {type="item", name="alien-artifact", amount=1}
        },
        icon = "__Alien_Waste_Refining__/graphics/icons/filter-alien-waste.png",
        subgroup = "fluid-recipes",
        order = "b[fluid-chemistry]-e[filter-alien-waste]"
    },
    {
        type = "recipe",
        name = "clean-alien-waste-water",
        category = "chemistry",
        energy_required = 5,
        enabled = false,
        ingredients =
        {
            {type="fluid", name="alien-waste-water", amount=5}
        },
        results=
        {
            {type="fluid", name="water", amount=5}
        },
        icon = "__Alien_Waste_Refining__/graphics/icons/clean-alien-waste-water.png",
        subgroup = "fluid-recipes",
        order = "b[fluid-chemistry]-e[clean-alien-waste-water]"
    }
})