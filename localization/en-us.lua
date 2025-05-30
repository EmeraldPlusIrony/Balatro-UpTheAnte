return {
    descriptions = {
        Joker = {
            --snaz jokers start here
            j_emerald_light_house = {
                name = "Lighthouse",
                text = {
                  "Gain {X:mult,C:white}X#2#{} Mult if played",
                  "hand is a {C:attention}#3#{},",
                  "poker hand changes at end of round",
                  "{C:inactive}(Currently {X:mult,C:white}X#1{C:inactive} Mult)"
                },
            },
            j_emerald_ol_reliable = {
                name = "Ol' Reliable",
                text = {
                  "{C:attention}Lucky Cards{} give {C:mult}+#1#{} Mult",
                  "and earn{C:money} $#2# {}when scored",
                },
            },
            j_emerald_tea_leaves = {
                name = "Tea Leaves",
                text = {
                  "Choose {C:attention}1{} extra card",
                  "per {C:tarot}Arcana{} {C:attention}Pack"
                },
            },
            j_emerald_spider_web = {
                name = "Spider's Web",
                text = {
                  "Every played {C:attention}8{} permanently gains",
                  "{C:mult}+#1#{} Mult and {C:chips}+#2#{} Chips when scored"
                },
            },
            j_emerald_graded_card = {
                name = "Mint Condition",
                text = {
                  "Played cards {C:attention}without",
                  "enhancement give {C:mult}+#1#{} Mult",
                  "when scored"
                },
            },
            j_emerald_license_plate = {
                name = "License Plate",
                text = {
                  "Gives {C:mult}+#1#{} Mult for every",
                  "enhanced card in {C:attention}full deck",
                  "{C:inactive}(Currently {C:mult}+#2# {C:inactive}Mult){}"
                },
            },
            j_emerald_lone_joker = {
                name = "Lone Joker",
                text = {
                  "When {C:attention}Blind{} is selected, this",
                  "Joker gains {C:mult}+#2#{} Mult",
                  "for each empty Joker slot",
                  "{C:inactive}(Currently {C:mult}+#1# {C:inactive}Mult)"
                },
            },
            j_emerald_expose = {
                name = "Exposé",
                text = {
                  "When {C:attention}Blind{} is selected, destroy",
                  "Joker to the right and earn",
                  "{C:attention}double{} its sell value"
                },
            },
            j_emerald_candle_light = {
                name = "Candlelight",
                text = {
                  "Played cards with {C:attention}seals{} are",
                  "destroyed after scoring.",
                  "This Joker gains {X:mult,C:white}X#2#{} Mult",
                  "per card destroyed this way",
                  "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)"
                },
            },
            j_emerald_butterfly_effect = {
                name = "Butterfly Effect",
                text = {
                  "Earn {C:money}$#1#{} at end of round.",
                  "Payout increases by {C:money}$#2#{}",
                  "when {C:attention}Boss Blind{} is defeated.",
                  "This is destroyed if you have more",
                  "than {C:money}$#3#{} at the end of the {C:attention}shop"
                },
            },
            j_emerald_sleepy_joker = {
                name = "Sleepy Joker",
                text = {
                  "Earn {C:money}$#1#{} after each hand",
                  "played without defeating {C:attention}blind"
                },
            },
            j_emerald_ketchup_mustard = {
              name = "Ketchup and Mustard",
              text = {
                "Played cards with {C:hearts}Heart",
                "and {C:diamonds}Diamond{} suit give",
                "{X:mult,C:white}X#1#{} Mult when scored.",
                "Lose {X:mult,C:white}X#2#{} Mult for every hand played",
              },
            },
            j_emerald_schrodinger_joker = {
              name = "Schrödinger's Joker",
              text = {
                "{X:mult,C:white}X#1#{} Mult",
                "This Joker has a {C:green}#3# in #2#{} chance",
                "of being destroyed when obtained",
              },
            },
            j_emerald_wild_west = {
              name = "Old Western",
              text = {
                "{C:attention}Wild Cards{} give {C:chips}+#2#{} Chips and",
                "{C:mult}+#1#{} Mult when scored",
              },
            },
            j_emerald_bad_photocopy = {
              name = "Bad Photocopy",
              text = {
                "This Joker has a {C:green}#1# in #2#{} chance",
                "of copying the ability of",
                "{C:attention}Joker{} to the right",
              },
            },
            j_emerald_neapolitan = {
              name = "Neapolitan",
              text = {
                "Gives {X:mult,C:white}X#1#{} Mult if scoring hand", 
                "contains exactly {C:attention}3{} suits"
              },
            },
            j_emerald_pointillism = {
              name = "Pointillism",
              text = {
                "Gives {C:chips}+#1#{} Chips for each Joker",
                "Increases by {C:chips}+#2#{} Chips when",
                "{C:attention}Boss Blind{} is defeated",
                "{C:inactive}(Currently {C:chips}+#3# {C:inactive}Chips)"
              },
            },
            j_emerald_iou = {
              name = "I.O.U.",
              text = {
                "Sell this card to have",
                "{C:green}#1# in #2#{} chance to duplicate",
                "Joker to left. Otherwise,",
                "destroy Joker to the right",
              },
            },
            j_emerald_room_keys = {
              name = "Room Keys",
              text = {
                "This joker gains {C:chips}+#2#{} Chips for every",
                "{C:attention}face card{} scored in a {C:attention}Full House",
                "{C:inactive}(Currently {C:chips}+#1# {C:inactive}Chips)"
              },
            },
            j_emerald_recursion = {
              name = "Recursion",
              text = {
                "Retrigger all scored cards if",
                "played hand contains exactly {C:attention}one rank{}"
              },
            },
            j_emerald_isotope = {
              name = "Isotope",
              text = {
                "When {C:attention}Blind{} is selected, create a",
                "random {C:attention}playing card{}. May", 
                "have an {C:enhanced}enhancement{},",
                "{C:dark_edition}edition{} and/or {C:attention}seal.",
                "This Joker has a {C:green}#2# in #1#{} chance",
                "of being destroyed after"
              },
            },
            j_emerald_wwj = {
              name = "World Wide Joker",
              text = {
                "Increase {C:attention}sell value{} by {C:money}$#1#{}",
                "every time a {C:attention}card{} is sold",
              },
            },
            j_emerald_joner = {
              name = "AI-Generated Joner",
              text = {
                "After every played hand, copies",
                "a random compatible Joker.",
                "Has a {C:green}#1# in #2#{} chance to",
                "{C:red}self-destruct{} at end of round",
              },
            },
            j_emerald_jokERROR = {
              name = "Jok{C:red}ERROR{}",
              text = {
                "In {C:attention}first hand{} of round, change",
                "the suit of all {C:attention}scoring cards",
                "to a random suit"
              },
            },
            j_emerald_fish_chips = {
              name = "Fish 'n Chips",
              text = {
                "Every played hand, the {C:attention}fifth{} scoring card",
                "permanently gains {C:chips}+#1#{} Chips when scored",
                "{C:chips}-5{} Chips for every hand played"
              },
            },
            j_emerald_peeloff_joker = {
              name = "Peel-Off Joker",
              text = {
                "This Joker gains {C:money}$#1#{} of {C:attention}sell value",
                "per scoring {C:attention}Enhanced card{} played,",
                "removes card {C:attention}Enhancement"
              },
            },
            j_emerald_tungsten = {
              name = "Tungsten",
              text = {
                "If {C:attention}first hand{} of round defeats",
                "{C:attention}Blind{}, this Joker gains {X:mult,C:white}X#2#{} Mult.",
                "Otherwise, reset",
                "{C:inactive}(Currently {X:mult,C:white}X#1#{}{C:inactive} Mult)"
              },
            },
            j_emerald_guardsman = {
              name = "Guardsman",
              text = {
                "All scored cards are {C:attention}retriggered{}",
                "for every {C:attention}unscored card{} to the left",
                "of the {C:attention}scored hand{}"
              },
            },
            j_emerald_dnd = {
              name = "Do not Disturb!",
              text = {
                "Earn {C:money}$#1#{} for every",
                "{C:attention}scoring {C:red}debuffed{} card",
              },
            },
            j_emerald_joker_gel = {
              name = "Joker Gel",
              text = {
                "Gains {X:mult,C:white}X#2#{} Mult when hand is played",
                "If {C:attention}Blind{} is defeated in one hand, reset",
                "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)"
              },
            },
        },
        Mod = {
            Up_the_Ante = {
                name = "Up the Ante!",
                text = {
                    "Adds {C:red}30{} Jokers, art and ideas by {C:green}Emerald{}! {C:green}(Me, teehee)){}",
                    " ",
                    "Others: ",
                    "Programming and minor rebalancing by {C:purple}TheSnaz{}",
                }
            }
        },
        Other = {

        },
    },
    misc = {
        dictionary = {
            k_extra = "Again!",
            k_lighthouse = "I See!",
            k_ERROR = "ERROR"
        }
    }
}
