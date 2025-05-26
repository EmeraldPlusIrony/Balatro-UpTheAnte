SMODS.Joker { 
    key = "dnd",
    config = {extra = {dollars = 3}},
    unlocked = true,
    discovered = true, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    rarity = 1,
    atlas = "EmeraldJokers",
    pos = { x = 3, y = 1 },
    cost = 3,

    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.dollars}}
      end,

    calculate = function(self, card, context)
        if context.after then
            local debuffed = {}
            for k, v in ipairs(context.scoring_hand) do
                if v.debuff then 
                    debuffed[#debuffed+1] = v
                end
            end
            if #debuffed > 0 then
                return {
                    dollars = card.ability.extra.dollars * #debuffed
                }
            end

        end
    end
}

