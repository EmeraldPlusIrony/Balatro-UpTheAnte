SMODS.Joker {
  key = "isotope",
  config = { extra = { odds = 20} },
  unlocked = true,
  discovered = true, 
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,
  rarity = 3,
  atlas = "EmeraldJokers",
  pos = { x = 0, y = 4 },
  cost = 9,
  
  loc_vars = function(self, info_queue, card)
    return { vars = {card.ability.extra.odds,G.GAME.probabilities.normal}}
  end,



  calculate = function(self, card, context)
    if context.setting_blind then
      G.E_MANAGER:add_event(Event({
        trigger = 'after',
     delay = 0.7,
        func = function() 
            local ready = false
            local cards = {}
            for i=1, 1 do
                cards[i] = true
                local _suit, _rank = nil, nil
                    _rank = pseudorandom_element({'2', '3', '4', '5', '6', '7', '8', '9', 'T','J', 'Q', 'K','A'}, pseudoseed('isotope'))
                 _suit = pseudorandom_element({'S','H','D','C'}, pseudoseed('isotope'))
                _suit = _suit or 'S'; _rank = _rank or 'A'
                local cen_pool = {}
             for k, v in pairs(G.P_CENTER_POOLS["Enhanced"]) do
                    if v.key ~= 'm_stone' then 
                        cen_pool[#cen_pool+1] = v
                    end
             end
                isocard = create_playing_card({front = G.P_CARDS[_suit..'_'.._rank], center = pseudorandom_element(cen_pool, pseudoseed('isotope'))}, G.hand, nil, i ~= 1, {G.C.SECONDARY_SET.Spectral})
                local edition = poll_edition('isotope', 13, false, false)
                isocard:set_edition(edition, true)
              end
            playing_card_joker_effects(cards)
        return true end
 })) 
 ready = true
 end
        if context.setting_blind and ready and not context.blueprint then
          if pseudorandom('isotope') < G.GAME.probabilities.normal / card.ability.extra.odds then
            card:start_dissolve()
            end
            ready = false
        end
end
}
