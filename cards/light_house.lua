SMODS.Joker {
  key = "light_house",
  config = { extra = { x_mult = 1, scaling = 0.2, poker_hand = 'a random poker hand'} },
  unlocked = true,
  discovered = true, 
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,
  rarity = 2,
  atlas = "EmeraldJokers",
  pos = { x = 4, y = 4 },
  cost = 8,
  
  loc_vars = function(self, info_queue, card)
    return { vars = {card.ability.extra.x_mult,card.ability.extra.scaling, card.ability.extra.poker_hand}}
  end,
  
  calculate = function(self, card, context)
    if context.before and context.scoring_name == card.ability.extra.poker_hand  then
      card.ability.extra.x_mult = card.ability.extra.x_mult + card.ability.extra.scaling
      return {
          message = "X"..card.ability.extra.x_mult,
          colour = G.C.MULT,
      }
    end
    if context.end_of_round and context.cardarea == G.jokers and not context.blueprint then
      local _poker_hands = {}
      for k, v in pairs(G.GAME.hands) do
          if v.visible and k ~= card.ability.extra.poker_hand  then _poker_hands[#_poker_hands+1] = k end
      end
      card.ability.extra.poker_hand  = pseudorandom_element(_poker_hands, pseudoseed('light_house'))
      return {
          message = localize('k_reset'),
      }
  end
    if context.joker_main and card.ability.extra.x_mult > 1 then
      return {
          message = localize{type='variable',key='a_xmult',vars={card.ability.extra.x_mult}},
          Xmult_mod = card.ability.extra.x_mult,
          colour = G.C.MULT,
      }
    end
    set_ability = function(self, card, initial, delay_sprites)
      local _poker_hands = {}
      for k, v in pairs(G.GAME.hands) do
          if v.visible and k ~= card.ability.extra.poker_hand then
              _poker_hands[#_poker_hands + 1] = k
          end
      end
      card.ability.extra.poker_hand = pseudorandom_element(_poker_hands, pseudoseed('light_house'))
  end
  end
}