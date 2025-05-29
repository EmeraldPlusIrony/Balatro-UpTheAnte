SMODS.Joker { 
    key = "peeloff_joker",
    config = {extra = {upgrade = 1}},
    unlocked = true,
    discovered = true, 
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    rarity = 1,
    atlas = "EmeraldJokers",
    pos = { x = 3, y = 4 },
    cost = 5,

    loc_vars = function(self, info_queue, card)
      return { vars = {card.ability.extra.upgrade}}
    end,


    calculate = function(self, card, context)
    if context.before and not context.blueprint then
      local enhanced = {}
      for k, v in ipairs(context.scoring_hand) do
          if v.config.center ~= G.P_CENTERS.c_base and not v.debuff and not v.vampired then 
              enhanced[#enhanced+1] = v
              v.vampired = true
              v:set_ability(G.P_CENTERS.c_base, nil, true)
              G.E_MANAGER:add_event(Event({
                  func = function()
                      v:juice_up()
                      v.vampired = nil
                      return true
                  end
              })) 
          end
      end
      card.ability.extra_value = card.ability.extra_value + card.ability.extra.upgrade*#enhanced
      card:set_cost()
      return {
        message =             localize('k_upgrade_ex'),

      } end
    end
}
