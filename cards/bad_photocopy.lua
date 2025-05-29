SMODS.Joker {
  key = "bad_photocopy",
  config = { extra = { odds = 4} },
  unlocked = true,
  discovered = true, 
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,
  rarity = 1,
  atlas = "EmeraldJokers",
  pos = { x = 2, y = 2 },
  cost = 5,
  
  loc_vars = function(self, info_queue, card)
    local other_joker
    if G.jokers then
      for i = 1, #G.jokers.cards or nil do
        if G.jokers.cards[i] == card then other_joker = G.jokers.cards[i + 1] end
      end
    end

    local compatible = other_joker and other_joker ~= card and other_joker.config.center.blueprint_compat
    main_end = (card.area and card.area == G.jokers) and {
        {
            n = G.UIT.C,
            config = { align = "bm", minh = 0.4 },
            nodes = {
                {
                    n = G.UIT.C,
                    config = { ref_table = card, align = "m", colour = compatible and mix_colours(G.C.GREEN, G.C.JOKER_GREY, 0.8) or mix_colours(G.C.RED, G.C.JOKER_GREY, 0.8), r = 0.05, padding = 0.06 },
                    nodes = {
                        { n = G.UIT.T, config = { text = ' ' .. localize('k_' .. (compatible and 'compatible' or 'incompatible')) .. ' ', colour = G.C.UI.TEXT_LIGHT, scale = 0.32 * 0.8 } },
                    }
                }
            }
        }
    } or nil
    return { vars = {G.GAME.probabilities.normal, card.ability.extra.odds}, main_end = main_end}
  end,


  calculate = function(self, card, context)
    local other_joker = nil
            for i = 1, #G.jokers.cards do
                if G.jokers.cards[i] == card then other_joker = G.jokers.cards[i+1] end
            end

            if other_joker and other_joker ~= card then
              if pseudorandom('bad photocopy') < G.GAME.probabilities.normal / card.ability.extra.odds then
                return SMODS.blueprint_effect(card, other_joker, context)
              end
            end
  end
}