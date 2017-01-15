function fall_off(x, y)
    return 1.0-((((-1.0-x)^2+(-0.5-y)^2)^0.5)/4.0)
end

script.on_event(defines.events.on_entity_died, function(event)
    local entity = event.entity

    if entity.type == "unit-spawner" then

        for y = -3, 2 do
            for x = -4, 2 do
                game.surfaces[1].create_entity(
                {
                    name = "alien-waste",
                    amount = math.floor(5000*fall_off(x,y)),
                    position =
                    {
                        entity.position.x+x,
                        entity.position.y+y
                    }
                })
            end
        end
    end
end)
