--
-- PostgreSQL database dump
--

-- Dumped from database version 10.20
-- Dumped by pg_dump version 10.20

-- Started on 2022-06-09 10:17:02

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3288 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 233 (class 1259 OID 68219)
-- Name: LABS_ALUMN_CAT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LABS_ALUMN_CAT" (
    enrollment integer NOT NULL,
    name character varying(120) NOT NULL
);


ALTER TABLE public."LABS_ALUMN_CAT" OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 68383)
-- Name: LABS_ALUM_PRATICES; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LABS_ALUM_PRATICES" (
    id bigint NOT NULL,
    entry_date timestamp with time zone NOT NULL,
    exit_date timestamp with time zone,
    enrollment_id integer NOT NULL,
    equipment_id bigint,
    laboratory_id bigint NOT NULL,
    program_id bigint,
    schedule_id bigint
);


ALTER TABLE public."LABS_ALUM_PRATICES" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 67865)
-- Name: LABS_CAREER_CAT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LABS_CAREER_CAT" (
    id bigint NOT NULL,
    academic_program_name character varying(60) NOT NULL,
    homosigla character varying(10) NOT NULL,
    academic_program_name_gdp character varying(70) NOT NULL,
    modality_id bigint NOT NULL,
    status_id bigint NOT NULL
);


ALTER TABLE public."LABS_CAREER_CAT" OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 68298)
-- Name: LABS_CATEGORIES_EQUIPMENT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LABS_CATEGORIES_EQUIPMENT" (
    id bigint NOT NULL,
    desciption character varying(30) NOT NULL
);


ALTER TABLE public."LABS_CATEGORIES_EQUIPMENT" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 67891)
-- Name: LABS_CYCLE_CAT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LABS_CYCLE_CAT" (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    status_id bigint NOT NULL
);


ALTER TABLE public."LABS_CYCLE_CAT" OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 68308)
-- Name: LABS_EQUIPMENT_GENERAL; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LABS_EQUIPMENT_GENERAL" (
    id bigint NOT NULL,
    number integer NOT NULL,
    description text NOT NULL,
    category_id bigint NOT NULL,
    laboratory_id bigint NOT NULL,
    status_id bigint NOT NULL
);


ALTER TABLE public."LABS_EQUIPMENT_GENERAL" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 67911)
-- Name: LABS_GROUP_CAT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LABS_GROUP_CAT" (
    id bigint NOT NULL,
    "group" character varying(30) NOT NULL,
    code character varying(32) NOT NULL,
    career_id bigint NOT NULL,
    period_id bigint NOT NULL,
    quarter_id bigint NOT NULL,
    shift_id bigint NOT NULL,
    status_id bigint NOT NULL
);


ALTER TABLE public."LABS_GROUP_CAT" OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 68319)
-- Name: LABS_LABORATORIES; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LABS_LABORATORIES" (
    id bigint NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public."LABS_LABORATORIES" OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 68013)
-- Name: LABS_MODALITY_CAT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LABS_MODALITY_CAT" (
    id bigint NOT NULL,
    description character varying(250) NOT NULL,
    status_id bigint NOT NULL
);


ALTER TABLE public."LABS_MODALITY_CAT" OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 68005)
-- Name: LABS_PERIOD_CAT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LABS_PERIOD_CAT" (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    vacational_start_date date NOT NULL,
    vacational_end_date date NOT NULL,
    cycle_id bigint NOT NULL,
    status_id bigint NOT NULL
);


ALTER TABLE public."LABS_PERIOD_CAT" OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 68329)
-- Name: LABS_PROGRAMS_CAT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LABS_PROGRAMS_CAT" (
    id bigint NOT NULL,
    desciption character varying(100) NOT NULL,
    version character varying(20) NOT NULL,
    status_id bigint NOT NULL
);


ALTER TABLE public."LABS_PROGRAMS_CAT" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 67919)
-- Name: LABS_QUARTER_CAT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LABS_QUARTER_CAT" (
    id bigint NOT NULL,
    name character varying(2) NOT NULL
);


ALTER TABLE public."LABS_QUARTER_CAT" OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 68339)
-- Name: LABS_SCHEDULE; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LABS_SCHEDULE" (
    id bigint NOT NULL,
    day character varying(15) NOT NULL,
    time_start time without time zone NOT NULL,
    time_end time without time zone NOT NULL,
    laboratory_id bigint NOT NULL,
    group_id bigint NOT NULL,
    period_id bigint NOT NULL,
    status_id bigint NOT NULL,
    subject_id bigint NOT NULL,
    teacher_id bigint NOT NULL
);


ALTER TABLE public."LABS_SCHEDULE" OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 67939)
-- Name: LABS_SHIFT_CAT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LABS_SHIFT_CAT" (
    id bigint NOT NULL,
    description character varying(15) NOT NULL,
    abbreviation character varying(5) NOT NULL
);


ALTER TABLE public."LABS_SHIFT_CAT" OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 67947)
-- Name: LABS_STATUS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LABS_STATUS" (
    id bigint NOT NULL,
    status character varying(20) NOT NULL,
    description character varying(50) NOT NULL
);


ALTER TABLE public."LABS_STATUS" OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 68347)
-- Name: LABS_STATUS_EQUIPMENT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LABS_STATUS_EQUIPMENT" (
    id bigint NOT NULL,
    desciption character varying(25) NOT NULL
);


ALTER TABLE public."LABS_STATUS_EQUIPMENT" OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 67987)
-- Name: LABS_SUBJECT_CAT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LABS_SUBJECT_CAT" (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    code_subject character varying(20) NOT NULL,
    credits integer NOT NULL,
    theoretical_hours integer NOT NULL,
    practical_hours integer NOT NULL,
    certifiable boolean NOT NULL,
    limit_absence integer NOT NULL,
    quarter_id bigint NOT NULL,
    status_id bigint NOT NULL
);


ALTER TABLE public."LABS_SUBJECT_CAT" OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 68281)
-- Name: LABS_TEACHER_CAT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LABS_TEACHER_CAT" (
    id bigint NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(15) NOT NULL,
    second_last_name character varying(15) NOT NULL,
    email character varying(254) NOT NULL,
    gender character varying(50) NOT NULL,
    teacher_status_id bigint NOT NULL
);


ALTER TABLE public."LABS_TEACHER_CAT" OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 68357)
-- Name: LABS_TEACHER_PRACTICES; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LABS_TEACHER_PRACTICES" (
    id bigint NOT NULL,
    entry_date timestamp without time zone NOT NULL,
    exit_date timestamp without time zone,
    description character varying(250) NOT NULL,
    equipment_id bigint,
    laboratory_id bigint NOT NULL,
    schedule_id bigint,
    teacher_id bigint NOT NULL
);


ALTER TABLE public."LABS_TEACHER_PRACTICES" OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 67863)
-- Name: SIIUP_CAREER_CAT_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SIIUP_CAREER_CAT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SIIUP_CAREER_CAT_id_seq" OWNER TO postgres;

--
-- TOC entry 3289 (class 0 OID 0)
-- Dependencies: 215
-- Name: SIIUP_CAREER_CAT_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SIIUP_CAREER_CAT_id_seq" OWNED BY public."LABS_CAREER_CAT".id;


--
-- TOC entry 217 (class 1259 OID 67889)
-- Name: SIIUP_CYCLE_CAT_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SIIUP_CYCLE_CAT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SIIUP_CYCLE_CAT_id_seq" OWNER TO postgres;

--
-- TOC entry 3290 (class 0 OID 0)
-- Dependencies: 217
-- Name: SIIUP_CYCLE_CAT_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SIIUP_CYCLE_CAT_id_seq" OWNED BY public."LABS_CYCLE_CAT".id;


--
-- TOC entry 219 (class 1259 OID 67909)
-- Name: SIIUP_GROUP_CAT_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SIIUP_GROUP_CAT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SIIUP_GROUP_CAT_id_seq" OWNER TO postgres;

--
-- TOC entry 3291 (class 0 OID 0)
-- Dependencies: 219
-- Name: SIIUP_GROUP_CAT_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SIIUP_GROUP_CAT_id_seq" OWNED BY public."LABS_GROUP_CAT".id;


--
-- TOC entry 231 (class 1259 OID 68011)
-- Name: SIIUP_MODALITY_CAT_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SIIUP_MODALITY_CAT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SIIUP_MODALITY_CAT_id_seq" OWNER TO postgres;

--
-- TOC entry 3292 (class 0 OID 0)
-- Dependencies: 231
-- Name: SIIUP_MODALITY_CAT_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SIIUP_MODALITY_CAT_id_seq" OWNED BY public."LABS_MODALITY_CAT".id;


--
-- TOC entry 229 (class 1259 OID 68003)
-- Name: SIIUP_PERIOD_CAT_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SIIUP_PERIOD_CAT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SIIUP_PERIOD_CAT_id_seq" OWNER TO postgres;

--
-- TOC entry 3293 (class 0 OID 0)
-- Dependencies: 229
-- Name: SIIUP_PERIOD_CAT_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SIIUP_PERIOD_CAT_id_seq" OWNED BY public."LABS_PERIOD_CAT".id;


--
-- TOC entry 221 (class 1259 OID 67917)
-- Name: SIIUP_QUARTER_CAT_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SIIUP_QUARTER_CAT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SIIUP_QUARTER_CAT_id_seq" OWNER TO postgres;

--
-- TOC entry 3294 (class 0 OID 0)
-- Dependencies: 221
-- Name: SIIUP_QUARTER_CAT_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SIIUP_QUARTER_CAT_id_seq" OWNED BY public."LABS_QUARTER_CAT".id;


--
-- TOC entry 223 (class 1259 OID 67937)
-- Name: SIIUP_SHIFT_CAT_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SIIUP_SHIFT_CAT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SIIUP_SHIFT_CAT_id_seq" OWNER TO postgres;

--
-- TOC entry 3295 (class 0 OID 0)
-- Dependencies: 223
-- Name: SIIUP_SHIFT_CAT_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SIIUP_SHIFT_CAT_id_seq" OWNED BY public."LABS_SHIFT_CAT".id;


--
-- TOC entry 227 (class 1259 OID 67985)
-- Name: SIIUP_SUBJECT_CAT_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SIIUP_SUBJECT_CAT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SIIUP_SUBJECT_CAT_id_seq" OWNER TO postgres;

--
-- TOC entry 3296 (class 0 OID 0)
-- Dependencies: 227
-- Name: SIIUP_SUBJECT_CAT_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SIIUP_SUBJECT_CAT_id_seq" OWNED BY public."LABS_SUBJECT_CAT".id;


--
-- TOC entry 234 (class 1259 OID 68279)
-- Name: SIIUP_TEACHER_CAT_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SIIUP_TEACHER_CAT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SIIUP_TEACHER_CAT_id_seq" OWNER TO postgres;

--
-- TOC entry 3297 (class 0 OID 0)
-- Dependencies: 234
-- Name: SIIUP_TEACHER_CAT_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SIIUP_TEACHER_CAT_id_seq" OWNED BY public."LABS_TEACHER_CAT".id;


--
-- TOC entry 250 (class 1259 OID 68381)
-- Name: SIUUP_ALUM_PRATICES_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SIUUP_ALUM_PRATICES_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SIUUP_ALUM_PRATICES_id_seq" OWNER TO postgres;

--
-- TOC entry 3298 (class 0 OID 0)
-- Dependencies: 250
-- Name: SIUUP_ALUM_PRATICES_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SIUUP_ALUM_PRATICES_id_seq" OWNED BY public."LABS_ALUM_PRATICES".id;


--
-- TOC entry 236 (class 1259 OID 68296)
-- Name: SIUUP_CATEGORIES_EQUIPMENT_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SIUUP_CATEGORIES_EQUIPMENT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SIUUP_CATEGORIES_EQUIPMENT_id_seq" OWNER TO postgres;

--
-- TOC entry 3299 (class 0 OID 0)
-- Dependencies: 236
-- Name: SIUUP_CATEGORIES_EQUIPMENT_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SIUUP_CATEGORIES_EQUIPMENT_id_seq" OWNED BY public."LABS_CATEGORIES_EQUIPMENT".id;


--
-- TOC entry 238 (class 1259 OID 68306)
-- Name: SIUUP_EQUIPMENT_GENERAL_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SIUUP_EQUIPMENT_GENERAL_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SIUUP_EQUIPMENT_GENERAL_id_seq" OWNER TO postgres;

--
-- TOC entry 3300 (class 0 OID 0)
-- Dependencies: 238
-- Name: SIUUP_EQUIPMENT_GENERAL_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SIUUP_EQUIPMENT_GENERAL_id_seq" OWNED BY public."LABS_EQUIPMENT_GENERAL".id;


--
-- TOC entry 240 (class 1259 OID 68317)
-- Name: SIUUP_LABORATORIES_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SIUUP_LABORATORIES_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SIUUP_LABORATORIES_id_seq" OWNER TO postgres;

--
-- TOC entry 3301 (class 0 OID 0)
-- Dependencies: 240
-- Name: SIUUP_LABORATORIES_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SIUUP_LABORATORIES_id_seq" OWNED BY public."LABS_LABORATORIES".id;


--
-- TOC entry 242 (class 1259 OID 68327)
-- Name: SIUUP_PROGRAMS_CAT_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SIUUP_PROGRAMS_CAT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SIUUP_PROGRAMS_CAT_id_seq" OWNER TO postgres;

--
-- TOC entry 3302 (class 0 OID 0)
-- Dependencies: 242
-- Name: SIUUP_PROGRAMS_CAT_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SIUUP_PROGRAMS_CAT_id_seq" OWNED BY public."LABS_PROGRAMS_CAT".id;


--
-- TOC entry 244 (class 1259 OID 68337)
-- Name: SIUUP_SCHEDULE_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SIUUP_SCHEDULE_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SIUUP_SCHEDULE_id_seq" OWNER TO postgres;

--
-- TOC entry 3303 (class 0 OID 0)
-- Dependencies: 244
-- Name: SIUUP_SCHEDULE_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SIUUP_SCHEDULE_id_seq" OWNED BY public."LABS_SCHEDULE".id;


--
-- TOC entry 246 (class 1259 OID 68345)
-- Name: SIUUP_STATUS_EQUIPMENT_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SIUUP_STATUS_EQUIPMENT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SIUUP_STATUS_EQUIPMENT_id_seq" OWNER TO postgres;

--
-- TOC entry 3304 (class 0 OID 0)
-- Dependencies: 246
-- Name: SIUUP_STATUS_EQUIPMENT_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SIUUP_STATUS_EQUIPMENT_id_seq" OWNED BY public."LABS_STATUS_EQUIPMENT".id;


--
-- TOC entry 225 (class 1259 OID 67945)
-- Name: SIUUP_STATUS_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SIUUP_STATUS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SIUUP_STATUS_id_seq" OWNER TO postgres;

--
-- TOC entry 3305 (class 0 OID 0)
-- Dependencies: 225
-- Name: SIUUP_STATUS_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SIUUP_STATUS_id_seq" OWNED BY public."LABS_STATUS".id;


--
-- TOC entry 248 (class 1259 OID 68355)
-- Name: SIUUP_TEACHER_PRACTICES_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SIUUP_TEACHER_PRACTICES_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SIUUP_TEACHER_PRACTICES_id_seq" OWNER TO postgres;

--
-- TOC entry 3306 (class 0 OID 0)
-- Dependencies: 248
-- Name: SIUUP_TEACHER_PRACTICES_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SIUUP_TEACHER_PRACTICES_id_seq" OWNED BY public."LABS_TEACHER_PRACTICES".id;


--
-- TOC entry 203 (class 1259 OID 67726)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 67724)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 3307 (class 0 OID 0)
-- Dependencies: 202
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 205 (class 1259 OID 67736)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 67734)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3308 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 201 (class 1259 OID 67718)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 67716)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3309 (class 0 OID 0)
-- Dependencies: 200
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 207 (class 1259 OID 67744)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 67754)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 67752)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3310 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 206 (class 1259 OID 67742)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 3311 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 211 (class 1259 OID 67762)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 67760)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3312 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 257 (class 1259 OID 68594)
-- Name: dashboard_userdashboardmodule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dashboard_userdashboardmodule (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    module character varying(255) NOT NULL,
    app_label character varying(255),
    user_id integer,
    "column" integer NOT NULL,
    "order" integer NOT NULL,
    settings text NOT NULL,
    children text NOT NULL,
    collapsed boolean NOT NULL,
    CONSTRAINT dashboard_userdashboardmodule_column_check CHECK (("column" >= 0))
);


ALTER TABLE public.dashboard_userdashboardmodule OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 68592)
-- Name: dashboard_userdashboardmodule_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dashboard_userdashboardmodule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dashboard_userdashboardmodule_id_seq OWNER TO postgres;

--
-- TOC entry 3313 (class 0 OID 0)
-- Dependencies: 256
-- Name: dashboard_userdashboardmodule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dashboard_userdashboardmodule_id_seq OWNED BY public.dashboard_userdashboardmodule.id;


--
-- TOC entry 213 (class 1259 OID 67822)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 67820)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 3314 (class 0 OID 0)
-- Dependencies: 212
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 199 (class 1259 OID 67708)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 67706)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 3315 (class 0 OID 0)
-- Dependencies: 198
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 197 (class 1259 OID 67697)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 67695)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3316 (class 0 OID 0)
-- Dependencies: 196
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 214 (class 1259 OID 67853)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 68565)
-- Name: jet_bookmark; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jet_bookmark (
    id integer NOT NULL,
    url character varying(200) NOT NULL,
    title character varying(255) NOT NULL,
    user_id integer,
    date_add timestamp with time zone NOT NULL
);


ALTER TABLE public.jet_bookmark OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 68563)
-- Name: jet_bookmark_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jet_bookmark_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jet_bookmark_id_seq OWNER TO postgres;

--
-- TOC entry 3317 (class 0 OID 0)
-- Dependencies: 252
-- Name: jet_bookmark_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jet_bookmark_id_seq OWNED BY public.jet_bookmark.id;


--
-- TOC entry 255 (class 1259 OID 68573)
-- Name: jet_pinnedapplication; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jet_pinnedapplication (
    id integer NOT NULL,
    app_label character varying(255) NOT NULL,
    user_id integer,
    date_add timestamp with time zone NOT NULL
);


ALTER TABLE public.jet_pinnedapplication OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 68571)
-- Name: jet_pinnedapplication_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jet_pinnedapplication_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jet_pinnedapplication_id_seq OWNER TO postgres;

--
-- TOC entry 3318 (class 0 OID 0)
-- Dependencies: 254
-- Name: jet_pinnedapplication_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jet_pinnedapplication_id_seq OWNED BY public.jet_pinnedapplication.id;


--
-- TOC entry 2885 (class 2604 OID 68386)
-- Name: LABS_ALUM_PRATICES id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_ALUM_PRATICES" ALTER COLUMN id SET DEFAULT nextval('public."SIUUP_ALUM_PRATICES_id_seq"'::regclass);


--
-- TOC entry 2868 (class 2604 OID 67868)
-- Name: LABS_CAREER_CAT id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_CAREER_CAT" ALTER COLUMN id SET DEFAULT nextval('public."SIIUP_CAREER_CAT_id_seq"'::regclass);


--
-- TOC entry 2878 (class 2604 OID 68301)
-- Name: LABS_CATEGORIES_EQUIPMENT id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_CATEGORIES_EQUIPMENT" ALTER COLUMN id SET DEFAULT nextval('public."SIUUP_CATEGORIES_EQUIPMENT_id_seq"'::regclass);


--
-- TOC entry 2869 (class 2604 OID 67894)
-- Name: LABS_CYCLE_CAT id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_CYCLE_CAT" ALTER COLUMN id SET DEFAULT nextval('public."SIIUP_CYCLE_CAT_id_seq"'::regclass);


--
-- TOC entry 2879 (class 2604 OID 68311)
-- Name: LABS_EQUIPMENT_GENERAL id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_EQUIPMENT_GENERAL" ALTER COLUMN id SET DEFAULT nextval('public."SIUUP_EQUIPMENT_GENERAL_id_seq"'::regclass);


--
-- TOC entry 2870 (class 2604 OID 67914)
-- Name: LABS_GROUP_CAT id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_GROUP_CAT" ALTER COLUMN id SET DEFAULT nextval('public."SIIUP_GROUP_CAT_id_seq"'::regclass);


--
-- TOC entry 2880 (class 2604 OID 68322)
-- Name: LABS_LABORATORIES id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_LABORATORIES" ALTER COLUMN id SET DEFAULT nextval('public."SIUUP_LABORATORIES_id_seq"'::regclass);


--
-- TOC entry 2876 (class 2604 OID 68016)
-- Name: LABS_MODALITY_CAT id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_MODALITY_CAT" ALTER COLUMN id SET DEFAULT nextval('public."SIIUP_MODALITY_CAT_id_seq"'::regclass);


--
-- TOC entry 2875 (class 2604 OID 68008)
-- Name: LABS_PERIOD_CAT id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_PERIOD_CAT" ALTER COLUMN id SET DEFAULT nextval('public."SIIUP_PERIOD_CAT_id_seq"'::regclass);


--
-- TOC entry 2881 (class 2604 OID 68332)
-- Name: LABS_PROGRAMS_CAT id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_PROGRAMS_CAT" ALTER COLUMN id SET DEFAULT nextval('public."SIUUP_PROGRAMS_CAT_id_seq"'::regclass);


--
-- TOC entry 2871 (class 2604 OID 67922)
-- Name: LABS_QUARTER_CAT id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_QUARTER_CAT" ALTER COLUMN id SET DEFAULT nextval('public."SIIUP_QUARTER_CAT_id_seq"'::regclass);


--
-- TOC entry 2882 (class 2604 OID 68342)
-- Name: LABS_SCHEDULE id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_SCHEDULE" ALTER COLUMN id SET DEFAULT nextval('public."SIUUP_SCHEDULE_id_seq"'::regclass);


--
-- TOC entry 2872 (class 2604 OID 67942)
-- Name: LABS_SHIFT_CAT id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_SHIFT_CAT" ALTER COLUMN id SET DEFAULT nextval('public."SIIUP_SHIFT_CAT_id_seq"'::regclass);


--
-- TOC entry 2873 (class 2604 OID 67950)
-- Name: LABS_STATUS id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_STATUS" ALTER COLUMN id SET DEFAULT nextval('public."SIUUP_STATUS_id_seq"'::regclass);


--
-- TOC entry 2883 (class 2604 OID 68350)
-- Name: LABS_STATUS_EQUIPMENT id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_STATUS_EQUIPMENT" ALTER COLUMN id SET DEFAULT nextval('public."SIUUP_STATUS_EQUIPMENT_id_seq"'::regclass);


--
-- TOC entry 2874 (class 2604 OID 67990)
-- Name: LABS_SUBJECT_CAT id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_SUBJECT_CAT" ALTER COLUMN id SET DEFAULT nextval('public."SIIUP_SUBJECT_CAT_id_seq"'::regclass);


--
-- TOC entry 2877 (class 2604 OID 68284)
-- Name: LABS_TEACHER_CAT id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_TEACHER_CAT" ALTER COLUMN id SET DEFAULT nextval('public."SIIUP_TEACHER_CAT_id_seq"'::regclass);


--
-- TOC entry 2884 (class 2604 OID 68360)
-- Name: LABS_TEACHER_PRACTICES id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_TEACHER_PRACTICES" ALTER COLUMN id SET DEFAULT nextval('public."SIUUP_TEACHER_PRACTICES_id_seq"'::regclass);


--
-- TOC entry 2861 (class 2604 OID 67729)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2862 (class 2604 OID 67739)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2860 (class 2604 OID 67721)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2863 (class 2604 OID 67747)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2864 (class 2604 OID 67757)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2865 (class 2604 OID 67765)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2888 (class 2604 OID 68597)
-- Name: dashboard_userdashboardmodule id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboard_userdashboardmodule ALTER COLUMN id SET DEFAULT nextval('public.dashboard_userdashboardmodule_id_seq'::regclass);


--
-- TOC entry 2866 (class 2604 OID 67825)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2859 (class 2604 OID 67711)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2858 (class 2604 OID 67700)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2886 (class 2604 OID 68568)
-- Name: jet_bookmark id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jet_bookmark ALTER COLUMN id SET DEFAULT nextval('public.jet_bookmark_id_seq'::regclass);


--
-- TOC entry 2887 (class 2604 OID 68576)
-- Name: jet_pinnedapplication id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jet_pinnedapplication ALTER COLUMN id SET DEFAULT nextval('public.jet_pinnedapplication_id_seq'::regclass);


