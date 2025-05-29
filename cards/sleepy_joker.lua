SMODS.Joker {
  key = "sleepy_joker",
  config = { extra = { payout = 2} },
  unlocked = true,
  discovered = true, 
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,
  rarity = 2,
  atlas = "EmeraldJokers",
  pos = { x = 4, y = 3 },
  cost = 7,
  
  loc_vars = function(self, info_queue, card)
    return { vars = {card.ability.extra.payout}}
  end,


  calculate = function(self, card, context)
    if context.after then
      if G.GAME.chips + hand_chips * mult < G.GAME.blind.chips then
      return {
        dollars = card.ability.extra.payout
      } end
    end
end
}
