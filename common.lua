
function count_suits(context)
    local suits = {
        ['Hearts'] = 0,
        ['Diamonds'] = 0,
        ['Spades'] = 0,
        ['Clubs'] = 0
    }
    for i = 1, #context.scoring_hand do
        if context.scoring_hand[i].ability.name ~= 'Wild Card' then
            for j,v in pairs(suits) do
                if context.scoring_hand[i]:is_suit(j, true) and suits[j] == 0 then suits[j] = 1 end
            end
        elseif context.scoring_hand[i].ability.name == 'Wild Card' then
            for j,v in pairs(suits) do
                if context.scoring_hand[i]:is_suit(j) and suits[j] == 0 then suits[j] = 1 break end
            end
        end
    end
    return suits["Hearts"] + suits["Diamonds"] + suits["Spades"] + suits["Clubs"]
end

function count_enhancement(enhancement)
    -- sum of total amount of cards in deck with given enhancement
    local counter = 0
    for _, v in pairs(G.playing_cards or {}) do
        if SMODS.has_enhancement(v, enhancement) then
            counter = counter + 1
        end
    end
    return counter
end


-- description tab loc vars in mods menu
SMODS.current_mod.description_loc_vars = function()
    -- shadow is still awaiting PR as of 2025/02/02, see https://github.com/Steamodded/smods/pull/433
    return { background_colour = G.C.CLEAR, text_colour = G.C.WHITE, scale = 1.2, shadow = true }
end



local old_loc_colour = loc_colour
function loc_colour(_c, _default)
    -- hook for custom colours
    local custom_colours = {
        emerald_l = HEX("1F62CA"),
        snazzy_r = HEX("1F62CA")
    }
    if custom_colours[_c] then
        return custom_colours[_c]
    end

    return old_loc_colour(_c, _default)
end
