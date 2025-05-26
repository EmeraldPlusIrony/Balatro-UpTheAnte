SMODS.Joker { 
    key = "pointillism",
    config = {extra = {chips = 20, scaling=10, total = 0}},
    unlocked = true,
    discovered = true, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    rarity = 1,
    atlas = "EmeraldJokers",
    pos = { x = 4, y = 1 },
    cost = 6,

    loc_vars = function(self, info_queue, card)
      return { vars = {card.ability.extra.chips,card.ability.extra.scaling, card.ability.extra.total}}
    end,
  

    calculate = function(self, card, context)
      if context.joker_main then
        return {
          chips = card.ability.extra.chips * #G.jokers.cards
        }
      end

      if context.main_eval and context.cardarea == G.jokers and G.GAME.blind.boss and context.end_of_round and not context.blueprint then
        card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.scaling
        return {
          message = "+"..card.ability.extra.chips,
          colour = G.C.CHIPS,
      }
    end
    card.ability.extra.total = card.ability.extra.chips * (#G.jokers.cards or 0)
  end
}
