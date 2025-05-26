SMODS.Joker { 
    key = "spider_web",
    config = {extra = {mult_mod=1, chip_mod=8}},
    unlocked = true,
    discovered = true, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    rarity = 1,
    atlas = "EmeraldJokers",
    pos = { x = 3, y = 6 },
    cost = 5,

    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.mult_mod, card.ability.extra.chip_mod}}
      end,

    calculate = function(self, card, context)

        if context.cardarea == G.play and context.individual and not context.repetition and context.other_card:get_id() == 8 then
            context.other_card.ability.perma_mult = context.other_card.ability.perma_mult + card.ability.extra.mult_mod
            context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus + card.ability.extra.chip_mod
            return {
                message = localize('k_upgrade_ex'),
                colour = G.C.MONEY
            }
        end
    end
}

