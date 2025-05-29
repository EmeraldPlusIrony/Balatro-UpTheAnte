SMODS.Joker {
  key = "recursion",
  config = { extra = { retriggers = 1, same = true } },
  unlocked = true,
  discovered = true, 
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,
  rarity = 3,
  atlas = "EmeraldJokers",
  pos = { x = 1, y = 3 },
  cost = 7,


  calculate = function(self, card, context)
      if context.before and not context.blueprint then
        local cards = {}
        card.ability.extra.same = true
        for k, v in ipairs(context.full_hand) do
          cards[#cards+1] = v
          if v:get_id() ~= cards[1]:get_id() then 
            card.ability.extra.same = false
          end
        end

      end

      if context.repetition and context.cardarea == G.play and card.ability.extra.same then
        return {
          message = localize('k_again_ex'),
          repetitions = card.ability.extra.retriggers,
      }
      end

  end
}