--
-- TOC entry 3256 (class 0 OID 68219)
-- Dependencies: 233
-- Data for Name: LABS_ALUMN_CAT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."LABS_ALUMN_CAT" (enrollment, name) FROM stdin;
193071	DAVID CRESCENCIO
203102	JORGE LUIS GORDILLO CANSECO
193184	CARLOS DANIEL  QUINTANA  CASH
193300	GISSELA OCHOA LOPEZ
193340	GERARDO HILERIO ANCHEYTA
193351	BRIAN RIVERA AGUILAR
193389	DIDIER  DE LA CRÚZ  MÉNDEZ
193398	OSCAR EMILIO ANDRADE GUZMAN
193447	IRIS NAYELI HERNANDEZ DE LEÓN
201002	BENJAMIN ALESSANDRO ALCAZAR LOPEZ
201006	CRISTIAN ALEXIS DE LEON  TRUJILLO
201007	ANGEL ECHEVERRIA  LOPEZ
201010	ANDRES HERNANDEZ  BRIONES
201014	SOID FABIAN  MUÑOZ MIJANGOS
201016	ALEJANDRO RINCÓN DE LEÓN
201017	SAMUEL ROBLERO ZAMORA
201018	MAURICIO SOLIS ALFARO
201019	ÁNGEL JESÚS SUMUANO GOMEZ
201020	AZUL VASQUEZ RODRIGUEZ
201021	YOHAN  VERDUGO  PÉREZ
201022	ADONIAS  AGUILAR ALFARO
201023	AARON OLIVERO  ARGUETA FIGUEROA
201025	PEDRO EDUARDO CARRASCO CHONG
201026	DIEGO CRISOSTOMO ESCOBAR
201027	ALEXIS EDUARDO CUETO DE AQUINO
201029	LUIS FERNANDO  GORDILLO ROBLERO
201030	REYNA YANETH GUTIERREZ VILLEGAS
201031	EDGAR SAUL LOPEZ LOPEZ
201041	GABRIEL RAMIREZ BORJAS
201043	ENRIQUE  REYES PEREZ
201044	ROLEMBERG RIVAS LOPEZ
201046	RUBEN MORGAN SANTIAGO LOPEZ
201049	ANTONIO JOSUE VELAZQUEZ  MOSQUEDA
201050	EDUARDO VENTURA ORTIZ
201056	LUZ ELENA  DEL VALLE FLORES
203002	MARCELA BARRIOS SANTIZO
203004	JOHOMARA ARLETT  FERNÁNDEZ PRIETO
203005	VICTOR AARON MENDOZA FERNANDEZ
203007	ABEL RUIZ  ROBLEDO
203008	JOSÉ GABRIEL ORTIZ RODAS
203010	ALMA DELIA DIAZ VELÁZQUEZ
203015	CRISTIAN CABRERA VELASQUEZ
203016	KEVIN JOEL  GONZALEZ ROBLERO
203019	ALEXANDER SOLIS VELAZQUEZ
203024	JOSÉ JULIÁN  MORALES BONILLA
203025	LUIS FERNANDO  ESPINOZA SUAREZ
203027	MARCO ANTONIO  BARRIOS  JOO
203029	CARLOS MANUEL RIVERA GARCIA
203030	ROSA ANGÉLICA PÉREZ VELÁSQUEZ
203031	JOSE ANGEL ARJONA MATHEIS
203034	DIEGO FERNANDO DOMINGUEZ AGUILAR
203035	LUIS ALONSO  PINZÓN  BOURET
203037	LUIS ANGEL MARTINEZ RIVERA
203038	CESAR EDUARDO ZEPEDA MELENDEZ
203039	EDUARDO ANTONIO FLORES DE LEÓN
203040	SAADE ALDEBARAN TAPIA MARTÍNEZ
203042	ERICK ALONSO ANAYA RODRIGUEZ
203043	VALERIA LOPEZ  ARÉVALO
203049	HEBER DANIEL LORENZANA  DIAZ
203050	JOSE ADRIÁN TINO SOLÍS
203058	SERVANDO  MONZÓN  ELIAZ
203059	ROSALINDA MORALES MENDOZA
203060	JENSY ANALI MERIDA GARCIA
203061	JAIME RAFAEL  LOPEZ AGUILAR
203062	AMAURI SIU LONG WONG SÁNCHEZ
203063	ZABDIEL  TORRES MARTÍNEZ
203070	SAMUEL RUBEN VELAZQUEZ RODRIGUEZ
203072	GUILLERMO IGNACIO PATATUCHI TOLEDO
203076	JOSSELIN  DE LA ROSA MURILLO
203079	KIMBERLY ARGUELLO GRANADOS
203080	PRISCILA RAMIREZ GUZMAN
203082	JOSE FERNANDO MARROQUÍN SÁNCHEZ
203085	LORENA GERALDHYNNE VAZQUEZ VAZQUEZ
203088	YAHIR NOE DE LA CRUZ ARREOLA
203090	MARTHA ELENA ORDOÑEZ PEREZ
203094	ROCELIA DE LA CRUZ ANTONIO
203097	MONICA LIZBETH ZARATE VELAZQUEZ
203098	JOSE IGNACIO  AGUILAR  AGUILAR
203099	FREDDY CANALES GOMEZ
203108	DIRA ESTEFANIA VALENZUELA SALINAS
203109	DANIELA  SALVATIERRA  MORALES
203110	ABRAHAM ALEXANDER AGUILAR MONTES
203112	CARLOS RAMÓN  AGUILAR MOLINA
203118	JORGE EDUARDO  PEREZ  DIAZ
203120	WILSON MELBIN TOVAR PAXTOR
203121	JOSÉ JULIÁN  HERNÁNDEZ  MORALES
203124	JESUS LOPEZ VILLATORO
203133	CARLOS HORACIO GARCÍA QUINTANILLA
203135	JUSTIN ELI RODRIGUEZ HERNANDEZ
203136	PABLO SAMUEL SANTELIZ MENDEZ
203144	ERICK MANUEL  MENDEZ CALCANEO
203146	ALEXANDER IRAN CHILEL CASILLAS
203147	KARLA IBETH  DOMINGUEZ  SAMAYOA
203148	HECTOR MANUEL LOPEZ HERNANDEZ
203149	JOSÉ EMMANUEL FARRERA  HERNÁNDEZ
203150	COSME SANTIAGO DOMINGUEZ LOPEZ
203154	TANIA GISELL PÉREZ VILLAGRÁN
203155	FLOR YASMIN  JACOME VARGAS
203156	KEVIN JESUS AGUILAR CASTILLO
203161	CALEB DE LOS REYES  MORENO
183177	JOSE JUAN   GONZALEZ SANDOVAL
183237	DANIEL LOPEZ MORGA
193013	KEVIN DE JESUS LOPEZ OSORIO
193075	DILAN AXEL GRAJALES MARROQUIN
193195	DIEGO CIGARROA NEPOMUCENO
203014	JUDA DZAAHUINDANDAN MONTEZ HERRERA
193277	MARONY ERNESTO ACEVES FERNÁNDEZ
193242	BRYANT FERNANDO PASCACIO MENDOZA
193284	JOSE JUAN CALDERON GONZALEZ
193293	RICARDO DE JESÚS DE LEÓN HERNÁNDEZ
193308	JARED ESCOBAR CIGARROA
193344	EDLIN PAOLA VELÁZQUEZ  SALAS
193357	FERNANDO DURAN ESTRADA
193391	KRISTELL DAMARIS MENDOZA LÓPEZ
193474	RAMON ANTONIO ESTRADA ESPIRITU
203044	EMMANUEL GONZALEZ AGUSTIN
203051	ALONDRA LOPEZ GOMEZ
203073	CARMEN CIGARROA  DE LA ROSA
203162	ROLANDO ALESKEY RAMÍREZ JIMÉNEZ
203164	CINDY CAROLA VELÁZQUEZ SALAS
203165	EDILBERTO MORGA VILLALOBOS
203166	ANDRÉS MANUEL LÓPEZ ORDAZ
203168	JOSÉ ANTONIO SALAS DE LEÓN
203171	ERICK ADRIAN MUÑOZ ARMENTO
203173	BREGGI NAHUM PEREZ  GONZALEZ
203176	ALDO DAVID ZUÑIGA AGUIAR
203178	ALAN ULISES TORRES VAZQUEZ
203180	LUIS ANGEL CRUZ  CHANONA
203184	EZEQUIEL  CRUZ  PABLO
203185	MARIO ALEJANDRO ROSALES MUÑOZ
203191	HÉCTOR JOY ESCOBAR MONZÓN
203193	FRIDA SOPHIA  LOPEZ Y SANCHEZ
203194	MIGUEL RODRIGUEZ GABRIEL
203195	ROCAEL RAMIREZ VERDUGO
203196	FERNANDO  LÓPEZ  URBINA
203198	NELSON GONZALEZ ARREVILLAGA
203199	ADONAY ALVARADO ORELLANA
203204	OSCAR ALBERTO  JUAN GALVEZ
203205	IVONNE ALEJANDRA ESCOBAR SÁNCHEZ
203207	JORDAN MATUS SANCHEZ
203210	FERNANDA ABIGAIL  CASTILLO SALAS
203214	DAVID ALEJANDRO ARTEAGA ROMAY
203217	JORGE LUIS BIELMA GÁLVEZ
203221	JULIA NINETT TRINIDAD SAMAYOA
203225	GALILEA CITLALLI GIRÓN  BRIONES
203227	JOSE RAUL SIU DIAZ
203232	MARCO ANTONIO PRADO RIVAS
203233	YULEIDY ALEJANDRA LIÉBANO VALDEZ
203237	JEREMY ANDRÉ  CHANDOMÍ  ROBLEDO
203246	LUIS FRANCISCO  JIMÉNEZ  PEREZ
203248	ANGÉLICA LÓPEZ OSORIO
203250	JOSÉ GUADALUPE  ORTEGA  RODAS
203251	YAEL GALVEZ ZUNUN
203257	DIDIER  RAMIREZ ESTRADA
203258	FRANCISCO JAVIER RAMIREZ HERNANDEZ
203259	RAFAEL ALEJANDRO  RAMIREZ MATEO
203268	CARLOS MIGUEL DEL VALLE PEREZ
203270	DULCE ARILET  GOMEZ  VAZQUEZ
203271	JORGE MANUEL  LOPEZ GONZALEZ
203274	DANIEL SALOMÓN  ALVAREZ AGUILAR
203275	JORGE LUIS MATIAS DE LOS REYES
203276	JOSÉ ENRIQUE NORIEGA CRUZ
203280	ALDO ALEJANDRO SANCHEZ ROSS
203282	JADER SANTIZO  HERNÁNDEZ
203284	OSCAR AUCELIO OCHOA CABRERA
203285	JOSÉ RODRIGO SALADO BARRIENTOS
203294	ROSE JULISSA  MARROQUÍN REYNA
203296	RENE  AVENDAÑO  TALARICO
203302	GONZALO ERNESTO  GRAPAIN  CUETO
203305	RUTH VELAZQUEZ OSORIO
203306	PEDRO EDWIN LOPEZ GONZALEZ
203307	LIBNI DAYANA GONZÁLEZ MARTÍNEZ
203312	ALEXA ROCIO ZAMORA MARTINEZ
203316	AURI MARISOL RAMÍREZ CRUZ
203317	JOSE JAVIER IBARRA DOMINGUEZ
203325	CUAUHTEMOC  AVALOS ALVARADO
203326	JUAN JOSE NAVARRO CARRETO
203334	PEDRO ALEXANDER  CRUZ OCHOA
203338	LUIS EDUARDO MINA BERNAL
203342	ANGEL MANUEL LEON MARTINEZ
203345	JOSÉ EDUARDO  MORGA CAMERAS
203349	SEBASTIAN  CUETO JIMENEZ
203352	ANDRES EDUARDO  CABALLERO  COLLI
203354	PABLO ADRIÁN  RODRIGUEZ MARTÍNEZ
203355	HUMBERTO  DANIEL LOPEZ PINZON
203356	CONRADO ORDOÑEZ CONSUEGRA
203358	DYLAN PATRICIO GUZMAN MUÑOZ
203359	JHOSLIN JHARET BRENA PRECIADO
203360	ALEJANDRO REYES ALBILLANES
203361	FABIAN  BARRAGAN  VELASCO
203362	ANDREA  CASTRO LOPEZ
203364	CARLA ADRIANA  PUON ESPINOSA
203365	ARMANDO PINTO  SANCHEZ
203368	MARÍA  SOL  MAGDALENO
203369	DANIEL FAVIEL RODAS
203371	GUSTAVO ADOLFO CASTILLEJOS ESPINOZA
203374	CARLOS JARED  GARRIDO  PALOMEQUE
203378	JORGE JOSHUA  GONZALEZ  FLORES
203382	LIMBER LEVIT MENDEZ HERNANDEZ
203386	IAN ALBERTO GARCIA TELLEZ
203389	MARCO ANTONIO HERNANDEZ GORDILLO
203390	JUAN FRANCISCO LOPEZ  RAMOS
203395	EXAL DAVID CARVAJAL MORALES
203397	ALBERTO PÉREZ LÓPEZ
203399	ANTONIO MANUEL  VIDAL  MARTINEZ
203410	STEPHANY GOMEZ BAENA
203411	MARICARMEN PAOLA RAMIREZ BAHENA
203416	CITLALI GOMEZ GIRON
203417	MARCOS  TERCERO MURCIA
203418	ENRIQUE AGUILAR ARMENTA
203419	DANIEL GONZALEZ ARREVILLAGA
203424	ERICK AZAEL  REYES PEREZ
203427	GABRIELA  FRANCO  RODRÍGUEZ
203434	KEVIN ALBERTO MENDOZA  SOLORZANO
203435	ERWIN JOSUE RODAS MARTÍNEZ
203440	DANIEL EDUARDO GONZALEZ CHAVEZ
203441	GABRIEL IGNACIO CALDERON RAMIREZ
203444	JOSE ANGEL  APARICIO  SEBASTIAN
203448	RAMIRO ARTURO LÓPEZ PÉREZ
203449	LUIS ARTURO DIAZ HERNANDEZ
203452	SAMUEL ALEJANDRO MEZA MORENO
203453	JUAN MANUEL FUENTES SARMIENTO
203454	ERICK RODRIGO HERNANDEZ ISOFO
203455	FRANCISCO EMMANUEL MUNDO  DE LA CRUZ
203456	JULIAN  ROBLERO LOPEZ
203457	DIEGO COUTIÑO MOSQUEDA
203458	LAURA KARINA PÉREZ MUÑOZ
203460	GABRIELA HERNÁNDEZ LÓPEZ
203462	ISAI PEREZ GERARDO
203464	YURI CONCEPCION GARCIA MENDEZ
203468	DANIELA NEFTALI  LÓPEZ  CASTILLO
203470	JONATHAN URIEL REYNA GONZÁLEZ
203472	ALEXIS DE LA ROSA ALFARO
203475	MONTSERRAT MARTINEZ LEON
203483	FRAY ELIAN GALVEZ PEREZ
203485	JUAN EMILIO FLORES BANECO
211002	UXUE BELINDA SANCHEZ RAMIREZ
211005	JÚNIOR MARTÍ  CACH PÉREZ
211007	LUIS ANGEL JIMÉNEZ ARREOLA
211011	ABRAHAM  RODRÍGUEZ  DE LEÓN
211012	ORLANDO MARTINEZ TORRES
211019	JOSELINE JAZMIN SALINAS VAZQUEZ
211020	RAUL ARMANDO RAMIREZ GUTIERREZ
211021	DANIEL FLORES CITALAN
211023	CLEIVER  HERNANDEZ  HERNANDEZ
211024	MARIO ALFONSO ZEA CHIÑAS
211025	LUIS ENRIQUE  ARREVILLAGA  VAZQUEZ
211031	ALBA OLIVIA VILLARREAL CÓRDOVA
211040	CRISTOPHER  TRUJILLO NIEVES
211043	AURELIO RIGOBERTO GÓMEZ  LÓPEZ
211044	SUSLY MONTSERRAT  GRIS LÓPEZ
211049	SIUNELLY MONSERRAT  MOLINA ZELAYA
211053	JENNER HUMBERTO GARCIA GARCIA
213002	LETICIA PAOLA VENEGAS MEDINA
213003	RICARDO GARCÍA  AGUIRRE
213005	JONATHAN SANTOS GERARDO
213006	CIELO DE LEON AGUILAR
213008	FERNANDO JOSE  ACOSTA DE LEON
213009	FERNANDO ESPINOZA GUTIÉRREZ
213010	JACOBO  LOPEZ  MARTINEZ
213013	ADRIANA GUADALUPE DEL CARPIO SÁNCHEZ
213014	CARLOS AIMAR OCHOA  RAMIREZ
213015	WILLIAMS GALVEZ GONZALEZ
213018	OSCAR DANIEL HERNÁNDEZ SANTIAGO
213020	KEVIN JESÚS  ESCOBAR  CRUZ
213022	LUIS ARMANDO  FIGUEROA  MIMIAGA
213025	JESUS EDUARDO GOMEZ LOPEZ
213026	DANIELA SUZZETTE MONTES RUIZ
213027	ERNESTO RUBEN CASTILLO HERNANDEZ
213030	ERICK DANIEL ENRIQUEZ VILLANUEVA
213032	RAFAEL ENRIQUE CANCINO ALONZO
213033	LILIS SAHARAY  LOPEZ MADRID
213035	SHEYLA RENE LOPEZ MORENO
213036	ALEXANDRO HANZ RUIZ HIDALGO
213037	JOSE  LEONARDO RAMIREZ VICTORIO
213041	REYNA MARISOL  LÓPEZ  LÓPEZ
213042	SERGIO YOVANI REYES VELASCO
213044	LUCIA LORENA  BARRERA ZARATE
213046	MARIA DEL PILAR PALOMEQUE PEREZ
213048	ANGEL GERARDO JARDÓN HERRERA
213049	ISAAC MEDINA SANTOS
213051	KEVIN ALAIN LOPEZ MUÑOZ
213052	JORGE DAVID PAZ HIDALGO
213056	ULISES ANTONIO ESCOBAR  MORALES
213057	ROMINA ALEJANDRA  MERLIN RIVERA
213058	YAEL  GORDILLO VILLARREAL
213062	EDUARDO MUÑOZ RAMÍREZ
213064	STACY AISHA BLANQUET RANGEL
213065	OSIRIS CONCEPCION  GARCIA CABRERA
213069	LUIS DIEGO HERNÁNDEZ ESCOBAR
213070	JUAN GAMALIEL MARTINEZ CRUZ
213075	ANGEL ROLANDO JUÁREZ SORIANO
213076	FRANCISCO ANTONIO  FLORES HIDALGO
213077	ANDRES GABRIEL FLORES HIDALGO
213081	FERNANDA RUIZ GUTIERREZ
213083	JONATHAN LÓPEZ BURGUETE
213087	JIMENA QUINTERO LOPEZ
213088	HENRRY ALBERT PEREZ KELLER
213090	DIANA GABRIELA  ROSALES VÁZQUEZ
213091	MARILE  CASIMIRO GONZALEZ
213092	JOSÉ ANTONIO CHACON HERRERA
213094	KARLA YAMILETH  SALAZAR  MOGUEL
213095	CRISTIAN CHILEL CASILLAS
213096	JARED ABIMAEL  MARTINEZ  PADILLA
213097	YAHIR MURAKAWA GUZMÁN
213099	HENRY GASGAS VALDOVINOS
213101	LUIS FERNANDO  GARCÍA  MARTÍNEZ
213107	VICTOR MANUEL GONZALEZ  LOPEZ
213108	FERNANDO MEJIA MACEDO
213110	RODRIGO ARTURO  DARDON MEDINA
213112	MIGUEL ANGEL VILLATORO  PINTO
213113	KEVIN GERARDO  DUQUE OLIVERA
213114	ANDRES ALBERTO HERNANDEZ  SARMIENTO
213116	YAHIR ENRIQUE ZARATE CORZO
213118	MARIO ALBERTO  VAZQUEZ SANCHEZ
213119	LUZ MARIANA MENDOZA RIVERA
213120	CHRISTOPHER ÁNGEL  CISNEROS GÓMEZ
213125	JOAN YAHIR VILLARREAL FIGUEROA
213126	JOSE ANDRES NAJERA LOPEZ
213130	CARLOS GOMEZ DE LEON
213134	JONATHAN DOMINGUEZ GALVEZ
213136	ZEEDXI MORALES MARTINEZ
213137	ERNESTO ESPINOSA  SANTOS
213138	DIEGO ROBLES PEDRERO
213140	ISAAC EDUARDO BARCENAS MALO
213141	ALEXIS SAMUEL MORALES CAMPOSECO
213143	ZABDI AGUILAR VASQUEZ
213145	AMINAÍN   SOLÍS  MARTÍNEZ
213146	LUIS GOMEZ NOLASCO
213147	ALEJANDRA MORALES SIU
213148	DIEGO  ZAVALA DE LA ROSA
213150	ADAL LOPEZ NOLASCO
213157	JEZIEL  ORDOÑEZ  RUIZ
213162	JOSE DE JESUS LOPEZ TERCERO
213165	JENIFER GUADALUPE VAZQUEZ  LUCAS
213167	FRIDA NICOLE MALDONADO  CRUZ
213169	SAMUEL BONILLA LUNA
213171	GUIDO PÉREZ  RUIZ
213172	ANGEL BENJAMIN CRUZ GOMEZ
213177	AXEL RAMON BALLINAS  GONZALEZ
213179	BRANDON KENNETH CORONADO LIMON
213180	ERICK RAÚL  SÁNCHEZ  VELAZQUEZ
213182	ESTHEFANY TAPIA BAUTISTA
213184	ERICK CELIN CRUZ ROMERO
213185	ADRIAN  ZAVALA JACINTO
213186	ANDRÉS ALEXIS MORALES RODRÍGUEZ
213187	CYNTHIA MARTINEZ TORRESTIANA
213192	MERCI CARDONA LIMA
213193	GUADALUPE YASBEK LUIS  ESCOBAR
213194	JOSE LUIS  CASTAÑEDA  MACIAS
213197	MEXLI YANIRA  DE LEON  PEREZ
213200	IVAN DARIO  MENDOZA SIERRA
213202	MONTSERRAT MAZARIEGOS SOLIS
213207	MIGUEL ANGEL HAYASHI VICENTE
213208	SELVIN ALANGUMER RODAS RABANALES
213210	ITZAGUERY ORDOÑEZ  OVANDO
213211	CARLOS  ALBERTO MORENO VENEGAS
213212	SANTIAGO  LOPEZ NORIEGA
213215	AKEMI AIXA  GALLEGOS  VELASCO
213216	CARLOS DANIEL ESCOBAR DE LEON
213218	GABRIEL ARTURO  SOMMERS  ACUÑA
213220	CARLOS ALMEIDA ROBLERO
213222	MONTSERRAT CASTILLO GUTIÉRREZ
213225	ABRAHAM MAXIMILIANO LOPEZ OCHOA
213229	LUIS EDUARDO GARCIA DIAZ
213230	MANUEL ELI MAZARIEGOS  GIL
213233	JOSE ANGEL VICTORIO ESCOBAR
213234	HUGO ALEXANDER  TAMAYO BARRIOS
213242	DIDIER DE JESUS DIAZ MORALES
213243	EDUARDO  DOMÍNGUEZ  AGUSTÍN
213245	GLADIMIR  JIMENEZ  GARCÍA
213251	ZEIREL TORRES MARTINEZ
213252	GABRIEL OMAR VAZQUEZ LOPEZ
213255	JERRY MARLON DE LEON ARREAGA
213256	KEVIN ALEXANDER LIY COUTIÑO
213257	JORGE KALID GONGORA RODAS
213264	JOSUAR  PEREZ HERNANDEZ
213265	DIEGO ESTRADA GORDILLO
213266	BRAYAN AMARO ROQUE MORALES
213267	HERMAN BRAYAN SÁNCHEZ PÉREZ
213268	PAULA  CAMILA SANTILLAN LOPEZ
213271	JOSE DE JESUS DIAZ ORTIZ
213273	ERICK ANTONIO CANO ZAVALA
213275	JARED GONZALEZ HERNANDEZ
213276	GLENDY PAOLA SANCHEZ LORENZO
213280	KRISTIAN JOSEPH REYES ROBLERO
213282	JUAN CARLOS JUAREZ MORENO
213283	CIRO GABRIEL MONTES DE OCA GARCÍA
213285	ELEAZAR ROBLEDO VILCHES
213287	JOSE DIEGO ARDAVID LOPEZ
213288	GABRIEL ALEXANDER MEJIA CANCINO
213289	EGLÉ  CALTENCO GARCIA
213291	DAVID ANDRÉS SANTIAGO GORDILLO
213293	ROXANA MONSERRAT BAUTISTA ESPINOSA
213298	ADA LUZ SANTIZO LÓPEZ
213300	ASTRID  PEREZ FIERRO
213301	LILIBETH  GARCIA  RUIZ
213302	ABRIL DAROMI DE LA ROSA GOMEZ
213303	ALAN YAMIL RUIZ BARRERA
213311	RAUL LOPEZ  TRUJILLO
213314	JOSÉ ÁNGEL LÓPEZ OCHOA
213315	NESTOR DANIEL  BALLINAS  ALVARADO
213316	EVELIN YULIANA CIGARROA DE LA CRUZ
213317	JORGE FRANCISCO  VÁZQUEZ  AVENDAÑO
213321	MARCO FABIAN NOLASCO CITALAN
213323	JORGE ENRIQUE REYES ORTIZ
213324	LIZBETH CHAY GARCIA
213332	JOSE LUIS  PEREZ  LOPEZ
213333	HUGO ALBERTO CAMERA  MONTESINOS
213336	JOSE ANDRES GUTIERREZ LUCAZ
213337	ANDRÉS GABRIEL  SUÁREZ  SANTIZO
213339	JOSÉ ADRIAN CRUZ SALAS
213343	MELISSA CLAUDETTE  FIERROS RIVERA
213345	JULIÁN SANTIAGO  MACARIO GÓMEZ
213351	WENDY DE LEÓN GONZÁLEZ
213352	OMAR ALEJANDRO ORTEGA SOLORZANO
213355	XIMENA MARIEL GARCÍA  PALOMEQUE
213356	CHRISTOPHER DANIEL ESTIV  LÓPEZ  DE LEÓN
213357	JULIAN EDUARDO GARCÍA PALOMEQUE
213360	OSCAR AVIRAN ALVARADO PINTO
213362	ALAN JOSUE VALERIANO DELGADO
213364	KARLA BELEN RAMIREZ CAMPOS
213366	LEYLANI ZARALEA CUETO ARREOLA
213369	VALENTINA MORALES RAMIREZ
213371	CARLOS DANIEL PEREZ ARRIAGA
213374	ROMULO DE JESUS CANO JIMENEZ
213375	KEVIN DAVID  PEREZ  BLANDON
213378	ABRAHAM  ESPINOSA  SANTOS
213380	BENHAIL OTILIO LOPEZ  AGUIRRE
213381	DULCE STEPHANIE MUÑOZ ESPINOSA
213388	JULIAN ENRIQUE SANTIAGO LOPEZ
213391	JUAN CARLOS  GARCIA GOMEZ
213393	JOSE JULIAN VAZQUEZ VICTORIO
213395	ALAN GERARDO GONZÁLEZ ORTIZ
213397	DIEGO  CUETO  CHANG
213402	JORGE VELAZQUEZ HERNANDEZ
213403	JOSE LUIS  TOVILLA  PALACIOS
213411	HANDY NOHEMI MIGUEL  ROBLERO
213413	JULIO EDGARD MEOÑO LOPEZ
213414	EDGAR EDUARDO MEOÑO LOPEZ
213416	RAÚL ISAAC GARCÍA JIMÉNEZ
213420	WALTER VIDAL  VILCA  MAMANI
213424	KAREN  ZAMBRANO LOZANO
221007	EBER DE JESUS  JIMENEZ LOPEZ
221015	ROMEO LOPEZ REYES
221018	GILBERTO LAU OLVERA
221019	JULIAN YAHIR OCHOA CHAYES
221025	LUIS ANDRES LEE MORALES
221026	ALEXIS USIEL PEREZ  ANGEL
221033	EDUARDO ELISEO CARAVANTES  CHACÓN
221035	EDGAR LORENZO ZENDEJAS ALCAZAR
221037	KAREN NOEMI ARRIOLA REYNOSO
221052	JOSE DAVID  HERNANDEZ  CITALAN
221053	OSCAR FARID ALCANTARA TAPIA
221054	PAHOLA SULHEI GIRÓN  DE LEÓN
221055	LUIS EDURADO  MORENO GONZALEZ
221061	ERICK RODRIGUEZ FUENTES
221062	JOSE ANTONIO CHONG ALTUZAR
221063	REBECA CONCEPCIÓN  GARCÍA ALVARADO
221064	ALEXIS ROLDAN BACILIO ESPINOZA
221065	YAHIR DE JESUS GONZALEZ ARGUETA
221066	JOSHUA DIAZ RAMIREZ
222003	JUAN CARLOS MONZÓN HERNÁNDEZ
\.


