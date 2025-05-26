SMODS.Joker {
  key = "jokERROR",
  config = { extra = { } },
  unlocked = true,
  discovered = true, 
  blueprint_compat = false,
  eternal_compat = true,
  perishable_compat = true,
  rarity = 2,
  atlas = "EmeraldJokers",
  pos = { x = 0, y = 1 },
  cost = 6,


  calculate = function(self, card, context)
      if context.before and not context.blueprint and G.GAME.current_round.hands_played == 0 then
        local suit = pseudorandom_element(SMODS.Suits, pseudoseed('vandalised'))
        for k, v in ipairs(context.scoring_hand) do
                G.E_MANAGER:add_event(Event({
                    func = function()
                        v:juice_up()
                        v:change_suit(suit.key)
                        return true
                    end
                })) 
                v.base.suit = suit.key
        end
        return {
          message = localize('k_ERROR'),
          colour = G.C.PURPLE
        }
      end
  end
}
