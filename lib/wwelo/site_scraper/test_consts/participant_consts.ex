defmodule Wwelo.SiteScraper.TestConsts.ParticipantConsts do
  @moduledoc false
  def singles_result do
    %{
      match_id: 1337,
      match_result: [
        {"a", [{"href", "?id=2&nr=801&name=AJ+Styles"}], ["AJ Styles"]},
        " defeats ",
        {"a", [{"href", "?id=2&nr=12474&name=Baron+Corbin"}], ["Baron Corbin"]},
        " (11:33)"
      ]
    }
  end

  def singles_outcome do
    MapSet.new([
      %{
        alias: "AJ Styles",
        profile_url: "?id=2&nr=801&name=AJ+Styles",
        outcome: "win",
        match_id: 1337,
        match_team: 0
      },
      %{
        alias: "Baron Corbin",
        profile_url: "?id=2&nr=12474&name=Baron+Corbin",
        outcome: "loss",
        match_id: 1337,
        match_team: 1
      }
    ])
  end

  def tag_result do
    %{
      match_id: 12,
      match_result: [
        {"a", [{"href", "?id=2&nr=11151&name=Cedric+Alexander"}],
         ["Cedric Alexander"]},
        " & ",
        {"a", [{"href", "?id=2&nr=7145&name=Mustafa+Ali"}], ["Mustafa Ali"]},
        " defeat ",
        {"a", [{"href", "?id=2&nr=4836&name=Ariya+Daivari"}],
         ["Ariya Daivari"]},
        " & ",
        {"a", [{"href", "?id=2&nr=2921&name=Drew+Gulak"}], ["Drew Gulak"]}
      ]
    }
  end

  def tag_outcome do
    MapSet.new([
      %{
        alias: "Cedric Alexander",
        profile_url: "?id=2&nr=11151&name=Cedric+Alexander",
        outcome: "win",
        match_id: 12,
        match_team: 0
      },
      %{
        alias: "Mustafa Ali",
        profile_url: "?id=2&nr=7145&name=Mustafa+Ali",
        outcome: "win",
        match_id: 12,
        match_team: 0
      },
      %{
        alias: "Ariya Daivari",
        profile_url: "?id=2&nr=4836&name=Ariya+Daivari",
        outcome: "loss",
        match_id: 12,
        match_team: 1
      },
      %{
        alias: "Drew Gulak",
        profile_url: "?id=2&nr=2921&name=Drew+Gulak",
        outcome: "loss",
        match_id: 12,
        match_team: 1
      }
    ])
  end

  def triple_threat_result do
    %{
      match_id: 333,
      match_result: [
        {"a", [{"href", "?id=2&nr=2515&name=Dolph+Ziggler"}],
         ["Dolph Ziggler"]},
        " defeats ",
        {"a", [{"href", "?id=2&nr=12474&name=Baron+Corbin"}], ["Baron Corbin"]},
        " (c) and ",
        {"a", [{"href", "?id=2&nr=880&name=Bobby+Roode"}], ["Bobby Roode"]},
        " (12:45)"
      ]
    }
  end

  def triple_threat_outcome do
    MapSet.new([
      %{
        alias: "Dolph Ziggler",
        profile_url: "?id=2&nr=2515&name=Dolph+Ziggler",
        outcome: "win",
        match_id: 333,
        match_team: 0
      },
      %{
        alias: "Baron Corbin",
        profile_url: "?id=2&nr=12474&name=Baron+Corbin",
        outcome: "loss",
        match_id: 333,
        match_team: 1
      },
      %{
        alias: "Bobby Roode",
        profile_url: "?id=2&nr=880&name=Bobby+Roode",
        outcome: "loss",
        match_id: 333,
        match_team: 2
      }
    ])
  end

  def singles_with_managers_result do
    %{
      match_id: 2020,
      match_result: [
        {"a", [{"href", "?id=2&nr=6171&name=Jinder+Mahal"}], ["Jinder Mahal"]},
        " (w/",
        {"a", [{"href", "?id=2&nr=6304&name=Samir+Singh"}], ["Samir Singh"]},
        " & ",
        {"a", [{"href", "?id=2&nr=6303&name=Sunil+Singh"}], ["Sunil Singh"]},
        ") defeats ",
        {"a", [{"href", "?id=2&nr=3190&name=Tye+Dillinger"}],
         ["Tye Dillinger"]},
        " (9:00)"
      ]
    }
  end

  def singles_with_managers_outcome do
    MapSet.new([
      %{
        alias: "Jinder Mahal",
        profile_url: "?id=2&nr=6171&name=Jinder+Mahal",
        outcome: "win",
        match_id: 2020,
        match_team: 0
      },
      %{
        alias: "Tye Dillinger",
        profile_url: "?id=2&nr=3190&name=Tye+Dillinger",
        outcome: "loss",
        match_id: 2020,
        match_team: 1
      }
    ])
  end

  def tag_with_team_names_result do
    %{
      match_id: 22,
      match_result: [
        {"a", [{"href", "?id=28&nr=5931&name=The+Bludgeon+Brothers"}],
         ["The Bludgeon Brothers"]},
        " (",
        {"a", [{"href", "?id=2&nr=5244&name=Harper"}], ["Harper"]},
        " & ",
        {"a", [{"href", "?id=2&nr=9368&name=Rowan"}], ["Rowan"]},
        ") defeat ",
        {"a", [{"href", "?id=28&nr=5967&name=The+Hype+Bros"}],
         ["The Hype Bros"]},
        " (",
        {"a", [{"href", "?id=2&nr=12415&name=Mojo+Rawley"}], ["Mojo Rawley"]},
        " & ",
        {"a", [{"href", "?id=2&nr=2750&name=Zack+Ryder"}], ["Zack Ryder"]},
        ") (3:00)"
      ]
    }
  end

  def tag_with_team_names_outcome do
    MapSet.new([
      %{
        alias: "Harper",
        profile_url: "?id=2&nr=5244&name=Harper",
        outcome: "win",
        match_id: 22,
        match_team: 0
      },
      %{
        alias: "Rowan",
        profile_url: "?id=2&nr=9368&name=Rowan",
        outcome: "win",
        match_id: 22,
        match_team: 0
      },
      %{
        alias: "Mojo Rawley",
        profile_url: "?id=2&nr=12415&name=Mojo+Rawley",
        outcome: "loss",
        match_id: 22,
        match_team: 1
      },
      %{
        alias: "Zack Ryder",
        profile_url: "?id=2&nr=2750&name=Zack+Ryder",
        outcome: "loss",
        match_id: 22,
        match_team: 1
      }
    ])
  end

  def no_contest_result do
    %{
      match_id: 0,
      match_result: [
        {"a", [{"href", "?id=28&nr=6722&name=Breezango"}], ["Breezango"]},
        " (",
        {"a", [{"href", "?id=2&nr=1704&name=Fandango"}], ["Fandango"]},
        " & ",
        {"a", [{"href", "?id=2&nr=9500&name=Tyler+Breeze"}], ["Tyler Breeze"]},
        ") vs. ",
        {"a", [{"href", "?id=28&nr=5931&name=The+Bludgeon+Brothers"}],
         ["The Bludgeon Brothers"]},
        " (",
        {"a", [{"href", "?id=2&nr=5244&name=Harper"}], ["Harper"]},
        " & ",
        {"a", [{"href", "?id=2&nr=9368&name=Rowan"}], ["Rowan"]},
        ") - No Contest (2:00)"
      ]
    }
  end

  def no_contest_outcome do
    MapSet.new([
      %{
        alias: "Fandango",
        profile_url: "?id=2&nr=1704&name=Fandango",
        outcome: "draw",
        match_id: 0,
        match_team: 0
      },
      %{
        alias: "Tyler Breeze",
        profile_url: "?id=2&nr=9500&name=Tyler+Breeze",
        outcome: "draw",
        match_id: 0,
        match_team: 0
      },
      %{
        alias: "Harper",
        profile_url: "?id=2&nr=5244&name=Harper",
        outcome: "draw",
        match_id: 0,
        match_team: 1
      },
      %{
        alias: "Rowan",
        profile_url: "?id=2&nr=9368&name=Rowan",
        outcome: "draw",
        match_id: 0,
        match_team: 1
      }
    ])
  end

  def singles_result_extra_match_info do
    %{
      match_id: 1337,
      match_result: [
        {"a", [{"href", "?id=2&nr=801&name=AJ+Styles"}], ["AJ Styles"]},
        " defeats ",
        {"a", [{"href", "?id=2&nr=12474&name=Baron+Corbin"}], ["Baron Corbin"]},
        " - Double DQ"
      ]
    }
  end

  def singles_outcome_extra_match_info do
    MapSet.new([
      %{
        alias: "AJ Styles",
        profile_url: "?id=2&nr=801&name=AJ+Styles",
        outcome: "win",
        match_id: 1337,
        match_team: 0
      },
      %{
        alias: "Baron Corbin",
        profile_url: "?id=2&nr=12474&name=Baron+Corbin",
        outcome: "loss",
        match_id: 1337,
        match_team: 1
      }
    ])
  end

  def champ_v_champ_result_match_info do
    %{
      match_id: 1337,
      match_result: [
        {"a", [{"href", "?id=2&nr=422&name=D-Lo+Brown"}], ["D-Lo Brown"]},
        " (c) [European] defeats ",
        {"a", [{"href", "?id=2&nr=564&name=Jeff+Jarrett"}], ["Jeff Jarrett"]},
        " (w/",
        {"a", [{"href", "?id=2&nr=1320&name=Debra"}], ["Debra"]},
        ") (c) [Intercontinental] (6:13) - ",
        {"span", [{"class", "MatchTitleChange"}], ["TITLE CHANGE !!!"]}
      ]
    }
  end

  def champ_v_champ_outcome_match_info do
    MapSet.new([
      %{
        alias: "D-Lo Brown",
        profile_url: "?id=2&nr=422&name=D-Lo+Brown",
        outcome: "win",
        match_id: 1337,
        match_team: 0
      },
      %{
        alias: "Jeff Jarrett",
        profile_url: "?id=2&nr=564&name=Jeff+Jarrett",
        outcome: "loss",
        match_id: 1337,
        match_team: 1
      }
    ])
  end

  def singles_result_draw_champion_with_manager do
    %{
      match_id: 1337,
      match_result: [
        {"a", [{"href", "?id=2&nr=243&name=Bruno+Sammartino"}],
         ["Bruno Sammartino"]},
        " (w/",
        {"a", [{"href", "?id=2&nr=1137&name=Arnold+Skaaland"}],
         ["Arnold Skaaland"]},
        ") (c) vs. ",
        {"a", [{"href", "?id=2&nr=198&name=Killer+Kowalski"}],
         ["Killer Kowalski"]},
        " - No Contest (24:15)"
      ]
    }
  end

  def singles_outcome_draw_champion_with_manager do
    MapSet.new([
      %{
        alias: "Bruno Sammartino",
        profile_url: "?id=2&nr=243&name=Bruno+Sammartino",
        outcome: "draw",
        match_id: 1337,
        match_team: 0
      },
      %{
        alias: "Killer Kowalski",
        profile_url: "?id=2&nr=198&name=Killer+Kowalski",
        outcome: "draw",
        match_id: 1337,
        match_team: 1
      }
    ])
  end

  def tag_result_double_dq_with_manager do
    %{
      match_id: 1337,
      match_result: [
        {"a", [{"href", "?id=2&nr=926&name=Andre+The+Giant"}],
         ["Andre The Giant"]},
        " & ",
        {"a", [{"href", "?id=2&nr=1335&name=Hillbilly+Jim"}],
         ["Hillbilly Jim"]},
        " (w/",
        {"a", [{"href", "?id=2&nr=1075&name=Captain+Lou+Albano"}],
         ["Captain Lou Albano"]},
        ") vs. ",
        {"a", [{"href", "?id=29&nr=122&name=The+Heenan+Family"}],
         ["The Heenan Family"]},
        " (",
        {"a", [{"href", "?id=2&nr=310&name=Big+John+Studd"}],
         ["Big John Studd"]},
        " & ",
        {"a", [{"href", "?id=2&nr=596&name=King+Kong+Bundy"}],
         ["King Kong Bundy"]},
        ") (w/",
        {"a", [{"href", "?id=2&nr=770&name=Bobby+Heenan"}], ["Bobby Heenan"]},
        ") - Double DQ (14:08)"
      ]
    }
  end

  def tag_outcome_double_dq_with_manager do
    MapSet.new([
      %{
        alias: "Andre The Giant",
        profile_url: "?id=2&nr=926&name=Andre+The+Giant",
        outcome: "draw",
        match_id: 1337,
        match_team: 0
      },
      %{
        alias: "Hillbilly Jim",
        profile_url: "?id=2&nr=1335&name=Hillbilly+Jim",
        outcome: "draw",
        match_id: 1337,
        match_team: 0
      },
      %{
        alias: "Big John Studd",
        profile_url: "?id=2&nr=310&name=Big+John+Studd",
        outcome: "draw",
        match_id: 1337,
        match_team: 1
      },
      %{
        alias: "King Kong Bundy",
        profile_url: "?id=2&nr=596&name=King+Kong+Bundy",
        outcome: "draw",
        match_id: 1337,
        match_team: 1
      }
    ])
  end

  def tag_result_champions do
    %{
      match_id: 1337,
      match_result: [
        {"a", [{"href", "?id=28&nr=990&name=The+Valiant+Brothers"}],
         ["The Valiant Brothers"]},
        " (",
        {"a", [{"href", "?id=2&nr=1150&name=Jimmy+Valiant"}],
         ["Jimmy Valiant"]},
        " & ",
        {"a", [{"href", "?id=2&nr=868&name=Johnny+Valiant"}],
         ["Johnny Valiant"]},
        ") (c) defeat ",
        {"a", [{"href", "?id=2&nr=2209&name=Dean+Ho"}], ["Dean Ho"]},
        " & ",
        {"a", [{"href", "?id=2&nr=2512&name=Tony+Garea"}], ["Tony Garea"]}
      ]
    }
  end

  def tag_outcome_champions do
    MapSet.new([
      %{
        alias: "Jimmy Valiant",
        profile_url: "?id=2&nr=1150&name=Jimmy+Valiant",
        outcome: "win",
        match_id: 1337,
        match_team: 0
      },
      %{
        alias: "Johnny Valiant",
        profile_url: "?id=2&nr=868&name=Johnny+Valiant",
        outcome: "win",
        match_id: 1337,
        match_team: 0
      },
      %{
        alias: "Dean Ho",
        profile_url: "?id=2&nr=2209&name=Dean+Ho",
        outcome: "loss",
        match_id: 1337,
        match_team: 1
      },
      %{
        alias: "Tony Garea",
        profile_url: "?id=2&nr=2512&name=Tony+Garea",
        outcome: "loss",
        match_id: 1337,
        match_team: 1
      }
    ])
  end

  def singles_result_no_profile do
    %{
      match_id: 1337,
      match_result: ["Gordo Chihuahua defeats Roger Dupree"]
    }
  end

  def singles_outcome_no_profile do
    MapSet.new([
      %{
        alias: "Gordo Chihuahua",
        profile_url: nil,
        outcome: "win",
        match_id: 1337,
        match_team: 0
      },
      %{
        alias: "Roger Dupree",
        profile_url: nil,
        outcome: "loss",
        match_id: 1337,
        match_team: 1
      }
    ])
  end

  def singles_result_no_profile_2_3_falls do
    %{
      match_id: 1337,
      match_result: ["Tony Manousos defeats Gordo Chihuahua [2:1]"]
    }
  end

  def singles_outcome_no_profile_2_3_falls do
    MapSet.new([
      %{
        alias: "Tony Manousos",
        profile_url: nil,
        outcome: "win",
        match_id: 1337,
        match_team: 0
      },
      %{
        alias: "Gordo Chihuahua",
        profile_url: nil,
        outcome: "loss",
        match_id: 1337,
        match_team: 1
      }
    ])
  end

  def singles_result_no_loser_profile do
    %{
      match_id: 1337,
      match_result: [
        {"a", [{"href", "?id=2&nr=2618&name=Dory+Dixon"}], ["Dory Dixon"]},
        " defeats Gordo Chihuahua"
      ]
    }
  end

  def singles_outcome_no_loser_profile do
    MapSet.new([
      %{
        alias: "Dory Dixon",
        profile_url: "?id=2&nr=2618&name=Dory+Dixon",
        outcome: "win",
        match_id: 1337,
        match_team: 0
      },
      %{
        alias: "Gordo Chihuahua",
        profile_url: nil,
        outcome: "loss",
        match_id: 1337,
        match_team: 1
      }
    ])
  end

  def singles_result_no_winner_profile do
    %{
      match_id: 1337,
      match_result: [
        "Tony Manousos defeats ",
        {"a", [{"href", "?id=2&nr=1839&name=Frank+Martinez"}],
         ["Frank Martinez"]},
        " [2:0]"
      ]
    }
  end

  def singles_outcome_no_winner_profile do
    MapSet.new([
      %{
        alias: "Tony Manousos",
        profile_url: nil,
        outcome: "win",
        match_id: 1337,
        match_team: 0
      },
      %{
        alias: "Frank Martinez",
        profile_url: "?id=2&nr=1839&name=Frank+Martinez",
        outcome: "loss",
        match_id: 1337,
        match_team: 1
      }
    ])
  end

  def singles_result_no_winner_profile_with_manager do
    %{
      match_id: 1337,
      match_result: [
        "The Spider Lady (w/",
        {"a", [{"href", "?id=2&nr=1053&name=The+Fabulous+Moolah"}],
         ["The Fabulous Moolah"]},
        ") defeats ",
        {"a", [{"href", "?id=2&nr=11307&name=Susan+Starr"}], ["Susan Starr"]},
        " (2:45)"
      ]
    }
  end

  def singles_outcome_no_winner_profile_with_manager do
    MapSet.new([
      %{
        alias: "The Spider Lady",
        profile_url: nil,
        outcome: "win",
        match_id: 1337,
        match_team: 0
      },
      %{
        alias: "Susan Starr",
        profile_url: "?id=2&nr=11307&name=Susan+Starr",
        outcome: "loss",
        match_id: 1337,
        match_team: 1
      }
    ])
  end

  def tag_result_one_winner_profile do
    %{
      match_id: 1337,
      match_result: [
        {"a", [{"href", "?id=2&nr=8100&name=Bobby+Colt"}], ["Bobby Colt"]},
        " & Jerry Colt defeat ",
        {"a", [{"href", "?id=2&nr=2668&name=Miguel+Perez+"}], ["Miguel Perez"]},
        " & ",
        {"a", [{"href", "?id=2&nr=12849&name=Tommy+O'Toole"}],
         ["Tommy O'Toole"]},
        " [2:0]"
      ]
    }
  end

  def tag_outcome_one_winner_profile do
    MapSet.new([
      %{
        alias: "Bobby Colt",
        profile_url: "?id=2&nr=8100&name=Bobby+Colt",
        outcome: "win",
        match_id: 1337,
        match_team: 0
      },
      %{
        alias: "Jerry Colt",
        profile_url: nil,
        outcome: "win",
        match_id: 1337,
        match_team: 0
      },
      %{
        alias: "Miguel Perez",
        profile_url: "?id=2&nr=2668&name=Miguel+Perez+",
        outcome: "loss",
        match_id: 1337,
        match_team: 1
      },
      %{
        alias: "Tommy O'Toole",
        profile_url: "?id=2&nr=12849&name=Tommy+O'Toole",
        outcome: "loss",
        match_id: 1337,
        match_team: 1
      }
    ])
  end

  def tag_result_no_losers_profile do
    %{
      match_id: 1337,
      match_result: [
        {"a", [{"href", "?id=2&nr=852&name=Bobo+Brazil"}], ["Bobo Brazil"]},
        " & ",
        {"a", [{"href", "?id=2&nr=18262&name=Lucas+Pestano"}],
         ["Lucas Pestano"]},
        " defeat Gordo Chihuahua & Joe Quinones"
      ]
    }
  end

  def tag_outcome_no_losers_profile do
    MapSet.new([
      %{
        alias: "Bobo Brazil",
        profile_url: "?id=2&nr=852&name=Bobo+Brazil",
        outcome: "win",
        match_id: 1337,
        match_team: 0
      },
      %{
        alias: "Lucas Pestano",
        profile_url: "?id=2&nr=18262&name=Lucas+Pestano",
        outcome: "win",
        match_id: 1337,
        match_team: 0
      },
      %{
        alias: "Gordo Chihuahua",
        profile_url: nil,
        outcome: "loss",
        match_id: 1337,
        match_team: 1
      },
      %{
        alias: "Joe Quinones",
        profile_url: nil,
        outcome: "loss",
        match_id: 1337,
        match_team: 1
      }
    ])
  end

  def handicap_result_no_losers_profile do
    %{
      match_id: 1337,
      match_result: [
        {"a", [{"href", "?id=2&nr=16167&name=Braun+Strowman"}],
         ["Braun Strowman"]},
        " defeats CC Bonin, Dusty Wallace, James Stock & Rob Kelly (3:00)"
      ]
    }
  end

  def handicap_outcome_no_losers_profile do
    MapSet.new([
      %{
        alias: "Braun Strowman",
        profile_url: "?id=2&nr=16167&name=Braun+Strowman",
        outcome: "win",
        match_id: 1337,
        match_team: 0
      },
      %{
        alias: "CC Bonin",
        profile_url: nil,
        outcome: "loss",
        match_id: 1337,
        match_team: 1
      },
      %{
        alias: "Dusty Wallace",
        profile_url: nil,
        outcome: "loss",
        match_id: 1337,
        match_team: 1
      },
      %{
        alias: "James Stock",
        profile_url: nil,
        outcome: "loss",
        match_id: 1337,
        match_team: 1
      },
      %{
        alias: "Rob Kelly",
        profile_url: nil,
        outcome: "loss",
        match_id: 1337,
        match_team: 1
      }
    ])
  end

  def handicap_result_one_loser_profile do
    %{
      match_id: 1337,
      match_result: [
        {"a", [{"href", "?id=2&nr=243&name=Bruno+Sammartino"}],
         ["Bruno Sammartino"]},
        " defeats Joe Quinones & ",
        {"a", [{"href", "?id=2&nr=11473&name=Pedro+Rodriguez"}],
         ["Pedro Rodriguez"]}
      ]
    }
  end

  def handicap_outcome_one_loser_profile do
    MapSet.new([
      %{
        alias: "Bruno Sammartino",
        profile_url: "?id=2&nr=243&name=Bruno+Sammartino",
        outcome: "win",
        match_id: 1337,
        match_team: 0
      },
      %{
        alias: "Joe Quinones",
        profile_url: nil,
        outcome: "loss",
        match_id: 1337,
        match_team: 1
      },
      %{
        alias: "Pedro Rodriguez",
        profile_url: "?id=2&nr=11473&name=Pedro+Rodriguez",
        outcome: "loss",
        match_id: 1337,
        match_team: 1
      }
    ])
  end

  def multi_man_result_one_missing_loser_profile do
    %{
      match_id: 1337,
      match_result: [
        {"a", [{"href", "?id=2&nr=16167&name=Braun+Strowman"}],
         ["Braun Strowman"]},
        " defeats ",
        {"a", [{"href", "?id=2&nr=3296&name=Heath+Slater"}], ["Heath Slater"]},
        " and Hiroki Sumi and ",
        {"a", [{"href", "?id=2&nr=3586&name=Hornswoggle"}], ["Hornswoggle"]},
        " and ",
        {"a", [{"href", "?id=2&nr=4955&name=Xavier+Woods"}], ["Xavier Woods"]},
        " (77:22)"
      ]
    }
  end

  def multi_man_outcome_one_missing_loser_profile do
    MapSet.new([
      %{
        alias: "Braun Strowman",
        profile_url: "?id=2&nr=16167&name=Braun+Strowman",
        outcome: "win",
        match_id: 1337,
        match_team: 0
      },
      %{
        alias: "Heath Slater",
        profile_url: "?id=2&nr=3296&name=Heath+Slater",
        outcome: "loss",
        match_id: 1337,
        match_team: 1
      },
      %{
        alias: "Hiroki Sumi",
        profile_url: nil,
        outcome: "loss",
        match_id: 1337,
        match_team: 2
      },
      %{
        alias: "Hornswoggle",
        profile_url: "?id=2&nr=3586&name=Hornswoggle",
        outcome: "loss",
        match_id: 1337,
        match_team: 3
      },
      %{
        alias: "Xavier Woods",
        profile_url: "?id=2&nr=4955&name=Xavier+Woods",
        outcome: "loss",
        match_id: 1337,
        match_team: 4
      }
    ])
  end

  def singles_result_one_drawer_profile do
    %{
      match_id: 1337,
      match_result: [
        "Buddy Rosen vs. ",
        {"a", [{"href", "?id=2&nr=5616&name=Pete+Sanchez"}], ["Pete Sanchez"]},
        " - Draw"
      ]
    }
  end

  def singles_outcome_one_drawer_profile do
    MapSet.new([
      %{
        alias: "Buddy Rosen",
        profile_url: nil,
        outcome: "draw",
        match_id: 1337,
        match_team: 0
      },
      %{
        alias: "Pete Sanchez",
        profile_url: "?id=2&nr=5616&name=Pete+Sanchez",
        outcome: "draw",
        match_id: 1337,
        match_team: 1
      }
    ])
  end

  def survivor_series_result_with_managers do
    %{
      match_id: 1337,
      match_result: [
        "Team RAW (",
        {"a", [{"href", "?id=2&nr=5616&name=Bobby+Lashley"}],
         ["Bobby Lashley"]},
        ", ",
        {"a", [{"href", "?id=2&nr=5616&name=Drew+McIntyre"}],
         ["Drew McIntyre"]},
        " & ",
        {"a", [{"href", "?id=2&nr=5616&name=Finn+Balor"}], ["Finn Balor"]},
        ") (w/",
        {"a", [{"href", "?id=2&nr=5616&name=Baron+Corbin"}], ["Baron Corbin"]},
        " & ",
        {"a", [{"href", "?id=2&nr=5616&name=Lio+Rush"}], ["Lio Rush"]},
        ") defeat Team SmackDown LIVE (",
        {"a", [{"href", "?id=2&nr=5616&name=Jeff+Hardy"}], ["Jeff Hardy"]},
        ", ",
        {"a", [{"href", "?id=2&nr=5616&name=Shane+McMahon"}],
         ["Shane McMahon"]},
        " & ",
        {"a", [{"href", "?id=2&nr=5616&name=The+Miz"}], ["The Miz"]},
        ") (23:59)"
      ]
    }
  end

  def survivor_series_outcome_with_managers do
    MapSet.new([
      %{
        alias: "Bobby Lashley",
        profile_url: "?id=2&nr=5616&name=Bobby+Lashley",
        outcome: "win",
        match_id: 1337,
        match_team: 0
      },
      %{
        alias: "Drew McIntyre",
        profile_url: "?id=2&nr=5616&name=Drew+McIntyre",
        outcome: "win",
        match_id: 1337,
        match_team: 0
      },
      %{
        alias: "Finn Balor",
        profile_url: "?id=2&nr=5616&name=Finn+Balor",
        outcome: "win",
        match_id: 1337,
        match_team: 0
      },
      %{
        alias: "Jeff Hardy",
        profile_url: "?id=2&nr=5616&name=Jeff+Hardy",
        outcome: "loss",
        match_id: 1337,
        match_team: 1
      },
      %{
        alias: "Shane McMahon",
        profile_url: "?id=2&nr=5616&name=Shane+McMahon",
        outcome: "loss",
        match_id: 1337,
        match_team: 1
      },
      %{
        alias: "The Miz",
        profile_url: "?id=2&nr=5616&name=The+Miz",
        outcome: "loss",
        match_id: 1337,
        match_team: 1
      }
    ])
  end
end