--
-- TOC entry 3274 (class 0 OID 68383)
-- Dependencies: 251
-- Data for Name: LABS_ALUM_PRATICES; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."LABS_ALUM_PRATICES" (id, entry_date, exit_date, enrollment_id, equipment_id, laboratory_id, program_id, schedule_id) FROM stdin;
47	2022-06-08 11:03:00.497938-05	2022-06-08 13:04:24.666322-05	183237	\N	1	40	19
48	2022-06-08 11:03:27.135467-05	2022-06-08 13:12:20.135836-05	183177	\N	1	40	19
44	2022-06-08 11:01:03.169214-05	2022-06-08 13:12:26.301883-05	193391	\N	1	40	19
45	2022-06-08 11:01:31.48285-05	2022-06-08 13:12:29.329743-05	193242	\N	1	40	19
46	2022-06-08 11:02:29.409537-05	2022-06-08 13:12:30.086003-05	193357	\N	1	40	19
49	2022-06-08 11:04:03.040789-05	2022-06-08 13:12:32.712027-05	193308	\N	1	40	19
\.


--
-- TOC entry 3239 (class 0 OID 67865)
-- Dependencies: 216
-- Data for Name: LABS_CAREER_CAT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."LABS_CAREER_CAT" (id, academic_program_name, homosigla, academic_program_name_gdp, modality_id, status_id) FROM stdin;
1	Ingeniería Agroindustrial	IA	Licenciatura en	1	2
2	Ingeniería en Logística y Transporte	ILT	Licenciatura en Ingeniería en Logística y Transporte	1	2
3	Ingeniería de Software	IS	Licenciatura en Ingeniería de Software	1	2
4	Ingeniería en Tecnología Ambiental	ITA	Licenciatura en Ingeniería en Tecnología Ambiental	1	2
5	Ingeniería Financiera	IF	Licenciatura en Ingeniería Financiera	1	2
6	Ingeniería Mecatrónica	IM	Licenciatura en Ingeniería Mecatrónica	1	2
7	Ingeniería en Sistemas Automotrices	ISA	Licenciatura en Ingeniería en Sistemas Automotrices	1	2
8	Ingeniería en Animación y Efectos Visuales	IAEV	Licenciatura en Ingeniería en Animación y Efectos Visuales	1	2
9	Ingeniería en Energía	IE	Licenciatura en Ingeniería en Energía	1	2
10	Ingeniería en Nanotecnología	IN	Licenciatura en Ingeniería en Nanotecnología	1	2
\.


--
-- TOC entry 3260 (class 0 OID 68298)
-- Dependencies: 237
-- Data for Name: LABS_CATEGORIES_EQUIPMENT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."LABS_CATEGORIES_EQUIPMENT" (id, desciption) FROM stdin;
1	Computo
2	Redes
3	Herramientas
4	Reactivos
5	Materiales
6	Especializados
\.


--
-- TOC entry 3241 (class 0 OID 67891)
-- Dependencies: 218
-- Data for Name: LABS_CYCLE_CAT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."LABS_CYCLE_CAT" (id, name, start_date, end_date, status_id) FROM stdin;
1	Septiembre 2021 -  Agosto 2022	2021-09-06	2022-08-05	2
\.


--
-- TOC entry 3262 (class 0 OID 68308)
-- Dependencies: 239
-- Data for Name: LABS_EQUIPMENT_GENERAL; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."LABS_EQUIPMENT_GENERAL" (id, number, description, category_id, laboratory_id, status_id) FROM stdin;
18	18	Descripción	1	1	1
19	19	Descripción	1	1	1
20	20	Descripción	1	1	1
21	21	Descripción	1	1	1
22	22	Descripción	1	1	1
23	23	Descripción	1	1	1
24	24	Descripción	1	1	1
25	25	Descripción	1	1	1
26	26	Descripción	1	1	1
7	7	Descripción	1	1	1
4	4	Descripción	1	1	1
6	6	Descripción	1	1	1
1	1	Descripción	1	1	2
16	16	Descripción	1	1	1
5	5	Descripción	1	1	1
15	15	Descripción	1	1	1
14	14	Descripción	1	1	1
13	13	Descripción	1	1	1
11	11	Descripción	1	1	1
10	10	Descripción	1	1	1
9	9	Descripción	1	1	1
8	8	Descripción	1	1	1
2	2	Descripción	1	1	1
3	3	Descripción	1	1	1
17	17	Descripción	1	1	1
12	12	Descripción	1	1	1
\.


--
-- TOC entry 3243 (class 0 OID 67911)
-- Dependencies: 220
-- Data for Name: LABS_GROUP_CAT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."LABS_GROUP_CAT" (id, "group", code, career_id, period_id, quarter_id, shift_id, status_id) FROM stdin;
1	B	IS-B-VESP	3	3	7	2	2
2	A	IS-A-VESP	3	3	7	2	2
3	A	IS-A-MAT	3	3	10	1	2
5	A	IS-A-MAT	3	3	4	1	2
6	A	ISA-A-MAT	7	3	10	1	2
7	A	ISA-A-MAT	7	3	7	1	2
9	B	IAEF-B-MAT	8	3	4	2	2
10	A	IAEF-A-MAT	8	3	10	1	2
8	A	IM-A-MAT	6	3	3	1	2
11	A	IAEF-A-VESP	8	3	7	2	2
12	B	IAEF-B-VESP	8	3	7	2	2
13	A	IAEF-A-MAT	8	3	4	1	2
14	B	IAEF-B-VESP	8	3	7	2	2
\.


--
-- TOC entry 3264 (class 0 OID 68319)
-- Dependencies: 241
-- Data for Name: LABS_LABORATORIES; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."LABS_LABORATORIES" (id, name) FROM stdin;
1	Computo y Redes
\.


--
-- TOC entry 3255 (class 0 OID 68013)
-- Dependencies: 232
-- Data for Name: LABS_MODALITY_CAT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."LABS_MODALITY_CAT" (id, description, status_id) FROM stdin;
1	Licenciatura	2
\.


--
-- TOC entry 3253 (class 0 OID 68005)
-- Dependencies: 230
-- Data for Name: LABS_PERIOD_CAT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."LABS_PERIOD_CAT" (id, name, start_date, end_date, vacational_start_date, vacational_end_date, cycle_id, status_id) FROM stdin;
1	Septiembre - Diciembre	2021-09-06	2021-12-03	2021-12-13	2022-01-04	1	2
2	Enero - Abril	2022-01-10	2022-04-08	2022-04-11	2022-04-26	1	2
3	Mayo - Agosto	2022-05-09	2022-08-05	2022-08-15	2022-08-26	1	2
\.


--
-- TOC entry 3266 (class 0 OID 68329)
-- Dependencies: 243
-- Data for Name: LABS_PROGRAMS_CAT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."LABS_PROGRAMS_CAT" (id, desciption, version, status_id) FROM stdin;
1	123D Design R2.2	2.2.12	1
2	Acronis True Image	23.5.17750	1
3	Adobe Acrobat Reader DC	20-006-20034	1
4	Adobe after Effects	2020	1
5	Adobe illustrator CC	2019	1
6	Allegorithamic Substance Painter	2018	1
7	AOMEI Partition Assistant	8.10	1
8	Autodesk 3ds Max	2020	1
9	Autodesk App Manager	2020	1
10	Autodesk AutoCAD	2020 	1
11	Autodesk Certificate Package	7.1.4.0	1
12	Autodesk Civil View for 3ds Max	2020	1
13	Autodesk Configurator 360 addin	24.0.10100	1
14	Autodesk Desktop Connect Service	5.02.0	1
15	Autodesk Download Manager	6.1.32.0	1
16	Autodesk DWG TrueView	2020	1
19	Autodesk Guided Tutorial Plugin	7.02.0	1
20	Autodesk inventor	2020	1
21	Autodesk Inventor Content Center Libraries	2020 	1
22	Autodesk Inventor Electrical Catalog Browser	2020 	1
23	Autodesk Inventor Server Engine for 3ds Max	2020 	1
24	Autodesk License Service	7.1.4.0	1
25	Autodesk Material Librery	2020	1
26	Autodesk Maya	2019	1
27	Autodesk Revit Interoperability for 3ds Max	2020 	1
28	Autodesk Revit Interoperability for inventor	2020 	1
29	Autodesk Single Sing On Component	20.0.0364	1
30	Avira Security	0.0.0.0	1
31	Bifrost	2019	1
32	Blender	2.80.0	1
33	Bonjour	3.0.0.10	1
34	DaVinci Resolve	16.1.1005	1
35	DaVinci Resolve Keyboards	1.0.0.0	1
36	DaVinci Resolve Panels	1.3.1.0	1
37	Dia	0.0.0.0	1
38	GIMP	2.10.2	1
39	Glass Fish Server Open Source	4.1.1	1
40	Google Chrome	98.0.4758.102	1
41	Guía interactiva EXANI	1.1.0	1
42	Inkscape	0.92.4	1
43	Java	8	1
44	Java SE Development Kit	8	1
45	Krita	4.2.5	1
46	LibreOffice	6.1.5.2	1
47	LightZone	4.1.7	1
48	Maxon Cinema 4Da R21	R21	1
49	MAXtoA for 3ds Max	2020	1
50	Microsoft Access database engine	2010	1
51	Microsoft ODBC Driver	11	1
52	Microsoft Office Web Components	2003	1
53	Microsoft One Drive	21.220.1024.0005	1
63	MtoA for Maya 	2019	1
64	MySQL Workbench	8.0	1
65	NetBeans IDE	8.2	1
66	Notepad++	7.7.1	1
67	Nuke	11.3v5	1
68	Opera Stable	84.04316.21	1
69	Oracle VM VirtualBox	6.0.10	1
70	PDFCreator	2.1.2	1
71	SOLIDWORKS	2016	1
72	SQL Server Browser	2014	1
73	Sublime Text	3	1
74	Substance in Maya	2019	1
75	Tablet Wacom	6.3.32-4	1
76	TeamViewer	14	1
77	Udeler	1.8.0	1
78	UltraISO Premium	9.12	1
79	Unity	2019.2.4f1	1
80	Unity Hub	2.1.1	1
81	Wampserver	3.1.9	1
82	WinRAR	5.70.0	1
17	Autodesk Genuine Service 3	3.0.11	1
18	Autodesk Genuine Service 2	2.2.0	1
56	Microsoft SQL Server 2014	2014	1
54	Microsoft SQL Server 2008	2008	1
55	Microsoft SQL Server 2012	2012	1
62	Microsoft Visual C++ 2017	2017	2
61	Microsoft Visual C++ 2013	2013	2
60	Microsoft Visual C++ 2012	2012	2
59	Microsoft Visual C++ 2010	2010	2
58	Microsoft Visual C++ 2008	2008	2
57	Microsoft Visual C++ 2005	2005	2
\.


--
-- TOC entry 3245 (class 0 OID 67919)
-- Dependencies: 222
-- Data for Name: LABS_QUARTER_CAT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."LABS_QUARTER_CAT" (id, name) FROM stdin;
1	0
2	1
3	2
4	3
5	4
6	5
7	6
8	7
9	8
10	9
11	10
\.


--
-- TOC entry 3268 (class 0 OID 68339)
-- Dependencies: 245
-- Data for Name: LABS_SCHEDULE; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."LABS_SCHEDULE" (id, day, time_start, time_end, laboratory_id, group_id, period_id, status_id, subject_id, teacher_id) FROM stdin;
22	Martes	19:20:00	20:10:00	1	12	3	1	17	4
2	Jueves	09:00:00	10:40:00	1	5	3	1	13	7
14	Martes	09:50:00	10:40:00	1	3	3	1	20	12
24	Martes	11:30:00	13:10:00	1	10	3	1	23	15
8	Jueves	15:40:00	17:40:00	1	2	3	1	22	4
15	Miercoles	10:40:00	13:10:00	1	3	3	1	19	1
11	Jueves	18:30:00	20:10:00	1	1	3	1	6	6
12	Jueves	07:00:00	08:40:00	1	6	3	1	7	8
13	Martes	07:00:00	08:40:00	1	3	3	1	7	10
16	Viernes	07:00:00	09:00:00	1	6	3	1	9	11
17	Viernes	10:40:00	11:30:00	1	7	3	1	18	11
18	Jueves	10:40:00	13:10:00	1	8	3	1	9	14
19	Viernes	11:30:00	13:10:00	1	10	3	1	10	9
20	Miercoles	08:40:00	10:40:00	1	10	3	1	5	13
21	Miercoles	07:00:00	08:40:00	1	13	3	1	26	13
23	Viernes	18:30:00	20:10:00	1	9	3	1	14	15
25	Miercoles	14:00:00	15:40:00	1	12	3	1	24	15
3	Viernes	09:00:00	10:40:00	1	5	3	1	16	10
5	Lunes	09:00:00	10:40:00	1	5	3	1	15	1
6	Viernes	14:00:00	15:40:00	1	2	3	1	8	7
7	Miercoles	15:40:00	17:40:00	1	1	3	1	8	7
27	Lunes	18:30:00	20:10:00	1	12	3	1	12	16
26	Lunes	18:30:00	20:10:00	1	11	3	1	24	15
4	Lunes	07:00:00	08:40:00	1	5	3	1	21	1
9	Lunes	16:50:00	18:30:00	1	1	3	1	22	4
10	Martes	17:40:00	19:20:00	1	2	3	1	6	6
\.


--
-- TOC entry 3247 (class 0 OID 67939)
-- Dependencies: 224
-- Data for Name: LABS_SHIFT_CAT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."LABS_SHIFT_CAT" (id, description, abbreviation) FROM stdin;
1	Matutino	MAT
2	Vespertino	VESP
\.


--
-- TOC entry 3249 (class 0 OID 67947)
-- Dependencies: 226
-- Data for Name: LABS_STATUS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."LABS_STATUS" (id, status, description) FROM stdin;
1	Inactivo	Inactivo
2	Activo	Activo
3	Baja Temporal	Baja Temporal
4	Baja Académica	Baja Académica
5	Baja Definitiva	Baja Definitiva
6	Egresado	Egresado
7	Equivalencia	Equivalencia
8	Movilidad	Movilidad
9	Titulado	Titulado
\.


--
-- TOC entry 3270 (class 0 OID 68347)
-- Dependencies: 247
-- Data for Name: LABS_STATUS_EQUIPMENT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."LABS_STATUS_EQUIPMENT" (id, desciption) FROM stdin;
1	Disponible
2	No Disponible
3	Fuera de Servicio
\.


--
-- TOC entry 3251 (class 0 OID 67987)
-- Dependencies: 228
-- Data for Name: LABS_SUBJECT_CAT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."LABS_SUBJECT_CAT" (id, name, code_subject, credits, theoretical_hours, practical_hours, certifiable, limit_absence, quarter_id, status_id) FROM stdin;
4	Base de Datos	DB	10	25	10	t	3	7	2
5	Animación 3D Avanzada	A3DA	10	25	5	t	3	10	2
6	Arquitectura de Computadoras		10	25	5	t	4	7	2
7	Arquitectura Orientada a Servicios		10	25	5	t	4	10	2
8	Calidad de Software		10	25	5	t	4	7	2
9	Dibujo para Ingeniería		10	25	5	t	4	3	2
10	Dinámicos de Cabellos y Tesla		10	25	5	t	4	10	2
11	Diseño Automotriz		10	25	5	t	4	10	2
12	Diseño de Audio		10	25	5	t	4	7	2
13	Estructura de Datos Avanzadas		10	25	5	t	4	4	2
14	Fundamentos de Animacion		10	25	5	t	4	4	2
15	Fundamentos de Base de Datos		10	25	5	t	4	4	2
16	Ingeniería  de Requerimientos de Software		10	25	5	t	4	4	2
17	Lógica de Programación		10	25	5	t	4	7	2
18	Manufactura Automotriz CAM y CNC		10	25	5	t	4	7	2
19	Minería de Datos		10	25	5	t	4	10	2
20	Programación para Móviles II		10	25	5	t	4	10	2
21	Programación Visual		10	25	5	t	4	4	2
22	Redes		10	25	5	t	4	7	2
23	Rendering		10	25	5	t	4	10	2
25	Seguridad de la Información		10	25	5	t	4	10	2
26	Taller de Modelado		10	25	5	t	4	4	2
24	Rigging		10	25	5	t	4	7	2
\.


--
-- TOC entry 3258 (class 0 OID 68281)
-- Dependencies: 235
-- Data for Name: LABS_TEACHER_CAT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."LABS_TEACHER_CAT" (id, first_name, last_name, second_last_name, email, gender, teacher_status_id) FROM stdin;
1	Karina	Cancino	Villatoro	karina.cancino@uptapachula.edu.mx	F	2
2	David Enrique	Vázquez	Ramos	david.vazquez@uptapahula.edu.mx	M	2
3	Verónica Soledad	Hernández	Marroquín	veronica.hernandez@uptapachula.edu.mx	F	2
4	José Antonio	López	Ayala	jose.ayala@uptapachula.edu.mx	M	2
5	Claudia	Martínez	Martínéz	claudia.martinez@uptapachula.edu.mx	F	2
6	Rene Servando	Rivera	Roblero	rene.rivera@uptapachula.edu.mx	M	2
7	Carmen Guadalupe	Martínez	Jiménez	carmen.matinez@uptapachula.edu.mx	F	2
8	Alfredo	Castillo	Solís	alfredo.castillo@uptapachula.edu.mx	M	2
9	Carolina	Barrios	Molina	carolina.barrios@uptapachula.edu.mx	F	2
10	Ceila Merari	Gonzáles	Hernádez	ceila.gonzáles@uptapachula.edu.mx	F	2
11	Cristóbal	Guzmán	Paz	cristobal.guzman@uptapachula.edu.mx	M	2
12	Fernando	Cossio	Esquivel	fernando.cossio@uptapachula.edu.mx	M	2
13	Gerardo Raul	Balderas	Gamboa	gerardo.balderas@uptapachula.edu.mx	M	2
14	Jose Eduardo	Pacheco	Flores	jose.pacheco@uptapachula.edu.mx	M	2
15	Pedro de Jesus	Girón	Cigarroa	pedro.giron@uptapachula.edu.mx	M	2
16	Trinidad	López	Méndez	trinidad.mendez@uptapachula.edu.mx	M	2
\.


--
-- TOC entry 3272 (class 0 OID 68357)
-- Dependencies: 249
-- Data for Name: LABS_TEACHER_PRACTICES; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."LABS_TEACHER_PRACTICES" (id, entry_date, exit_date, description, equipment_id, laboratory_id, schedule_id, teacher_id) FROM stdin;
51	2022-06-08 11:00:06.939975	2022-06-08 13:04:44.125286	PRACTICA DE ANALISIS DE DATOS	\N	1	15	1
\.


--
-- TOC entry 3226 (class 0 OID 67726)
-- Dependencies: 203
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3228 (class 0 OID 67736)
-- Dependencies: 205
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3224 (class 0 OID 67718)
-- Dependencies: 201
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add Estado	7	add_statusmodel
26	Can change Estado	7	change_statusmodel
27	Can delete Estado	7	delete_statusmodel
28	Can view Estado	7	view_statusmodel
29	Can add Rol	8	add_rolmodel
30	Can change Rol	8	change_rolmodel
31	Can delete Rol	8	delete_rolmodel
32	Can view Rol	8	view_rolmodel
33	Can add Cargo	9	add_chargemodel
34	Can change Cargo	9	change_chargemodel
35	Can delete Cargo	9	delete_chargemodel
36	Can view Cargo	9	view_chargemodel
37	Can add Modalidad	10	add_modalitymodel
38	Can change Modalidad	10	change_modalitymodel
39	Can delete Modalidad	10	delete_modalitymodel
40	Can view Modalidad	10	view_modalitymodel
41	Can add Carrera	11	add_careermodel
42	Can change Carrera	11	change_careermodel
43	Can delete Carrera	11	delete_careermodel
44	Can view Carrera	11	view_careermodel
45	Can add Cuatrimestre	12	add_quartermodel
46	Can change Cuatrimestre	12	change_quartermodel
47	Can delete Cuatrimestre	12	delete_quartermodel
48	Can view Cuatrimestre	12	view_quartermodel
49	Can add Tipo	13	add_typemodel
50	Can change Tipo	13	change_typemodel
51	Can delete Tipo	13	delete_typemodel
52	Can view Tipo	13	view_typemodel
53	Can add Ciclo	14	add_cyclemodel
54	Can change Ciclo	14	change_cyclemodel
55	Can delete Ciclo	14	delete_cyclemodel
56	Can view Ciclo	14	view_cyclemodel
57	Can add Periodo	15	add_periodmodel
58	Can change Periodo	15	change_periodmodel
59	Can delete Periodo	15	delete_periodmodel
60	Can view Periodo	15	view_periodmodel
61	Can add Generación	16	add_generationmodel
62	Can change Generación	16	change_generationmodel
63	Can delete Generación	16	delete_generationmodel
64	Can view Generación	16	view_generationmodel
65	Can add Tipo de calificacion	17	add_qualificationtypemodel
66	Can change Tipo de calificacion	17	change_qualificationtypemodel
67	Can delete Tipo de calificacion	17	delete_qualificationtypemodel
68	Can view Tipo de calificacion	17	view_qualificationtypemodel
69	Can add Tipo grupo	18	add_grouptypemodel
70	Can change Tipo grupo	18	change_grouptypemodel
71	Can delete Tipo grupo	18	delete_grouptypemodel
72	Can view Tipo grupo	18	view_grouptypemodel
73	Can add Ciclo de formación	19	add_trainingcyclemodel
74	Can change Ciclo de formación	19	change_trainingcyclemodel
75	Can delete Ciclo de formación	19	delete_trainingcyclemodel
76	Can view Ciclo de formación	19	view_trainingcyclemodel
77	Can add Plan de estudio	20	add_studyplanmodel
78	Can change Plan de estudio	20	change_studyplanmodel
79	Can delete Plan de estudio	20	delete_studyplanmodel
80	Can view Plan de estudio	20	view_studyplanmodel
81	Can add Asignatura	21	add_subjectmodel
82	Can change Asignatura	21	change_subjectmodel
83	Can delete Asignatura	21	delete_subjectmodel
84	Can view Asignatura	21	view_subjectmodel
85	Can add Carrera asignatura	22	add_careersubjectmodel
86	Can change Carrera asignatura	22	change_careersubjectmodel
87	Can delete Carrera asignatura	22	delete_careersubjectmodel
88	Can view Carrera asignatura	22	view_careersubjectmodel
89	Can add Turno	23	add_shiftmodel
90	Can change Turno	23	change_shiftmodel
91	Can delete Turno	23	delete_shiftmodel
92	Can view Turno	23	view_shiftmodel
93	Can add Grupo	24	add_groupmodel
94	Can change Grupo	24	change_groupmodel
95	Can delete Grupo	24	delete_groupmodel
96	Can view Grupo	24	view_groupmodel
97	Can add Grupo asignatura	25	add_groupsubjectmodel
98	Can change Grupo asignatura	25	change_groupsubjectmodel
99	Can delete Grupo asignatura	25	delete_groupsubjectmodel
100	Can view Grupo asignatura	25	view_groupsubjectmodel
101	Can add Tipo de alumno	26	add_alumntypemodel
102	Can change Tipo de alumno	26	change_alumntypemodel
103	Can delete Tipo de alumno	26	delete_alumntypemodel
104	Can view Tipo de alumno	26	view_alumntypemodel
105	Can add Alumno	27	add_alumnmodel
106	Can change Alumno	27	change_alumnmodel
107	Can delete Alumno	27	delete_alumnmodel
108	Can view Alumno	27	view_alumnmodel
109	Can add Escolaridad	28	add_alumnschooldatamodel
110	Can change Escolaridad	28	change_alumnschooldatamodel
111	Can delete Escolaridad	28	delete_alumnschooldatamodel
112	Can view Escolaridad	28	view_alumnschooldatamodel
113	Can add Laboratorio	29	add_laboratorymodel
114	Can change Laboratorio	29	change_laboratorymodel
115	Can delete Laboratorio	29	delete_laboratorymodel
116	Can view Laboratorio	29	view_laboratorymodel
117	Can add Estado de Equipo	30	add_statusequipmentmodel
118	Can change Estado de Equipo	30	change_statusequipmentmodel
119	Can delete Estado de Equipo	30	delete_statusequipmentmodel
120	Can view Estado de Equipo	30	view_statusequipmentmodel
121	Can add Categoria de Equipo	31	add_categoryequipmentmodel
122	Can change Categoria de Equipo	31	change_categoryequipmentmodel
123	Can delete Categoria de Equipo	31	delete_categoryequipmentmodel
124	Can view Categoria de Equipo	31	view_categoryequipmentmodel
125	Can add Equipo General	32	add_equipmentgeneralmodel
126	Can change Equipo General	32	change_equipmentgeneralmodel
127	Can delete Equipo General	32	delete_equipmentgeneralmodel
128	Can view Equipo General	32	view_equipmentgeneralmodel
129	Can add Programa	33	add_programmodel
130	Can change Programa	33	change_programmodel
131	Can delete Programa	33	delete_programmodel
132	Can view Programa	33	view_programmodel
133	Can add Programa Equipo	34	add_equipmentprogrammodel
134	Can change Programa Equipo	34	change_equipmentprogrammodel
135	Can delete Programa Equipo	34	delete_equipmentprogrammodel
136	Can view Programa Equipo	34	view_equipmentprogrammodel
137	Can add Horario	35	add_schedulemodel
138	Can change Horario	35	change_schedulemodel
139	Can delete Horario	35	delete_schedulemodel
140	Can view Horario	35	view_schedulemodel
141	Can add Practica Alumno	36	add_alumpraticesmodel
142	Can change Practica Alumno	36	change_alumpraticesmodel
143	Can delete Practica Alumno	36	delete_alumpraticesmodel
144	Can view Practica Alumno	36	view_alumpraticesmodel
145	Can add Practica Docente	37	add_teacherpratcesmodel
146	Can change Practica Docente	37	change_teacherpratcesmodel
147	Can delete Practica Docente	37	delete_teacherpratcesmodel
148	Can view Practica Docente	37	view_teacherpratcesmodel
149	Can add Docente	38	add_teachermodel
150	Can change Docente	38	change_teachermodel
151	Can delete Docente	38	delete_teachermodel
152	Can view Docente	38	view_teachermodel
153	Can add pinned application	39	add_pinnedapplication
154	Can change pinned application	39	change_pinnedapplication
155	Can delete pinned application	39	delete_pinnedapplication
156	Can view pinned application	39	view_pinnedapplication
157	Can add bookmark	40	add_bookmark
158	Can change bookmark	40	change_bookmark
159	Can delete bookmark	40	delete_bookmark
160	Can view bookmark	40	view_bookmark
161	Can add user dashboard module	41	add_userdashboardmodule
162	Can change user dashboard module	41	change_userdashboardmodule
163	Can delete user dashboard module	41	delete_userdashboardmodule
164	Can view user dashboard module	41	view_userdashboardmodule
165	Can add Carrera	43	add_career
166	Can change Carrera	43	change_career
167	Can delete Carrera	43	delete_career
168	Can view Carrera	43	view_career
169	Can add Ciclo	44	add_cycle
170	Can change Ciclo	44	change_cycle
171	Can delete Ciclo	44	delete_cycle
172	Can view Ciclo	44	view_cycle
173	Can add Cuatrimestre	45	add_quarter
174	Can change Cuatrimestre	45	change_quarter
175	Can delete Cuatrimestre	45	delete_quarter
176	Can view Cuatrimestre	45	view_quarter
177	Can add Turno	46	add_shift
178	Can change Turno	46	change_shift
179	Can delete Turno	46	delete_shift
180	Can view Turno	46	view_shift
181	Can add Estado	47	add_status
182	Can change Estado	47	change_status
183	Can delete Estado	47	delete_status
184	Can view Estado	47	view_status
185	Can add Asignatura	48	add_subject
186	Can change Asignatura	48	change_subject
187	Can delete Asignatura	48	delete_subject
188	Can view Asignatura	48	view_subject
189	Can add Periodo	49	add_period
190	Can change Periodo	49	change_period
191	Can delete Periodo	49	delete_period
192	Can view Periodo	49	view_period
193	Can add Modalidad	50	add_modality
194	Can change Modalidad	50	change_modality
195	Can delete Modalidad	50	delete_modality
196	Can view Modalidad	50	view_modality
197	Can add Grupo	51	add_group
198	Can change Grupo	51	change_group
199	Can delete Grupo	51	delete_group
200	Can view Grupo	51	view_group
201	Can add Alumno	42	add_alumn
202	Can change Alumno	42	change_alumn
203	Can delete Alumno	42	delete_alumn
204	Can view Alumno	42	view_alumn
205	Can add Categoria de Equipo	52	add_categoryequipment
206	Can change Categoria de Equipo	52	change_categoryequipment
207	Can delete Categoria de Equipo	52	delete_categoryequipment
208	Can view Categoria de Equipo	52	view_categoryequipment
209	Can add Equipo general	53	add_equipmentgeneral
210	Can change Equipo general	53	change_equipmentgeneral
211	Can delete Equipo general	53	delete_equipmentgeneral
212	Can view Equipo general	53	view_equipmentgeneral
213	Can add Laboratorio	54	add_laboratory
214	Can change Laboratorio	54	change_laboratory
215	Can delete Laboratorio	54	delete_laboratory
216	Can view Laboratorio	54	view_laboratory
217	Can add Horario	55	add_schedule
218	Can change Horario	55	change_schedule
219	Can delete Horario	55	delete_schedule
220	Can view Horario	55	view_schedule
221	Can add Estado de Equipo	56	add_statusequipment
222	Can change Estado de Equipo	56	change_statusequipment
223	Can delete Estado de Equipo	56	delete_statusequipment
224	Can view Estado de Equipo	56	view_statusequipment
225	Can add Practica Docente	57	add_teacherpratces
226	Can change Practica Docente	57	change_teacherpratces
227	Can delete Practica Docente	57	delete_teacherpratces
228	Can view Practica Docente	57	view_teacherpratces
229	Can add Programa	58	add_program
230	Can change Programa	58	change_program
231	Can delete Programa	58	delete_program
232	Can view Programa	58	view_program
233	Can add Practica Alumno	59	add_alumpratices
234	Can change Practica Alumno	59	change_alumpratices
235	Can delete Practica Alumno	59	delete_alumpratices
236	Can view Practica Alumno	59	view_alumpratices
237	Can add Docente	60	add_teacher
238	Can change Docente	60	change_teacher
239	Can delete Docente	60	delete_teacher
240	Can view Docente	60	view_teacher
\.


