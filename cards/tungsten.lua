SMODS.Joker {
  key = "tungsten",
  config = { extra = { x_mult = 1, scaling = 0.5} },
  unlocked = true,
  discovered = true, 
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,
  rarity = 3,
  atlas = "EmeraldJokers",
  pos = { x = 3, y = 5 },
  cost = 9,
  
  loc_vars = function(self, info_queue, card)
    return { vars = {card.ability.extra.x_mult, card.ability.extra.scaling}}
  end,


  calculate = function(self, card, context)
    if context.after and G.GAME.current_round.hands_played == 0 then
      if hand_chips*mult>=G.GAME.blind.chips then
        if not context.blueprint then
          card.ability.extra.x_mult = card.ability.extra.x_mult + card.ability.extra.scaling
          return { message = localize{type='variable',key='a_xmult',vars={card.ability.extra.x_mult}},}
        end
        else
      card.ability.extra.x_mult = 1
      return {
        message = localize('k_reset')
      }
    end
  end
  if context.joker_main then
    return {
      x_mult = card.ability.extra.x_mult
    }
  end
end
}