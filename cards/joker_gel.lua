SMODS.Joker { 
    key = "joker_gel",
    config = {extra = {xmult = 1, scaling = 0.1}},
    unlocked = true,
    discovered = true, 
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    rarity = 3,
    atlas = "EmeraldJokers",
    pos = { x = 1, y = 2 },
    cost = 7,

    loc_vars = function(self, info_queue, card)
      return { vars = {card.ability.extra.xmult, card.ability.extra.scaling}}
    end,


    calculate = function(self, card, context)
      if context.end_of_round and G.GAME.current_round.hands_played == 1 and context.cardarea == G.jokers then
              card.ability.extra.xmult = 1
              return {
                message = localize('k_reset'),
            }
          else if context.after and G.GAME.chips then
            card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.scaling
            G.E_MANAGER:add_event(Event({
                func = function() card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_upgrade_ex')}); return true
                       end}))
      end

      if context.joker_main then
        return {
             xmult = card.ability.extra.xmult,
             colour = G.C.MULT,
        } end
      end
 end

}