--
-- TOC entry 3230 (class 0 OID 67744)
-- Dependencies: 207
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$260000$o99OaXFRIhQ1xtwqJydRnV$fY0SmGOJHMNzU9LDDufkGoNhrgcHrgOkqkTta9NfINM=	2022-06-08 13:12:53.041847-05	t	admin	Super	User	admin@uptapachula.edu.mx	t	t	2022-06-05 23:35:59-05
1	pbkdf2_sha256$320000$GBfiT3aPCubdWBfYUb2w5E$SCSHhuE1VLWLgjwkaP0qBgxP+rE79Li8bBEu6bZktXQ=	2022-06-05 23:32:20-05	t	203102	Super	Admin	203102@uptapachula.edu.mx	t	t	2022-05-27 12:54:58-05
\.


--
-- TOC entry 3232 (class 0 OID 67754)
-- Dependencies: 209
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3234 (class 0 OID 67762)
-- Dependencies: 211
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3280 (class 0 OID 68594)
-- Dependencies: 257
-- Data for Name: dashboard_userdashboardmodule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dashboard_userdashboardmodule (id, title, module, app_label, user_id, "column", "order", settings, children, collapsed) FROM stdin;
1	Enlaces Rápidos	jet.dashboard.modules.LinkList	\N	1	0	0	{"draggable": false, "deletable": false, "collapsible": false, "layout": "inline"}	[{"title": "Volver al sitio", "url": "/"}, {"title": "Cambiar contrase\\u00f1a", "url": "/admin/password_change/"}, {"title": "Cerrar sesi\\u00f3n", "url": "/admin/logout/"}]	f
4	Acciones recientes	jet.dashboard.modules.RecentActions	\N	1	0	1	{"limit": 10, "include_list": null, "exclude_list": null, "user": null}		f
7	Modelos de la aplicación	jet.dashboard.modules.ModelList	alumn	1	0	0	{"models": ["alumn.*"], "exclude": null}		f
8	Acciones recientes	jet.dashboard.modules.RecentActions	alumn	1	1	0	{"limit": 10, "include_list": ["alumn.*"], "exclude_list": null, "user": null}		f
9	Modelos de la aplicación	jet.dashboard.modules.ModelList	main	1	0	0	{"models": ["main.*"], "exclude": null}		f
10	Acciones recientes	jet.dashboard.modules.RecentActions	main	1	1	0	{"limit": 10, "include_list": ["main.*"], "exclude_list": null, "user": null}		f
3	Administración	jet.dashboard.modules.AppList	\N	1	2	1	{"models": ["auth.*"], "exclude": null}		f
6	Soporte	jet.dashboard.modules.LinkList	\N	1	2	2	{"draggable": true, "deletable": true, "collapsible": true, "layout": "stacked"}	[{"title": "Documentaci\\u00f3n Django", "url": "http://docs.djangoproject.com/", "external": true}, {"title": "Lista de correos Django \\"django-users\\"", "url": "http://groups.google.com/group/django-users", "external": true}, {"title": "Canal IRC de Django", "url": "irc://irc.freenode.net/django", "external": true}]	f
2	Aplicaciones	jet.dashboard.modules.AppList	\N	1	1	0	{"models": null, "exclude": ["auth.*"]}		f
5	Últimas Noticias de Django	jet.dashboard.modules.Feed	\N	1	2	0	{"feed_url": "http://www.djangoproject.com/rss/weblog/", "limit": 5}		f
\.


