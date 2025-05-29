SMODS.Joker { 
    key = "fish_chips",
    config = {extra = { upgrade = 30, scaling = 5}},
    unlocked = true,
    discovered = true, 
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    rarity = 1,
    atlas = "EmeraldJokers",
    pos = { x = 2, y = 0 },
    cost = 6,



    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.upgrade, card.ability.extra.scaling}}
      end,

    calculate = function(self, card, context)
        if context.cardarea == G.play and context.individual and not context.repetition and context.other_card == (context.scoring_hand[5] or 0) then
            context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus + card.ability.extra.upgrade
            return {
                message = localize('k_upgrade_ex'),
                colour = G.C.MONEY
            }
        end
        if context.final_scoring_step and not context.blueprint then
            card.ability.extra.upgrade = card.ability.extra.upgrade - card.ability.extra.scaling
            if card.ability.extra.upgrade <= 1 then
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
                message = "+"..card.ability.extra.upgrade,
                color = G.C.CHIPS
            }
        end
    end
}
    
