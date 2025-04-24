
-- Common Jokers
SMODS.Joker {
    key='creative_joker',
    config = { extra = {mult = 20}, hands = {
        ["Flush Five"] = false,
        ["Flush House"] = false,
        ["Five of a Kind"] = false,
        ["Straight Flush"] = false,
        ["Four of a Kind"] = false,
        ["Full House"] = false,
        ["Flush"] = false,
        ["Straight"] = false,
        ["Three of a Kind"] = false,
        ["Two Pair"] = false,
        ["Pair"] = false,
        ["High Card"] = false,
    } },
    rarity = 1,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    atlas = 'pm_jokers_atlas',
    pos = {x = 2, y = 0},
    cost = 5,

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } };
    end,

    calculate = function(self, card, context)
        if context.joker_main and context.cardarea == G.jokers then
            local thunk = context.scoring_name
            if card.ability.hands[thunk] == false then
                card.ability.hands[thunk] = true
                return{
                    message = localize{type='variable', key='a_mult', vars={card.ability.extra.mult}},
                    mult_mod = card.ability.extra.mult,
                }
            end
            
        end

        if context.end_of_round and context.cardarea == G.jokers then
            card.ability.hands = {
                ["Flush Five"] = false,
                ["Flush House"] = false,
                ["Five of a Kind"] = false,
                ["Straight Flush"] = false,
                ["Four of a Kind"] = false,
                ["Full House"] = false,
                ["Flush"] = false,
                ["Straight"] = false,
                ["Three of a Kind"] = false,
                ["Two Pair"] = false,
                ["Pair"] = false,
                ["High Card"] = false,
            }
        end
    end
}

-- Uncommon Jokers
SMODS.Joker {
    key = '241_special',
    config = { extra={stamps=1, fancies=1} },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    -- atlas= 'pm_jokers_atlas',
    pos = {x = 0, y = 4},
    cost = 5,

    calculate = function (self, card, context)
        if context.before and not context.blueprint then

        end
    end

}


-- Rare Jokers
SMODS.Joker {
    key = 'aces_low',
    config = { extra = {chips = -10, Xmult = 1, Xmult_mod = 0.1} },
    rarity = 3,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    atlas= 'pm_jokers_atlas',
    pos = { x = 0, y = 0 },
    cost = 8,
    
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult, card.ability.extra.Xmult_mod } }
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.play and context.individual and not context.blueprint then
            if context.other_card:get_id() == 14 then
                card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
                if context.other_card.ability.perma_bonus >= 0 then
                    context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus + card.ability.extra.chips
                end
                return {
                    message = localize('k_upgrade_ex'),
                    focus = card
                }
            end
        elseif context.joker_main and context.cardarea == G.jokers and card.ability.extra.Xmult > 1 then
            return
            {
                message = localize{type='variable',key='a_xmult', vars={card.ability.extra.Xmult}},
                Xmult_mod = card.ability.extra.Xmult
            }
        end
    end

}

-- Legendary Joker(s)
SMODS.Joker {
    key = 'lucretia',
    rarity = 4,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = false,
    perishable_compat = false,
    atlas = 'pm_jokers_atlas',
    pos = { x = 1, y = 0 },
    soul_pos = {x = 1, y = 1},
    cost = 25,

    calculate = function(self, card, context)
        if context.end_of_round and G.GAME.blind.boss and not context.repetition and not context.individual and not context.blueprint then
            

        end
    end
}