--
-- TOC entry 3236 (class 0 OID 67822)
-- Dependencies: 213
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2022-05-27 12:59:27.975425-05	1	Aspirante	1	[{"added": {}}]	8	1
2	2022-05-27 12:59:32.665335-05	2	Alumno	1	[{"added": {}}]	8	1
3	2022-05-27 12:59:37.89646-05	3	Docente	1	[{"added": {}}]	8	1
4	2022-05-27 13:00:16.871121-05	1	Inactivo	1	[{"added": {}}]	7	1
5	2022-05-27 13:00:24.486402-05	2	Activo	1	[{"added": {}}]	7	1
6	2022-05-27 13:00:27.295958-05	1	Septiembre 2021 -  Agosto 2022	1	[{"added": {}}]	14	1
7	2022-05-27 13:01:38.148464-05	3	Baja Temporal	1	[{"added": {}}]	7	1
8	2022-05-27 13:01:45.275978-05	4	Baja Académica	1	[{"added": {}}]	7	1
9	2022-05-27 13:01:51.97676-05	5	Baja Definitiva	1	[{"added": {}}]	7	1
10	2022-05-27 13:02:09.171036-05	6	Egresado	1	[{"added": {}}]	7	1
11	2022-05-27 13:02:15.422555-05	7	Equivalencia	1	[{"added": {}}]	7	1
12	2022-05-27 13:02:26.277118-05	8	Movilidad	1	[{"added": {}}]	7	1
13	2022-05-27 13:02:34.114421-05	9	Titulado	1	[{"added": {}}]	7	1
14	2022-05-27 13:08:17.317161-05	1	Matutino	1	[{"added": {}}]	23	1
15	2022-05-27 13:08:26.790594-05	2	Vespertino	1	[{"added": {}}]	23	1
16	2022-05-27 13:08:48.533528-05	1	Licenciatura	1	[{"added": {}}]	10	1
17	2022-05-27 13:09:06.787816-05	1	1	1	[{"added": {}}]	12	1
18	2022-05-27 13:09:18.812625-05	1	0	2	[{"changed": {"fields": ["Cuatrimestre"]}}]	12	1
19	2022-05-27 13:09:21.075831-05	2	1	1	[{"added": {}}]	12	1
20	2022-05-27 13:09:22.199874-05	3	2	1	[{"added": {}}]	12	1
21	2022-05-27 13:09:23.459535-05	4	3	1	[{"added": {}}]	12	1
22	2022-05-27 13:09:24.491592-05	5	4	1	[{"added": {}}]	12	1
23	2022-05-27 13:09:25.584161-05	6	5	1	[{"added": {}}]	12	1
24	2022-05-27 13:09:26.397964-05	7	6	1	[{"added": {}}]	12	1
25	2022-05-27 13:09:27.398136-05	8	7	1	[{"added": {}}]	12	1
26	2022-05-27 13:09:28.342628-05	9	8	1	[{"added": {}}]	12	1
27	2022-05-27 13:09:29.502886-05	10	9	1	[{"added": {}}]	12	1
28	2022-05-27 13:09:32.492663-05	11	10	1	[{"added": {}}]	12	1
29	2022-05-27 13:10:53.022231-05	1	Karina Cancino Villatoro	1	[{"added": {}}]	38	1
30	2022-05-27 13:11:22.370048-05	2	David Enrique Vázquez Ramos	1	[{"added": {}}]	38	1
31	2022-05-27 13:12:07.907976-05	3	Verónica Soledad Hernández Marroquín	1	[{"added": {}}]	38	1
32	2022-05-27 16:28:54.356969-05	4	José Antonio López Ayala	1	[{"added": {}}]	38	1
33	2022-05-27 16:29:47.120122-05	5	Claudia Martínez Martínéz	1	[{"added": {}}]	38	1
34	2022-05-27 16:30:22.02956-05	6	Rene Servando Rivera Roblero	1	[{"added": {}}]	38	1
35	2022-05-27 16:31:32.349914-05	7	Carmen Guadalupe Martínez Jiménez	1	[{"added": {}}]	38	1
36	2022-05-27 16:35:43.985019-05	1	Septiembre - Diciembre	1	[{"added": {}}]	15	1
37	2022-05-27 16:38:45.560648-05	2	Enero - Abril	1	[{"added": {}}]	15	1
38	2022-05-27 16:39:28.115543-05	3	Mayo - Agosto	1	[{"added": {}}]	15	1
39	2022-05-27 16:42:41.889687-05	1	Ingeniería Agroindustrial	1	[{"added": {}}]	11	1
40	2022-05-27 16:42:54.741815-05	2	Ingeniería en Logística y Transporte	1	[{"added": {}}]	11	1
41	2022-05-27 16:43:27.939343-05	3	Ingeniería de Software	1	[{"added": {}}]	11	1
42	2022-05-27 16:44:00.012735-05	4	Ingeniería en Tecnología Ambiental	1	[{"added": {}}]	11	1
43	2022-05-27 16:44:10.134108-05	5	Ingeniería Financiera	1	[{"added": {}}]	11	1
44	2022-05-27 16:44:20.156233-05	6	Ingeniería Mecatrónica	1	[{"added": {}}]	11	1
45	2022-05-27 16:44:42.462951-05	7	Ingeniería en Sistemas Automotrices	1	[{"added": {}}]	11	1
46	2022-05-27 16:45:03.786078-05	8	Ingeniería en Animación y Efectos Visuales	1	[{"added": {}}]	11	1
47	2022-05-27 16:45:20.964233-05	9	Ingeniería en Energía	1	[{"added": {}}]	11	1
48	2022-05-27 16:45:45.259609-05	10	Ingeniería en Nanotecnología	1	[{"added": {}}]	11	1
49	2022-05-27 16:49:48.895564-05	1	Primer Ciclo de Formación	1	[{"added": {}}]	19	1
50	2022-05-27 16:49:53.897204-05	2	Segundo Ciclo de Formación	1	[{"added": {}}]	19	1
51	2022-05-27 16:50:01.36751-05	3	Tercer Ciclo de Formación	1	[{"added": {}}]	19	1
52	2022-05-27 16:53:57.823723-05	1	Primera - Inactivo	1	[{"added": {}}]	16	1
53	2022-05-27 16:54:03.524237-05	2	Segunda - Inactivo	1	[{"added": {}}]	16	1
54	2022-05-27 16:54:10.556454-05	3	Tercera - Inactivo	1	[{"added": {}}]	16	1
55	2022-05-27 16:54:22.267962-05	4	Cuarta - Inactivo	1	[{"added": {}}]	16	1
56	2022-05-27 16:54:32.126113-05	5	Nueva Generación - Activo	1	[{"added": {}}]	16	1
57	2022-05-27 16:56:20.492699-05	1	Primera Generación - Inactivo	2	[{"changed": {"fields": ["Descripci\\u00f3n"]}}]	16	1
58	2022-05-27 16:56:28.204734-05	2	Segunda Generación - Inactivo	2	[{"changed": {"fields": ["Descripci\\u00f3n"]}}]	16	1
59	2022-05-27 16:56:36.118784-05	3	Tercera Generación - Inactivo	2	[{"changed": {"fields": ["Descripci\\u00f3n"]}}]	16	1
60	2022-05-27 16:56:45.109588-05	4	Cuarta Generación - Inactivo	2	[{"changed": {"fields": ["Descripci\\u00f3n"]}}]	16	1
61	2022-05-27 17:03:29.747078-05	1	Irregular	1	[{"added": {}}]	18	1
62	2022-05-27 17:03:41.096557-05	2	Regular	1	[{"added": {}}]	18	1
63	2022-05-27 17:08:09.912302-05	1	Cuatrimestre 5, Grupo B, Clave IS-B-MAT	1	[{"added": {}}]	24	1
64	2022-05-27 17:08:24.887613-05	1	Cuatrimestre 6, Grupo B, Clave IS-B-MAT	2	[{"changed": {"fields": ["Cuatrimestre"]}}]	24	1
65	2022-05-27 17:11:11.608592-05	1	Disponible	1	[{"added": {}}]	30	1
66	2022-05-27 17:11:14.468065-05	2	No Disponible	1	[{"added": {}}]	30	1
67	2022-05-27 17:11:19.070208-05	3	Fuera de Servicio	1	[{"added": {}}]	30	1
68	2022-05-27 23:07:52.46947-05	1	PTC	1	[{"added": {}}]	9	1
69	2022-05-27 23:08:19.772191-05	2	PMT	1	[{"added": {}}]	9	1
70	2022-05-27 23:36:03.312577-05	1	Computo	1	[{"added": {}}]	31	1
71	2022-05-27 23:41:41.554309-05	2	Redes	1	[{"added": {}}]	31	1
72	2022-05-27 23:46:47.801469-05	1	Laboratorio de Computo y Redes	1	[{"added": {}}]	29	1
73	2022-05-27 23:46:55.905539-05	1	Computo - # 1	1	[{"added": {}}]	32	1
74	2022-05-27 23:52:32.833199-05	2	Computo - # 2	1	[{"added": {}}]	32	1
75	2022-05-27 23:52:40.717365-05	3	Computo - # 3	1	[{"added": {}}]	32	1
76	2022-05-27 23:52:50.361463-05	4	Computo - # 4	1	[{"added": {}}]	32	1
77	2022-05-27 23:52:57.37692-05	5	Computo - # 5	1	[{"added": {}}]	32	1
78	2022-05-27 23:53:04.252817-05	6	Computo - # 6	1	[{"added": {}}]	32	1
79	2022-05-27 23:53:10.104493-05	7	Computo - # 7	1	[{"added": {}}]	32	1
80	2022-05-27 23:53:16.584548-05	8	Computo - # 8	1	[{"added": {}}]	32	1
81	2022-05-27 23:53:22.942967-05	9	Computo - # 9	1	[{"added": {}}]	32	1
82	2022-05-27 23:53:30.381082-05	10	Computo - # 10	1	[{"added": {}}]	32	1
83	2022-05-27 23:53:36.399222-05	11	Computo - # 11	1	[{"added": {}}]	32	1
84	2022-05-27 23:53:42.765985-05	12	Computo - # 12	1	[{"added": {}}]	32	1
85	2022-05-27 23:53:48.033892-05	13	Computo - # 13	1	[{"added": {}}]	32	1
86	2022-05-27 23:53:54.676963-05	14	Computo - # 14	1	[{"added": {}}]	32	1
87	2022-05-27 23:54:01.980419-05	15	Computo - # 15	1	[{"added": {}}]	32	1
88	2022-05-27 23:54:07.41108-05	16	Computo - # 16	1	[{"added": {}}]	32	1
89	2022-05-27 23:54:16.898446-05	17	Computo - # 17	1	[{"added": {}}]	32	1
90	2022-05-27 23:54:22.634779-05	18	Computo - # 18	1	[{"added": {}}]	32	1
91	2022-05-27 23:54:30.24231-05	19	Computo - # 19	1	[{"added": {}}]	32	1
92	2022-05-27 23:54:37.657978-05	20	Computo - # 20	1	[{"added": {}}]	32	1
93	2022-05-27 23:54:43.214954-05	21	Computo - # 21	1	[{"added": {}}]	32	1
94	2022-05-27 23:54:49.758897-05	22	Computo - # 22	1	[{"added": {}}]	32	1
95	2022-05-27 23:54:55.996449-05	23	Computo - # 23	1	[{"added": {}}]	32	1
96	2022-05-27 23:55:02.633081-05	24	Computo - # 24	1	[{"added": {}}]	32	1
97	2022-05-27 23:55:09.482383-05	25	Computo - # 25	1	[{"added": {}}]	32	1
98	2022-05-27 23:55:15.699141-05	26	Computo - # 26	1	[{"added": {}}]	32	1
99	2022-05-28 23:58:27.426228-05	4	Base de Datos	1	[{"added": {}}]	21	1
100	2022-05-28 23:59:44.979423-05	1	Base de Datos - Cuatrimestre 6, Grupo B, Clave IS-B-MAT	1	[{"added": {}}]	35	1
101	2022-05-29 00:41:27.86874-05	203102	Jorge Luis Gordillo Canseco	1	[{"added": {}}]	27	1
102	2022-05-29 00:42:42.307974-05	1	AlumPraticesModel object (1)	1	[{"added": {}}]	36	1
103	2022-05-29 00:49:16.087293-05	1	Karina Cancino Villatoro	1	[{"added": {}}]	37	1
104	2022-05-29 00:57:46.012998-05	1	AlumPraticesModel object (1)	2	[{"changed": {"fields": ["Fecha de salida"]}}]	36	1
105	2022-05-29 00:58:07.666177-05	1	Karina Cancino Villatoro	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
106	2022-05-29 02:43:39.851394-05	2	AlumPraticesModel object (2)	1	[{"added": {}}]	36	1
107	2022-05-30 09:26:22.379455-05	1	Computo y Redes	2	[{"changed": {"fields": ["Nombre"]}}]	29	1
108	2022-05-30 13:11:54.383859-05	17	Autodesk Genuine Service 3	2	[{"changed": {"fields": ["Nombre"]}}]	33	1
109	2022-05-30 13:11:59.599842-05	18	Autodesk Genuine Service 2	2	[{"changed": {"fields": ["Nombre"]}}]	33	1
110	2022-05-30 13:12:32.878415-05	57	Microsoft Visual C++ 2005	2	[{"changed": {"fields": ["Nombre"]}}]	33	1
111	2022-05-30 13:12:39.690383-05	58	Microsoft Visual C++ 2008	2	[{"changed": {"fields": ["Nombre"]}}]	33	1
112	2022-05-30 13:12:45.166077-05	59	Microsoft Visual C++ 2010	2	[{"changed": {"fields": ["Nombre"]}}]	33	1
113	2022-05-30 13:12:48.926388-05	60	Microsoft Visual C++ 2012	2	[{"changed": {"fields": ["Nombre"]}}]	33	1
114	2022-05-30 13:12:52.920622-05	61	Microsoft Visual C++ 2013	2	[{"changed": {"fields": ["Nombre"]}}]	33	1
115	2022-05-30 13:13:00.353013-05	62	Microsoft Visual C++ 2017	2	[{"changed": {"fields": ["Nombre"]}}]	33	1
116	2022-05-30 13:13:24.164626-05	56	Microsoft SQL Server 2014	2	[{"changed": {"fields": ["Nombre"]}}]	33	1
117	2022-05-30 13:13:29.140017-05	54	Microsoft SQL Server 2008	2	[{"changed": {"fields": ["Nombre"]}}]	33	1
118	2022-05-30 13:13:33.645138-05	55	Microsoft SQL Server 2012	2	[{"changed": {"fields": ["Nombre"]}}]	33	1
119	2022-05-30 14:05:59.03982-05	2	Computo - # 2	2	[{"changed": {"fields": ["Estado"]}}]	32	1
120	2022-05-30 14:06:06.3438-05	3	Computo - # 3	2	[{"changed": {"fields": ["Estado"]}}]	32	1
121	2022-05-30 15:32:25.215386-05	23	AlumPraticesModel object (23)	3		36	1
122	2022-05-30 15:32:25.223097-05	22	AlumPraticesModel object (22)	3		36	1
123	2022-05-30 15:32:25.225098-05	21	AlumPraticesModel object (21)	3		36	1
124	2022-05-30 15:32:25.226732-05	20	AlumPraticesModel object (20)	3		36	1
125	2022-05-30 15:32:25.227751-05	19	AlumPraticesModel object (19)	3		36	1
126	2022-05-30 15:32:25.22875-05	18	AlumPraticesModel object (18)	3		36	1
127	2022-05-30 15:32:25.22975-05	17	AlumPraticesModel object (17)	3		36	1
128	2022-05-30 15:32:25.230749-05	16	AlumPraticesModel object (16)	3		36	1
129	2022-05-30 15:32:25.232752-05	15	AlumPraticesModel object (15)	3		36	1
130	2022-05-30 15:32:25.23375-05	14	AlumPraticesModel object (14)	3		36	1
131	2022-05-30 15:32:25.23375-05	13	AlumPraticesModel object (13)	3		36	1
132	2022-05-30 15:32:25.234749-05	12	AlumPraticesModel object (12)	3		36	1
133	2022-05-30 15:32:25.235749-05	11	AlumPraticesModel object (11)	3		36	1
134	2022-05-30 15:32:25.236749-05	10	AlumPraticesModel object (10)	3		36	1
135	2022-05-30 15:32:25.236749-05	9	AlumPraticesModel object (9)	3		36	1
136	2022-05-30 15:32:25.237749-05	8	AlumPraticesModel object (8)	3		36	1
137	2022-05-30 15:32:25.238749-05	7	AlumPraticesModel object (7)	3		36	1
138	2022-05-30 15:32:25.239758-05	6	AlumPraticesModel object (6)	3		36	1
139	2022-05-30 15:32:45.468836-05	4	Computo - # 4	2	[{"changed": {"fields": ["Estado"]}}]	32	1
140	2022-05-30 15:32:56.025078-05	6	Computo - # 6	2	[{"changed": {"fields": ["Estado"]}}]	32	1
141	2022-05-30 16:53:58.569466-05	1	Base de Datos - Cuatrimestre 6, Grupo B, Clave IS-B-MAT	2	[{"changed": {"fields": ["Estado"]}}]	35	1
142	2022-05-31 09:24:40.778123-05	1	Base de Datos - Cuatrimestre 6, Grupo B, Clave IS-B-MAT	2	[{"changed": {"fields": ["Estado"]}}]	35	1
143	2022-05-31 09:25:15.010752-05	1	Base de Datos - Cuatrimestre 6, Grupo B, Clave IS-B-MAT	2	[{"changed": {"fields": ["Estado"]}}]	35	1
144	2022-05-31 09:47:19.132004-05	1	Cuatrimestre 6, Grupo B, Clave IS-B-VESP	2	[{"changed": {"fields": ["Turno", "Clave"]}}]	24	1
145	2022-05-31 09:47:43.858083-05	1	Cuatrimestre 6, Grupo B, Clave IS-B-VESP	2	[]	24	1
146	2022-05-31 09:49:02.855709-05	2	Cuatrimestre 6, Grupo A, Clave IS-A-VESP	1	[{"added": {}}]	24	1
147	2022-05-31 09:52:46.239702-05	3	Cuatrimestre 9, Grupo A, Clave IS-A-MAT	1	[{"added": {}}]	24	1
148	2022-05-31 09:54:44.078083-05	5	Cuatrimestre 3, Grupo A, Clave IS-A-MAT	1	[{"added": {}}]	24	1
149	2022-05-31 09:58:04.605327-05	6	Cuatrimestre 9, Grupo A, Clave ISA-A-MAT	1	[{"added": {}}]	24	1
150	2022-05-31 09:58:30.463302-05	7	Cuatrimestre 6, Grupo A, Clave ISA-A-MAT	1	[{"added": {}}]	24	1
151	2022-05-31 09:58:54.067467-05	8	Cuatrimestre 1, Grupo A, Clave IM-A-MAT	1	[{"added": {}}]	24	1
152	2022-05-31 09:59:39.370566-05	9	Cuatrimestre 3, Grupo B, Clave IAEF-B-MAT	1	[{"added": {}}]	24	1
153	2022-05-31 10:00:11.500279-05	10	Cuatrimestre 9, Grupo A, Clave IAEF-A-MAT	1	[{"added": {}}]	24	1
154	2022-05-31 10:01:10.100916-05	8	Cuatrimestre 2, Grupo A, Clave IM-A-MAT	2	[{"changed": {"fields": ["Cuatrimestre"]}}]	24	1
155	2022-05-31 10:02:00.235555-05	11	Cuatrimestre 6, Grupo A, Clave IAEF-A-VESP	1	[{"added": {}}]	24	1
156	2022-05-31 10:03:12.036327-05	12	Cuatrimestre 6, Grupo B, Clave IAEF-B-VESP	1	[{"added": {}}]	24	1
157	2022-05-31 10:04:42.194245-05	13	Cuatrimestre 3, Grupo A, Clave IAEF-A-MAT	1	[{"added": {}}]	24	1
158	2022-05-31 10:05:29.176729-05	14	Cuatrimestre 6, Grupo B, Clave IAEF-B-VESP	1	[{"added": {}}]	24	1
159	2022-05-31 10:09:14.62555-05	5	Animación 3D Avanzada	1	[{"added": {}}]	21	1
160	2022-05-31 10:16:41.472537-05	6	Arquitectura de Computadoras	1	[{"added": {}}]	21	1
161	2022-05-31 10:17:14.247708-05	7	Arquitectura Orientada a Servicios	1	[{"added": {}}]	21	1
162	2022-05-31 10:17:48.798491-05	8	Calidad de Software	1	[{"added": {}}]	21	1
163	2022-05-31 10:18:09.586013-05	9	Dibujo para Ingeniería	1	[{"added": {}}]	21	1
164	2022-05-31 10:18:55.480915-05	10	Dinámicos de Cabellos y Tesla	1	[{"added": {}}]	21	1
165	2022-05-31 10:19:18.752184-05	11	Diseño Automotriz	1	[{"added": {}}]	21	1
166	2022-05-31 10:19:33.759942-05	12	Diseño de Audio	1	[{"added": {}}]	21	1
167	2022-05-31 10:19:58.844755-05	13	Estructura de Datos Avanzadas	1	[{"added": {}}]	21	1
168	2022-05-31 10:20:18.126066-05	14	Fundamentos de Animacion	1	[{"added": {}}]	21	1
169	2022-05-31 10:20:40.119982-05	15	Fundamentos de Base de Datos	1	[{"added": {}}]	21	1
170	2022-05-31 10:21:04.381216-05	16	Ingeniería  de Requerimientos de Software	1	[{"added": {}}]	21	1
171	2022-05-31 10:21:26.416616-05	17	Lógica de Programación	1	[{"added": {}}]	21	1
172	2022-05-31 10:22:07.630354-05	18	Manufactura Automotriz CAM y CNC	1	[{"added": {}}]	21	1
173	2022-05-31 10:22:30.794793-05	19	Minería de Datos	1	[{"added": {}}]	21	1
174	2022-05-31 10:23:04.018855-05	20	Programación para Móviles II	1	[{"added": {}}]	21	1
175	2022-05-31 10:23:23.000235-05	21	Programación Visual	1	[{"added": {}}]	21	1
176	2022-05-31 10:23:38.196714-05	22	Redes	1	[{"added": {}}]	21	1
177	2022-05-31 10:24:10.898874-05	23	Rendering	1	[{"added": {}}]	21	1
178	2022-05-31 10:24:22.060266-05	24	Regging	1	[{"added": {}}]	21	1
179	2022-05-31 10:24:41.812904-05	25	Seguridad de la Información	1	[{"added": {}}]	21	1
180	2022-05-31 10:24:56.672283-05	26	Taller de Modelado	1	[{"added": {}}]	21	1
181	2022-05-31 10:33:53.703994-05	24	AlumPraticesModel object (24)	3		36	1
182	2022-05-31 10:33:53.70944-05	5	AlumPraticesModel object (5)	3		36	1
183	2022-05-31 10:33:53.710461-05	4	AlumPraticesModel object (4)	3		36	1
184	2022-05-31 10:33:53.712499-05	3	AlumPraticesModel object (3)	3		36	1
185	2022-05-31 10:33:53.71352-05	2	AlumPraticesModel object (2)	3		36	1
186	2022-05-31 10:33:53.714517-05	1	AlumPraticesModel object (1)	3		36	1
187	2022-05-31 10:34:05.008864-05	1	Base de Datos - Cuatrimestre 6, Grupo B, Clave IS-B-VESP	3		35	1
188	2022-05-31 10:39:39.008897-05	8	Alfredo Castillo Solís	1	[{"added": {}}]	38	1
189	2022-05-31 10:53:59.351133-05	2	Estructura de Datos Avanzadas - 3, A, Matutino, Ingeniería de Software	1	[{"added": {}}]	35	1
190	2022-05-31 10:55:15.074509-05	3	Ingeniería  de Requerimientos de Software - 3, A, Matutino, Ingeniería de Software	1	[{"added": {}}]	35	1
191	2022-05-31 10:56:18.885951-05	4	Programación Visual - 3, A, Matutino, Ingeniería de Software	1	[{"added": {}}]	35	1
192	2022-05-31 10:57:00.464458-05	5	Fundamentos de Base de Datos - 3, A, Matutino, Ingeniería de Software	1	[{"added": {}}]	35	1
193	2022-05-31 10:58:04.201109-05	6	Calidad de Software - 6, A, Vespertino, Ingeniería de Software	1	[{"added": {}}]	35	1
194	2022-05-31 10:59:22.410996-05	7	Calidad de Software - 6, B, Vespertino, Ingeniería de Software	1	[{"added": {}}]	35	1
195	2022-05-31 11:00:11.004818-05	8	Redes - 6, A, Vespertino, Ingeniería de Software	1	[{"added": {}}]	35	1
196	2022-05-31 11:00:49.419274-05	9	Redes - 6, B, Vespertino, Ingeniería de Software	1	[{"added": {}}]	35	1
197	2022-05-31 11:01:26.626144-05	10	Arquitectura de Computadoras - 6, A, Vespertino, Ingeniería de Software	1	[{"added": {}}]	35	1
198	2022-05-31 11:02:10.685871-05	11	Arquitectura de Computadoras - 6, B, Vespertino, Ingeniería de Software	1	[{"added": {}}]	35	1
199	2022-05-31 11:03:00.461916-05	12	Arquitectura Orientada a Servicios - 9, A, Matutino, Ingeniería en Sistemas Automotrices	1	[{"added": {}}]	35	1
200	2022-05-31 11:03:43.513316-05	13	Arquitectura Orientada a Servicios - 9, A, Matutino, Ingeniería de Software	1	[{"added": {}}]	35	1
201	2022-05-31 11:04:33.585287-05	14	Programación para Móviles II - 9, A, Matutino, Ingeniería de Software	1	[{"added": {}}]	35	1
202	2022-05-31 11:05:34.478944-05	15	Minería de Datos - 9, A, Matutino, Ingeniería de Software	1	[{"added": {}}]	35	1
203	2022-05-31 11:08:52.912864-05	16	Dibujo para Ingeniería - 9, A, Matutino, Ingeniería en Sistemas Automotrices	1	[{"added": {}}]	35	1
204	2022-05-31 11:09:42.206396-05	17	Manufactura Automotriz CAM y CNC - 6, A, Matutino, Ingeniería en Sistemas Automotrices	1	[{"added": {}}]	35	1
205	2022-05-31 11:10:29.98056-05	18	Dibujo para Ingeniería - 2, A, Matutino, Ingeniería Mecatrónica	1	[{"added": {}}]	35	1
206	2022-05-31 11:12:36.163032-05	19	Dinámicos de Cabellos y Tesla - 9, A, Matutino, Ingeniería en Animación y Efectos Visuales	1	[{"added": {}}]	35	1
207	2022-05-31 11:14:24.74521-05	20	Animación 3D Avanzada - 9, A, Matutino, Ingeniería en Animación y Efectos Visuales	1	[{"added": {}}]	35	1
208	2022-05-31 11:15:39.107-05	21	Taller de Modelado - 3, A, Matutino, Ingeniería en Animación y Efectos Visuales	1	[{"added": {}}]	35	1
209	2022-05-31 11:16:37.651131-05	22	Lógica de Programación - 6, B, Vespertino, Ingeniería en Animación y Efectos Visuales	1	[{"added": {}}]	35	1
210	2022-05-31 11:17:32.009323-05	23	Fundamentos de Animacion - 3, B, Vespertino, Ingeniería en Animación y Efectos Visuales	1	[{"added": {}}]	35	1
211	2022-05-31 11:18:23.221036-05	24	Rendering - 9, A, Matutino, Ingeniería en Animación y Efectos Visuales	1	[{"added": {}}]	35	1
212	2022-05-31 11:20:11.789161-05	25	Regging - 6, B, Vespertino, Ingeniería en Animación y Efectos Visuales	1	[{"added": {}}]	35	1
213	2022-05-31 11:21:04.656597-05	26	Regging - 6, A, Vespertino, Ingeniería en Animación y Efectos Visuales	1	[{"added": {}}]	35	1
214	2022-05-31 11:22:00.38942-05	27	Diseño de Audio - 6, B, Vespertino, Ingeniería en Animación y Efectos Visuales	1	[{"added": {}}]	35	1
215	2022-05-31 11:23:25.36037-05	24	Rigging	2	[{"changed": {"fields": ["Nombre"]}}]	21	1
216	2022-05-31 11:24:21.29169-05	3	Herramientas	1	[{"added": {}}]	31	1
217	2022-05-31 11:24:26.955125-05	4	Reactivos	1	[{"added": {}}]	31	1
218	2022-05-31 11:24:31.972224-05	5	Materiales	1	[{"added": {}}]	31	1
219	2022-05-31 11:24:38.892785-05	6	Especializados	1	[{"added": {}}]	31	1
220	2022-05-31 11:25:06.332118-05	7	Computo - # 7	2	[{"changed": {"fields": ["Estado"]}}]	32	1
221	2022-05-31 11:25:12.229791-05	1	Computo - # 1	2	[{"changed": {"fields": ["Estado"]}}]	32	1
222	2022-05-31 11:25:16.793532-05	2	Computo - # 2	2	[{"changed": {"fields": ["Estado"]}}]	32	1
223	2022-05-31 11:25:22.168894-05	3	Computo - # 3	2	[{"changed": {"fields": ["Estado"]}}]	32	1
224	2022-05-31 11:25:27.804818-05	4	Computo - # 4	2	[{"changed": {"fields": ["Estado"]}}]	32	1
225	2022-05-31 11:25:34.044477-05	6	Computo - # 6	2	[{"changed": {"fields": ["Estado"]}}]	32	1
226	2022-05-31 11:26:28.457951-05	203073	Carmen Cigarroa De la Rosa	1	[{"added": {}}]	27	1
227	2022-05-31 11:27:10.090468-05	203044	Emmanuel Gonzales Agustin	1	[{"added": {}}]	27	1
228	2022-05-31 11:28:00.831019-05	203051	Alondra López Gómez	1	[{"added": {}}]	27	1
229	2022-05-31 11:38:14.541404-05	24	Rendering - 9, A, Matutino, Ingeniería en Animación y Efectos Visuales	2	[{"changed": {"fields": ["Estado"]}}]	35	1
230	2022-05-31 11:43:03.241054-05	24	Rendering - 9, A, Matutino, Ingeniería en Animación y Efectos Visuales	2	[{"changed": {"fields": ["Estado"]}}]	35	1
231	2022-06-01 09:14:35.217355-05	1	Computo - # 1	2	[{"changed": {"fields": ["Estado"]}}]	32	1
232	2022-06-01 09:15:23.145428-05	1	jorge	2	[{"changed": {"fields": ["First name", "Last name", "Email address"]}}]	4	1
233	2022-06-01 09:35:36.84248-05	2	Fernando Cossio Esquivel - Programación para Móviles II - 9, A, Matutino, Ingeniería de Software	1	[{"added": {}}]	37	1
234	2022-06-01 11:02:30.666471-05	25	Rigging - IAEF-B-VESP 6	2	[]	35	1
235	2022-06-01 11:52:51.221429-05	25	AlumPraticesModel object (25)	1	[{"added": {}}]	36	1
236	2022-06-01 12:58:13.924351-05	2	Carmen Guadalupe Martínez Jiménez - Calidad de Software - IS-B-VESP 6	2	[{"changed": {"fields": ["Equipo"]}}]	37	1
237	2022-06-01 13:12:03.045409-05	5	Carmen Guadalupe Martínez Jiménez - Calidad de Software - IS-B-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
238	2022-06-01 13:15:20.342612-05	5	Carmen Guadalupe Martínez Jiménez - Calidad de Software - IS-B-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
239	2022-06-01 13:15:24.597772-05	2	Carmen Guadalupe Martínez Jiménez - Calidad de Software - IS-B-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
240	2022-06-01 13:18:57.201603-05	5	Alfredo Castillo Solís - Calidad de Software - IS-B-VESP 6	2	[{"changed": {"fields": ["Docente", "Fecha de salida"]}}]	37	1
241	2022-06-01 13:19:02.602395-05	2	Carmen Guadalupe Martínez Jiménez - Calidad de Software - IS-B-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
242	2022-06-01 13:31:50.839707-05	5	Alfredo Castillo Solís - Calidad de Software - IS-B-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
243	2022-06-01 13:32:31.885435-05	2	Carmen Guadalupe Martínez Jiménez - Calidad de Software - IS-B-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
244	2022-06-01 13:32:39.780272-05	5	Alfredo Castillo Solís - Calidad de Software - IS-B-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
245	2022-06-01 13:34:08.651554-05	5	Alfredo Castillo Solís - Calidad de Software - IS-B-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
246	2022-06-01 13:35:11.932236-05	6	José Antonio López Ayala - Manufactura Automotriz CAM y CNC - ISA-A-MAT 6	1	[{"added": {}}]	37	1
247	2022-06-01 13:41:31.939712-05	6	José Antonio López Ayala - Manufactura Automotriz CAM y CNC - ISA-A-MAT 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
248	2022-06-01 13:41:36.706785-05	5	Alfredo Castillo Solís - Calidad de Software - IS-B-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
249	2022-06-01 13:41:41.546199-05	2	Carmen Guadalupe Martínez Jiménez - Calidad de Software - IS-B-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
250	2022-06-01 13:42:40.072739-05	5	Alfredo Castillo Solís - Calidad de Software - IS-B-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
251	2022-06-01 13:42:52.753168-05	2	Carmen Guadalupe Martínez Jiménez - Calidad de Software - IS-B-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
252	2022-06-01 13:43:15.95952-05	6	José Antonio López Ayala - Manufactura Automotriz CAM y CNC - ISA-A-MAT 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
253	2022-06-01 13:43:20.426785-05	5	Alfredo Castillo Solís - Calidad de Software - IS-B-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
254	2022-06-01 13:43:25.704179-05	2	Carmen Guadalupe Martínez Jiménez - Calidad de Software - IS-B-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
255	2022-06-01 13:44:10.266583-05	6	José Antonio López Ayala - Manufactura Automotriz CAM y CNC - ISA-A-MAT 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
256	2022-06-01 13:44:14.374584-05	5	Alfredo Castillo Solís - Calidad de Software - IS-B-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
257	2022-06-01 13:44:18.741603-05	2	Carmen Guadalupe Martínez Jiménez - Calidad de Software - IS-B-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
258	2022-06-01 13:50:31.129447-05	6	José Antonio López Ayala - Manufactura Automotriz CAM y CNC - ISA-A-MAT 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
259	2022-06-01 13:50:35.918268-05	5	Alfredo Castillo Solís - Calidad de Software - IS-B-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
260	2022-06-01 13:50:40.721745-05	2	Carmen Guadalupe Martínez Jiménez - Calidad de Software - IS-B-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
261	2022-06-01 14:05:52.466979-05	6	José Antonio López Ayala - Manufactura Automotriz CAM y CNC - ISA-A-MAT 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
262	2022-06-01 14:05:56.664195-05	5	Alfredo Castillo Solís - Calidad de Software - IS-B-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
263	2022-06-01 14:06:02.108469-05	2	Carmen Guadalupe Martínez Jiménez - Calidad de Software - IS-B-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
264	2022-06-01 14:10:20.126817-05	6	José Antonio López Ayala - Manufactura Automotriz CAM y CNC - ISA-A-MAT 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
265	2022-06-01 14:10:24.476904-05	5	Alfredo Castillo Solís - Calidad de Software - IS-B-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
266	2022-06-01 14:10:28.745085-05	2	Carmen Guadalupe Martínez Jiménez - Calidad de Software - IS-B-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
267	2022-06-01 14:12:02.832558-05	6	José Antonio López Ayala - Manufactura Automotriz CAM y CNC - ISA-A-MAT 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
268	2022-06-01 14:12:29.363894-05	6	José Antonio López Ayala - Manufactura Automotriz CAM y CNC - ISA-A-MAT 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
269	2022-06-01 14:12:34.180486-05	5	Alfredo Castillo Solís - Calidad de Software - IS-B-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
270	2022-06-01 14:12:39.370243-05	2	Carmen Guadalupe Martínez Jiménez - Calidad de Software - IS-B-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	1
271	2022-06-03 11:47:14.874595-05	3	Ingeniería  de Requerimientos de Software - IS-A-MAT 3	2	[{"changed": {"fields": ["Estado"]}}]	35	1
272	2022-06-04 22:19:21.780489-05	25	AlumPraticesModel object (25)	2	[{"changed": {"fields": ["Fecha de salida"]}}]	36	1
273	2022-06-05 23:33:05.632597-05	1	admin	2	[{"changed": {"fields": ["Username", "First name", "Last name", "Email address"]}}]	4	1
274	2022-06-05 23:34:21.035636-05	1	admin	2	[{"changed": {"fields": ["Email address"]}}]	4	1
275	2022-06-05 23:35:35.491195-05	1	203102	2	[{"changed": {"fields": ["Username"]}}]	4	1
276	2022-06-05 23:36:30.755937-05	2	admin	2	[{"changed": {"fields": ["First name", "Last name"]}}]	4	1
277	2022-06-06 09:29:37.320987-05	27	Diseño de Audio - IAEF-B-VESP 6	2	[{"changed": {"fields": ["Estado"]}}]	35	2
278	2022-06-06 09:29:46.923033-05	26	Rigging - IAEF-A-VESP 6	2	[{"changed": {"fields": ["Estado"]}}]	35	2
279	2022-06-06 09:29:53.53391-05	25	Rigging - IAEF-B-VESP 6	2	[{"changed": {"fields": ["Estado"]}}]	35	2
280	2022-06-06 09:30:06.445101-05	9	Redes - IS-B-VESP 6	2	[{"changed": {"fields": ["Estado"]}}]	35	2
281	2022-06-06 09:30:14.809071-05	4	Programación Visual - IS-A-MAT 3	2	[{"changed": {"fields": ["Estado"]}}]	35	2
282	2022-06-06 09:30:25.278723-05	5	Fundamentos de Base de Datos - IS-A-MAT 3	2	[{"changed": {"fields": ["Estado"]}}]	35	2
283	2022-06-06 09:30:32.637747-05	6	Calidad de Software - IS-A-VESP 6	2	[{"changed": {"fields": ["Estado"]}}]	35	2
284	2022-06-06 09:30:39.796804-05	7	Calidad de Software - IS-B-VESP 6	2	[{"changed": {"fields": ["Estado"]}}]	35	2
285	2022-06-06 09:39:47.68308-05	30	Carmen Guadalupe Martínez Jiménez - Programación Visual - IS-A-MAT 3	3		37	2
286	2022-06-06 09:39:47.69106-05	29	Carolina Barrios Molina - Redes - IS-B-VESP 6	3		37	2
287	2022-06-06 09:39:47.69106-05	28	Ceila Merari Gonzáles Hernádez - Fundamentos de Base de Datos - IS-A-MAT 3	3		37	2
288	2022-06-06 09:39:47.699063-05	27	Carmen Guadalupe Martínez Jiménez - Diseño de Audio - IAEF-B-VESP 6	3		37	2
289	2022-06-06 09:39:47.699063-05	26	Ceila Merari Gonzáles Hernádez - Redes - IS-B-VESP 6	3		37	2
290	2022-06-06 09:39:47.699063-05	25	Ceila Merari Gonzáles Hernádez - Fundamentos de Base de Datos - IS-A-MAT 3	3		37	2
291	2022-06-06 09:39:47.699063-05	24	Carmen Guadalupe Martínez Jiménez - Redes - IS-B-VESP 6	3		37	2
292	2022-06-06 09:39:47.707063-05	23	Carmen Guadalupe Martínez Jiménez - Rigging - IAEF-A-VESP 6	3		37	2
293	2022-06-06 09:39:47.707063-05	22	Carmen Guadalupe Martínez Jiménez - Fundamentos de Base de Datos - IS-A-MAT 3	3		37	2
294	2022-06-06 09:39:47.707063-05	21	Carolina Barrios Molina - Diseño de Audio - IAEF-B-VESP 6	3		37	2
295	2022-06-06 09:39:47.715063-05	20	Carmen Guadalupe Martínez Jiménez - Redes - IS-B-VESP 6	3		37	2
296	2022-06-06 09:39:47.715063-05	19	Rene Servando Rivera Roblero - Rigging - IAEF-A-VESP 6	3		37	2
297	2022-06-06 09:39:47.715063-05	18	Ceila Merari Gonzáles Hernádez - Rigging - IAEF-A-VESP 6	3		37	2
298	2022-06-06 09:39:47.715063-05	17	Alfredo Castillo Solís - Fundamentos de Base de Datos - IS-A-MAT 3	3		37	2
299	2022-06-06 09:39:47.723084-05	16	Alfredo Castillo Solís - Redes - IS-B-VESP 6	3		37	2
300	2022-06-06 09:39:47.723084-05	15	Ceila Merari Gonzáles Hernádez - Diseño de Audio - IAEF-B-VESP 6	3		37	2
301	2022-06-06 09:39:47.723084-05	14	Carolina Barrios Molina - Fundamentos de Base de Datos - IS-A-MAT 3	3		37	2
302	2022-06-06 09:39:47.731063-05	13	Claudia Martínez Martínéz - Rigging - IAEF-A-VESP 6	3		37	2
303	2022-06-06 09:39:47.731063-05	12	Ceila Merari Gonzáles Hernádez - Programación Visual - IS-A-MAT 3	3		37	2
304	2022-06-06 09:39:47.731063-05	11	Carolina Barrios Molina - Rigging - IAEF-A-VESP 6	3		37	2
305	2022-06-06 09:39:47.731063-05	10	Carmen Guadalupe Martínez Jiménez - Programación Visual - IS-A-MAT 3	3		37	2
306	2022-06-06 09:39:47.731063-05	9	Alfredo Castillo Solís - Fundamentos de Base de Datos - IS-A-MAT 3	3		37	2
307	2022-06-06 09:39:47.739067-05	8	Carmen Guadalupe Martínez Jiménez - Calidad de Software - IS-A-VESP 6	3		37	2
308	2022-06-06 09:39:47.739067-05	7	Carmen Guadalupe Martínez Jiménez - Ingeniería  de Requerimientos de Software - IS-A-MAT 3	3		37	2
309	2022-06-06 09:39:47.739067-05	6	José Antonio López Ayala - Manufactura Automotriz CAM y CNC - ISA-A-MAT 6	3		37	2
310	2022-06-06 09:39:47.747076-05	5	Alfredo Castillo Solís - Calidad de Software - IS-B-VESP 6	3		37	2
311	2022-06-06 09:39:47.747076-05	2	Carmen Guadalupe Martínez Jiménez - Calidad de Software - IS-B-VESP 6	3		37	2
312	2022-06-06 10:10:21.57069-05	35	Trinidad López Méndez - Diseño de Audio - IAEF-B-VESP 6	3		37	2
313	2022-06-06 10:10:21.578687-05	34	Trinidad López Méndez - Diseño de Audio - IAEF-B-VESP 6	3		37	2
314	2022-06-06 10:10:21.580684-05	33	Trinidad López Méndez - Diseño de Audio - IAEF-B-VESP 6	3		37	2
315	2022-06-06 10:10:21.582693-05	32	Trinidad López Méndez - Diseño de Audio - IAEF-B-VESP 6	3		37	2
316	2022-06-06 10:10:21.584686-05	31	Trinidad López Méndez - Diseño de Audio - IAEF-B-VESP 6	3		37	2
317	2022-06-06 10:11:32.374355-05	27	Diseño de Audio - IAEF-B-VESP 6	2	[{"changed": {"fields": ["Estado"]}}]	35	2
318	2022-06-06 10:17:19.196157-05	27	Diseño de Audio - IAEF-B-VESP 6	2	[{"changed": {"fields": ["Estado"]}}]	35	2
319	2022-06-06 10:17:26.928201-05	36	Trinidad López Méndez - Diseño de Audio - IAEF-B-VESP 6	3		37	2
320	2022-06-06 10:19:42.027646-05	27	Diseño de Audio - IAEF-B-VESP 6	2	[{"changed": {"fields": ["Estado"]}}]	35	2
321	2022-06-06 10:19:50.074434-05	37	Trinidad López Méndez - Diseño de Audio - IAEF-B-VESP 6	3		37	2
322	2022-06-06 10:58:29.574204-05	40	Ceila Merari Gonzáles Hernádez - Programación Visual - IS-A-MAT 3	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	2
323	2022-06-06 11:08:01.193839-05	38	Trinidad López Méndez - Diseño de Audio - IAEF-B-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	2
324	2022-06-06 11:08:06.8024-05	39	Alfredo Castillo Solís - Rigging - IAEF-A-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	2
325	2022-06-06 11:08:10.758768-05	40	Ceila Merari Gonzáles Hernádez - Programación Visual - IS-A-MAT 3	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	2
326	2022-06-06 11:12:33.544979-05	40	Ceila Merari Gonzáles Hernádez - Programación Visual - IS-A-MAT 3	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	2
327	2022-06-06 11:12:39.637444-05	39	Alfredo Castillo Solís - Rigging - IAEF-A-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	2
328	2022-06-06 11:12:44.09726-05	38	Trinidad López Méndez - Diseño de Audio - IAEF-B-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	2
329	2022-06-06 21:12:35.426576-05	27	Diseño de Audio - IAEF-B-VESP 6	2	[{"changed": {"fields": ["Estado"]}}]	35	2
330	2022-06-06 21:12:43.260424-05	26	Rigging - IAEF-A-VESP 6	2	[{"changed": {"fields": ["Estado"]}}]	35	2
331	2022-06-06 21:12:57.02978-05	4	Programación Visual - IS-A-MAT 3	2	[{"changed": {"fields": ["Estado"]}}]	35	2
332	2022-06-06 23:09:02.665626-05	32	AlumPraticesModel object (32)	3		36	2
333	2022-06-06 23:09:06.629524-05	31	AlumPraticesModel object (31)	3		36	2
334	2022-06-06 23:09:10.268391-05	30	AlumPraticesModel object (30)	3		36	2
335	2022-06-06 23:09:13.682784-05	29	AlumPraticesModel object (29)	3		36	2
336	2022-06-06 23:09:16.823288-05	28	AlumPraticesModel object (28)	3		36	2
337	2022-06-06 23:09:19.830517-05	27	AlumPraticesModel object (27)	3		36	2
338	2022-06-06 23:09:23.111852-05	26	AlumPraticesModel object (26)	3		36	2
339	2022-06-06 23:09:26.473971-05	25	AlumPraticesModel object (25)	3		36	2
340	2022-06-07 09:41:50.173183-05	43	Rene Servando Rivera Roblero - Arquitectura de Computadoras - IS-A-VESP 6	2	[{"changed": {"fields": ["Equipo"]}}]	37	2
341	2022-06-07 10:00:44.627902-05	43	Rene Servando Rivera Roblero - Arquitectura de Computadoras - IS-A-VESP 6	2	[{"changed": {"fields": ["Equipo"]}}]	37	2
342	2022-06-07 10:14:06.354787-05	34	AlumPraticesModel object (34)	2	[{"changed": {"fields": ["Equipo"]}}]	36	2
343	2022-06-07 10:23:08.800774-05	33	AlumPraticesModel object (33)	3		36	2
344	2022-06-07 10:25:39.766848-05	34	AlumPraticesModel object (34)	2	[{"changed": {"fields": ["Matricula", "Equipo"]}}]	36	2
345	2022-06-07 10:25:56.437349-05	34	AlumPraticesModel object (34)	2	[{"changed": {"fields": ["Matricula"]}}]	36	2
346	2022-06-07 11:37:48.106502-05	44	Rene Servando Rivera Roblero - Arquitectura de Computadoras - IS-A-VESP 6	2	[{"changed": {"fields": ["Fecha de salida"]}}]	37	2
347	2022-06-07 11:38:13.908376-05	36	AlumPraticesModel object (36)	2	[{"changed": {"fields": ["Fecha de salida"]}}]	36	2
348	2022-06-07 11:38:19.340504-05	35	AlumPraticesModel object (35)	2	[{"changed": {"fields": ["Fecha de salida"]}}]	36	2
349	2022-06-07 11:38:24.21557-05	34	AlumPraticesModel object (34)	2	[{"changed": {"fields": ["Fecha de salida"]}}]	36	2
350	2022-06-07 11:43:19.768958-05	44	Rene Servando Rivera Roblero - Arquitectura de Computadoras - IS-A-VESP 6	3		37	2
351	2022-06-07 11:43:19.786045-05	43	Rene Servando Rivera Roblero - Arquitectura de Computadoras - IS-A-VESP 6	3		37	2
352	2022-06-07 11:43:19.787639-05	42	José Antonio López Ayala - Redes - IS-B-VESP 6	3		37	2
353	2022-06-07 11:43:19.789266-05	41	José Antonio López Ayala - Redes - IS-B-VESP 6	3		37	2
354	2022-06-07 11:43:19.790539-05	40	Ceila Merari Gonzáles Hernádez - Programación Visual - IS-A-MAT 3	3		37	2
355	2022-06-07 11:43:19.791559-05	39	Alfredo Castillo Solís - Rigging - IAEF-A-VESP 6	3		37	2
356	2022-06-07 11:43:19.792557-05	38	Trinidad López Méndez - Diseño de Audio - IAEF-B-VESP 6	3		37	2
357	2022-06-07 11:43:26.3286-05	36	AlumPraticesModel object (36)	3		36	2
358	2022-06-07 11:43:29.640124-05	35	AlumPraticesModel object (35)	3		36	2
359	2022-06-07 11:43:33.558892-05	34	AlumPraticesModel object (34)	3		36	2
360	2022-06-07 11:43:50.049468-05	5	Computo - # 5	2	[{"changed": {"fields": ["Estado"]}}]	32	2
361	2022-06-07 11:43:56.280764-05	15	Computo - # 15	2	[{"changed": {"fields": ["Estado"]}}]	32	2
362	2022-06-07 11:43:59.875612-05	14	Computo - # 14	2	[{"changed": {"fields": ["Estado"]}}]	32	2
363	2022-06-07 11:44:03.491077-05	13	Computo - # 13	2	[{"changed": {"fields": ["Estado"]}}]	32	2
364	2022-06-07 11:44:06.728068-05	12	Computo - # 12	2	[{"changed": {"fields": ["Estado"]}}]	32	2
365	2022-06-07 11:44:10.766251-05	11	Computo - # 11	2	[{"changed": {"fields": ["Estado"]}}]	32	2
366	2022-06-07 11:44:16.010407-05	10	Computo - # 10	2	[{"changed": {"fields": ["Estado"]}}]	32	2
367	2022-06-07 11:44:19.561356-05	9	Computo - # 9	2	[{"changed": {"fields": ["Estado"]}}]	32	2
368	2022-06-07 11:44:23.737699-05	8	Computo - # 8	2	[{"changed": {"fields": ["Estado"]}}]	32	2
369	2022-06-07 11:46:58.784416-05	45	Fernando Cossio Esquivel - Programación para Móviles II - IS-A-MAT 9	3		37	2
370	2022-06-07 11:47:37.970477-05	46	Fernando Cossio Esquivel - Lógica de Programación - IAEF-B-VESP 6	3		37	2
371	2022-06-07 11:50:13.358649-05	22	Lógica de Programación - IAEF-B-VESP 6	2	[{"changed": {"fields": ["Estado"]}}]	35	2
372	2022-06-07 11:50:22.386161-05	14	Programación para Móviles II - IS-A-MAT 9	2	[{"changed": {"fields": ["Estado"]}}]	35	2
373	2022-06-07 11:50:36.567457-05	47	Fernando Cossio Esquivel - Programación para Móviles II - IS-A-MAT 9	3		37	2
374	2022-06-07 11:55:31.607323-05	37	AlumPraticesModel object (37)	2	[{"changed": {"fields": ["Fecha de salida"]}}]	36	2
375	2022-06-07 11:58:16.461091-05	40	AlumPraticesModel object (40)	3		36	2
376	2022-06-07 11:58:16.466092-05	39	AlumPraticesModel object (39)	3		36	2
377	2022-06-07 11:58:16.467098-05	38	AlumPraticesModel object (38)	3		36	2
378	2022-06-07 11:58:16.469091-05	37	AlumPraticesModel object (37)	3		36	2
379	2022-06-07 11:58:32.704684-05	48	Fernando Cossio Esquivel - Programación para Móviles II - IS-A-MAT 9	3		37	2
380	2022-06-07 16:41:31.39723-05	62	Microsoft Visual C++ 2017	2	[{"changed": {"fields": ["Estado"]}}]	33	2
381	2022-06-07 16:41:38.384548-05	61	Microsoft Visual C++ 2013	2	[{"changed": {"fields": ["Estado"]}}]	33	2
382	2022-06-07 16:41:45.09996-05	60	Microsoft Visual C++ 2012	2	[{"changed": {"fields": ["Estado"]}}]	33	2
383	2022-06-07 16:41:52.587068-05	59	Microsoft Visual C++ 2010	2	[{"changed": {"fields": ["Estado"]}}]	33	2
384	2022-06-07 16:41:58.972668-05	58	Microsoft Visual C++ 2008	2	[{"changed": {"fields": ["Estado"]}}]	33	2
385	2022-06-07 16:42:06.014568-05	57	Microsoft Visual C++ 2005	2	[{"changed": {"fields": ["Estado"]}}]	33	2
386	2022-06-08 10:47:30.481458-05	183177	José Juan Gonzalez Sandoval	1	[{"added": {}}]	42	2
387	2022-06-08 10:48:18.015793-05	183237	Daniel Lopez Morga	1	[{"added": {}}]	42	2
388	2022-06-08 10:49:17.617285-05	193013	Kevin De Jesus Lopez Osorio	1	[{"added": {}}]	42	2
389	2022-06-08 10:50:00.200012-05	193075	Dilan Axel Grajales Marroquin	1	[{"added": {}}]	42	2
390	2022-06-08 10:51:52.159051-05	193195	Diego Cigarroa Nepomuceno	1	[{"added": {}}]	42	2
391	2022-06-08 10:52:32.994885-05	193242	Bryant Fernando Pascacio Mendoza	1	[{"added": {}}]	42	2
392	2022-06-08 10:53:12.112707-05	193277	Marony Ernesto Aceves Fernandez	1	[{"added": {}}]	42	2
393	2022-06-08 10:53:57.990186-05	193284	Jose Juan Calderon Gonzales	1	[{"added": {}}]	42	2
394	2022-06-08 10:54:37.482454-05	193293	Ricardo De Jesus De Leon Hernandez	1	[{"added": {}}]	42	2
395	2022-06-08 10:55:09.387516-05	193308	Jared Escobar Cigarroa	1	[{"added": {}}]	42	2
396	2022-06-08 10:55:47.917878-05	193344	Edlin Paola Velazquez Salas	1	[{"added": {}}]	42	2
397	2022-06-08 10:56:13.450284-05	193357	Fernando Duran Estrada	1	[{"added": {}}]	42	2
398	2022-06-08 10:56:48.536034-05	193391	Kristell Damaris Mendoza Lopez	1	[{"added": {}}]	42	2
399	2022-06-08 10:57:23.440215-05	193474	Ramon Antonio Estrada Espiritu	1	[{"added": {}}]	42	2
400	2022-06-08 11:45:03.668581-05	203102	JORGE LUIS GORDILLO CANSECO	2	[{"changed": {"fields": ["Nombre(s)"]}}]	42	2
401	2022-06-08 11:50:31.996091-05	183177	JOSE JUAN   GONZALEZ SANDOVAL	2	[{"changed": {"fields": ["Nombre(s)"]}}]	42	2
402	2022-06-08 11:50:45.640476-05	183237	DANIEL LOPEZ MORGA	2	[{"changed": {"fields": ["Nombre(s)"]}}]	42	2
403	2022-06-08 11:50:54.393232-05	193013	KEVIN DE JESUS LOPEZ OSORIO	2	[{"changed": {"fields": ["Nombre(s)"]}}]	42	2
404	2022-06-08 11:51:05.035587-05	193075	DILAN AXEL GRAJALES MARROQUIN	2	[{"changed": {"fields": ["Nombre(s)"]}}]	42	2
405	2022-06-08 11:51:15.84493-05	193195	DIEGO CIGARROA NEPOMUCENO	2	[{"changed": {"fields": ["Nombre(s)"]}}]	42	2
406	2022-06-08 11:51:24.519108-05	193242	BRYANT FERNANDO PASCACIO MENDO	2	[{"changed": {"fields": ["Nombre(s)"]}}]	42	2
407	2022-06-08 11:52:37.998801-05	193242	BRYANT FERNANDO PASCACIO MENDO	2	[]	42	2
408	2022-06-08 11:52:53.09047-05	203014	JUDA DZAAHUINDANDAN MONTEZ HERRERA	2	[]	42	2
409	2022-06-08 11:53:01.984008-05	193242	BRYANT FERNANDO PASCACIO MENDOZA	2	[{"changed": {"fields": ["Nombre(s)"]}}]	42	2
410	2022-06-08 11:53:12.011705-05	193277	MARONY ERNESTO ACEVES FERNÁNDEZ	2	[{"changed": {"fields": ["Nombre(s)"]}}]	42	2
411	2022-06-08 11:53:22.705791-05	193284	JOSE JUAN CALDERON GONZALEZ	2	[{"changed": {"fields": ["Nombre(s)"]}}]	42	2
412	2022-06-08 11:53:35.810609-05	193293	RICARDO DE JESÚS DE LEÓN HERNÁNDEZ	2	[{"changed": {"fields": ["Nombre(s)"]}}]	42	2
413	2022-06-08 11:53:44.476527-05	193308	JARED ESCOBAR CIGARROA	2	[{"changed": {"fields": ["Nombre(s)"]}}]	42	2
414	2022-06-08 11:53:53.68215-05	193344	EDLIN PAOLA VELÁZQUEZ  SALAS	2	[{"changed": {"fields": ["Nombre(s)"]}}]	42	2
415	2022-06-08 11:54:04.682308-05	193357	FERNANDO DURAN ESTRADA	2	[{"changed": {"fields": ["Nombre(s)"]}}]	42	2
416	2022-06-08 11:54:16.169751-05	193391	KRISTELL DAMARIS MENDOZA LÓPEZ	2	[{"changed": {"fields": ["Nombre(s)"]}}]	42	2
417	2022-06-08 11:54:25.777351-05	193474	RAMON ANTONIO ESTRADA ESPIRITU	2	[{"changed": {"fields": ["Nombre(s)"]}}]	42	2
418	2022-06-08 11:55:26.087167-05	203044	EMMANUEL GONZALEZ AGUSTIN	2	[{"changed": {"fields": ["Nombre(s)"]}}]	42	2
419	2022-06-08 11:55:40.562043-05	203051	ALONDRA LOPEZ GOMEZ	2	[{"changed": {"fields": ["Nombre(s)"]}}]	42	2
420	2022-06-08 11:55:51.998221-05	203073	CARMEN CIGARROA  DE LA ROSA	2	[{"changed": {"fields": ["Nombre(s)"]}}]	42	2
421	2022-06-08 11:57:24.387466-05	43	AlumPratices object (43)	3		59	2
422	2022-06-08 11:57:24.39346-05	42	AlumPratices object (42)	3		59	2
423	2022-06-08 11:57:24.395463-05	41	AlumPratices object (41)	3		59	2
424	2022-06-08 11:57:44.576774-05	50	Pedro de Jesus Girón Cigarroa - Rendering - IAEF-A-MAT 9	3		57	2
425	2022-06-08 11:57:44.583773-05	49	Fernando Cossio Esquivel - Programación para Móviles II - IS-A-MAT 9	3		57	2
\.


