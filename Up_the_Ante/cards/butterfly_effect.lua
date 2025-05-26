SMODS.Joker {
  key = "butterfly_effect",
  config = { extra = { payout = 8, scaling = 1, maximum=2} },
  unlocked = true,
  discovered = true, 
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,
  rarity = 2,
  atlas = "EmeraldJokers",
  pos = { x = 0, y = 6 },
  cost = 8,
  
  loc_vars = function(self, info_queue, card)
    return { vars = {card.ability.extra.payout,card.ability.extra.scaling,card.ability.extra.maximum}}
  end,



  calculate = function(self, card, context)
    
    if context.end_of_round and G.GAME.blind.boss and not context.blueprint and context.cardarea == G.jokers then
      card.ability.extra.payout = card.ability.extra.payout + card.ability.extra.scaling
      return { message = localize('k_upgrade_ex')}
    end
    if context.ending_shop and not context.blueprint and G.GAME.dollars > card.ability.extra.maximum then
      card:start_dissolve()
    end
  end,
  


  calc_dollar_bonus = function(self, card)
		return card.ability.extra.payout
  end,
}