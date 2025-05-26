SMODS.Joker {
  key = "license_plate",
  config = { extra = { count = 0, scaling = 2} },
  unlocked = true,
  discovered = true,
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,
  rarity = 1,
  atlas = "EmeraldJokers",
  pos = { x = 1, y = 4 },
  cost = 2,
  
  loc_vars = function(self, info_queue, card)
      card.ability.extra.count = 0
      for k, v in pairs(G.playing_cards or {}) do
          if next(SMODS.get_enhancements(v)) then card.ability.extra.count = card.ability.extra.count + 1 end
      end
      return { vars = { card.ability.extra.scaling, card.ability.extra.count * card.ability.extra.scaling } }
  end,
  calculate = function(self, card, context)
      if context.joker_main then
        card.ability.extra.count = 0
          for k, v in pairs(G.playing_cards or {} ) do
              if next(SMODS.get_enhancements(v)) then card.ability.extra.count = card.ability.extra.count + 1 end
          end

          return {
              mult = card.ability.extra.count * card.ability.extra.scaling
          }
      end
  end
}