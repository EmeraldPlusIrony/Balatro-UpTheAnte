SMODS.Joker { 
    key = "wwj",
    config = {extra = {upgrade = 1}},
    unlocked = true,
    discovered = true, 
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    rarity = 1,
    atlas = "EmeraldJokers",
    pos = { x = 3, y = 3 },
    cost = 2,

    loc_vars = function(self, info_queue, card)
      return { vars = {card.ability.extra.upgrade}}
    end,


    calculate = function(self, card, context)
      if context.selling_card then
            card.ability.extra_value = card.ability.extra_value + card.ability.extra.upgrade
            card:set_cost()
            G.E_MANAGER:add_event(Event({
                func = function() card_eval_status_text(card, 'extra', nil, nil, nil, {message =             localize('k_upgrade_ex')}); return true
                       end}))
        end
    end
}
