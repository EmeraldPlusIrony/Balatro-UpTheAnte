SMODS.Joker {
  key = "lone_joker",
  config = { extra = { mult = 0, scaling = 2} },
  unlocked = true,
  discovered = true, 
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,
  rarity = 1,
  atlas = "EmeraldJokers",
  pos = { x = 2, y = 4 },
  cost = 6,
  
  loc_vars = function(self, info_queue, card)
    return { vars = {card.ability.extra.mult,card.ability.extra.scaling, card.ability.extra.scaling}}
  end,
  
  calculate = function(self, card, context)
    if context.setting_blind and G.jokers.config.card_limit - #G.jokers.cards > 0 and context.main_eval and not context.blueprint then
      card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.scaling*(G.jokers.config.card_limit - #G.jokers.cards)
      return {
          message = 'Sad...',
          colour = G.C.MULT,
      }
  end
    if context.joker_main and card.ability.extra.mult > 1 then
      return {
          mult = card.ability.extra.mult,
          colour = G.C.MULT,
      }
    end
  end
}
