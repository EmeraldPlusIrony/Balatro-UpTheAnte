SMODS.Joker { 
    key = "wild_west",
    config = {extra = {mult = 4, chips = 25}},
    unlocked = true,
    discovered = true, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    rarity = 1,
    atlas = "EmeraldJokers",
    pos = { x = 0, y = 0 },
    cost = 3,

    loc_vars = function(self, info_queue, card)
      return { vars = {card.ability.extra.mult, card.ability.extra.chips}}
    end,


    calculate = function(self, card, context)
        if context.cardarea == G.play and context.individual and not context.repetition and SMODS.has_enhancement(context.other_card, 'm_wild') then
            return{
              mult = card.ability.extra.mult,
              chips = card.ability.extra.chips
            }
          end
    end
}
