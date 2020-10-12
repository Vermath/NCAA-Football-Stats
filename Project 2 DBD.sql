-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/D0NfYA
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Offense" (
    "years" int   NOT NULL,
    "abbreviation" varchar(255)   NOT NULL,
    "yards" int   NOT NULL,
    "margin_of_victory" float   NOT NULL,
    "offensive_simple_rating_system" float   NOT NULL,
    "pass_attempts" int   NOT NULL,
    "pass_completions" int   NOT NULL,
    "pass_first_downs" int   NOT NULL,
    "pass_net_yards_per_attempt" float   NOT NULL,
    "pass_touchdowns" int   NOT NULL,
    "pass_yards" int   NOT NULL,
    "percent_drives_with_turnovers" float   NOT NULL,
    "percent_drives_with_points" float   NOT NULL,
    "plays" int   NOT NULL,
    "points_contributed_by_offense" float   NOT NULL,
    "rank" int   NOT NULL,
    "rush_attempts" int   NOT NULL,
    "rush_first_downs" int   NOT NULL,
    "rush_yards_per_attempt" float   NOT NULL,
    "turnovers" int   NOT NULL,
    "win_percentage" float   NOT NULL,
    "yards_per_play" float   NOT NULL,
    "first_downs" int   NOT NULL,
    CONSTRAINT "pk_Offense" PRIMARY KEY (
        "years"
     )
);

CREATE TABLE "Defense" (
    "years" int   NOT NULL,
    "abbreviation" varchar(255)   NOT NULL,
    "defensive_simple_rating_system" float   NOT NULL,
    "interceptions" int   NOT NULL,
    "points_against" int   NOT NULL,
    CONSTRAINT "pk_Defense" PRIMARY KEY (
        "years"
     )
);

CREATE TABLE "Misc" (
    "year" int   NOT NULL,
    "abbreviation" varchar(255)   NOT NULL,
    "fumbles" int   NOT NULL,
    "games_played" int   NOT NULL,
    "losses" int   NOT NULL,
    "name" varchar(255)   NOT NULL,
    "first_downs_from_penalties" int   NOT NULL,
    "penalties" int   NOT NULL,
    "points_difference" int   NOT NULL,
    "points_for" int   NOT NULL,
    "post_season_result" varchar(255)   NOT NULL,
    "simple_rating_system" float   NOT NULL,
    "strength_of_schedule" float   NOT NULL,
    "win_percentage" float   NOT NULL,
    "wins" int   NOT NULL,
    "yards_from_penalties" int   NOT NULL,
    CONSTRAINT "pk_Misc" PRIMARY KEY (
        "year"
     )
);

