return {
    descriptions = {
        --Back={},
        --Blind={},
        --Edition={},
        --Enhanced={},
        Joker = {
            j_pm_creative_joker = {
                name = 'Creative Joker',
                text = {
                    '{C:mult}+#1#{} Mult if hand',
                    'has not been',
                    'played this round'
                }
            },
            j_pm_241_special = {
                name = '2 for 1 Special',
                text = {
                    'If played hand has',
                    'exactly 1 card, add',
                    'a random {C:attention}enhancement{}',
                    'and {C:attention}seal{} to the card'
                }
            },
            j_pm_aces_low = {
                name = 'Aces Low',
                text = {
                    'Aces score 1 chip',
                    'permanently after played.',
                    'Gains {X:mult,C:white}X#2#{} Mult',
                    'for each Ace scored',
                    '{C:inactive}(Currently {X:mult,C:white} X#1# {C:inactive} Mult)'
                }
            },
            j_pm_lucretia = {
                name = 'Lucretia',
                text = {
                    'Create a negative copy',
                    'of a random joker',
                    '(other than Lucretia)',
                    'at the end of',
                    'each {C:attention}Ante'        
                }
            }
        }
        --Other={},
        --Planet={},
        --Spectral={},
        --Stake={},
        --Tag={},
        --Tarot={},
        -- Voucher = {},
    },
    misc = {
        dictionary = {
            pm_good_boy_fetch = 'Fetched!',
            pm_bad_girl_eat = "Naughty!"
        }
    }
    --achievement_descriptions={},
    -- achievement_names={},
    --blind_states={},
    -- challenge_names={},
    -- collabs={},
    --dictionary={},
    --high_scores={},
    -- labels={},
    -- poker_hand_descriptions={},
    --  poker_hands={},
    --  quips={},
    --  ranks={},
    -- suits_plural={},
    -- suits_singular={},
    --  v_dictionary={},
    -- v_text={},
    --},
}