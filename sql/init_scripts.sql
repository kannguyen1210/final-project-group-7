-- Table: public.shootings_washington_post

-- DROP TABLE public.shootings_washington_post;

CREATE TABLE public.shootings_washington_post
(
    unique_id integer NOT NULL,
    full_name character varying COLLATE pg_catalog."default",
    date_of_death date,
    manner_of_death character varying COLLATE pg_catalog."default",
    armed character varying COLLATE pg_catalog."default",
    age integer,
    gender character varying COLLATE pg_catalog."default",
    race character varying COLLATE pg_catalog."default",
    city character varying COLLATE pg_catalog."default",
    state character varying COLLATE pg_catalog."default",
    signs_of_mental_illness boolean,
    threat_level character varying COLLATE pg_catalog."default",
    flee character varying COLLATE pg_catalog."default",
    body_camera boolean,
    CONSTRAINT shootings_washington_post_pkey PRIMARY KEY (unique_id)
)

TABLESPACE pg_default;

ALTER TABLE public.shootings_washington_post
    OWNER to postgres;
	
	
	-- Table: public.fatal_encounter_org

-- DROP TABLE public.fatal_encounter_org;

CREATE TABLE public.fatal_encounter_org
(
    unique_id integer NOT NULL,
    full_name character varying COLLATE pg_catalog."default",
    age integer,
    gender character varying COLLATE pg_catalog."default",
    race character varying COLLATE pg_catalog."default",
    race_w_imputation character varying COLLATE pg_catalog."default",
    imputation_probability double precision,
    date_of_injury date,
    location_of_injury character varying COLLATE pg_catalog."default",
    location_of_death_city character varying COLLATE pg_catalog."default",
    location_of_death_state character varying COLLATE pg_catalog."default",
    location_of_death_zip character varying COLLATE pg_catalog."default",
    location_of_death_county character varying COLLATE pg_catalog."default",
    latitude double precision,
    longitude double precision,
    agency_responsible_for_death character varying COLLATE pg_catalog."default",
    cause_of_death character varying COLLATE pg_catalog."default",
    disposition_exclusions character varying COLLATE pg_catalog."default",
    intentional_use_of_force character varying COLLATE pg_catalog."default",
    symptoms_of_mental_illness character varying COLLATE pg_catalog."default",
    year_of_injury integer,
    CONSTRAINT fatal_encounter_org_pkey PRIMARY KEY (unique_id)
)

TABLESPACE pg_default;

ALTER TABLE public.fatal_encounter_org
    OWNER to postgres;


    -- Table: public.fatal_ec_w_demog

-- DROP TABLE public.fatal_ec_w_demog;

CREATE TABLE public.fatal_ec_w_demog
(
    unique_id integer,
    full_name character varying COLLATE pg_catalog."default",
    age integer,
    gender character varying COLLATE pg_catalog."default",
    race character varying COLLATE pg_catalog."default",
    race_w_imputation character varying COLLATE pg_catalog."default",
    imputation_probability double precision,
    date_of_injury date,
    location_of_injury character varying COLLATE pg_catalog."default",
    location_of_death_city character varying COLLATE pg_catalog."default",
    location_of_death_state character varying COLLATE pg_catalog."default",
    location_of_death_zip character varying COLLATE pg_catalog."default",
    location_of_death_county character varying COLLATE pg_catalog."default",
    latitude double precision,
    longitude double precision,
    agency_responsible_for_death character varying COLLATE pg_catalog."default",
    cause_of_death character varying COLLATE pg_catalog."default",
    disposition_exclusions character varying COLLATE pg_catalog."default",
    intentional_use_of_force character varying COLLATE pg_catalog."default",
    symptoms_of_mental_illness character varying COLLATE pg_catalog."default",
    year_of_injury integer,
    white numeric,
    black numeric,
    hispanic numeric,
    asian numeric,
    indian numeric,
    hawaii numeric,
    other numeric
)

TABLESPACE pg_default;

ALTER TABLE public.fatal_ec_w_demog
    OWNER to postgres;

    -- Table: public.shootings_wp_w_demog

-- DROP TABLE public.shootings_wp_w_demog;

CREATE TABLE public.shootings_wp_w_demog
(
    unique_id integer,
    full_name character varying COLLATE pg_catalog."default",
    date_of_death date,
    manner_of_death character varying COLLATE pg_catalog."default",
    armed character varying COLLATE pg_catalog."default",
    age integer,
    gender character varying COLLATE pg_catalog."default",
    race character varying COLLATE pg_catalog."default",
    city character varying COLLATE pg_catalog."default",
    state character varying COLLATE pg_catalog."default",
    signs_of_mental_illness boolean,
    threat_level character varying COLLATE pg_catalog."default",
    flee character varying COLLATE pg_catalog."default",
    body_camera boolean,
    white numeric,
    black numeric,
    hispanic numeric,
    asian numeric,
    indian numeric,
    hawaii numeric,
    other numeric
)

TABLESPACE pg_default;

ALTER TABLE public.shootings_wp_w_demog
    OWNER to postgres;

    -- Table: public.state_demographic

-- DROP TABLE public.state_demographic;

CREATE TABLE public.state_demographic
(
    state character varying COLLATE pg_catalog."default" NOT NULL,
    white numeric,
    black numeric,
    hispanic numeric,
    asian numeric,
    indian numeric,
    hawaii numeric,
    other numeric,
    CONSTRAINT state_demographic_pkey PRIMARY KEY (state)
)

TABLESPACE pg_default;

ALTER TABLE public.state_demographic
    OWNER to postgres;

    -- Table: public.total_shoot_state_wp

-- DROP TABLE public.total_shoot_state_wp;

CREATE TABLE public.total_shoot_state_wp
(
    count bigint,
    state character varying COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public.total_shoot_state_wp
    OWNER to postgres;