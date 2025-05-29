SMODS.Joker { 
    key = "guardsman",
    config = {extra = { repetitions = 0}},
    unlocked = true,
    discovered = true, 
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    rarity = 3,
    atlas = "EmeraldJokers",
    pos = { x = 2, y = 5 },
    cost = 10,

    calculate = function(self, card, context)
        if context.individual and not context.blueprint then
            if context.cardarea == 'unscored' then
                card.ability.extra.repetitions = card.ability.extra.repetitions + 1
            end
        end
        if context.repetition and context.cardarea == G.play then
            return {
              repetitions = card.ability.extra.repetitions
            }
          end
          if context.final_scoring_step then
            card.ability.extra.repetitions = 0
          end
    end
}
