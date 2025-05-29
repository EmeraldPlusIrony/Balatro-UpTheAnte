SMODS.Joker {
  key = "schrodinger_joker",
  config = { extra = { x_mult = 2, odds = 2} },
  unlocked = true,
  discovered = true, 
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,
  rarity = 1,
  atlas = "EmeraldJokers",
  pos = { x = 1, y = 6 },
  cost = 6,
  
  loc_vars = function(self, info_queue, card)
    return { vars = {card.ability.extra.x_mult,card.ability.extra.odds,G.GAME.probabilities.normal}}
  end,

  add_to_deck = function(self, card, from_debuff)
    if pseudorandom('schrodingerjoker') < G.GAME.probabilities.normal / card.ability.extra.odds then
    card:start_dissolve()
    end
  end,

  calculate = function(self, card, context)
    
    if context.joker_main and card.ability.extra.x_mult > 1 then
      return {
          message = localize{type='variable',key='a_xmult',vars={card.ability.extra.x_mult}},
          Xmult_mod = card.ability.extra.x_mult,
          colour = G.C.MULT,
      }
    end
  end
}