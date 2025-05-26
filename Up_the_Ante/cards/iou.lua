SMODS.Joker { 
    key = "iou",
    config = {extra = {odds = 4}},
    unlocked = true,
    discovered = true, 
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    rarity = 2,
    atlas = "EmeraldJokers",
    pos = { x = 2, y = 1 },
    cost = 6,

    loc_vars = function(self, info_queue, card)
      return { vars = {G.GAME.probabilities.normal*3, card.ability.extra.odds}}
    end,


    calculate = function(self, card, context)
        if context.selling_self then
            for i = 1, #G.jokers.cards do
              if G.jokers.cards[i] == card then other_joker = G.jokers.cards[i+1] end
            end
            if pseudorandom('IOU') < G.GAME.probabilities.normal*3 / card.ability.extra.odds then
            if #G.jokers.cards >= G.jokers.config.card_limit then  
             return {
               message = localize('k_no_room_ex'),
               color = G.C.GOLD
             }
           else if other_joker then
            G.E_MANAGER:add_event(Event({trigger = 'before', delay = 0.4, func = function()
            local card = copy_card(other_joker, nil, nil, nil, false)
            other_joker:start_materialize()
            other_joker:add_to_deck()
            G.jokers:emplace(card)
            return true end }))
          end
        end
        else
          other_joker.getting_sliced = true
          other_joker:start_dissolve()
        end
      end
    end
}