--
-- TOC entry 3222 (class 0 OID 67708)
-- Dependencies: 199
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	main	statusmodel
8	main	rolmodel
9	main	chargemodel
10	main	modalitymodel
11	main	careermodel
12	main	quartermodel
13	main	typemodel
14	main	cyclemodel
15	main	periodmodel
16	main	generationmodel
17	main	qualificationtypemodel
18	main	grouptypemodel
19	main	trainingcyclemodel
20	main	studyplanmodel
21	main	subjectmodel
22	main	careersubjectmodel
23	main	shiftmodel
24	main	groupmodel
25	main	groupsubjectmodel
26	alumn	alumntypemodel
27	alumn	alumnmodel
28	alumn	alumnschooldatamodel
29	laboratory	laboratorymodel
30	laboratory	statusequipmentmodel
31	laboratory	categoryequipmentmodel
32	laboratory	equipmentgeneralmodel
33	laboratory	programmodel
34	laboratory	equipmentprogrammodel
35	laboratory	schedulemodel
36	laboratory	alumpraticesmodel
37	laboratory	teacherpratcesmodel
38	teacher	teachermodel
39	jet	pinnedapplication
40	jet	bookmark
41	dashboard	userdashboardmodule
42	alumn	alumn
43	main	career
44	main	cycle
45	main	quarter
46	main	shift
47	main	status
48	main	subject
49	main	period
50	main	modality
51	main	group
52	laboratory	categoryequipment
53	laboratory	equipmentgeneral
54	laboratory	laboratory
55	laboratory	schedule
56	laboratory	statusequipment
57	laboratory	teacherpratces
58	laboratory	program
59	laboratory	alumpratices
60	teacher	teacher
\.


--
-- TOC entry 3220 (class 0 OID 67697)
-- Dependencies: 197
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-05-27 12:53:18.186411-05
2	auth	0001_initial	2022-05-27 12:53:18.370176-05
3	admin	0001_initial	2022-05-27 12:53:18.418178-05
4	admin	0002_logentry_remove_auto_add	2022-05-27 12:53:18.430175-05
5	admin	0003_logentry_add_action_flag_choices	2022-05-27 12:53:18.44418-05
6	contenttypes	0002_remove_content_type_name	2022-05-27 12:53:18.484176-05
7	auth	0002_alter_permission_name_max_length	2022-05-27 12:53:18.500179-05
8	auth	0003_alter_user_email_max_length	2022-05-27 12:53:18.512177-05
9	auth	0004_alter_user_username_opts	2022-05-27 12:53:18.522178-05
10	auth	0005_alter_user_last_login_null	2022-05-27 12:53:18.533177-05
11	auth	0006_require_contenttypes_0002	2022-05-27 12:53:18.535177-05
12	auth	0007_alter_validators_add_error_messages	2022-05-27 12:53:18.546176-05
13	auth	0008_alter_user_username_max_length	2022-05-27 12:53:18.568177-05
14	auth	0009_alter_user_last_name_max_length	2022-05-27 12:53:18.583178-05
15	auth	0010_alter_group_name_max_length	2022-05-27 12:53:18.628178-05
16	auth	0011_update_proxy_permissions	2022-05-27 12:53:18.654177-05
17	auth	0012_alter_user_first_name_max_length	2022-05-27 12:53:18.663175-05
18	sessions	0001_initial	2022-05-27 12:53:18.686991-05
19	main	0001_initial	2022-05-27 12:54:21.312047-05
20	alumn	0001_initial	2022-05-27 12:54:21.424213-05
21	teacher	0001_initial	2022-05-27 12:54:21.467209-05
22	laboratory	0001_initial	2022-05-27 12:54:21.783113-05
23	main	0002_alter_shiftmodel_abbreviation_and_more	2022-05-27 13:08:10.514323-05
24	laboratory	0002_programmodel_status_alter_programmodel_desciption	2022-05-28 23:22:26.956178-05
25	main	0003_alter_careermodel_status	2022-05-28 23:22:27.028177-05
26	teacher	0002_alter_teachermodel_gender_and_more	2022-05-28 23:22:27.108188-05
27	laboratory	0003_alter_programmodel_status	2022-05-28 23:55:25.642929-05
28	main	0004_remove_subjectmodel_alumn_load_and_more	2022-05-28 23:55:25.760871-05
29	laboratory	0004_rename_laboratory_schedulemodel_laboratory	2022-05-29 00:08:13.325768-05
30	alumn	0002_remove_alumnschooldatamodel_enrollment_and_more	2022-05-30 12:02:17.033455-05
31	laboratory	0005_delete_equipmentprogrammodel	2022-05-30 12:32:34.321225-05
32	main	0005_remove_grouptypemodel_status_and_more	2022-05-31 09:51:31.525785-05
33	main	0006_remove_groupmodel_availability	2022-05-31 09:54:37.770793-05
34	laboratory	0006_alter_teacherpratcesmodel_equipment	2022-06-01 11:15:29.969752-05
35	main	0007_delete_chargemodel_and_more	2022-06-01 11:15:30.130276-05
36	teacher	0003_alter_teachermodel_email	2022-06-01 11:15:30.169711-05
37	laboratory	0007_alter_teacherpratcesmodel_entry_date	2022-06-01 13:50:16.125112-05
38	jet	0001_initial	2022-06-02 11:06:08.409159-05
39	jet	0002_delete_userdashboardmodule	2022-06-02 11:06:08.409159-05
40	jet	0003_auto_20201228_1540	2022-06-02 11:06:08.409159-05
41	jet	0004_auto_20201228_1802	2022-06-02 11:06:08.424788-05
42	jet	0001_squashed_0004_auto_20201228_1802	2022-06-02 11:06:08.424788-05
43	dashboard	0001_initial	2022-06-02 11:07:32.262284-05
44	dashboard	0002_auto_20201228_1929	2022-06-02 11:07:32.324789-05
45	laboratory	0008_alter_schedulemodel_options	2022-06-03 10:38:06.475116-05
46	main	0008_remove_groupsubjectmodel_group_and_more	2022-06-03 10:38:06.631926-05
47	teacher	0004_alter_teachermodel_options	2022-06-03 10:38:06.666992-05
48	laboratory	0009_alter_alumpraticesmodel_enrollment	2022-06-06 23:08:35.866662-05
49	laboratory	0010_alter_alumpraticesmodel_enrollment_and_more	2022-06-07 10:13:56.225769-05
50	laboratory	0011_alter_alumpraticesmodel_entry_date_and_more	2022-06-07 11:56:36.05309-05
51	alumn	0002_auto_20220608_1144	2022-06-08 11:44:25.871004-05
\.


