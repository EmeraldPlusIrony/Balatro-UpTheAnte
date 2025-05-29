SMODS.Joker { 
    key = "graded_card",
    config = {extra = {mult = 3}},
    unlocked = true,
    discovered = true, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    rarity = 2,
    atlas = "EmeraldJokers",
    pos = { x = 0, y = 3 },
    cost = 5,

    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.mult}}
      end,
    calculate = function(self, card, context)
        if context.cardarea == G.play and context.individual and not context.repetition and context.other_card.config.center == G.P_CENTERS.c_base and not context.other_card.debuffed then
            return{
              mult = card.ability.extra.mult,
            }
          end
    end
}

