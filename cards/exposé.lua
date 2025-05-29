SMODS.Joker {
  key = "expose",
  config = { extra = { } },
  unlocked = true,
  discovered = true, 
  blueprint_compat = false,
  eternal_compat = true,
  perishable_compat = true,
  rarity = 2,
  atlas = "EmeraldJokers",
  pos = { x = 0, y = 5 },
  cost = 8,


  calculate = function(self, card, context)
    if context.setting_blind and not context.blueprint then
      local my_pos = nil
      for i = 1, #G.jokers.cards do
          if G.jokers.cards[i] == card then my_pos = i; break end
      end
      if my_pos and G.jokers.cards[my_pos+1] and not card.getting_sliced and not G.jokers.cards[my_pos+1].ability.eternal and not G.jokers.cards[my_pos+1].getting_sliced then 
          local sliced_card = G.jokers.cards[my_pos+1]
          sliced_card.getting_sliced = true
          sliced_card:start_dissolve()
          return {
              dollars = sliced_card.sell_cost*2,
              message = "Exposed!",
              colour = G.C.MULT,
          }
      end
    end
  end
}