--
-- TOC entry 3237 (class 0 OID 67853)
-- Dependencies: 214
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
q5yp0gbtkhwudvh7ayve58vg7nfv8lz6	.eJxVjDEOwjAMRe-SGUU4rkPKyN4zVI5tSAG1UtNOiLtDpQ6w_vfef7me16X0a7W5H9SdHbjD75ZZHjZuQO883iYv07jMQ_ab4ndafTepPS-7-3dQuJZvbZiiJIRGYkumdmVCzIgUkh4xRGJpKCemGFQinKCFNgWCIKQGEdz7A8zFNuE:1nueBA:5OeLbYog6kMs-wrcRMH0_WdDYgMbz5_fGKJYatCF69o	2022-06-10 12:55:16.528153-05
92a78ia954i9xz10dknok5jl0b5zj357	.eJxVjDEOwjAMRe-SGUU4rkPKyN4zVI5tSAG1UtNOiLtDpQ6w_vfef7me16X0a7W5H9SdHbjD75ZZHjZuQO883iYv07jMQ_ab4ndafTepPS-7-3dQuJZvbZiiJIRGYkumdmVCzIgUkh4xRGJpKCemGFQinKCFNgWCIKQGEdz7A8zFNuE:1nv9mq:1PS6aSYUSfPOK0tGxt4-HNl0AeBME8S3QcHEwwipE_M	2022-06-11 22:40:16.337647-05
uhy6cymd135atx3rw8xn8dxig9eeelru	.eJxVjDEOwjAMRe-SGUU4rkPKyN4zVI5tSAG1UtNOiLtDpQ6w_vfef7me16X0a7W5H9SdHbjD75ZZHjZuQO883iYv07jMQ_ab4ndafTepPS-7-3dQuJZvbZiiJIRGYkumdmVCzIgUkh4xRGJpKCemGFQinKCFNgWCIKQGEdz7A8zFNuE:1nwnP2:X72gelCNuXbNiaKjZ1QBy9LgXj5hA0b5IcAAZwveT7A	2022-06-16 11:10:28.85293-05
ftqzofykivc5jmhuo3lz6udth3fzhoku	.eJxVjDEOwjAMRe-SGUU4rkPKyN4zVI5tSAG1UtNOiLtDpQ6w_vfef7me16X0a7W5H9SdHbjD75ZZHjZuQO883iYv07jMQ_ab4ndafTepPS-7-3dQuJZvbZiiJIRGYkumdmVCzIgUkh4xRGJpKCemGFQinKCFNgWCIKQGEdz7A8zFNuE:1nwo5o:QxSFggLn-vsTCYFuSuUAMW3al1AHztpH5bUZkg872qI	2022-06-16 11:54:40.661005-05
luv8et4u9t2jfq1ezszf5s2olfdl5ash	.eJxVjDEOwjAMRe-SGUU4rkPKyN4zVI5tSAG1UtNOiLtDpQ6w_vfef7me16X0a7W5H9SdHbjD75ZZHjZuQO883iYv07jMQ_ab4ndafTepPS-7-3dQuJZvbZiiJIRGYkumdmVCzIgUkh4xRGJpKCemGFQinKCFNgWCIKQGEdz7A8zFNuE:1nxBip:-WB6KJDKzKw9HO3FeqQ3zgN2QU61UBHDn_zCEZyAUMI	2022-06-17 13:08:31.715-05
29u6f19yi7kyhz7mm614ellabsyy43er	.eJxVjDEOwjAMRe-SGUU4rkPKyN4zVI5tSAG1UtNOiLtDpQ6w_vfef7me16X0a7W5H9SdHbjD75ZZHjZuQO883iYv07jMQ_ab4ndafTepPS-7-3dQuJZvbZiiJIRGYkumdmVCzIgUkh4xRGJpKCemGFQinKCFNgWCIKQGEdz7A8zFNuE:1nxhaA:goXSuy8RfqF6BLpfqcysgIPRnLJnRKb-Nzfdqj200yA	2022-06-18 23:09:42.940958-05
70hwhtpksyl9h2yz8v08k281p1jbtpum	.eJxVjDEOwjAMRe-SGUU4rkPKyN4zVI5tSAG1UtNOiLtDpQ6w_vfef7me16X0a7W5H9SdHbjD75ZZHjZuQO883iYv07jMQ_ab4ndafTepPS-7-3dQuJZvbZiiJIRGYkumdmVCzIgUkh4xRGJpKCemGFQinKCFNgWCIKQGEdz7A8zFNuE:1nxiMQ:ifrx6EHf9TvGqzFNgbfwUEj22fHWdsfOfWjGzVZ90MA	2022-06-18 23:59:34.117068-05
r18wk7uka368beqxuai15zbifaqx4x1s	.eJxVjDEOwjAMRe-SGUU4rkPKyN4zVI5tSAG1UtNOiLtDpQ6w_vfef7me16X0a7W5H9SdHbjD75ZZHjZuQO883iYv07jMQ_ab4ndafTepPS-7-3dQuJZvbZiiJIRGYkumdmVCzIgUkh4xRGJpKCemGFQinKCFNgWCIKQGEdz7A8zFNuE:1nxiPf:r4awwnXMvWRcXC7SGkHsw2wbNCrqb_8E5DY-CWOl-WI	2022-06-19 00:02:55.094582-05
ibrhiscd4yto3il5ca9ymn4whfuccusr	.eJxVjDEOwjAMRe-SGUU4rkPKyN4zVI5tSAG1UtNOiLtDpQ6w_vfef7me16X0a7W5H9SdHbjD75ZZHjZuQO883iYv07jMQ_ab4ndafTepPS-7-3dQuJZvbZiiJIRGYkumdmVCzIgUkh4xRGJpKCemGFQinKCFNgWCIKQGEdz7A8zFNuE:1nxiWu:3K1GaZ3GUdeSnQpKtqBSVyuyPj3gKPqa5J_TFfRN8Xw	2022-06-19 00:10:24.193133-05
m7v4eobfwp7v0fkcjqg4vcbpqkcgxw67	.eJxVjDsOwyAQRO9CHSHAfEzK9D4DWnYhOIlAMnYV5e6xJRdJOfPezJsF2NYStp6WMBO7MsUuv10EfKZ6AHpAvTeOra7LHPmh8JN2PjVKr9vp_h0U6GVfS4kajSaDY86jJI1Kagtkncgx5T36TMaLLAYhB4wu-cGB0hGiswYs-3wB79Q4KQ:1ny4Ua:Ybk7t1B4rf643UmphZINP9R8xOnkZ8PAfzGedORRp40	2022-06-19 23:37:28.682331-05
n09xa6j81b8atk74cvkm6k39lykyqp5s	.eJxVjDsOwyAQRO9CHSHAfEzK9D4DWnYhOIlAMnYV5e6xJRdJOfPezJsF2NYStp6WMBO7MsUuv10EfKZ6AHpAvTeOra7LHPmh8JN2PjVKr9vp_h0U6GVfS4kajSaDY86jJI1Kagtkncgx5T36TMaLLAYhB4wu-cGB0hGiswYs-3wB79Q4KQ:1nyOhY:hLS1s8b63KQB7rW8TM_sWCdI-Xnk9rt-nQBwBnIjbAU	2022-06-20 21:12:12.118137-05
jmkbo74fjwc2ndvf1q30fwjsg7voe9va	.eJxVjDsOwyAQRO9CHSHAfEzK9D4DWnYhOIlAMnYV5e6xJRdJOfPezJsF2NYStp6WMBO7MsUuv10EfKZ6AHpAvTeOra7LHPmh8JN2PjVKr9vp_h0U6GVfS4kajSaDY86jJI1Kagtkncgx5T36TMaLLAYhB4wu-cGB0hGiswYs-3wB79Q4KQ:1nydD2:hHuYd3_pTCYWa_IX2gIIJ2XRbzNWKhpEkeNSiHMIU1c	2022-06-21 12:41:40.430997-05
mr4gyxxdmowc17n980lxc9hgvumiz3e6	.eJxVjDsOwyAQRO9CHSHAfEzK9D4DWnYhOIlAMnYV5e6xJRdJOfPezJsF2NYStp6WMBO7MsUuv10EfKZ6AHpAvTeOra7LHPmh8JN2PjVKr9vp_h0U6GVfS4kajSaDY86jJI1Kagtkncgx5T36TMaLLAYhB4wu-cGB0hGiswYs-3wB79Q4KQ:1nydLo:KZ7CR66PadWIPMafpqGeaUWu6iZoPpRmoz7wfH1_khk	2022-06-21 12:50:44.928818-05
br3hyz59kgfs35y3s2u0dacj65k9rrrq	.eJxVjEEOwiAQRe_C2pBCGRhduvcMBJhBqgaS0q6Md7dNutDtf--_t_BhXYpfO89-InERWpx-txjSk-sO6BHqvcnU6jJPUe6KPGiXt0b8uh7uX6CEXrY3GCRHDjErsspqjCPQcMaoQGFCjlvKZcQx5IFHyA60iWwDAiVKBsXnC9nkOCA:1nylmx:ET9w3t7Vcbu21iN8xM1Z5TyX9BrtyVxQmhEad_FpAGA	2022-06-21 21:51:19.875084-05
xpw7l3gj605r1kbmw99vdssh98wlskzs	.eJxVjDsOwjAQBe_iGlmO4y8lPWew1rtrHECOFCcV4u4QKQW0b2beSyTY1pq2zkuaSJyFFqffLQM-uO2A7tBus8S5rcuU5a7Ig3Z5nYmfl8P9O6jQ67e2gSPrQSuP6FCH7ABiGbSGwJTB-2y8ZVI4lliKccGzCUbFMnoqSFa8P_GeOH0:1nz0An:r0Z3mNSaj9LPgywW6cWK8epLF36WuLTrIUpH3j0I6MQ	2022-06-22 13:12:53.044853-05
\.


--
-- TOC entry 3276 (class 0 OID 68565)
-- Dependencies: 253
-- Data for Name: jet_bookmark; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jet_bookmark (id, url, title, user_id, date_add) FROM stdin;
\.


--
-- TOC entry 3278 (class 0 OID 68573)
-- Dependencies: 255
-- Data for Name: jet_pinnedapplication; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jet_pinnedapplication (id, app_label, user_id, date_add) FROM stdin;
\.


--
-- TOC entry 3319 (class 0 OID 0)
-- Dependencies: 215
-- Name: SIIUP_CAREER_CAT_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SIIUP_CAREER_CAT_id_seq"', 10, true);


--
-- TOC entry 3320 (class 0 OID 0)
-- Dependencies: 217
-- Name: SIIUP_CYCLE_CAT_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SIIUP_CYCLE_CAT_id_seq"', 1, true);


--
-- TOC entry 3321 (class 0 OID 0)
-- Dependencies: 219
-- Name: SIIUP_GROUP_CAT_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SIIUP_GROUP_CAT_id_seq"', 14, true);


--
-- TOC entry 3322 (class 0 OID 0)
-- Dependencies: 231
-- Name: SIIUP_MODALITY_CAT_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SIIUP_MODALITY_CAT_id_seq"', 1, true);


--
-- TOC entry 3323 (class 0 OID 0)
-- Dependencies: 229
-- Name: SIIUP_PERIOD_CAT_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SIIUP_PERIOD_CAT_id_seq"', 3, true);


--
-- TOC entry 3324 (class 0 OID 0)
-- Dependencies: 221
-- Name: SIIUP_QUARTER_CAT_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SIIUP_QUARTER_CAT_id_seq"', 11, true);


--
-- TOC entry 3325 (class 0 OID 0)
-- Dependencies: 223
-- Name: SIIUP_SHIFT_CAT_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SIIUP_SHIFT_CAT_id_seq"', 2, true);


--
-- TOC entry 3326 (class 0 OID 0)
-- Dependencies: 227
-- Name: SIIUP_SUBJECT_CAT_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SIIUP_SUBJECT_CAT_id_seq"', 26, true);


--
-- TOC entry 3327 (class 0 OID 0)
-- Dependencies: 234
-- Name: SIIUP_TEACHER_CAT_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SIIUP_TEACHER_CAT_id_seq"', 16, true);


--
-- TOC entry 3328 (class 0 OID 0)
-- Dependencies: 250
-- Name: SIUUP_ALUM_PRATICES_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SIUUP_ALUM_PRATICES_id_seq"', 49, true);


--
-- TOC entry 3329 (class 0 OID 0)
-- Dependencies: 236
-- Name: SIUUP_CATEGORIES_EQUIPMENT_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SIUUP_CATEGORIES_EQUIPMENT_id_seq"', 6, true);


--
-- TOC entry 3330 (class 0 OID 0)
-- Dependencies: 238
-- Name: SIUUP_EQUIPMENT_GENERAL_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SIUUP_EQUIPMENT_GENERAL_id_seq"', 26, true);


--
-- TOC entry 3331 (class 0 OID 0)
-- Dependencies: 240
-- Name: SIUUP_LABORATORIES_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SIUUP_LABORATORIES_id_seq"', 1, true);


--
-- TOC entry 3332 (class 0 OID 0)
-- Dependencies: 242
-- Name: SIUUP_PROGRAMS_CAT_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SIUUP_PROGRAMS_CAT_id_seq"', 1, false);


--
-- TOC entry 3333 (class 0 OID 0)
-- Dependencies: 244
-- Name: SIUUP_SCHEDULE_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SIUUP_SCHEDULE_id_seq"', 27, true);


--
-- TOC entry 3334 (class 0 OID 0)
-- Dependencies: 246
-- Name: SIUUP_STATUS_EQUIPMENT_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SIUUP_STATUS_EQUIPMENT_id_seq"', 3, true);


--
-- TOC entry 3335 (class 0 OID 0)
-- Dependencies: 225
-- Name: SIUUP_STATUS_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SIUUP_STATUS_id_seq"', 9, true);


--
-- TOC entry 3336 (class 0 OID 0)
-- Dependencies: 248
-- Name: SIUUP_TEACHER_PRACTICES_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SIUUP_TEACHER_PRACTICES_id_seq"', 51, true);


--
-- TOC entry 3337 (class 0 OID 0)
-- Dependencies: 202
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3338 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3339 (class 0 OID 0)
-- Dependencies: 200
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 240, true);


--
-- TOC entry 3340 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3341 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- TOC entry 3342 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3343 (class 0 OID 0)
-- Dependencies: 256
-- Name: dashboard_userdashboardmodule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dashboard_userdashboardmodule_id_seq', 10, true);


--
-- TOC entry 3344 (class 0 OID 0)
-- Dependencies: 212
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 425, true);


--
-- TOC entry 3345 (class 0 OID 0)
-- Dependencies: 198
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 60, true);


--
-- TOC entry 3346 (class 0 OID 0)
-- Dependencies: 196
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 51, true);


--
-- TOC entry 3347 (class 0 OID 0)
-- Dependencies: 252
-- Name: jet_bookmark_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jet_bookmark_id_seq', 1, false);


--
-- TOC entry 3348 (class 0 OID 0)
-- Dependencies: 254
-- Name: jet_pinnedapplication_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jet_pinnedapplication_id_seq', 1, false);


--
-- TOC entry 2993 (class 2606 OID 68223)
-- Name: LABS_ALUMN_CAT SIIUP_ALUMN_CAT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_ALUMN_CAT"
    ADD CONSTRAINT "SIIUP_ALUMN_CAT_pkey" PRIMARY KEY (enrollment);


--
-- TOC entry 2940 (class 2606 OID 67876)
-- Name: LABS_CAREER_CAT SIIUP_CAREER_CAT_academic_program_name_gdp_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_CAREER_CAT"
    ADD CONSTRAINT "SIIUP_CAREER_CAT_academic_program_name_gdp_key" UNIQUE (academic_program_name_gdp);


--
-- TOC entry 2942 (class 2606 OID 67872)
-- Name: LABS_CAREER_CAT SIIUP_CAREER_CAT_academic_program_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_CAREER_CAT"
    ADD CONSTRAINT "SIIUP_CAREER_CAT_academic_program_name_key" UNIQUE (academic_program_name);


--
-- TOC entry 2945 (class 2606 OID 67874)
-- Name: LABS_CAREER_CAT SIIUP_CAREER_CAT_homosigla_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_CAREER_CAT"
    ADD CONSTRAINT "SIIUP_CAREER_CAT_homosigla_key" UNIQUE (homosigla);


--
-- TOC entry 2948 (class 2606 OID 67870)
-- Name: LABS_CAREER_CAT SIIUP_CAREER_CAT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_CAREER_CAT"
    ADD CONSTRAINT "SIIUP_CAREER_CAT_pkey" PRIMARY KEY (id);


--
-- TOC entry 2952 (class 2606 OID 67898)
-- Name: LABS_CYCLE_CAT SIIUP_CYCLE_CAT_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_CYCLE_CAT"
    ADD CONSTRAINT "SIIUP_CYCLE_CAT_name_key" UNIQUE (name);


--
-- TOC entry 2954 (class 2606 OID 67896)
-- Name: LABS_CYCLE_CAT SIIUP_CYCLE_CAT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_CYCLE_CAT"
    ADD CONSTRAINT "SIIUP_CYCLE_CAT_pkey" PRIMARY KEY (id);


--
-- TOC entry 2959 (class 2606 OID 67916)
-- Name: LABS_GROUP_CAT SIIUP_GROUP_CAT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_GROUP_CAT"
    ADD CONSTRAINT "SIIUP_GROUP_CAT_pkey" PRIMARY KEY (id);


--
-- TOC entry 2988 (class 2606 OID 68020)
-- Name: LABS_MODALITY_CAT SIIUP_MODALITY_CAT_description_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_MODALITY_CAT"
    ADD CONSTRAINT "SIIUP_MODALITY_CAT_description_key" UNIQUE (description);


--
-- TOC entry 2990 (class 2606 OID 68018)
-- Name: LABS_MODALITY_CAT SIIUP_MODALITY_CAT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_MODALITY_CAT"
    ADD CONSTRAINT "SIIUP_MODALITY_CAT_pkey" PRIMARY KEY (id);


--
-- TOC entry 2984 (class 2606 OID 68010)
-- Name: LABS_PERIOD_CAT SIIUP_PERIOD_CAT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_PERIOD_CAT"
    ADD CONSTRAINT "SIIUP_PERIOD_CAT_pkey" PRIMARY KEY (id);


--
-- TOC entry 2965 (class 2606 OID 67926)
-- Name: LABS_QUARTER_CAT SIIUP_QUARTER_CAT_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_QUARTER_CAT"
    ADD CONSTRAINT "SIIUP_QUARTER_CAT_name_key" UNIQUE (name);


--
-- TOC entry 2967 (class 2606 OID 67924)
-- Name: LABS_QUARTER_CAT SIIUP_QUARTER_CAT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_QUARTER_CAT"
    ADD CONSTRAINT "SIIUP_QUARTER_CAT_pkey" PRIMARY KEY (id);


--
-- TOC entry 2969 (class 2606 OID 67944)
-- Name: LABS_SHIFT_CAT SIIUP_SHIFT_CAT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_SHIFT_CAT"
    ADD CONSTRAINT "SIIUP_SHIFT_CAT_pkey" PRIMARY KEY (id);


--
-- TOC entry 2979 (class 2606 OID 67992)
-- Name: LABS_SUBJECT_CAT SIIUP_SUBJECT_CAT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_SUBJECT_CAT"
    ADD CONSTRAINT "SIIUP_SUBJECT_CAT_pkey" PRIMARY KEY (id);


--
-- TOC entry 2996 (class 2606 OID 68288)
-- Name: LABS_TEACHER_CAT SIIUP_TEACHER_CAT_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_TEACHER_CAT"
    ADD CONSTRAINT "SIIUP_TEACHER_CAT_email_key" UNIQUE (email);


--
-- TOC entry 2998 (class 2606 OID 68286)
-- Name: LABS_TEACHER_CAT SIIUP_TEACHER_CAT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_TEACHER_CAT"
    ADD CONSTRAINT "SIIUP_TEACHER_CAT_pkey" PRIMARY KEY (id);


--
-- TOC entry 3041 (class 2606 OID 68388)
-- Name: LABS_ALUM_PRATICES SIUUP_ALUM_PRATICES_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_ALUM_PRATICES"
    ADD CONSTRAINT "SIUUP_ALUM_PRATICES_pkey" PRIMARY KEY (id);


--
-- TOC entry 3002 (class 2606 OID 68305)
-- Name: LABS_CATEGORIES_EQUIPMENT SIUUP_CATEGORIES_EQUIPMENT_desciption_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_CATEGORIES_EQUIPMENT"
    ADD CONSTRAINT "SIUUP_CATEGORIES_EQUIPMENT_desciption_key" UNIQUE (desciption);


--
-- TOC entry 3004 (class 2606 OID 68303)
-- Name: LABS_CATEGORIES_EQUIPMENT SIUUP_CATEGORIES_EQUIPMENT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_CATEGORIES_EQUIPMENT"
    ADD CONSTRAINT "SIUUP_CATEGORIES_EQUIPMENT_pkey" PRIMARY KEY (id);


--
-- TOC entry 3008 (class 2606 OID 68316)
-- Name: LABS_EQUIPMENT_GENERAL SIUUP_EQUIPMENT_GENERAL_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_EQUIPMENT_GENERAL"
    ADD CONSTRAINT "SIUUP_EQUIPMENT_GENERAL_pkey" PRIMARY KEY (id);


--
-- TOC entry 3012 (class 2606 OID 68326)
-- Name: LABS_LABORATORIES SIUUP_LABORATORIES_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_LABORATORIES"
    ADD CONSTRAINT "SIUUP_LABORATORIES_name_key" UNIQUE (name);


--
-- TOC entry 3014 (class 2606 OID 68324)
-- Name: LABS_LABORATORIES SIUUP_LABORATORIES_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_LABORATORIES"
    ADD CONSTRAINT "SIUUP_LABORATORIES_pkey" PRIMARY KEY (id);


--
-- TOC entry 3016 (class 2606 OID 68334)
-- Name: LABS_PROGRAMS_CAT SIUUP_PROGRAMS_CAT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_PROGRAMS_CAT"
    ADD CONSTRAINT "SIUUP_PROGRAMS_CAT_pkey" PRIMARY KEY (id);


--
-- TOC entry 3022 (class 2606 OID 68344)
-- Name: LABS_SCHEDULE SIUUP_SCHEDULE_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_SCHEDULE"
    ADD CONSTRAINT "SIUUP_SCHEDULE_pkey" PRIMARY KEY (id);


--
-- TOC entry 3028 (class 2606 OID 68354)
-- Name: LABS_STATUS_EQUIPMENT SIUUP_STATUS_EQUIPMENT_desciption_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_STATUS_EQUIPMENT"
    ADD CONSTRAINT "SIUUP_STATUS_EQUIPMENT_desciption_key" UNIQUE (desciption);


--
-- TOC entry 3030 (class 2606 OID 68352)
-- Name: LABS_STATUS_EQUIPMENT SIUUP_STATUS_EQUIPMENT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_STATUS_EQUIPMENT"
    ADD CONSTRAINT "SIUUP_STATUS_EQUIPMENT_pkey" PRIMARY KEY (id);


--
-- TOC entry 2972 (class 2606 OID 67956)
-- Name: LABS_STATUS SIUUP_STATUS_description_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_STATUS"
    ADD CONSTRAINT "SIUUP_STATUS_description_key" UNIQUE (description);


--
-- TOC entry 2974 (class 2606 OID 67952)
-- Name: LABS_STATUS SIUUP_STATUS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_STATUS"
    ADD CONSTRAINT "SIUUP_STATUS_pkey" PRIMARY KEY (id);


--
-- TOC entry 2977 (class 2606 OID 67954)
-- Name: LABS_STATUS SIUUP_STATUS_status_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_STATUS"
    ADD CONSTRAINT "SIUUP_STATUS_status_key" UNIQUE (status);


--
-- TOC entry 3034 (class 2606 OID 68362)
-- Name: LABS_TEACHER_PRACTICES SIUUP_TEACHER_PRACTICES_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_TEACHER_PRACTICES"
    ADD CONSTRAINT "SIUUP_TEACHER_PRACTICES_pkey" PRIMARY KEY (id);


--
-- TOC entry 2903 (class 2606 OID 67851)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2908 (class 2606 OID 67778)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2911 (class 2606 OID 67741)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2905 (class 2606 OID 67731)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2898 (class 2606 OID 67769)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2900 (class 2606 OID 67723)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2919 (class 2606 OID 67759)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2922 (class 2606 OID 67793)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2913 (class 2606 OID 67749)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2925 (class 2606 OID 67767)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2928 (class 2606 OID 67807)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2916 (class 2606 OID 67845)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3051 (class 2606 OID 68604)
-- Name: dashboard_userdashboardmodule dashboard_userdashboardmodule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboard_userdashboardmodule
    ADD CONSTRAINT dashboard_userdashboardmodule_pkey PRIMARY KEY (id);


--
-- TOC entry 2931 (class 2606 OID 67831)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2893 (class 2606 OID 67715)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2895 (class 2606 OID 67713)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2891 (class 2606 OID 67705)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2935 (class 2606 OID 67860)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3045 (class 2606 OID 68570)
-- Name: jet_bookmark jet_bookmark_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jet_bookmark
    ADD CONSTRAINT jet_bookmark_pkey PRIMARY KEY (id);


--
-- TOC entry 3048 (class 2606 OID 68578)
-- Name: jet_pinnedapplication jet_pinnedapplication_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jet_pinnedapplication
    ADD CONSTRAINT jet_pinnedapplication_pkey PRIMARY KEY (id);


--
-- TOC entry 2937 (class 1259 OID 68092)
-- Name: SIIUP_CAREER_CAT_academic_program_name_0018feb1_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIIUP_CAREER_CAT_academic_program_name_0018feb1_like" ON public."LABS_CAREER_CAT" USING btree (academic_program_name varchar_pattern_ops);


--
-- TOC entry 2938 (class 1259 OID 68094)
-- Name: SIIUP_CAREER_CAT_academic_program_name_gdp_747f3ba3_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIIUP_CAREER_CAT_academic_program_name_gdp_747f3ba3_like" ON public."LABS_CAREER_CAT" USING btree (academic_program_name_gdp varchar_pattern_ops);


--
-- TOC entry 2943 (class 1259 OID 68093)
-- Name: SIIUP_CAREER_CAT_homosigla_1af38af9_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIIUP_CAREER_CAT_homosigla_1af38af9_like" ON public."LABS_CAREER_CAT" USING btree (homosigla varchar_pattern_ops);


--
-- TOC entry 2946 (class 1259 OID 68217)
-- Name: SIIUP_CAREER_CAT_modality_id_0a39ba0f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIIUP_CAREER_CAT_modality_id_0a39ba0f" ON public."LABS_CAREER_CAT" USING btree (modality_id);


--
-- TOC entry 2949 (class 1259 OID 68218)
-- Name: SIIUP_CAREER_CAT_status_id_f96f3930; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIIUP_CAREER_CAT_status_id_f96f3930" ON public."LABS_CAREER_CAT" USING btree (status_id);


--
-- TOC entry 2950 (class 1259 OID 68097)
-- Name: SIIUP_CYCLE_CAT_name_3386e2b2_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIIUP_CYCLE_CAT_name_3386e2b2_like" ON public."LABS_CYCLE_CAT" USING btree (name varchar_pattern_ops);


--
-- TOC entry 2955 (class 1259 OID 68204)
-- Name: SIIUP_CYCLE_CAT_status_id_46f571ce; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIIUP_CYCLE_CAT_status_id_46f571ce" ON public."LABS_CYCLE_CAT" USING btree (status_id);


--
-- TOC entry 2956 (class 1259 OID 68109)
-- Name: SIIUP_GROUP_CAT_career_id_0dc07730; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIIUP_GROUP_CAT_career_id_0dc07730" ON public."LABS_GROUP_CAT" USING btree (career_id);


--
-- TOC entry 2957 (class 1259 OID 68199)
-- Name: SIIUP_GROUP_CAT_period_id_cdedacba; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIIUP_GROUP_CAT_period_id_cdedacba" ON public."LABS_GROUP_CAT" USING btree (period_id);


--
-- TOC entry 2960 (class 1259 OID 68200)
-- Name: SIIUP_GROUP_CAT_quarter_id_62ab8649; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIIUP_GROUP_CAT_quarter_id_62ab8649" ON public."LABS_GROUP_CAT" USING btree (quarter_id);


--
-- TOC entry 2961 (class 1259 OID 68201)
-- Name: SIIUP_GROUP_CAT_shift_id_58d39466; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIIUP_GROUP_CAT_shift_id_58d39466" ON public."LABS_GROUP_CAT" USING btree (shift_id);


--
-- TOC entry 2962 (class 1259 OID 68202)
-- Name: SIIUP_GROUP_CAT_status_id_605142e2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIIUP_GROUP_CAT_status_id_605142e2" ON public."LABS_GROUP_CAT" USING btree (status_id);


--
-- TOC entry 2986 (class 1259 OID 68177)
-- Name: SIIUP_MODALITY_CAT_description_5c46923b_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIIUP_MODALITY_CAT_description_5c46923b_like" ON public."LABS_MODALITY_CAT" USING btree (description varchar_pattern_ops);


--
-- TOC entry 2991 (class 1259 OID 68178)
-- Name: SIIUP_MODALITY_CAT_status_id_c6769341; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIIUP_MODALITY_CAT_status_id_c6769341" ON public."LABS_MODALITY_CAT" USING btree (status_id);


