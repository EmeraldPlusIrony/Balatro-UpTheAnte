SMODS.Joker {
  key = "joner",
  config = { extra = { odds = 5} },
  unlocked = true,
  discovered = true, 
  blueprint_compat = false,
  eternal_compat = true,
  perishable_compat = false,
  rarity = 1,
  atlas = "EmeraldJokers",
  pos = { x = 1, y = 0 },
  cost = 3,
  
  loc_vars = function(self, info_queue, card)
    return { vars = {G.GAME.probabilities.normal, card.ability.extra.odds}}
  end,


  calculate = function(self, card, context)

    if context.end_of_round and (pseudorandom('joner') < G.GAME.probabilities.normal / card.ability.extra.odds) and G.cardarea == G.jokers then
      card.getting_sliced = true
      card:start_dissolve()
      return {message = localize('k_ERROR'), color = G.C.RED}
    end

    local other_joker = nil
    local viable_jokers = {}
            for i = 1, #G.jokers.cards do
                if G.jokers.cards[i] ~= card and G.jokers.cards[i].config.center.blueprint_compat then viable_jokers[#viable_jokers+1] = G.jokers.cards[i] end
            end
              other_joker = pseudorandom_element(viable_jokers, pseudoseed('joner'))
    if other_joker and other_joker ~= card and context.cardarea == G.jokers then
        return SMODS.blueprint_effect(card, other_joker, context)
    end
  end
}