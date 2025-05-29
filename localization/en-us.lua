return {
    descriptions = {
        Joker = {
            --snaz jokers start here
            j_emerald_light_house = {
                name = "Lighthouse",
                text = {
                  "Gain {X:mult,C:white}X#2#{}",
                  "if played hand is {C:attention}#3#{}.",
				  "Hand type changes every round",
                  "{C:inactive}(Currently {X:mult,C:white}X#1#{}{C:inactive})"
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
                  "Select {C:attention}1{} extra card in {C:tarot}Tarot{} packs"
                },
            },
            j_emerald_spider_web = {
                name = "Spider's Web",
                text = {
                  "Every scored {C:attention}8{} permanently gain",
				  "{C:mult}+#1#{} Mult and {C:chips}+#2#{} Chips when scored"
                },
            },
            j_emerald_graded_card = {
                name = "Mint Condition",
                text = {
                  "Unenhanced cards give",
				  "{C:mult}+#1#{} Mult when scored"
                },
            },
            j_emerald_license_plate = {
                name = "License Plate",
                text = {
                  "Gives {C:mult}+#1# Mult{} for every",
				  "enhanced card in full deck",
                  "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive}){}"
                },
            },
            j_emerald_lone_joker = {
                name = "Lone Joker",
                text = {
                  "Gains {C:mult}+#2#{} at the start of the round",
				  "for each empty joker slot",
                  "{C:inactive}(Currently {C:mult}+#1#{}{C:inactive})"
                },
            },
            j_emerald_expose = {
                name = "Exposé",
                text = {
                  "Destroys leftmost Joker at beginning of round.",
				  "If successful, earn {C:attention}double{} its sell value"
                },
            },
            j_emerald_candle_light = {
                name = "Candlelight",
                text = {
                  "Destroyed all scored cards with seals after scoring.",
                  "Gains {X:mult,C:white}#2#X{} for every card destroyed this way.",
                  "{C:inactive}(Currently {X:mult,C:white}X#1#{}{C:inactive}){}"
                },
            },
            j_emerald_butterfly_effect = {
                name = "Butterfly Effect",
                text = {
                  "Earn {C:money}$#1#{} at end of round",
				  "and increase payout by {C:money}$#2#{}",
                  "after every boss blind defeated.",
                  "When exiting shop, destroys itself if you have more than {C:money}$#3#{}."
                },
            },
            j_emerald_sleepy_joker = {
                name = "Sleepy Joker",
                text = {
                  "Earn {C:attention}$#1#{} after playing a hand if",
                  "current score is less than {C:card}blind requirement{}"
                },
            },
            j_emerald_ketchup_mustard = {
              name = "Ketchup and Mustard",
              text = {
                "{C:attention}Scored{} {C:hearts}Hearts{} and {C:diamonds}Diamonds{} give {X:mult,C:white}X#1#{}.",
                "Lose {X:mult,C:white}X#2#{} every played hand.",
              },
            },
            j_emerald_schrodinger_joker = {
              name = "Schrödinger's Joker",
              text = {
                "This joker has a {C:green}#3# in #2#{} chance",
				"of being destroyed when obtained",
                "{X:mult,C:white}X#1#{} Mult",
              },
            },
            j_emerald_wild_west = {
              name = "Old Western",
              text = {
                "{C:attention}Wild Cards{} give {C:chips}+#2#{} Chips and",
				"{C:mult}+#1#{} Mult when scored.",
              },
            },
            j_emerald_bad_photocopy = {
              name = "Bad Photocopy",
              text = {
                "This joker has a {C:green}#1# in #2#{} chance of",
				"copying the effect of the Joker to the right.",
              },
            },
            j_emerald_neapolitan = {
              name = "Neapolitan",
              text = {
                "Gives {X:mult,C:white}X#1#{} if scoring hand contains",
				"exactly {C:attention}3 suits{}.",
              },
            },
            j_emerald_pointillism = {
              name = "Pointillism",
              text = {
                "Gives {C:chips}+#1#{} chips for each joker",
                "Increases by {C:chips}+#2#{} chips at the end of every boss blind",
                "{C:inactive}(Currently {C:chips}+#3#{}{C:inactive}){}"
              },
            },
            j_emerald_iou = {
              name = "I.O.U.",
              text = {
                "When sold, {C:green}#1# in #2#{} chance to duplicate joker to left.",
                "Otherwise destroy joker to the righ.",
              },
            },
            j_emerald_room_keys = {
              name = "Room Keys",
              text = {
                "This joker gains {C:chips}+#2# chips{} for every",
                "{C:attention}face card{} scored in a {C:attention}full house{}",
                "{C:inactive}[Currently {C:chips}+#1#{}{C:inactive}]{}"
              },
            },
            j_emerald_recursion = {
              name = "Recursion",
              text = {
                "Retrigger all scored cards if",
                "played hand contains only {C:attention}one rank{}"
              },
            },
            j_emerald_isotope = {
              name = "Isotope",
              text = {
                "When round begins, create a random {C:attention}playing card{}",
                "which can potentially have a random {C:attention}enhancement{},",
                "{C:attention}edition{} and {C:attention}seal{}.",
                "Has a {C:green}#2# in #1#{} chance of being destroyed."
              },
            },
            j_emerald_wwj = {
              name = "World Wide Joker",
              text = {
                "Increase {C:attention}sell{} value by {C:money}$#1#{}",
                "every time a {C:attention}card{} is sold",
              },
            },
            j_emerald_joner = {
              name = "Ai-Generated Joner",
              text = {
                "After every played hand, copies a random compatible Joker",
                "Has a {C:green}#1# in #2#{} chance to {C:red}self-destruct{} at end of round",
              },
            },
            j_emerald_jokERROR = {
              name = "Jok{C:red}ERROR{}",
              text = {
                "In {C:attention}first hand{} of round, change the suit of",
                "all {C:attention}scoring cards{} to a randomly chosen suit.",
              },
            },
            j_emerald_fish_chips = {
              name = "Fish 'n Chips",
              text = {
                "The {C:attention}fifth scoring card{} in played hand",
                "permanently gains {C:chips}+#1#{} Chips when scored.",
				"{C:chips}-5{} Chips per hand."
              },
            },
            j_emerald_peeloff_joker = {
              name = "Peel-Off Joker",
              text = {
                "This Joker gains {C:money}$#1#{} of {C:card}sell value{} ",
                "per scoring {C:attention}Enhanced card{} played",
                "and removes card {C:attention}Enhancement",
              },
            },
            j_emerald_tungsten = {
              name = "Tungsten",
              text = {
                "This Joker gains {X:mult,C:white}X#2#{} Mult",
                "if a blind is defeated in {C:attention}one hand{}.",
                "Otherwise, reset.",
                "{C:inactive}(Currently {X:mult,C:white}X#1#{}{C:inactive})"
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
                "{C:attention}scoring{} {C:red}debuffed card{}",
              },
            },
            j_emerald_joker_gel = {
              name = "Joker Gel",
              text = {
                "Gains {X:mult,C:white}X#2#{} when hand is played",
                "If {C:attention}Blind{} is defeated in one hand, reset",
                "{C:inactive}(Currently {X:mult,C:white}X#1#{}{C:inactive})"
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
