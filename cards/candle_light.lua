SMODS.Joker {
  key = "candle_light",
  config = { extra = { x_mult = 1, scaling = 0.25} },
  unlocked = true,
  discovered = true, 
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,
  rarity = 2,
  atlas = "EmeraldJokers",
  pos = { x = 2, y = 6 },
  cost = 6,
  
  loc_vars = function(self, info_queue, card)
    return { vars = {card.ability.extra.x_mult,card.ability.extra.scaling}}
  end,
  
  calculate = function(self, card, context)
    if context.destroying_card and context.destroying_card.seal then
      card.ability.extra.x_mult = card.ability.extra.x_mult + card.ability.extra.scaling
      return { remove = true }
    end
    if context.joker_main and card.ability.extra.x_mult > 1 then
      return {
          message = localize{type='variable',key='a_xmult',vars={card.ability.extra.x_mult}},
          Xmult_mod = card.ability.extra.x_mult,
          colour = G.C.MULT,
      }
    end
end
}