SMODS.Joker { 
    key = "ketchup_mustard",
    config = {extra = { xmult = 1.5, scaling = 0.05}},
    unlocked = true,
    discovered = true, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    rarity = 1,
    atlas = "EmeraldJokers",
    pos = { x = 1, y = 1 },
    cost = 6,



    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.xmult, card.ability.extra.scaling}}
      end,

    calculate = function(self, card, context)
        if context.cardarea == G.play and context.individual and not context.repetition and (context.other_card:is_suit("Diamonds") or context.other_card:is_suit("Hearts")) then
            return {
                xmult = card.ability.extra.xmult
            }
        end
        if context.final_scoring_step and not context.blueprint then
            card.ability.extra.xmult = card.ability.extra.xmult - card.ability.extra.scaling
            if card.ability.extra.xmult <= 1 then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        play_sound('tarot1')
                        card.T.r = -0.2
                        card:juice_up(0.3, 0.4)
                        card.states.drag.is = true
                        card.children.center.pinch.x = true
                        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, blockable = false,
                            func = function()
                                    G.jokers:remove_card(self)
                                    card:remove()
                                    card = nil
                                return true; end})) 
                        return true
                    end
                }))
                return {
                    message = localize('k_eaten_ex'),
                    colour = G.C.MONEY
                }
            end
        end

        if context.final_scoring_step and not context.blueprint then
            return {
                message = "X"..card.ability.extra.xmult,
                color = G.C.MULT
            }
        end
    end
}
    
