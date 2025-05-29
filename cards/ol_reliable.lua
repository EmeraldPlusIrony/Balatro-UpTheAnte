SMODS.Joker {
  key = "ol_reliable",
  config = { extra = { mult = 3, dollars = 1} },
  unlocked = true,
  discovered = true, 
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,
  rarity = 1,
  atlas = "EmeraldJokers",
  pos = { x = 1, y = 5 },
  cost = 4,

  loc_vars = function(self, info_queue, card)
    return { vars = {card.ability.extra.mult, card.ability.extra.dollars}}
  end,

  calculate = function(self, card, context)
    if context.cardarea == G.play and context.individual and not context.repetition and SMODS.has_enhancement(context.other_card, 'm_lucky') then
      return{
        mult = card.ability.extra.mult,
        dollars = card.ability.extra.dollars
      }
    end
  end
}