--
-- TOC entry 2982 (class 1259 OID 68170)
-- Name: SIIUP_PERIOD_CAT_cycle_id_ba79930f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIIUP_PERIOD_CAT_cycle_id_ba79930f" ON public."LABS_PERIOD_CAT" USING btree (cycle_id);


--
-- TOC entry 2985 (class 1259 OID 68171)
-- Name: SIIUP_PERIOD_CAT_status_id_2eb79177; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIIUP_PERIOD_CAT_status_id_2eb79177" ON public."LABS_PERIOD_CAT" USING btree (status_id);


--
-- TOC entry 2963 (class 1259 OID 68111)
-- Name: SIIUP_QUARTER_CAT_name_433a006f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIIUP_QUARTER_CAT_name_433a006f_like" ON public."LABS_QUARTER_CAT" USING btree (name varchar_pattern_ops);


--
-- TOC entry 2980 (class 1259 OID 68149)
-- Name: SIIUP_SUBJECT_CAT_quarter_id_f47e038c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIIUP_SUBJECT_CAT_quarter_id_f47e038c" ON public."LABS_SUBJECT_CAT" USING btree (quarter_id);


--
-- TOC entry 2981 (class 1259 OID 68150)
-- Name: SIIUP_SUBJECT_CAT_status_id_8dc978d1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIIUP_SUBJECT_CAT_status_id_8dc978d1" ON public."LABS_SUBJECT_CAT" USING btree (status_id);


--
-- TOC entry 2994 (class 1259 OID 68294)
-- Name: SIIUP_TEACHER_CAT_email_5f8edf5c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIIUP_TEACHER_CAT_email_5f8edf5c_like" ON public."LABS_TEACHER_CAT" USING btree (email varchar_pattern_ops);


--
-- TOC entry 2999 (class 1259 OID 68295)
-- Name: SIIUP_TEACHER_CAT_teacher_status_id_2f733f98; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIIUP_TEACHER_CAT_teacher_status_id_2f733f98" ON public."LABS_TEACHER_CAT" USING btree (teacher_status_id);


--
-- TOC entry 3037 (class 1259 OID 68498)
-- Name: SIUUP_ALUM_PRATICES_enrollment_id_013d9f53; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIUUP_ALUM_PRATICES_enrollment_id_013d9f53" ON public."LABS_ALUM_PRATICES" USING btree (enrollment_id);


--
-- TOC entry 3038 (class 1259 OID 68499)
-- Name: SIUUP_ALUM_PRATICES_equipment_id_2cc92772; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIUUP_ALUM_PRATICES_equipment_id_2cc92772" ON public."LABS_ALUM_PRATICES" USING btree (equipment_id);


--
-- TOC entry 3039 (class 1259 OID 68500)
-- Name: SIUUP_ALUM_PRATICES_laboratory_id_9a89237d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIUUP_ALUM_PRATICES_laboratory_id_9a89237d" ON public."LABS_ALUM_PRATICES" USING btree (laboratory_id);


--
-- TOC entry 3042 (class 1259 OID 68501)
-- Name: SIUUP_ALUM_PRATICES_program_id_3a67132a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIUUP_ALUM_PRATICES_program_id_3a67132a" ON public."LABS_ALUM_PRATICES" USING btree (program_id);


--
-- TOC entry 3043 (class 1259 OID 68502)
-- Name: SIUUP_ALUM_PRATICES_schedule_id_1e191b37; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIUUP_ALUM_PRATICES_schedule_id_1e191b37" ON public."LABS_ALUM_PRATICES" USING btree (schedule_id);


--
-- TOC entry 3000 (class 1259 OID 68389)
-- Name: SIUUP_CATEGORIES_EQUIPMENT_desciption_b5c51399_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIUUP_CATEGORIES_EQUIPMENT_desciption_b5c51399_like" ON public."LABS_CATEGORIES_EQUIPMENT" USING btree (desciption varchar_pattern_ops);


--
-- TOC entry 3005 (class 1259 OID 68395)
-- Name: SIUUP_EQUIPMENT_GENERAL_category_id_2b69a292; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIUUP_EQUIPMENT_GENERAL_category_id_2b69a292" ON public."LABS_EQUIPMENT_GENERAL" USING btree (category_id);


--
-- TOC entry 3006 (class 1259 OID 68471)
-- Name: SIUUP_EQUIPMENT_GENERAL_laboratory_id_04797722; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIUUP_EQUIPMENT_GENERAL_laboratory_id_04797722" ON public."LABS_EQUIPMENT_GENERAL" USING btree (laboratory_id);


--
-- TOC entry 3009 (class 1259 OID 68472)
-- Name: SIUUP_EQUIPMENT_GENERAL_status_id_1a720619; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIUUP_EQUIPMENT_GENERAL_status_id_1a720619" ON public."LABS_EQUIPMENT_GENERAL" USING btree (status_id);


--
-- TOC entry 3010 (class 1259 OID 68396)
-- Name: SIUUP_LABORATORIES_name_4e733c99_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIUUP_LABORATORIES_name_4e733c99_like" ON public."LABS_LABORATORIES" USING btree (name varchar_pattern_ops);


--
-- TOC entry 3017 (class 1259 OID 68515)
-- Name: SIUUP_PROGRAMS_CAT_status_id_47e60d5f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIUUP_PROGRAMS_CAT_status_id_47e60d5f" ON public."LABS_PROGRAMS_CAT" USING btree (status_id);


--
-- TOC entry 3018 (class 1259 OID 68428)
-- Name: SIUUP_SCHEDULE_Laboratory_id_ed36a840; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIUUP_SCHEDULE_Laboratory_id_ed36a840" ON public."LABS_SCHEDULE" USING btree (laboratory_id);


--
-- TOC entry 3019 (class 1259 OID 68429)
-- Name: SIUUP_SCHEDULE_group_id_2c573322; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIUUP_SCHEDULE_group_id_2c573322" ON public."LABS_SCHEDULE" USING btree (group_id);


--
-- TOC entry 3020 (class 1259 OID 68430)
-- Name: SIUUP_SCHEDULE_period_id_615165e4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIUUP_SCHEDULE_period_id_615165e4" ON public."LABS_SCHEDULE" USING btree (period_id);


--
-- TOC entry 3023 (class 1259 OID 68431)
-- Name: SIUUP_SCHEDULE_status_id_ca9f54d9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIUUP_SCHEDULE_status_id_ca9f54d9" ON public."LABS_SCHEDULE" USING btree (status_id);


--
-- TOC entry 3024 (class 1259 OID 68432)
-- Name: SIUUP_SCHEDULE_subject_id_14a0271b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIUUP_SCHEDULE_subject_id_14a0271b" ON public."LABS_SCHEDULE" USING btree (subject_id);


--
-- TOC entry 3025 (class 1259 OID 68433)
-- Name: SIUUP_SCHEDULE_teacher_id_14d752fe; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIUUP_SCHEDULE_teacher_id_14d752fe" ON public."LABS_SCHEDULE" USING btree (teacher_id);


--
-- TOC entry 3026 (class 1259 OID 68434)
-- Name: SIUUP_STATUS_EQUIPMENT_desciption_5d5e9a90_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIUUP_STATUS_EQUIPMENT_desciption_5d5e9a90_like" ON public."LABS_STATUS_EQUIPMENT" USING btree (desciption varchar_pattern_ops);


--
-- TOC entry 2970 (class 1259 OID 68114)
-- Name: SIUUP_STATUS_description_4be949fe_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIUUP_STATUS_description_4be949fe_like" ON public."LABS_STATUS" USING btree (description varchar_pattern_ops);


--
-- TOC entry 2975 (class 1259 OID 68113)
-- Name: SIUUP_STATUS_status_735db4b6_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIUUP_STATUS_status_735db4b6_like" ON public."LABS_STATUS" USING btree (status varchar_pattern_ops);


--
-- TOC entry 3031 (class 1259 OID 68455)
-- Name: SIUUP_TEACHER_PRACTICES_equipment_id_400c829d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIUUP_TEACHER_PRACTICES_equipment_id_400c829d" ON public."LABS_TEACHER_PRACTICES" USING btree (equipment_id);


--
-- TOC entry 3032 (class 1259 OID 68456)
-- Name: SIUUP_TEACHER_PRACTICES_laboratory_id_20067035; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIUUP_TEACHER_PRACTICES_laboratory_id_20067035" ON public."LABS_TEACHER_PRACTICES" USING btree (laboratory_id);


--
-- TOC entry 3035 (class 1259 OID 68457)
-- Name: SIUUP_TEACHER_PRACTICES_schedule_id_e7877ed0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIUUP_TEACHER_PRACTICES_schedule_id_e7877ed0" ON public."LABS_TEACHER_PRACTICES" USING btree (schedule_id);


--
-- TOC entry 3036 (class 1259 OID 68458)
-- Name: SIUUP_TEACHER_PRACTICES_teacher_id_3b30a282; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "SIUUP_TEACHER_PRACTICES_teacher_id_3b30a282" ON public."LABS_TEACHER_PRACTICES" USING btree (teacher_id);


--
-- TOC entry 2901 (class 1259 OID 67852)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2906 (class 1259 OID 67789)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2909 (class 1259 OID 67790)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2896 (class 1259 OID 67775)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2917 (class 1259 OID 67805)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2920 (class 1259 OID 67804)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2923 (class 1259 OID 67819)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2926 (class 1259 OID 67818)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2914 (class 1259 OID 67846)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3052 (class 1259 OID 68605)
-- Name: dashboard_userdashboardmodule_user_id_97c13132; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX dashboard_userdashboardmodule_user_id_97c13132 ON public.dashboard_userdashboardmodule USING btree (user_id);


--
-- TOC entry 2929 (class 1259 OID 67842)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2932 (class 1259 OID 67843)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2933 (class 1259 OID 67862)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2936 (class 1259 OID 67861)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3046 (class 1259 OID 68584)
-- Name: jet_bookmark_user_id_8efdc332; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX jet_bookmark_user_id_8efdc332 ON public.jet_bookmark USING btree (user_id);


--
-- TOC entry 3049 (class 1259 OID 68590)
-- Name: jet_pinnedapplication_user_id_7765bcf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX jet_pinnedapplication_user_id_7765bcf9 ON public.jet_pinnedapplication USING btree (user_id);


--
-- TOC entry 3062 (class 2606 OID 68082)
-- Name: LABS_CAREER_CAT SIIUP_CAREER_CAT_modality_id_0a39ba0f_fk_SIIUP_MODALITY_CAT_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_CAREER_CAT"
    ADD CONSTRAINT "SIIUP_CAREER_CAT_modality_id_0a39ba0f_fk_SIIUP_MODALITY_CAT_id" FOREIGN KEY (modality_id) REFERENCES public."LABS_MODALITY_CAT"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3063 (class 2606 OID 68516)
-- Name: LABS_CAREER_CAT SIIUP_CAREER_CAT_status_id_f96f3930_fk_SIUUP_STATUS_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_CAREER_CAT"
    ADD CONSTRAINT "SIIUP_CAREER_CAT_status_id_f96f3930_fk_SIUUP_STATUS_id" FOREIGN KEY (status_id) REFERENCES public."LABS_STATUS"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3064 (class 2606 OID 68069)
-- Name: LABS_CYCLE_CAT SIIUP_CYCLE_CAT_status_id_46f571ce_fk_SIUUP_STATUS_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_CYCLE_CAT"
    ADD CONSTRAINT "SIIUP_CYCLE_CAT_status_id_46f571ce_fk_SIUUP_STATUS_id" FOREIGN KEY (status_id) REFERENCES public."LABS_STATUS"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3069 (class 2606 OID 68099)
-- Name: LABS_GROUP_CAT SIIUP_GROUP_CAT_career_id_0dc07730_fk_SIIUP_CAREER_CAT_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_GROUP_CAT"
    ADD CONSTRAINT "SIIUP_GROUP_CAT_career_id_0dc07730_fk_SIIUP_CAREER_CAT_id" FOREIGN KEY (career_id) REFERENCES public."LABS_CAREER_CAT"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3065 (class 2606 OID 68044)
-- Name: LABS_GROUP_CAT SIIUP_GROUP_CAT_period_id_cdedacba_fk_SIIUP_PERIOD_CAT_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_GROUP_CAT"
    ADD CONSTRAINT "SIIUP_GROUP_CAT_period_id_cdedacba_fk_SIIUP_PERIOD_CAT_id" FOREIGN KEY (period_id) REFERENCES public."LABS_PERIOD_CAT"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3066 (class 2606 OID 68049)
-- Name: LABS_GROUP_CAT SIIUP_GROUP_CAT_quarter_id_62ab8649_fk_SIIUP_QUARTER_CAT_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_GROUP_CAT"
    ADD CONSTRAINT "SIIUP_GROUP_CAT_quarter_id_62ab8649_fk_SIIUP_QUARTER_CAT_id" FOREIGN KEY (quarter_id) REFERENCES public."LABS_QUARTER_CAT"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3067 (class 2606 OID 68054)
-- Name: LABS_GROUP_CAT SIIUP_GROUP_CAT_shift_id_58d39466_fk_SIIUP_SHIFT_CAT_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_GROUP_CAT"
    ADD CONSTRAINT "SIIUP_GROUP_CAT_shift_id_58d39466_fk_SIIUP_SHIFT_CAT_id" FOREIGN KEY (shift_id) REFERENCES public."LABS_SHIFT_CAT"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3068 (class 2606 OID 68059)
-- Name: LABS_GROUP_CAT SIIUP_GROUP_CAT_status_id_605142e2_fk_SIUUP_STATUS_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_GROUP_CAT"
    ADD CONSTRAINT "SIIUP_GROUP_CAT_status_id_605142e2_fk_SIUUP_STATUS_id" FOREIGN KEY (status_id) REFERENCES public."LABS_STATUS"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3074 (class 2606 OID 68172)
-- Name: LABS_MODALITY_CAT SIIUP_MODALITY_CAT_status_id_c6769341_fk_SIUUP_STATUS_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_MODALITY_CAT"
    ADD CONSTRAINT "SIIUP_MODALITY_CAT_status_id_c6769341_fk_SIUUP_STATUS_id" FOREIGN KEY (status_id) REFERENCES public."LABS_STATUS"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3072 (class 2606 OID 68160)
-- Name: LABS_PERIOD_CAT SIIUP_PERIOD_CAT_cycle_id_ba79930f_fk_SIIUP_CYCLE_CAT_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_PERIOD_CAT"
    ADD CONSTRAINT "SIIUP_PERIOD_CAT_cycle_id_ba79930f_fk_SIIUP_CYCLE_CAT_id" FOREIGN KEY (cycle_id) REFERENCES public."LABS_CYCLE_CAT"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3073 (class 2606 OID 68165)
-- Name: LABS_PERIOD_CAT SIIUP_PERIOD_CAT_status_id_2eb79177_fk_SIUUP_STATUS_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_PERIOD_CAT"
    ADD CONSTRAINT "SIIUP_PERIOD_CAT_status_id_2eb79177_fk_SIUUP_STATUS_id" FOREIGN KEY (status_id) REFERENCES public."LABS_STATUS"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3070 (class 2606 OID 68129)
-- Name: LABS_SUBJECT_CAT SIIUP_SUBJECT_CAT_quarter_id_f47e038c_fk_SIIUP_QUARTER_CAT_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_SUBJECT_CAT"
    ADD CONSTRAINT "SIIUP_SUBJECT_CAT_quarter_id_f47e038c_fk_SIIUP_QUARTER_CAT_id" FOREIGN KEY (quarter_id) REFERENCES public."LABS_QUARTER_CAT"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3071 (class 2606 OID 68541)
-- Name: LABS_SUBJECT_CAT SIIUP_SUBJECT_CAT_status_id_8dc978d1_fk_SIUUP_STATUS_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_SUBJECT_CAT"
    ADD CONSTRAINT "SIIUP_SUBJECT_CAT_status_id_8dc978d1_fk_SIUUP_STATUS_id" FOREIGN KEY (status_id) REFERENCES public."LABS_STATUS"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3075 (class 2606 OID 68521)
-- Name: LABS_TEACHER_CAT SIIUP_TEACHER_CAT_teacher_status_id_2f733f98_fk_SIUUP_STATUS_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_TEACHER_CAT"
    ADD CONSTRAINT "SIIUP_TEACHER_CAT_teacher_status_id_2f733f98_fk_SIUUP_STATUS_id" FOREIGN KEY (teacher_status_id) REFERENCES public."LABS_STATUS"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3092 (class 2606 OID 72700)
-- Name: LABS_ALUM_PRATICES SIUUP_ALUM_PRATICES_enrollment_id_013d9f53_fk_SIIUP_ALU; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_ALUM_PRATICES"
    ADD CONSTRAINT "SIUUP_ALUM_PRATICES_enrollment_id_013d9f53_fk_SIIUP_ALU" FOREIGN KEY (enrollment_id) REFERENCES public."LABS_ALUMN_CAT"(enrollment) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3093 (class 2606 OID 72705)
-- Name: LABS_ALUM_PRATICES SIUUP_ALUM_PRATICES_equipment_id_2cc92772_fk_SIUUP_EQU; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_ALUM_PRATICES"
    ADD CONSTRAINT "SIUUP_ALUM_PRATICES_equipment_id_2cc92772_fk_SIUUP_EQU" FOREIGN KEY (equipment_id) REFERENCES public."LABS_EQUIPMENT_GENERAL"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3094 (class 2606 OID 72715)
-- Name: LABS_ALUM_PRATICES SIUUP_ALUM_PRATICES_laboratory_id_9a89237d_fk_SIUUP_LAB; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_ALUM_PRATICES"
    ADD CONSTRAINT "SIUUP_ALUM_PRATICES_laboratory_id_9a89237d_fk_SIUUP_LAB" FOREIGN KEY (laboratory_id) REFERENCES public."LABS_LABORATORIES"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3090 (class 2606 OID 68488)
-- Name: LABS_ALUM_PRATICES SIUUP_ALUM_PRATICES_program_id_3a67132a_fk_SIUUP_PRO; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_ALUM_PRATICES"
    ADD CONSTRAINT "SIUUP_ALUM_PRATICES_program_id_3a67132a_fk_SIUUP_PRO" FOREIGN KEY (program_id) REFERENCES public."LABS_PROGRAMS_CAT"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3091 (class 2606 OID 68493)
-- Name: LABS_ALUM_PRATICES SIUUP_ALUM_PRATICES_schedule_id_1e191b37_fk_SIUUP_SCHEDULE_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_ALUM_PRATICES"
    ADD CONSTRAINT "SIUUP_ALUM_PRATICES_schedule_id_1e191b37_fk_SIUUP_SCHEDULE_id" FOREIGN KEY (schedule_id) REFERENCES public."LABS_SCHEDULE"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3078 (class 2606 OID 68390)
-- Name: LABS_EQUIPMENT_GENERAL SIUUP_EQUIPMENT_GENE_category_id_2b69a292_fk_SIUUP_CAT; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_EQUIPMENT_GENERAL"
    ADD CONSTRAINT "SIUUP_EQUIPMENT_GENE_category_id_2b69a292_fk_SIUUP_CAT" FOREIGN KEY (category_id) REFERENCES public."LABS_CATEGORIES_EQUIPMENT"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3076 (class 2606 OID 68371)
-- Name: LABS_EQUIPMENT_GENERAL SIUUP_EQUIPMENT_GENE_laboratory_id_04797722_fk_SIUUP_LAB; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_EQUIPMENT_GENERAL"
    ADD CONSTRAINT "SIUUP_EQUIPMENT_GENE_laboratory_id_04797722_fk_SIUUP_LAB" FOREIGN KEY (laboratory_id) REFERENCES public."LABS_LABORATORIES"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3077 (class 2606 OID 68376)
-- Name: LABS_EQUIPMENT_GENERAL SIUUP_EQUIPMENT_GENE_status_id_1a720619_fk_SIUUP_STA; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_EQUIPMENT_GENERAL"
    ADD CONSTRAINT "SIUUP_EQUIPMENT_GENE_status_id_1a720619_fk_SIUUP_STA" FOREIGN KEY (status_id) REFERENCES public."LABS_STATUS_EQUIPMENT"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3079 (class 2606 OID 68526)
-- Name: LABS_PROGRAMS_CAT SIUUP_PROGRAMS_CAT_status_id_47e60d5f_fk_SIUUP_STA; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_PROGRAMS_CAT"
    ADD CONSTRAINT "SIUUP_PROGRAMS_CAT_status_id_47e60d5f_fk_SIUUP_STA" FOREIGN KEY (status_id) REFERENCES public."LABS_STATUS_EQUIPMENT"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3080 (class 2606 OID 68403)
-- Name: LABS_SCHEDULE SIUUP_SCHEDULE_group_id_2c573322_fk_SIIUP_GROUP_CAT_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_SCHEDULE"
    ADD CONSTRAINT "SIUUP_SCHEDULE_group_id_2c573322_fk_SIIUP_GROUP_CAT_id" FOREIGN KEY (group_id) REFERENCES public."LABS_GROUP_CAT"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3085 (class 2606 OID 68531)
-- Name: LABS_SCHEDULE SIUUP_SCHEDULE_laboratory_id_56224a60_fk_SIUUP_LABORATORIES_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_SCHEDULE"
    ADD CONSTRAINT "SIUUP_SCHEDULE_laboratory_id_56224a60_fk_SIUUP_LABORATORIES_id" FOREIGN KEY (laboratory_id) REFERENCES public."LABS_LABORATORIES"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3081 (class 2606 OID 68408)
-- Name: LABS_SCHEDULE SIUUP_SCHEDULE_period_id_615165e4_fk_SIIUP_PERIOD_CAT_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_SCHEDULE"
    ADD CONSTRAINT "SIUUP_SCHEDULE_period_id_615165e4_fk_SIIUP_PERIOD_CAT_id" FOREIGN KEY (period_id) REFERENCES public."LABS_PERIOD_CAT"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3082 (class 2606 OID 68413)
-- Name: LABS_SCHEDULE SIUUP_SCHEDULE_status_id_ca9f54d9_fk_SIUUP_STATUS_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_SCHEDULE"
    ADD CONSTRAINT "SIUUP_SCHEDULE_status_id_ca9f54d9_fk_SIUUP_STATUS_id" FOREIGN KEY (status_id) REFERENCES public."LABS_STATUS"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3083 (class 2606 OID 68418)
-- Name: LABS_SCHEDULE SIUUP_SCHEDULE_subject_id_14a0271b_fk_SIIUP_SUBJECT_CAT_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_SCHEDULE"
    ADD CONSTRAINT "SIUUP_SCHEDULE_subject_id_14a0271b_fk_SIIUP_SUBJECT_CAT_id" FOREIGN KEY (subject_id) REFERENCES public."LABS_SUBJECT_CAT"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3084 (class 2606 OID 68423)
-- Name: LABS_SCHEDULE SIUUP_SCHEDULE_teacher_id_14d752fe_fk_SIIUP_TEACHER_CAT_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_SCHEDULE"
    ADD CONSTRAINT "SIUUP_SCHEDULE_teacher_id_14d752fe_fk_SIIUP_TEACHER_CAT_id" FOREIGN KEY (teacher_id) REFERENCES public."LABS_TEACHER_CAT"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3089 (class 2606 OID 68536)
-- Name: LABS_TEACHER_PRACTICES SIUUP_TEACHER_PRACTI_equipment_id_400c829d_fk_SIUUP_EQU; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_TEACHER_PRACTICES"
    ADD CONSTRAINT "SIUUP_TEACHER_PRACTI_equipment_id_400c829d_fk_SIUUP_EQU" FOREIGN KEY (equipment_id) REFERENCES public."LABS_EQUIPMENT_GENERAL"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3086 (class 2606 OID 68440)
-- Name: LABS_TEACHER_PRACTICES SIUUP_TEACHER_PRACTI_laboratory_id_20067035_fk_SIUUP_LAB; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_TEACHER_PRACTICES"
    ADD CONSTRAINT "SIUUP_TEACHER_PRACTI_laboratory_id_20067035_fk_SIUUP_LAB" FOREIGN KEY (laboratory_id) REFERENCES public."LABS_LABORATORIES"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3087 (class 2606 OID 68445)
-- Name: LABS_TEACHER_PRACTICES SIUUP_TEACHER_PRACTI_schedule_id_e7877ed0_fk_SIUUP_SCH; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_TEACHER_PRACTICES"
    ADD CONSTRAINT "SIUUP_TEACHER_PRACTI_schedule_id_e7877ed0_fk_SIUUP_SCH" FOREIGN KEY (schedule_id) REFERENCES public."LABS_SCHEDULE"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3088 (class 2606 OID 68450)
-- Name: LABS_TEACHER_PRACTICES SIUUP_TEACHER_PRACTI_teacher_id_3b30a282_fk_SIIUP_TEA; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LABS_TEACHER_PRACTICES"
    ADD CONSTRAINT "SIUUP_TEACHER_PRACTI_teacher_id_3b30a282_fk_SIIUP_TEA" FOREIGN KEY (teacher_id) REFERENCES public."LABS_TEACHER_CAT"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3055 (class 2606 OID 67784)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3054 (class 2606 OID 67779)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3053 (class 2606 OID 67770)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3057 (class 2606 OID 67799)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3056 (class 2606 OID 67794)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3059 (class 2606 OID 67813)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3058 (class 2606 OID 67808)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3097 (class 2606 OID 68606)
-- Name: dashboard_userdashboardmodule dashboard_userdashboardmodule_user_id_97c13132_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dashboard_userdashboardmodule
    ADD CONSTRAINT dashboard_userdashboardmodule_user_id_97c13132_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3060 (class 2606 OID 67832)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3061 (class 2606 OID 67837)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3095 (class 2606 OID 68579)
-- Name: jet_bookmark jet_bookmark_user_id_8efdc332_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jet_bookmark
    ADD CONSTRAINT jet_bookmark_user_id_8efdc332_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3096 (class 2606 OID 68585)
-- Name: jet_pinnedapplication jet_pinnedapplication_user_id_7765bcf9_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jet_pinnedapplication
    ADD CONSTRAINT jet_pinnedapplication_user_id_7765bcf9_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2022-06-09 10:17:03

--
-- PostgreSQL database dump complete
--

