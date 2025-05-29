SMODS.Joker { 
    key = "neapolitan",
    config = {extra = {xmult=3}},
    unlocked = true,
    discovered = true, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    rarity = 2,
    atlas = "EmeraldJokers",
    pos = { x = 3, y = 0 },
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.xmult}}
      end,

    calculate = function(self, card, context)
        if context.joker_main and count_suits(context) == 3 then
            return {
                xmult = card.ability.extra.xmult
            }
        end

    end
}
