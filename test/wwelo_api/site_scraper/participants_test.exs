defmodule WweloApi.SiteScraper.ParticipantsTest do
  use WweloApi.DataCase
  alias WweloApi.SiteScraper.Participants

  describe "Match results split into winners and losers" do
    @singles_match_result %{
      match_id: 1337,
      match_result: [
        {"a", [{"href", "?id=2&nr=801&name=AJ+Styles"}], ["AJ Styles"]},
        " defeats ",
        {"a", [{"href", "?id=2&nr=12474&name=Baron+Corbin"}], ["Baron Corbin"]},
        " (11:33)"
      ]
    }

    @singles_outcome MapSet.new([
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

    test "Singles match with wrestlers with profiles" do
      map_set_output =
        MapSet.new(
          Participants.convert_result_to_participant_info(@singles_match_result)
        )

      assert @singles_outcome == map_set_output
    end

    @tag_match_result %{
      match_id: 12,
      match_result: [
        {"a", [{"href", "?id=2&nr=11151&name=Cedric+Alexander"}],
         ["Cedric Alexander"]},
        " & ",
        {"a", [{"href", "?id=2&nr=7145&name=Mustafa+Ali"}], ["Mustafa Ali"]},
        " defeat ",
        {"a", [{"href", "?id=2&nr=4836&name=Ariya+Daivari"}], ["Ariya Daivari"]},
        " & ",
        {"a", [{"href", "?id=2&nr=2921&name=Drew+Gulak"}], ["Drew Gulak"]}
      ]
    }

    @tag_outcome MapSet.new([
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

    test "Tag match with wrestlers with profiles" do
      map_set_output =
        MapSet.new(
          Participants.convert_result_to_participant_info(@tag_match_result)
        )

      assert @tag_outcome == map_set_output
    end

    @triple_threat_match_result %{
      match_id: 333,
      match_result: [
        {"a", [{"href", "?id=2&nr=2515&name=Dolph+Ziggler"}], ["Dolph Ziggler"]},
        " defeats ",
        {"a", [{"href", "?id=2&nr=12474&name=Baron+Corbin"}], ["Baron Corbin"]},
        " (c) and ",
        {"a", [{"href", "?id=2&nr=880&name=Bobby+Roode"}], ["Bobby Roode"]},
        " (12:45)"
      ]
    }

    @triple_threat_outcome MapSet.new([
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

    test "Triple threat match with wrestlers with profiles" do
      map_set_output =
        MapSet.new(
          Participants.convert_result_to_participant_info(
            @triple_threat_match_result
          )
        )

      assert @triple_threat_outcome == map_set_output
    end

    @singles_match_with_managers_result %{
      match_id: 2020,
      match_result: [
        {"a", [{"href", "?id=2&nr=6171&name=Jinder+Mahal"}], ["Jinder Mahal"]},
        " (w/",
        {"a", [{"href", "?id=2&nr=6304&name=Samir+Singh"}], ["Samir Singh"]},
        " & ",
        {"a", [{"href", "?id=2&nr=6303&name=Sunil+Singh"}], ["Sunil Singh"]},
        ") defeats ",
        {"a", [{"href", "?id=2&nr=3190&name=Tye+Dillinger"}], ["Tye Dillinger"]},
        " (9:00)"
      ]
    }

    @singles_with_managers_outcome MapSet.new([
                                     %{
                                       alias: "Jinder Mahal",
                                       profile_url:
                                         "?id=2&nr=6171&name=Jinder+Mahal",
                                       outcome: "win",
                                       match_id: 2020,
                                       match_team: 0
                                     },
                                     %{
                                       alias: "Tye Dillinger",
                                       profile_url:
                                         "?id=2&nr=3190&name=Tye+Dillinger",
                                       outcome: "loss",
                                       match_id: 2020,
                                       match_team: 1
                                     }
                                   ])

    test "Singles match with wrestlers with profiles and managers" do
      map_set_output =
        MapSet.new(
          Participants.convert_result_to_participant_info(
            @singles_match_with_managers_result
          )
        )

      assert @singles_with_managers_outcome == map_set_output
    end

    @tag_with_team_names_match_result %{
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

    @tag_with_team_names_outcome MapSet.new([
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
                                     profile_url:
                                       "?id=2&nr=12415&name=Mojo+Rawley",
                                     outcome: "loss",
                                     match_id: 22,
                                     match_team: 1
                                   },
                                   %{
                                     alias: "Zack Ryder",
                                     profile_url:
                                       "?id=2&nr=2750&name=Zack+Ryder",
                                     outcome: "loss",
                                     match_id: 22,
                                     match_team: 1
                                   }
                                 ])

    test "Tag match with wrestlers with profiles and team names" do
      map_set_output =
        MapSet.new(
          Participants.convert_result_to_participant_info(
            @tag_with_team_names_match_result
          )
        )

      assert @tag_with_team_names_outcome == map_set_output
    end

    @no_contest_match_result %{
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

    @no_contest_outcome MapSet.new([
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

    test "No contest match" do
      map_set_output =
        MapSet.new(
          Participants.convert_result_to_participant_info(
            @no_contest_match_result
          )
        )

      assert @no_contest_outcome == map_set_output
    end
  end
end