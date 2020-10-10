CREATE TABLE "Offense" (
    "yards" int   NOT NULL,
    "abbreviation" varchar(255)   NOT NULL,
    "conference" varchar(255)   NOT NULL,
    "first_downs" int   NOT NULL,
    "first_downs_from_penalties" int   NOT NULL,
    "turnovers" int   NOT NULL,
    "win_percentage" int   NOT NULL,
    "yards_from_penalties" int   NOT NULL,
    "yards_per_play" int   NOT NULL,
    "fumbles_lost" int   NOT NULL,
    CONSTRAINT "pk_Offense" PRIMARY KEY (
        "yards"
     )
);

CREATE TABLE "Defense" (
    "opponents_yards" int   NOT NULL,
    "abbreviation" varchar(255)   NOT NULL,
    "conference" varchar(255)   NOT NULL,
    "opponents_first_downs" int   NOT NULL,
    "opponents_first_downs_from_penalties" int   NOT NULL,
    "opponents_turnovers" int   NOT NULL,
    CONSTRAINT "pk_Defense" PRIMARY KEY (
        "opponents_yards"
     )
);

CREATE TABLE "Conference" (
    "conference" varchar(255)   NOT NULL,
    "abbreviation" varchar(255)   NOT NULL,
    "conference_wins" int   NOT NULL,
    "conference_losses" int   NOT NULL,
    "conference_win_percentage" int   NOT NULL,
    CONSTRAINT "pk_Conference" PRIMARY KEY (
        "conference"
     )
);

select * from Offense;
select * from Defense;
select * from Conference;

ALTER TABLE "Offense" ADD CONSTRAINT "fk_Offense_abbreviation" FOREIGN KEY("abbreviation")
REFERENCES "Defense" ("abbreviation");

ALTER TABLE "Offense" ADD CONSTRAINT "fk_Offense_conference" FOREIGN KEY("conference")
REFERENCES "Conference" ("conference");

ALTER TABLE "Defense" ADD CONSTRAINT "fk_Defense_abbreviation_conference" FOREIGN KEY("abbreviation", "conference")
REFERENCES "Conference" ("abbreviation", "conference");

ALTER TABLE "Conference" ADD CONSTRAINT "fk_Conference_abbreviation" FOREIGN KEY("abbreviation")
REFERENCES "Offense" ("abbreviation");