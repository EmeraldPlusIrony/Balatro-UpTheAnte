SMODS.Joker { 
    key = "room_keys",
    config = {extra = {chips = 0, scaling = 10}},
    unlocked = true,
    discovered = true, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    rarity = 1,
    atlas = "EmeraldJokers",
    pos = { x = 3, y = 2 },
    cost = 4,

    loc_vars = function(self, info_queue, card)
      return { vars = {card.ability.extra.chips, card.ability.extra.scaling}}
    end,


    calculate = function(self, card, context)
        if context.before and next(context.poker_hands['Full House']) and not context.blueprint then
          local faces = {}
          for k, v in ipairs(context.scoring_hand) do
              if v:is_face() then 
                  faces[#faces+1] = v
                  card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.scaling
              end
          end
          if #faces > 0 then 
              return {
                  message = "+"..card.ability.extra.chips,
                  colour = G.C.CHIPS,
              }
          end
      end
      if context.joker_main then
        return {
          chips = card.ability.extra.chips
        }
      end
    end
}
