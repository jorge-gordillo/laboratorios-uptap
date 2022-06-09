PGDMP          1    
    	        z           laboratorios    10.20    10.20 ]   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    67694    laboratorios    DATABASE     �   CREATE DATABASE laboratorios WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE laboratorios;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    68219    LABS_ALUMN_CAT    TABLE     t   CREATE TABLE public."LABS_ALUMN_CAT" (
    enrollment integer NOT NULL,
    name character varying(120) NOT NULL
);
 $   DROP TABLE public."LABS_ALUMN_CAT";
       public         postgres    false    3            �            1259    68383    LABS_ALUM_PRATICES    TABLE     .  CREATE TABLE public."LABS_ALUM_PRATICES" (
    id bigint NOT NULL,
    entry_date timestamp with time zone NOT NULL,
    exit_date timestamp with time zone,
    enrollment_id integer NOT NULL,
    equipment_id bigint,
    laboratory_id bigint NOT NULL,
    program_id bigint,
    schedule_id bigint
);
 (   DROP TABLE public."LABS_ALUM_PRATICES";
       public         postgres    false    3            �            1259    67865    LABS_CAREER_CAT    TABLE     (  CREATE TABLE public."LABS_CAREER_CAT" (
    id bigint NOT NULL,
    academic_program_name character varying(60) NOT NULL,
    homosigla character varying(10) NOT NULL,
    academic_program_name_gdp character varying(70) NOT NULL,
    modality_id bigint NOT NULL,
    status_id bigint NOT NULL
);
 %   DROP TABLE public."LABS_CAREER_CAT";
       public         postgres    false    3            �            1259    68298    LABS_CATEGORIES_EQUIPMENT    TABLE     {   CREATE TABLE public."LABS_CATEGORIES_EQUIPMENT" (
    id bigint NOT NULL,
    desciption character varying(30) NOT NULL
);
 /   DROP TABLE public."LABS_CATEGORIES_EQUIPMENT";
       public         postgres    false    3            �            1259    67891    LABS_CYCLE_CAT    TABLE     �   CREATE TABLE public."LABS_CYCLE_CAT" (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    status_id bigint NOT NULL
);
 $   DROP TABLE public."LABS_CYCLE_CAT";
       public         postgres    false    3            �            1259    68308    LABS_EQUIPMENT_GENERAL    TABLE     �   CREATE TABLE public."LABS_EQUIPMENT_GENERAL" (
    id bigint NOT NULL,
    number integer NOT NULL,
    description text NOT NULL,
    category_id bigint NOT NULL,
    laboratory_id bigint NOT NULL,
    status_id bigint NOT NULL
);
 ,   DROP TABLE public."LABS_EQUIPMENT_GENERAL";
       public         postgres    false    3            �            1259    67911    LABS_GROUP_CAT    TABLE     1  CREATE TABLE public."LABS_GROUP_CAT" (
    id bigint NOT NULL,
    "group" character varying(30) NOT NULL,
    code character varying(32) NOT NULL,
    career_id bigint NOT NULL,
    period_id bigint NOT NULL,
    quarter_id bigint NOT NULL,
    shift_id bigint NOT NULL,
    status_id bigint NOT NULL
);
 $   DROP TABLE public."LABS_GROUP_CAT";
       public         postgres    false    3            �            1259    68319    LABS_LABORATORIES    TABLE     m   CREATE TABLE public."LABS_LABORATORIES" (
    id bigint NOT NULL,
    name character varying(50) NOT NULL
);
 '   DROP TABLE public."LABS_LABORATORIES";
       public         postgres    false    3            �            1259    68013    LABS_MODALITY_CAT    TABLE     �   CREATE TABLE public."LABS_MODALITY_CAT" (
    id bigint NOT NULL,
    description character varying(250) NOT NULL,
    status_id bigint NOT NULL
);
 '   DROP TABLE public."LABS_MODALITY_CAT";
       public         postgres    false    3            �            1259    68005    LABS_PERIOD_CAT    TABLE     2  CREATE TABLE public."LABS_PERIOD_CAT" (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    vacational_start_date date NOT NULL,
    vacational_end_date date NOT NULL,
    cycle_id bigint NOT NULL,
    status_id bigint NOT NULL
);
 %   DROP TABLE public."LABS_PERIOD_CAT";
       public         postgres    false    3            �            1259    68329    LABS_PROGRAMS_CAT    TABLE     �   CREATE TABLE public."LABS_PROGRAMS_CAT" (
    id bigint NOT NULL,
    desciption character varying(100) NOT NULL,
    version character varying(20) NOT NULL,
    status_id bigint NOT NULL
);
 '   DROP TABLE public."LABS_PROGRAMS_CAT";
       public         postgres    false    3            �            1259    67919    LABS_QUARTER_CAT    TABLE     k   CREATE TABLE public."LABS_QUARTER_CAT" (
    id bigint NOT NULL,
    name character varying(2) NOT NULL
);
 &   DROP TABLE public."LABS_QUARTER_CAT";
       public         postgres    false    3            �            1259    68339    LABS_SCHEDULE    TABLE     �  CREATE TABLE public."LABS_SCHEDULE" (
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
 #   DROP TABLE public."LABS_SCHEDULE";
       public         postgres    false    3            �            1259    67939    LABS_SHIFT_CAT    TABLE     �   CREATE TABLE public."LABS_SHIFT_CAT" (
    id bigint NOT NULL,
    description character varying(15) NOT NULL,
    abbreviation character varying(5) NOT NULL
);
 $   DROP TABLE public."LABS_SHIFT_CAT";
       public         postgres    false    3            �            1259    67947    LABS_STATUS    TABLE     �   CREATE TABLE public."LABS_STATUS" (
    id bigint NOT NULL,
    status character varying(20) NOT NULL,
    description character varying(50) NOT NULL
);
 !   DROP TABLE public."LABS_STATUS";
       public         postgres    false    3            �            1259    68347    LABS_STATUS_EQUIPMENT    TABLE     w   CREATE TABLE public."LABS_STATUS_EQUIPMENT" (
    id bigint NOT NULL,
    desciption character varying(25) NOT NULL
);
 +   DROP TABLE public."LABS_STATUS_EQUIPMENT";
       public         postgres    false    3            �            1259    67987    LABS_SUBJECT_CAT    TABLE     �  CREATE TABLE public."LABS_SUBJECT_CAT" (
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
 &   DROP TABLE public."LABS_SUBJECT_CAT";
       public         postgres    false    3            �            1259    68281    LABS_TEACHER_CAT    TABLE     R  CREATE TABLE public."LABS_TEACHER_CAT" (
    id bigint NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(15) NOT NULL,
    second_last_name character varying(15) NOT NULL,
    email character varying(254) NOT NULL,
    gender character varying(50) NOT NULL,
    teacher_status_id bigint NOT NULL
);
 &   DROP TABLE public."LABS_TEACHER_CAT";
       public         postgres    false    3            �            1259    68357    LABS_TEACHER_PRACTICES    TABLE     N  CREATE TABLE public."LABS_TEACHER_PRACTICES" (
    id bigint NOT NULL,
    entry_date timestamp without time zone NOT NULL,
    exit_date timestamp without time zone,
    description character varying(250) NOT NULL,
    equipment_id bigint,
    laboratory_id bigint NOT NULL,
    schedule_id bigint,
    teacher_id bigint NOT NULL
);
 ,   DROP TABLE public."LABS_TEACHER_PRACTICES";
       public         postgres    false    3            �            1259    67863    SIIUP_CAREER_CAT_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SIIUP_CAREER_CAT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."SIIUP_CAREER_CAT_id_seq";
       public       postgres    false    216    3            �           0    0    SIIUP_CAREER_CAT_id_seq    SEQUENCE OWNED BY     V   ALTER SEQUENCE public."SIIUP_CAREER_CAT_id_seq" OWNED BY public."LABS_CAREER_CAT".id;
            public       postgres    false    215            �            1259    67889    SIIUP_CYCLE_CAT_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SIIUP_CYCLE_CAT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."SIIUP_CYCLE_CAT_id_seq";
       public       postgres    false    218    3            �           0    0    SIIUP_CYCLE_CAT_id_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public."SIIUP_CYCLE_CAT_id_seq" OWNED BY public."LABS_CYCLE_CAT".id;
            public       postgres    false    217            �            1259    67909    SIIUP_GROUP_CAT_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SIIUP_GROUP_CAT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."SIIUP_GROUP_CAT_id_seq";
       public       postgres    false    3    220            �           0    0    SIIUP_GROUP_CAT_id_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public."SIIUP_GROUP_CAT_id_seq" OWNED BY public."LABS_GROUP_CAT".id;
            public       postgres    false    219            �            1259    68011    SIIUP_MODALITY_CAT_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SIIUP_MODALITY_CAT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."SIIUP_MODALITY_CAT_id_seq";
       public       postgres    false    232    3            �           0    0    SIIUP_MODALITY_CAT_id_seq    SEQUENCE OWNED BY     Z   ALTER SEQUENCE public."SIIUP_MODALITY_CAT_id_seq" OWNED BY public."LABS_MODALITY_CAT".id;
            public       postgres    false    231            �            1259    68003    SIIUP_PERIOD_CAT_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SIIUP_PERIOD_CAT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."SIIUP_PERIOD_CAT_id_seq";
       public       postgres    false    3    230            �           0    0    SIIUP_PERIOD_CAT_id_seq    SEQUENCE OWNED BY     V   ALTER SEQUENCE public."SIIUP_PERIOD_CAT_id_seq" OWNED BY public."LABS_PERIOD_CAT".id;
            public       postgres    false    229            �            1259    67917    SIIUP_QUARTER_CAT_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SIIUP_QUARTER_CAT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."SIIUP_QUARTER_CAT_id_seq";
       public       postgres    false    222    3            �           0    0    SIIUP_QUARTER_CAT_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public."SIIUP_QUARTER_CAT_id_seq" OWNED BY public."LABS_QUARTER_CAT".id;
            public       postgres    false    221            �            1259    67937    SIIUP_SHIFT_CAT_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SIIUP_SHIFT_CAT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."SIIUP_SHIFT_CAT_id_seq";
       public       postgres    false    224    3            �           0    0    SIIUP_SHIFT_CAT_id_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public."SIIUP_SHIFT_CAT_id_seq" OWNED BY public."LABS_SHIFT_CAT".id;
            public       postgres    false    223            �            1259    67985    SIIUP_SUBJECT_CAT_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SIIUP_SUBJECT_CAT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."SIIUP_SUBJECT_CAT_id_seq";
       public       postgres    false    228    3            �           0    0    SIIUP_SUBJECT_CAT_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public."SIIUP_SUBJECT_CAT_id_seq" OWNED BY public."LABS_SUBJECT_CAT".id;
            public       postgres    false    227            �            1259    68279    SIIUP_TEACHER_CAT_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SIIUP_TEACHER_CAT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."SIIUP_TEACHER_CAT_id_seq";
       public       postgres    false    3    235            �           0    0    SIIUP_TEACHER_CAT_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public."SIIUP_TEACHER_CAT_id_seq" OWNED BY public."LABS_TEACHER_CAT".id;
            public       postgres    false    234            �            1259    68381    SIUUP_ALUM_PRATICES_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SIUUP_ALUM_PRATICES_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."SIUUP_ALUM_PRATICES_id_seq";
       public       postgres    false    251    3            �           0    0    SIUUP_ALUM_PRATICES_id_seq    SEQUENCE OWNED BY     \   ALTER SEQUENCE public."SIUUP_ALUM_PRATICES_id_seq" OWNED BY public."LABS_ALUM_PRATICES".id;
            public       postgres    false    250            �            1259    68296 !   SIUUP_CATEGORIES_EQUIPMENT_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SIUUP_CATEGORIES_EQUIPMENT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."SIUUP_CATEGORIES_EQUIPMENT_id_seq";
       public       postgres    false    237    3            �           0    0 !   SIUUP_CATEGORIES_EQUIPMENT_id_seq    SEQUENCE OWNED BY     j   ALTER SEQUENCE public."SIUUP_CATEGORIES_EQUIPMENT_id_seq" OWNED BY public."LABS_CATEGORIES_EQUIPMENT".id;
            public       postgres    false    236            �            1259    68306    SIUUP_EQUIPMENT_GENERAL_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SIUUP_EQUIPMENT_GENERAL_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."SIUUP_EQUIPMENT_GENERAL_id_seq";
       public       postgres    false    239    3            �           0    0    SIUUP_EQUIPMENT_GENERAL_id_seq    SEQUENCE OWNED BY     d   ALTER SEQUENCE public."SIUUP_EQUIPMENT_GENERAL_id_seq" OWNED BY public."LABS_EQUIPMENT_GENERAL".id;
            public       postgres    false    238            �            1259    68317    SIUUP_LABORATORIES_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SIUUP_LABORATORIES_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."SIUUP_LABORATORIES_id_seq";
       public       postgres    false    3    241            �           0    0    SIUUP_LABORATORIES_id_seq    SEQUENCE OWNED BY     Z   ALTER SEQUENCE public."SIUUP_LABORATORIES_id_seq" OWNED BY public."LABS_LABORATORIES".id;
            public       postgres    false    240            �            1259    68327    SIUUP_PROGRAMS_CAT_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SIUUP_PROGRAMS_CAT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."SIUUP_PROGRAMS_CAT_id_seq";
       public       postgres    false    3    243            �           0    0    SIUUP_PROGRAMS_CAT_id_seq    SEQUENCE OWNED BY     Z   ALTER SEQUENCE public."SIUUP_PROGRAMS_CAT_id_seq" OWNED BY public."LABS_PROGRAMS_CAT".id;
            public       postgres    false    242            �            1259    68337    SIUUP_SCHEDULE_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SIUUP_SCHEDULE_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."SIUUP_SCHEDULE_id_seq";
       public       postgres    false    3    245            �           0    0    SIUUP_SCHEDULE_id_seq    SEQUENCE OWNED BY     R   ALTER SEQUENCE public."SIUUP_SCHEDULE_id_seq" OWNED BY public."LABS_SCHEDULE".id;
            public       postgres    false    244            �            1259    68345    SIUUP_STATUS_EQUIPMENT_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SIUUP_STATUS_EQUIPMENT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."SIUUP_STATUS_EQUIPMENT_id_seq";
       public       postgres    false    3    247            �           0    0    SIUUP_STATUS_EQUIPMENT_id_seq    SEQUENCE OWNED BY     b   ALTER SEQUENCE public."SIUUP_STATUS_EQUIPMENT_id_seq" OWNED BY public."LABS_STATUS_EQUIPMENT".id;
            public       postgres    false    246            �            1259    67945    SIUUP_STATUS_id_seq    SEQUENCE     ~   CREATE SEQUENCE public."SIUUP_STATUS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."SIUUP_STATUS_id_seq";
       public       postgres    false    3    226            �           0    0    SIUUP_STATUS_id_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public."SIUUP_STATUS_id_seq" OWNED BY public."LABS_STATUS".id;
            public       postgres    false    225            �            1259    68355    SIUUP_TEACHER_PRACTICES_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SIUUP_TEACHER_PRACTICES_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."SIUUP_TEACHER_PRACTICES_id_seq";
       public       postgres    false    3    249            �           0    0    SIUUP_TEACHER_PRACTICES_id_seq    SEQUENCE OWNED BY     d   ALTER SEQUENCE public."SIUUP_TEACHER_PRACTICES_id_seq" OWNED BY public."LABS_TEACHER_PRACTICES".id;
            public       postgres    false    248            �            1259    67726 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    3            �            1259    67724    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    3    203            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    202            �            1259    67736    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    3            �            1259    67734    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    3    205            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    204            �            1259    67718    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    3            �            1259    67716    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    201    3            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    200            �            1259    67744 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
    DROP TABLE public.auth_user;
       public         postgres    false    3            �            1259    67754    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    3            �            1259    67752    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    3    209            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    208            �            1259    67742    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    207    3            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    206            �            1259    67762    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    3            �            1259    67760 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    211    3            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    210                       1259    68594    dashboard_userdashboardmodule    TABLE     �  CREATE TABLE public.dashboard_userdashboardmodule (
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
 1   DROP TABLE public.dashboard_userdashboardmodule;
       public         postgres    false    3                        1259    68592 $   dashboard_userdashboardmodule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dashboard_userdashboardmodule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.dashboard_userdashboardmodule_id_seq;
       public       postgres    false    257    3            �           0    0 $   dashboard_userdashboardmodule_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.dashboard_userdashboardmodule_id_seq OWNED BY public.dashboard_userdashboardmodule.id;
            public       postgres    false    256            �            1259    67822    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         postgres    false    3            �            1259    67820    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    213    3            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    212            �            1259    67708    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    3            �            1259    67706    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    199    3            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    198            �            1259    67697    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    3            �            1259    67695    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    3    197            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    196            �            1259    67853    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    3            �            1259    68565    jet_bookmark    TABLE     �   CREATE TABLE public.jet_bookmark (
    id integer NOT NULL,
    url character varying(200) NOT NULL,
    title character varying(255) NOT NULL,
    user_id integer,
    date_add timestamp with time zone NOT NULL
);
     DROP TABLE public.jet_bookmark;
       public         postgres    false    3            �            1259    68563    jet_bookmark_id_seq    SEQUENCE     �   CREATE SEQUENCE public.jet_bookmark_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.jet_bookmark_id_seq;
       public       postgres    false    3    253            �           0    0    jet_bookmark_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.jet_bookmark_id_seq OWNED BY public.jet_bookmark.id;
            public       postgres    false    252            �            1259    68573    jet_pinnedapplication    TABLE     �   CREATE TABLE public.jet_pinnedapplication (
    id integer NOT NULL,
    app_label character varying(255) NOT NULL,
    user_id integer,
    date_add timestamp with time zone NOT NULL
);
 )   DROP TABLE public.jet_pinnedapplication;
       public         postgres    false    3            �            1259    68571    jet_pinnedapplication_id_seq    SEQUENCE     �   CREATE SEQUENCE public.jet_pinnedapplication_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.jet_pinnedapplication_id_seq;
       public       postgres    false    3    255            �           0    0    jet_pinnedapplication_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.jet_pinnedapplication_id_seq OWNED BY public.jet_pinnedapplication.id;
            public       postgres    false    254            E           2604    68386    LABS_ALUM_PRATICES id    DEFAULT     �   ALTER TABLE ONLY public."LABS_ALUM_PRATICES" ALTER COLUMN id SET DEFAULT nextval('public."SIUUP_ALUM_PRATICES_id_seq"'::regclass);
 F   ALTER TABLE public."LABS_ALUM_PRATICES" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    251    250    251            4           2604    67868    LABS_CAREER_CAT id    DEFAULT     }   ALTER TABLE ONLY public."LABS_CAREER_CAT" ALTER COLUMN id SET DEFAULT nextval('public."SIIUP_CAREER_CAT_id_seq"'::regclass);
 C   ALTER TABLE public."LABS_CAREER_CAT" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    216    215    216            >           2604    68301    LABS_CATEGORIES_EQUIPMENT id    DEFAULT     �   ALTER TABLE ONLY public."LABS_CATEGORIES_EQUIPMENT" ALTER COLUMN id SET DEFAULT nextval('public."SIUUP_CATEGORIES_EQUIPMENT_id_seq"'::regclass);
 M   ALTER TABLE public."LABS_CATEGORIES_EQUIPMENT" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    237    236    237            5           2604    67894    LABS_CYCLE_CAT id    DEFAULT     {   ALTER TABLE ONLY public."LABS_CYCLE_CAT" ALTER COLUMN id SET DEFAULT nextval('public."SIIUP_CYCLE_CAT_id_seq"'::regclass);
 B   ALTER TABLE public."LABS_CYCLE_CAT" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    218    218            ?           2604    68311    LABS_EQUIPMENT_GENERAL id    DEFAULT     �   ALTER TABLE ONLY public."LABS_EQUIPMENT_GENERAL" ALTER COLUMN id SET DEFAULT nextval('public."SIUUP_EQUIPMENT_GENERAL_id_seq"'::regclass);
 J   ALTER TABLE public."LABS_EQUIPMENT_GENERAL" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    238    239    239            6           2604    67914    LABS_GROUP_CAT id    DEFAULT     {   ALTER TABLE ONLY public."LABS_GROUP_CAT" ALTER COLUMN id SET DEFAULT nextval('public."SIIUP_GROUP_CAT_id_seq"'::regclass);
 B   ALTER TABLE public."LABS_GROUP_CAT" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    220    220            @           2604    68322    LABS_LABORATORIES id    DEFAULT     �   ALTER TABLE ONLY public."LABS_LABORATORIES" ALTER COLUMN id SET DEFAULT nextval('public."SIUUP_LABORATORIES_id_seq"'::regclass);
 E   ALTER TABLE public."LABS_LABORATORIES" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    241    240    241            <           2604    68016    LABS_MODALITY_CAT id    DEFAULT     �   ALTER TABLE ONLY public."LABS_MODALITY_CAT" ALTER COLUMN id SET DEFAULT nextval('public."SIIUP_MODALITY_CAT_id_seq"'::regclass);
 E   ALTER TABLE public."LABS_MODALITY_CAT" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    231    232    232            ;           2604    68008    LABS_PERIOD_CAT id    DEFAULT     }   ALTER TABLE ONLY public."LABS_PERIOD_CAT" ALTER COLUMN id SET DEFAULT nextval('public."SIIUP_PERIOD_CAT_id_seq"'::regclass);
 C   ALTER TABLE public."LABS_PERIOD_CAT" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    230    230            A           2604    68332    LABS_PROGRAMS_CAT id    DEFAULT     �   ALTER TABLE ONLY public."LABS_PROGRAMS_CAT" ALTER COLUMN id SET DEFAULT nextval('public."SIUUP_PROGRAMS_CAT_id_seq"'::regclass);
 E   ALTER TABLE public."LABS_PROGRAMS_CAT" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    242    243    243            7           2604    67922    LABS_QUARTER_CAT id    DEFAULT        ALTER TABLE ONLY public."LABS_QUARTER_CAT" ALTER COLUMN id SET DEFAULT nextval('public."SIIUP_QUARTER_CAT_id_seq"'::regclass);
 D   ALTER TABLE public."LABS_QUARTER_CAT" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    222    221    222            B           2604    68342    LABS_SCHEDULE id    DEFAULT     y   ALTER TABLE ONLY public."LABS_SCHEDULE" ALTER COLUMN id SET DEFAULT nextval('public."SIUUP_SCHEDULE_id_seq"'::regclass);
 A   ALTER TABLE public."LABS_SCHEDULE" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    245    244    245            8           2604    67942    LABS_SHIFT_CAT id    DEFAULT     {   ALTER TABLE ONLY public."LABS_SHIFT_CAT" ALTER COLUMN id SET DEFAULT nextval('public."SIIUP_SHIFT_CAT_id_seq"'::regclass);
 B   ALTER TABLE public."LABS_SHIFT_CAT" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    224    223    224            9           2604    67950    LABS_STATUS id    DEFAULT     u   ALTER TABLE ONLY public."LABS_STATUS" ALTER COLUMN id SET DEFAULT nextval('public."SIUUP_STATUS_id_seq"'::regclass);
 ?   ALTER TABLE public."LABS_STATUS" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    226    226            C           2604    68350    LABS_STATUS_EQUIPMENT id    DEFAULT     �   ALTER TABLE ONLY public."LABS_STATUS_EQUIPMENT" ALTER COLUMN id SET DEFAULT nextval('public."SIUUP_STATUS_EQUIPMENT_id_seq"'::regclass);
 I   ALTER TABLE public."LABS_STATUS_EQUIPMENT" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    246    247    247            :           2604    67990    LABS_SUBJECT_CAT id    DEFAULT        ALTER TABLE ONLY public."LABS_SUBJECT_CAT" ALTER COLUMN id SET DEFAULT nextval('public."SIIUP_SUBJECT_CAT_id_seq"'::regclass);
 D   ALTER TABLE public."LABS_SUBJECT_CAT" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    228    228            =           2604    68284    LABS_TEACHER_CAT id    DEFAULT        ALTER TABLE ONLY public."LABS_TEACHER_CAT" ALTER COLUMN id SET DEFAULT nextval('public."SIIUP_TEACHER_CAT_id_seq"'::regclass);
 D   ALTER TABLE public."LABS_TEACHER_CAT" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    234    235    235            D           2604    68360    LABS_TEACHER_PRACTICES id    DEFAULT     �   ALTER TABLE ONLY public."LABS_TEACHER_PRACTICES" ALTER COLUMN id SET DEFAULT nextval('public."SIUUP_TEACHER_PRACTICES_id_seq"'::regclass);
 J   ALTER TABLE public."LABS_TEACHER_PRACTICES" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    248    249    249            -           2604    67729    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203            .           2604    67739    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    205    205            ,           2604    67721    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            /           2604    67747    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    206    207            0           2604    67757    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    209    209            1           2604    67765    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210    211            H           2604    68597     dashboard_userdashboardmodule id    DEFAULT     �   ALTER TABLE ONLY public.dashboard_userdashboardmodule ALTER COLUMN id SET DEFAULT nextval('public.dashboard_userdashboardmodule_id_seq'::regclass);
 O   ALTER TABLE public.dashboard_userdashboardmodule ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    256    257    257            2           2604    67825    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212    213            +           2604    67711    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            *           2604    67700    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            F           2604    68568    jet_bookmark id    DEFAULT     r   ALTER TABLE ONLY public.jet_bookmark ALTER COLUMN id SET DEFAULT nextval('public.jet_bookmark_id_seq'::regclass);
 >   ALTER TABLE public.jet_bookmark ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    252    253    253            G           2604    68576    jet_pinnedapplication id    DEFAULT     �   ALTER TABLE ONLY public.jet_pinnedapplication ALTER COLUMN id SET DEFAULT nextval('public.jet_pinnedapplication_id_seq'::regclass);
 G   ALTER TABLE public.jet_pinnedapplication ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    255    254    255            �          0    68219    LABS_ALUMN_CAT 
   TABLE DATA               <   COPY public."LABS_ALUMN_CAT" (enrollment, name) FROM stdin;
    public       postgres    false    233   ��      �          0    68383    LABS_ALUM_PRATICES 
   TABLE DATA               �   COPY public."LABS_ALUM_PRATICES" (id, entry_date, exit_date, enrollment_id, equipment_id, laboratory_id, program_id, schedule_id) FROM stdin;
    public       postgres    false    251   ��      �          0    67865    LABS_CAREER_CAT 
   TABLE DATA               �   COPY public."LABS_CAREER_CAT" (id, academic_program_name, homosigla, academic_program_name_gdp, modality_id, status_id) FROM stdin;
    public       postgres    false    216   b�      �          0    68298    LABS_CATEGORIES_EQUIPMENT 
   TABLE DATA               E   COPY public."LABS_CATEGORIES_EQUIPMENT" (id, desciption) FROM stdin;
    public       postgres    false    237   ��      �          0    67891    LABS_CYCLE_CAT 
   TABLE DATA               U   COPY public."LABS_CYCLE_CAT" (id, name, start_date, end_date, status_id) FROM stdin;
    public       postgres    false    218   ��      �          0    68308    LABS_EQUIPMENT_GENERAL 
   TABLE DATA               r   COPY public."LABS_EQUIPMENT_GENERAL" (id, number, description, category_id, laboratory_id, status_id) FROM stdin;
    public       postgres    false    239   >�      �          0    67911    LABS_GROUP_CAT 
   TABLE DATA               t   COPY public."LABS_GROUP_CAT" (id, "group", code, career_id, period_id, quarter_id, shift_id, status_id) FROM stdin;
    public       postgres    false    220   ��      �          0    68319    LABS_LABORATORIES 
   TABLE DATA               7   COPY public."LABS_LABORATORIES" (id, name) FROM stdin;
    public       postgres    false    241   n�      �          0    68013    LABS_MODALITY_CAT 
   TABLE DATA               I   COPY public."LABS_MODALITY_CAT" (id, description, status_id) FROM stdin;
    public       postgres    false    232   ��      �          0    68005    LABS_PERIOD_CAT 
   TABLE DATA               �   COPY public."LABS_PERIOD_CAT" (id, name, start_date, end_date, vacational_start_date, vacational_end_date, cycle_id, status_id) FROM stdin;
    public       postgres    false    230   ��      �          0    68329    LABS_PROGRAMS_CAT 
   TABLE DATA               Q   COPY public."LABS_PROGRAMS_CAT" (id, desciption, version, status_id) FROM stdin;
    public       postgres    false    243   X�      �          0    67919    LABS_QUARTER_CAT 
   TABLE DATA               6   COPY public."LABS_QUARTER_CAT" (id, name) FROM stdin;
    public       postgres    false    222   U      �          0    68339    LABS_SCHEDULE 
   TABLE DATA               �   COPY public."LABS_SCHEDULE" (id, day, time_start, time_end, laboratory_id, group_id, period_id, status_id, subject_id, teacher_id) FROM stdin;
    public       postgres    false    245   �      �          0    67939    LABS_SHIFT_CAT 
   TABLE DATA               I   COPY public."LABS_SHIFT_CAT" (id, description, abbreviation) FROM stdin;
    public       postgres    false    224   �      �          0    67947    LABS_STATUS 
   TABLE DATA               @   COPY public."LABS_STATUS" (id, status, description) FROM stdin;
    public       postgres    false    226   3      �          0    68347    LABS_STATUS_EQUIPMENT 
   TABLE DATA               A   COPY public."LABS_STATUS_EQUIPMENT" (id, desciption) FROM stdin;
    public       postgres    false    247   �      �          0    67987    LABS_SUBJECT_CAT 
   TABLE DATA               �   COPY public."LABS_SUBJECT_CAT" (id, name, code_subject, credits, theoretical_hours, practical_hours, certifiable, limit_absence, quarter_id, status_id) FROM stdin;
    public       postgres    false    228         �          0    68281    LABS_TEACHER_CAT 
   TABLE DATA               {   COPY public."LABS_TEACHER_CAT" (id, first_name, last_name, second_last_name, email, gender, teacher_status_id) FROM stdin;
    public       postgres    false    235   �      �          0    68357    LABS_TEACHER_PRACTICES 
   TABLE DATA               �   COPY public."LABS_TEACHER_PRACTICES" (id, entry_date, exit_date, description, equipment_id, laboratory_id, schedule_id, teacher_id) FROM stdin;
    public       postgres    false    249   �      �          0    67726 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    203   P      �          0    67736    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    205   m      �          0    67718    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    201   �      �          0    67744 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    207   �      �          0    67754    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    209   �      �          0    67762    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    211         �          0    68594    dashboard_userdashboardmodule 
   TABLE DATA               �   COPY public.dashboard_userdashboardmodule (id, title, module, app_label, user_id, "column", "order", settings, children, collapsed) FROM stdin;
    public       postgres    false    257         �          0    67822    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    213   �      �          0    67708    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    199   w7      �          0    67697    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    197   \9      �          0    67853    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    214   �=      �          0    68565    jet_bookmark 
   TABLE DATA               I   COPY public.jet_bookmark (id, url, title, user_id, date_add) FROM stdin;
    public       postgres    false    253   �D      �          0    68573    jet_pinnedapplication 
   TABLE DATA               Q   COPY public.jet_pinnedapplication (id, app_label, user_id, date_add) FROM stdin;
    public       postgres    false    255   �D      �           0    0    SIIUP_CAREER_CAT_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."SIIUP_CAREER_CAT_id_seq"', 10, true);
            public       postgres    false    215            �           0    0    SIIUP_CYCLE_CAT_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."SIIUP_CYCLE_CAT_id_seq"', 1, true);
            public       postgres    false    217            �           0    0    SIIUP_GROUP_CAT_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."SIIUP_GROUP_CAT_id_seq"', 14, true);
            public       postgres    false    219            �           0    0    SIIUP_MODALITY_CAT_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."SIIUP_MODALITY_CAT_id_seq"', 1, true);
            public       postgres    false    231            �           0    0    SIIUP_PERIOD_CAT_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."SIIUP_PERIOD_CAT_id_seq"', 3, true);
            public       postgres    false    229            �           0    0    SIIUP_QUARTER_CAT_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."SIIUP_QUARTER_CAT_id_seq"', 11, true);
            public       postgres    false    221            �           0    0    SIIUP_SHIFT_CAT_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."SIIUP_SHIFT_CAT_id_seq"', 2, true);
            public       postgres    false    223            �           0    0    SIIUP_SUBJECT_CAT_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."SIIUP_SUBJECT_CAT_id_seq"', 26, true);
            public       postgres    false    227            �           0    0    SIIUP_TEACHER_CAT_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."SIIUP_TEACHER_CAT_id_seq"', 16, true);
            public       postgres    false    234                        0    0    SIUUP_ALUM_PRATICES_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."SIUUP_ALUM_PRATICES_id_seq"', 49, true);
            public       postgres    false    250                       0    0 !   SIUUP_CATEGORIES_EQUIPMENT_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."SIUUP_CATEGORIES_EQUIPMENT_id_seq"', 6, true);
            public       postgres    false    236                       0    0    SIUUP_EQUIPMENT_GENERAL_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."SIUUP_EQUIPMENT_GENERAL_id_seq"', 26, true);
            public       postgres    false    238                       0    0    SIUUP_LABORATORIES_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."SIUUP_LABORATORIES_id_seq"', 1, true);
            public       postgres    false    240                       0    0    SIUUP_PROGRAMS_CAT_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."SIUUP_PROGRAMS_CAT_id_seq"', 1, false);
            public       postgres    false    242                       0    0    SIUUP_SCHEDULE_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."SIUUP_SCHEDULE_id_seq"', 27, true);
            public       postgres    false    244                       0    0    SIUUP_STATUS_EQUIPMENT_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."SIUUP_STATUS_EQUIPMENT_id_seq"', 3, true);
            public       postgres    false    246                       0    0    SIUUP_STATUS_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."SIUUP_STATUS_id_seq"', 9, true);
            public       postgres    false    225                       0    0    SIUUP_TEACHER_PRACTICES_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."SIUUP_TEACHER_PRACTICES_id_seq"', 51, true);
            public       postgres    false    248            	           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    202            
           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    204                       0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 240, true);
            public       postgres    false    200                       0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       postgres    false    208                       0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
            public       postgres    false    206                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    210                       0    0 $   dashboard_userdashboardmodule_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.dashboard_userdashboardmodule_id_seq', 10, true);
            public       postgres    false    256                       0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 425, true);
            public       postgres    false    212                       0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 60, true);
            public       postgres    false    198                       0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 51, true);
            public       postgres    false    196                       0    0    jet_bookmark_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.jet_bookmark_id_seq', 1, false);
            public       postgres    false    252                       0    0    jet_pinnedapplication_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.jet_pinnedapplication_id_seq', 1, false);
            public       postgres    false    254            �           2606    68223 #   LABS_ALUMN_CAT SIIUP_ALUMN_CAT_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public."LABS_ALUMN_CAT"
    ADD CONSTRAINT "SIIUP_ALUMN_CAT_pkey" PRIMARY KEY (enrollment);
 Q   ALTER TABLE ONLY public."LABS_ALUMN_CAT" DROP CONSTRAINT "SIIUP_ALUMN_CAT_pkey";
       public         postgres    false    233            |           2606    67876 >   LABS_CAREER_CAT SIIUP_CAREER_CAT_academic_program_name_gdp_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."LABS_CAREER_CAT"
    ADD CONSTRAINT "SIIUP_CAREER_CAT_academic_program_name_gdp_key" UNIQUE (academic_program_name_gdp);
 l   ALTER TABLE ONLY public."LABS_CAREER_CAT" DROP CONSTRAINT "SIIUP_CAREER_CAT_academic_program_name_gdp_key";
       public         postgres    false    216            ~           2606    67872 :   LABS_CAREER_CAT SIIUP_CAREER_CAT_academic_program_name_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."LABS_CAREER_CAT"
    ADD CONSTRAINT "SIIUP_CAREER_CAT_academic_program_name_key" UNIQUE (academic_program_name);
 h   ALTER TABLE ONLY public."LABS_CAREER_CAT" DROP CONSTRAINT "SIIUP_CAREER_CAT_academic_program_name_key";
       public         postgres    false    216            �           2606    67874 .   LABS_CAREER_CAT SIIUP_CAREER_CAT_homosigla_key 
   CONSTRAINT     r   ALTER TABLE ONLY public."LABS_CAREER_CAT"
    ADD CONSTRAINT "SIIUP_CAREER_CAT_homosigla_key" UNIQUE (homosigla);
 \   ALTER TABLE ONLY public."LABS_CAREER_CAT" DROP CONSTRAINT "SIIUP_CAREER_CAT_homosigla_key";
       public         postgres    false    216            �           2606    67870 %   LABS_CAREER_CAT SIIUP_CAREER_CAT_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public."LABS_CAREER_CAT"
    ADD CONSTRAINT "SIIUP_CAREER_CAT_pkey" PRIMARY KEY (id);
 S   ALTER TABLE ONLY public."LABS_CAREER_CAT" DROP CONSTRAINT "SIIUP_CAREER_CAT_pkey";
       public         postgres    false    216            �           2606    67898 '   LABS_CYCLE_CAT SIIUP_CYCLE_CAT_name_key 
   CONSTRAINT     f   ALTER TABLE ONLY public."LABS_CYCLE_CAT"
    ADD CONSTRAINT "SIIUP_CYCLE_CAT_name_key" UNIQUE (name);
 U   ALTER TABLE ONLY public."LABS_CYCLE_CAT" DROP CONSTRAINT "SIIUP_CYCLE_CAT_name_key";
       public         postgres    false    218            �           2606    67896 #   LABS_CYCLE_CAT SIIUP_CYCLE_CAT_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."LABS_CYCLE_CAT"
    ADD CONSTRAINT "SIIUP_CYCLE_CAT_pkey" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public."LABS_CYCLE_CAT" DROP CONSTRAINT "SIIUP_CYCLE_CAT_pkey";
       public         postgres    false    218            �           2606    67916 #   LABS_GROUP_CAT SIIUP_GROUP_CAT_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."LABS_GROUP_CAT"
    ADD CONSTRAINT "SIIUP_GROUP_CAT_pkey" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public."LABS_GROUP_CAT" DROP CONSTRAINT "SIIUP_GROUP_CAT_pkey";
       public         postgres    false    220            �           2606    68020 4   LABS_MODALITY_CAT SIIUP_MODALITY_CAT_description_key 
   CONSTRAINT     z   ALTER TABLE ONLY public."LABS_MODALITY_CAT"
    ADD CONSTRAINT "SIIUP_MODALITY_CAT_description_key" UNIQUE (description);
 b   ALTER TABLE ONLY public."LABS_MODALITY_CAT" DROP CONSTRAINT "SIIUP_MODALITY_CAT_description_key";
       public         postgres    false    232            �           2606    68018 )   LABS_MODALITY_CAT SIIUP_MODALITY_CAT_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."LABS_MODALITY_CAT"
    ADD CONSTRAINT "SIIUP_MODALITY_CAT_pkey" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public."LABS_MODALITY_CAT" DROP CONSTRAINT "SIIUP_MODALITY_CAT_pkey";
       public         postgres    false    232            �           2606    68010 %   LABS_PERIOD_CAT SIIUP_PERIOD_CAT_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public."LABS_PERIOD_CAT"
    ADD CONSTRAINT "SIIUP_PERIOD_CAT_pkey" PRIMARY KEY (id);
 S   ALTER TABLE ONLY public."LABS_PERIOD_CAT" DROP CONSTRAINT "SIIUP_PERIOD_CAT_pkey";
       public         postgres    false    230            �           2606    67926 +   LABS_QUARTER_CAT SIIUP_QUARTER_CAT_name_key 
   CONSTRAINT     j   ALTER TABLE ONLY public."LABS_QUARTER_CAT"
    ADD CONSTRAINT "SIIUP_QUARTER_CAT_name_key" UNIQUE (name);
 Y   ALTER TABLE ONLY public."LABS_QUARTER_CAT" DROP CONSTRAINT "SIIUP_QUARTER_CAT_name_key";
       public         postgres    false    222            �           2606    67924 '   LABS_QUARTER_CAT SIIUP_QUARTER_CAT_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public."LABS_QUARTER_CAT"
    ADD CONSTRAINT "SIIUP_QUARTER_CAT_pkey" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public."LABS_QUARTER_CAT" DROP CONSTRAINT "SIIUP_QUARTER_CAT_pkey";
       public         postgres    false    222            �           2606    67944 #   LABS_SHIFT_CAT SIIUP_SHIFT_CAT_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."LABS_SHIFT_CAT"
    ADD CONSTRAINT "SIIUP_SHIFT_CAT_pkey" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public."LABS_SHIFT_CAT" DROP CONSTRAINT "SIIUP_SHIFT_CAT_pkey";
       public         postgres    false    224            �           2606    67992 '   LABS_SUBJECT_CAT SIIUP_SUBJECT_CAT_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public."LABS_SUBJECT_CAT"
    ADD CONSTRAINT "SIIUP_SUBJECT_CAT_pkey" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public."LABS_SUBJECT_CAT" DROP CONSTRAINT "SIIUP_SUBJECT_CAT_pkey";
       public         postgres    false    228            �           2606    68288 ,   LABS_TEACHER_CAT SIIUP_TEACHER_CAT_email_key 
   CONSTRAINT     l   ALTER TABLE ONLY public."LABS_TEACHER_CAT"
    ADD CONSTRAINT "SIIUP_TEACHER_CAT_email_key" UNIQUE (email);
 Z   ALTER TABLE ONLY public."LABS_TEACHER_CAT" DROP CONSTRAINT "SIIUP_TEACHER_CAT_email_key";
       public         postgres    false    235            �           2606    68286 '   LABS_TEACHER_CAT SIIUP_TEACHER_CAT_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public."LABS_TEACHER_CAT"
    ADD CONSTRAINT "SIIUP_TEACHER_CAT_pkey" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public."LABS_TEACHER_CAT" DROP CONSTRAINT "SIIUP_TEACHER_CAT_pkey";
       public         postgres    false    235            �           2606    68388 +   LABS_ALUM_PRATICES SIUUP_ALUM_PRATICES_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public."LABS_ALUM_PRATICES"
    ADD CONSTRAINT "SIUUP_ALUM_PRATICES_pkey" PRIMARY KEY (id);
 Y   ALTER TABLE ONLY public."LABS_ALUM_PRATICES" DROP CONSTRAINT "SIUUP_ALUM_PRATICES_pkey";
       public         postgres    false    251            �           2606    68305 C   LABS_CATEGORIES_EQUIPMENT SIUUP_CATEGORIES_EQUIPMENT_desciption_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."LABS_CATEGORIES_EQUIPMENT"
    ADD CONSTRAINT "SIUUP_CATEGORIES_EQUIPMENT_desciption_key" UNIQUE (desciption);
 q   ALTER TABLE ONLY public."LABS_CATEGORIES_EQUIPMENT" DROP CONSTRAINT "SIUUP_CATEGORIES_EQUIPMENT_desciption_key";
       public         postgres    false    237            �           2606    68303 9   LABS_CATEGORIES_EQUIPMENT SIUUP_CATEGORIES_EQUIPMENT_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public."LABS_CATEGORIES_EQUIPMENT"
    ADD CONSTRAINT "SIUUP_CATEGORIES_EQUIPMENT_pkey" PRIMARY KEY (id);
 g   ALTER TABLE ONLY public."LABS_CATEGORIES_EQUIPMENT" DROP CONSTRAINT "SIUUP_CATEGORIES_EQUIPMENT_pkey";
       public         postgres    false    237            �           2606    68316 3   LABS_EQUIPMENT_GENERAL SIUUP_EQUIPMENT_GENERAL_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public."LABS_EQUIPMENT_GENERAL"
    ADD CONSTRAINT "SIUUP_EQUIPMENT_GENERAL_pkey" PRIMARY KEY (id);
 a   ALTER TABLE ONLY public."LABS_EQUIPMENT_GENERAL" DROP CONSTRAINT "SIUUP_EQUIPMENT_GENERAL_pkey";
       public         postgres    false    239            �           2606    68326 -   LABS_LABORATORIES SIUUP_LABORATORIES_name_key 
   CONSTRAINT     l   ALTER TABLE ONLY public."LABS_LABORATORIES"
    ADD CONSTRAINT "SIUUP_LABORATORIES_name_key" UNIQUE (name);
 [   ALTER TABLE ONLY public."LABS_LABORATORIES" DROP CONSTRAINT "SIUUP_LABORATORIES_name_key";
       public         postgres    false    241            �           2606    68324 )   LABS_LABORATORIES SIUUP_LABORATORIES_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."LABS_LABORATORIES"
    ADD CONSTRAINT "SIUUP_LABORATORIES_pkey" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public."LABS_LABORATORIES" DROP CONSTRAINT "SIUUP_LABORATORIES_pkey";
       public         postgres    false    241            �           2606    68334 )   LABS_PROGRAMS_CAT SIUUP_PROGRAMS_CAT_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."LABS_PROGRAMS_CAT"
    ADD CONSTRAINT "SIUUP_PROGRAMS_CAT_pkey" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public."LABS_PROGRAMS_CAT" DROP CONSTRAINT "SIUUP_PROGRAMS_CAT_pkey";
       public         postgres    false    243            �           2606    68344 !   LABS_SCHEDULE SIUUP_SCHEDULE_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."LABS_SCHEDULE"
    ADD CONSTRAINT "SIUUP_SCHEDULE_pkey" PRIMARY KEY (id);
 O   ALTER TABLE ONLY public."LABS_SCHEDULE" DROP CONSTRAINT "SIUUP_SCHEDULE_pkey";
       public         postgres    false    245            �           2606    68354 ;   LABS_STATUS_EQUIPMENT SIUUP_STATUS_EQUIPMENT_desciption_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."LABS_STATUS_EQUIPMENT"
    ADD CONSTRAINT "SIUUP_STATUS_EQUIPMENT_desciption_key" UNIQUE (desciption);
 i   ALTER TABLE ONLY public."LABS_STATUS_EQUIPMENT" DROP CONSTRAINT "SIUUP_STATUS_EQUIPMENT_desciption_key";
       public         postgres    false    247            �           2606    68352 1   LABS_STATUS_EQUIPMENT SIUUP_STATUS_EQUIPMENT_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public."LABS_STATUS_EQUIPMENT"
    ADD CONSTRAINT "SIUUP_STATUS_EQUIPMENT_pkey" PRIMARY KEY (id);
 _   ALTER TABLE ONLY public."LABS_STATUS_EQUIPMENT" DROP CONSTRAINT "SIUUP_STATUS_EQUIPMENT_pkey";
       public         postgres    false    247            �           2606    67956 (   LABS_STATUS SIUUP_STATUS_description_key 
   CONSTRAINT     n   ALTER TABLE ONLY public."LABS_STATUS"
    ADD CONSTRAINT "SIUUP_STATUS_description_key" UNIQUE (description);
 V   ALTER TABLE ONLY public."LABS_STATUS" DROP CONSTRAINT "SIUUP_STATUS_description_key";
       public         postgres    false    226            �           2606    67952    LABS_STATUS SIUUP_STATUS_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."LABS_STATUS"
    ADD CONSTRAINT "SIUUP_STATUS_pkey" PRIMARY KEY (id);
 K   ALTER TABLE ONLY public."LABS_STATUS" DROP CONSTRAINT "SIUUP_STATUS_pkey";
       public         postgres    false    226            �           2606    67954 #   LABS_STATUS SIUUP_STATUS_status_key 
   CONSTRAINT     d   ALTER TABLE ONLY public."LABS_STATUS"
    ADD CONSTRAINT "SIUUP_STATUS_status_key" UNIQUE (status);
 Q   ALTER TABLE ONLY public."LABS_STATUS" DROP CONSTRAINT "SIUUP_STATUS_status_key";
       public         postgres    false    226            �           2606    68362 3   LABS_TEACHER_PRACTICES SIUUP_TEACHER_PRACTICES_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public."LABS_TEACHER_PRACTICES"
    ADD CONSTRAINT "SIUUP_TEACHER_PRACTICES_pkey" PRIMARY KEY (id);
 a   ALTER TABLE ONLY public."LABS_TEACHER_PRACTICES" DROP CONSTRAINT "SIUUP_TEACHER_PRACTICES_pkey";
       public         postgres    false    249            W           2606    67851    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    203            \           2606    67778 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    205    205            _           2606    67741 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    205            Y           2606    67731    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    203            R           2606    67769 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    201    201            T           2606    67723 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    201            g           2606    67759 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    209            j           2606    67793 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    209    209            a           2606    67749    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    207            m           2606    67767 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    211            p           2606    67807 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    211    211            d           2606    67845     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    207            �           2606    68604 @   dashboard_userdashboardmodule dashboard_userdashboardmodule_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.dashboard_userdashboardmodule
    ADD CONSTRAINT dashboard_userdashboardmodule_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.dashboard_userdashboardmodule DROP CONSTRAINT dashboard_userdashboardmodule_pkey;
       public         postgres    false    257            s           2606    67831 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    213            M           2606    67715 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    199    199            O           2606    67713 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    199            K           2606    67705 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    197            w           2606    67860 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    214            �           2606    68570    jet_bookmark jet_bookmark_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.jet_bookmark
    ADD CONSTRAINT jet_bookmark_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.jet_bookmark DROP CONSTRAINT jet_bookmark_pkey;
       public         postgres    false    253            �           2606    68578 0   jet_pinnedapplication jet_pinnedapplication_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.jet_pinnedapplication
    ADD CONSTRAINT jet_pinnedapplication_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.jet_pinnedapplication DROP CONSTRAINT jet_pinnedapplication_pkey;
       public         postgres    false    255            y           1259    68092 4   SIIUP_CAREER_CAT_academic_program_name_0018feb1_like    INDEX     �   CREATE INDEX "SIIUP_CAREER_CAT_academic_program_name_0018feb1_like" ON public."LABS_CAREER_CAT" USING btree (academic_program_name varchar_pattern_ops);
 J   DROP INDEX public."SIIUP_CAREER_CAT_academic_program_name_0018feb1_like";
       public         postgres    false    216            z           1259    68094 8   SIIUP_CAREER_CAT_academic_program_name_gdp_747f3ba3_like    INDEX     �   CREATE INDEX "SIIUP_CAREER_CAT_academic_program_name_gdp_747f3ba3_like" ON public."LABS_CAREER_CAT" USING btree (academic_program_name_gdp varchar_pattern_ops);
 N   DROP INDEX public."SIIUP_CAREER_CAT_academic_program_name_gdp_747f3ba3_like";
       public         postgres    false    216                       1259    68093 (   SIIUP_CAREER_CAT_homosigla_1af38af9_like    INDEX     �   CREATE INDEX "SIIUP_CAREER_CAT_homosigla_1af38af9_like" ON public."LABS_CAREER_CAT" USING btree (homosigla varchar_pattern_ops);
 >   DROP INDEX public."SIIUP_CAREER_CAT_homosigla_1af38af9_like";
       public         postgres    false    216            �           1259    68217 %   SIIUP_CAREER_CAT_modality_id_0a39ba0f    INDEX     l   CREATE INDEX "SIIUP_CAREER_CAT_modality_id_0a39ba0f" ON public."LABS_CAREER_CAT" USING btree (modality_id);
 ;   DROP INDEX public."SIIUP_CAREER_CAT_modality_id_0a39ba0f";
       public         postgres    false    216            �           1259    68218 #   SIIUP_CAREER_CAT_status_id_f96f3930    INDEX     h   CREATE INDEX "SIIUP_CAREER_CAT_status_id_f96f3930" ON public."LABS_CAREER_CAT" USING btree (status_id);
 9   DROP INDEX public."SIIUP_CAREER_CAT_status_id_f96f3930";
       public         postgres    false    216            �           1259    68097 "   SIIUP_CYCLE_CAT_name_3386e2b2_like    INDEX     u   CREATE INDEX "SIIUP_CYCLE_CAT_name_3386e2b2_like" ON public."LABS_CYCLE_CAT" USING btree (name varchar_pattern_ops);
 8   DROP INDEX public."SIIUP_CYCLE_CAT_name_3386e2b2_like";
       public         postgres    false    218            �           1259    68204 "   SIIUP_CYCLE_CAT_status_id_46f571ce    INDEX     f   CREATE INDEX "SIIUP_CYCLE_CAT_status_id_46f571ce" ON public."LABS_CYCLE_CAT" USING btree (status_id);
 8   DROP INDEX public."SIIUP_CYCLE_CAT_status_id_46f571ce";
       public         postgres    false    218            �           1259    68109 "   SIIUP_GROUP_CAT_career_id_0dc07730    INDEX     f   CREATE INDEX "SIIUP_GROUP_CAT_career_id_0dc07730" ON public."LABS_GROUP_CAT" USING btree (career_id);
 8   DROP INDEX public."SIIUP_GROUP_CAT_career_id_0dc07730";
       public         postgres    false    220            �           1259    68199 "   SIIUP_GROUP_CAT_period_id_cdedacba    INDEX     f   CREATE INDEX "SIIUP_GROUP_CAT_period_id_cdedacba" ON public."LABS_GROUP_CAT" USING btree (period_id);
 8   DROP INDEX public."SIIUP_GROUP_CAT_period_id_cdedacba";
       public         postgres    false    220            �           1259    68200 #   SIIUP_GROUP_CAT_quarter_id_62ab8649    INDEX     h   CREATE INDEX "SIIUP_GROUP_CAT_quarter_id_62ab8649" ON public."LABS_GROUP_CAT" USING btree (quarter_id);
 9   DROP INDEX public."SIIUP_GROUP_CAT_quarter_id_62ab8649";
       public         postgres    false    220            �           1259    68201 !   SIIUP_GROUP_CAT_shift_id_58d39466    INDEX     d   CREATE INDEX "SIIUP_GROUP_CAT_shift_id_58d39466" ON public."LABS_GROUP_CAT" USING btree (shift_id);
 7   DROP INDEX public."SIIUP_GROUP_CAT_shift_id_58d39466";
       public         postgres    false    220            �           1259    68202 "   SIIUP_GROUP_CAT_status_id_605142e2    INDEX     f   CREATE INDEX "SIIUP_GROUP_CAT_status_id_605142e2" ON public."LABS_GROUP_CAT" USING btree (status_id);
 8   DROP INDEX public."SIIUP_GROUP_CAT_status_id_605142e2";
       public         postgres    false    220            �           1259    68177 ,   SIIUP_MODALITY_CAT_description_5c46923b_like    INDEX     �   CREATE INDEX "SIIUP_MODALITY_CAT_description_5c46923b_like" ON public."LABS_MODALITY_CAT" USING btree (description varchar_pattern_ops);
 B   DROP INDEX public."SIIUP_MODALITY_CAT_description_5c46923b_like";
       public         postgres    false    232            �           1259    68178 %   SIIUP_MODALITY_CAT_status_id_c6769341    INDEX     l   CREATE INDEX "SIIUP_MODALITY_CAT_status_id_c6769341" ON public."LABS_MODALITY_CAT" USING btree (status_id);
 ;   DROP INDEX public."SIIUP_MODALITY_CAT_status_id_c6769341";
       public         postgres    false    232            �           1259    68170 "   SIIUP_PERIOD_CAT_cycle_id_ba79930f    INDEX     f   CREATE INDEX "SIIUP_PERIOD_CAT_cycle_id_ba79930f" ON public."LABS_PERIOD_CAT" USING btree (cycle_id);
 8   DROP INDEX public."SIIUP_PERIOD_CAT_cycle_id_ba79930f";
       public         postgres    false    230            �           1259    68171 #   SIIUP_PERIOD_CAT_status_id_2eb79177    INDEX     h   CREATE INDEX "SIIUP_PERIOD_CAT_status_id_2eb79177" ON public."LABS_PERIOD_CAT" USING btree (status_id);
 9   DROP INDEX public."SIIUP_PERIOD_CAT_status_id_2eb79177";
       public         postgres    false    230            �           1259    68111 $   SIIUP_QUARTER_CAT_name_433a006f_like    INDEX     y   CREATE INDEX "SIIUP_QUARTER_CAT_name_433a006f_like" ON public."LABS_QUARTER_CAT" USING btree (name varchar_pattern_ops);
 :   DROP INDEX public."SIIUP_QUARTER_CAT_name_433a006f_like";
       public         postgres    false    222            �           1259    68149 %   SIIUP_SUBJECT_CAT_quarter_id_f47e038c    INDEX     l   CREATE INDEX "SIIUP_SUBJECT_CAT_quarter_id_f47e038c" ON public."LABS_SUBJECT_CAT" USING btree (quarter_id);
 ;   DROP INDEX public."SIIUP_SUBJECT_CAT_quarter_id_f47e038c";
       public         postgres    false    228            �           1259    68150 $   SIIUP_SUBJECT_CAT_status_id_8dc978d1    INDEX     j   CREATE INDEX "SIIUP_SUBJECT_CAT_status_id_8dc978d1" ON public."LABS_SUBJECT_CAT" USING btree (status_id);
 :   DROP INDEX public."SIIUP_SUBJECT_CAT_status_id_8dc978d1";
       public         postgres    false    228            �           1259    68294 %   SIIUP_TEACHER_CAT_email_5f8edf5c_like    INDEX     {   CREATE INDEX "SIIUP_TEACHER_CAT_email_5f8edf5c_like" ON public."LABS_TEACHER_CAT" USING btree (email varchar_pattern_ops);
 ;   DROP INDEX public."SIIUP_TEACHER_CAT_email_5f8edf5c_like";
       public         postgres    false    235            �           1259    68295 ,   SIIUP_TEACHER_CAT_teacher_status_id_2f733f98    INDEX     z   CREATE INDEX "SIIUP_TEACHER_CAT_teacher_status_id_2f733f98" ON public."LABS_TEACHER_CAT" USING btree (teacher_status_id);
 B   DROP INDEX public."SIIUP_TEACHER_CAT_teacher_status_id_2f733f98";
       public         postgres    false    235            �           1259    68498 *   SIUUP_ALUM_PRATICES_enrollment_id_013d9f53    INDEX     v   CREATE INDEX "SIUUP_ALUM_PRATICES_enrollment_id_013d9f53" ON public."LABS_ALUM_PRATICES" USING btree (enrollment_id);
 @   DROP INDEX public."SIUUP_ALUM_PRATICES_enrollment_id_013d9f53";
       public         postgres    false    251            �           1259    68499 )   SIUUP_ALUM_PRATICES_equipment_id_2cc92772    INDEX     t   CREATE INDEX "SIUUP_ALUM_PRATICES_equipment_id_2cc92772" ON public."LABS_ALUM_PRATICES" USING btree (equipment_id);
 ?   DROP INDEX public."SIUUP_ALUM_PRATICES_equipment_id_2cc92772";
       public         postgres    false    251            �           1259    68500 *   SIUUP_ALUM_PRATICES_laboratory_id_9a89237d    INDEX     v   CREATE INDEX "SIUUP_ALUM_PRATICES_laboratory_id_9a89237d" ON public."LABS_ALUM_PRATICES" USING btree (laboratory_id);
 @   DROP INDEX public."SIUUP_ALUM_PRATICES_laboratory_id_9a89237d";
       public         postgres    false    251            �           1259    68501 '   SIUUP_ALUM_PRATICES_program_id_3a67132a    INDEX     p   CREATE INDEX "SIUUP_ALUM_PRATICES_program_id_3a67132a" ON public."LABS_ALUM_PRATICES" USING btree (program_id);
 =   DROP INDEX public."SIUUP_ALUM_PRATICES_program_id_3a67132a";
       public         postgres    false    251            �           1259    68502 (   SIUUP_ALUM_PRATICES_schedule_id_1e191b37    INDEX     r   CREATE INDEX "SIUUP_ALUM_PRATICES_schedule_id_1e191b37" ON public."LABS_ALUM_PRATICES" USING btree (schedule_id);
 >   DROP INDEX public."SIUUP_ALUM_PRATICES_schedule_id_1e191b37";
       public         postgres    false    251            �           1259    68389 3   SIUUP_CATEGORIES_EQUIPMENT_desciption_b5c51399_like    INDEX     �   CREATE INDEX "SIUUP_CATEGORIES_EQUIPMENT_desciption_b5c51399_like" ON public."LABS_CATEGORIES_EQUIPMENT" USING btree (desciption varchar_pattern_ops);
 I   DROP INDEX public."SIUUP_CATEGORIES_EQUIPMENT_desciption_b5c51399_like";
       public         postgres    false    237            �           1259    68395 ,   SIUUP_EQUIPMENT_GENERAL_category_id_2b69a292    INDEX     z   CREATE INDEX "SIUUP_EQUIPMENT_GENERAL_category_id_2b69a292" ON public."LABS_EQUIPMENT_GENERAL" USING btree (category_id);
 B   DROP INDEX public."SIUUP_EQUIPMENT_GENERAL_category_id_2b69a292";
       public         postgres    false    239            �           1259    68471 .   SIUUP_EQUIPMENT_GENERAL_laboratory_id_04797722    INDEX     ~   CREATE INDEX "SIUUP_EQUIPMENT_GENERAL_laboratory_id_04797722" ON public."LABS_EQUIPMENT_GENERAL" USING btree (laboratory_id);
 D   DROP INDEX public."SIUUP_EQUIPMENT_GENERAL_laboratory_id_04797722";
       public         postgres    false    239            �           1259    68472 *   SIUUP_EQUIPMENT_GENERAL_status_id_1a720619    INDEX     v   CREATE INDEX "SIUUP_EQUIPMENT_GENERAL_status_id_1a720619" ON public."LABS_EQUIPMENT_GENERAL" USING btree (status_id);
 @   DROP INDEX public."SIUUP_EQUIPMENT_GENERAL_status_id_1a720619";
       public         postgres    false    239            �           1259    68396 %   SIUUP_LABORATORIES_name_4e733c99_like    INDEX     {   CREATE INDEX "SIUUP_LABORATORIES_name_4e733c99_like" ON public."LABS_LABORATORIES" USING btree (name varchar_pattern_ops);
 ;   DROP INDEX public."SIUUP_LABORATORIES_name_4e733c99_like";
       public         postgres    false    241            �           1259    68515 %   SIUUP_PROGRAMS_CAT_status_id_47e60d5f    INDEX     l   CREATE INDEX "SIUUP_PROGRAMS_CAT_status_id_47e60d5f" ON public."LABS_PROGRAMS_CAT" USING btree (status_id);
 ;   DROP INDEX public."SIUUP_PROGRAMS_CAT_status_id_47e60d5f";
       public         postgres    false    243            �           1259    68428 %   SIUUP_SCHEDULE_Laboratory_id_ed36a840    INDEX     l   CREATE INDEX "SIUUP_SCHEDULE_Laboratory_id_ed36a840" ON public."LABS_SCHEDULE" USING btree (laboratory_id);
 ;   DROP INDEX public."SIUUP_SCHEDULE_Laboratory_id_ed36a840";
       public         postgres    false    245            �           1259    68429     SIUUP_SCHEDULE_group_id_2c573322    INDEX     b   CREATE INDEX "SIUUP_SCHEDULE_group_id_2c573322" ON public."LABS_SCHEDULE" USING btree (group_id);
 6   DROP INDEX public."SIUUP_SCHEDULE_group_id_2c573322";
       public         postgres    false    245            �           1259    68430 !   SIUUP_SCHEDULE_period_id_615165e4    INDEX     d   CREATE INDEX "SIUUP_SCHEDULE_period_id_615165e4" ON public."LABS_SCHEDULE" USING btree (period_id);
 7   DROP INDEX public."SIUUP_SCHEDULE_period_id_615165e4";
       public         postgres    false    245            �           1259    68431 !   SIUUP_SCHEDULE_status_id_ca9f54d9    INDEX     d   CREATE INDEX "SIUUP_SCHEDULE_status_id_ca9f54d9" ON public."LABS_SCHEDULE" USING btree (status_id);
 7   DROP INDEX public."SIUUP_SCHEDULE_status_id_ca9f54d9";
       public         postgres    false    245            �           1259    68432 "   SIUUP_SCHEDULE_subject_id_14a0271b    INDEX     f   CREATE INDEX "SIUUP_SCHEDULE_subject_id_14a0271b" ON public."LABS_SCHEDULE" USING btree (subject_id);
 8   DROP INDEX public."SIUUP_SCHEDULE_subject_id_14a0271b";
       public         postgres    false    245            �           1259    68433 "   SIUUP_SCHEDULE_teacher_id_14d752fe    INDEX     f   CREATE INDEX "SIUUP_SCHEDULE_teacher_id_14d752fe" ON public."LABS_SCHEDULE" USING btree (teacher_id);
 8   DROP INDEX public."SIUUP_SCHEDULE_teacher_id_14d752fe";
       public         postgres    false    245            �           1259    68434 /   SIUUP_STATUS_EQUIPMENT_desciption_5d5e9a90_like    INDEX     �   CREATE INDEX "SIUUP_STATUS_EQUIPMENT_desciption_5d5e9a90_like" ON public."LABS_STATUS_EQUIPMENT" USING btree (desciption varchar_pattern_ops);
 E   DROP INDEX public."SIUUP_STATUS_EQUIPMENT_desciption_5d5e9a90_like";
       public         postgres    false    247            �           1259    68114 &   SIUUP_STATUS_description_4be949fe_like    INDEX     }   CREATE INDEX "SIUUP_STATUS_description_4be949fe_like" ON public."LABS_STATUS" USING btree (description varchar_pattern_ops);
 <   DROP INDEX public."SIUUP_STATUS_description_4be949fe_like";
       public         postgres    false    226            �           1259    68113 !   SIUUP_STATUS_status_735db4b6_like    INDEX     s   CREATE INDEX "SIUUP_STATUS_status_735db4b6_like" ON public."LABS_STATUS" USING btree (status varchar_pattern_ops);
 7   DROP INDEX public."SIUUP_STATUS_status_735db4b6_like";
       public         postgres    false    226            �           1259    68455 -   SIUUP_TEACHER_PRACTICES_equipment_id_400c829d    INDEX     |   CREATE INDEX "SIUUP_TEACHER_PRACTICES_equipment_id_400c829d" ON public."LABS_TEACHER_PRACTICES" USING btree (equipment_id);
 C   DROP INDEX public."SIUUP_TEACHER_PRACTICES_equipment_id_400c829d";
       public         postgres    false    249            �           1259    68456 .   SIUUP_TEACHER_PRACTICES_laboratory_id_20067035    INDEX     ~   CREATE INDEX "SIUUP_TEACHER_PRACTICES_laboratory_id_20067035" ON public."LABS_TEACHER_PRACTICES" USING btree (laboratory_id);
 D   DROP INDEX public."SIUUP_TEACHER_PRACTICES_laboratory_id_20067035";
       public         postgres    false    249            �           1259    68457 ,   SIUUP_TEACHER_PRACTICES_schedule_id_e7877ed0    INDEX     z   CREATE INDEX "SIUUP_TEACHER_PRACTICES_schedule_id_e7877ed0" ON public."LABS_TEACHER_PRACTICES" USING btree (schedule_id);
 B   DROP INDEX public."SIUUP_TEACHER_PRACTICES_schedule_id_e7877ed0";
       public         postgres    false    249            �           1259    68458 +   SIUUP_TEACHER_PRACTICES_teacher_id_3b30a282    INDEX     x   CREATE INDEX "SIUUP_TEACHER_PRACTICES_teacher_id_3b30a282" ON public."LABS_TEACHER_PRACTICES" USING btree (teacher_id);
 A   DROP INDEX public."SIUUP_TEACHER_PRACTICES_teacher_id_3b30a282";
       public         postgres    false    249            U           1259    67852    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    203            Z           1259    67789 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    205            ]           1259    67790 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    205            P           1259    67775 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    201            e           1259    67805 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    209            h           1259    67804 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    209            k           1259    67819 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    211            n           1259    67818 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    211            b           1259    67846     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    207            �           1259    68605 .   dashboard_userdashboardmodule_user_id_97c13132    INDEX     {   CREATE INDEX dashboard_userdashboardmodule_user_id_97c13132 ON public.dashboard_userdashboardmodule USING btree (user_id);
 B   DROP INDEX public.dashboard_userdashboardmodule_user_id_97c13132;
       public         postgres    false    257            q           1259    67842 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    213            t           1259    67843 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    213            u           1259    67862 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    214            x           1259    67861 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    214            �           1259    68584    jet_bookmark_user_id_8efdc332    INDEX     Y   CREATE INDEX jet_bookmark_user_id_8efdc332 ON public.jet_bookmark USING btree (user_id);
 1   DROP INDEX public.jet_bookmark_user_id_8efdc332;
       public         postgres    false    253            �           1259    68590 &   jet_pinnedapplication_user_id_7765bcf9    INDEX     k   CREATE INDEX jet_pinnedapplication_user_id_7765bcf9 ON public.jet_pinnedapplication USING btree (user_id);
 :   DROP INDEX public.jet_pinnedapplication_user_id_7765bcf9;
       public         postgres    false    255            �           2606    68082 N   LABS_CAREER_CAT SIIUP_CAREER_CAT_modality_id_0a39ba0f_fk_SIIUP_MODALITY_CAT_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_CAREER_CAT"
    ADD CONSTRAINT "SIIUP_CAREER_CAT_modality_id_0a39ba0f_fk_SIIUP_MODALITY_CAT_id" FOREIGN KEY (modality_id) REFERENCES public."LABS_MODALITY_CAT"(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public."LABS_CAREER_CAT" DROP CONSTRAINT "SIIUP_CAREER_CAT_modality_id_0a39ba0f_fk_SIIUP_MODALITY_CAT_id";
       public       postgres    false    216    2990    232            �           2606    68516 F   LABS_CAREER_CAT SIIUP_CAREER_CAT_status_id_f96f3930_fk_SIUUP_STATUS_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_CAREER_CAT"
    ADD CONSTRAINT "SIIUP_CAREER_CAT_status_id_f96f3930_fk_SIUUP_STATUS_id" FOREIGN KEY (status_id) REFERENCES public."LABS_STATUS"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."LABS_CAREER_CAT" DROP CONSTRAINT "SIIUP_CAREER_CAT_status_id_f96f3930_fk_SIUUP_STATUS_id";
       public       postgres    false    226    216    2974            �           2606    68069 D   LABS_CYCLE_CAT SIIUP_CYCLE_CAT_status_id_46f571ce_fk_SIUUP_STATUS_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_CYCLE_CAT"
    ADD CONSTRAINT "SIIUP_CYCLE_CAT_status_id_46f571ce_fk_SIUUP_STATUS_id" FOREIGN KEY (status_id) REFERENCES public."LABS_STATUS"(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public."LABS_CYCLE_CAT" DROP CONSTRAINT "SIIUP_CYCLE_CAT_status_id_46f571ce_fk_SIUUP_STATUS_id";
       public       postgres    false    2974    226    218            �           2606    68099 H   LABS_GROUP_CAT SIIUP_GROUP_CAT_career_id_0dc07730_fk_SIIUP_CAREER_CAT_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_GROUP_CAT"
    ADD CONSTRAINT "SIIUP_GROUP_CAT_career_id_0dc07730_fk_SIIUP_CAREER_CAT_id" FOREIGN KEY (career_id) REFERENCES public."LABS_CAREER_CAT"(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public."LABS_GROUP_CAT" DROP CONSTRAINT "SIIUP_GROUP_CAT_career_id_0dc07730_fk_SIIUP_CAREER_CAT_id";
       public       postgres    false    220    216    2948            �           2606    68044 H   LABS_GROUP_CAT SIIUP_GROUP_CAT_period_id_cdedacba_fk_SIIUP_PERIOD_CAT_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_GROUP_CAT"
    ADD CONSTRAINT "SIIUP_GROUP_CAT_period_id_cdedacba_fk_SIIUP_PERIOD_CAT_id" FOREIGN KEY (period_id) REFERENCES public."LABS_PERIOD_CAT"(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public."LABS_GROUP_CAT" DROP CONSTRAINT "SIIUP_GROUP_CAT_period_id_cdedacba_fk_SIIUP_PERIOD_CAT_id";
       public       postgres    false    2984    220    230            �           2606    68049 J   LABS_GROUP_CAT SIIUP_GROUP_CAT_quarter_id_62ab8649_fk_SIIUP_QUARTER_CAT_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_GROUP_CAT"
    ADD CONSTRAINT "SIIUP_GROUP_CAT_quarter_id_62ab8649_fk_SIIUP_QUARTER_CAT_id" FOREIGN KEY (quarter_id) REFERENCES public."LABS_QUARTER_CAT"(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public."LABS_GROUP_CAT" DROP CONSTRAINT "SIIUP_GROUP_CAT_quarter_id_62ab8649_fk_SIIUP_QUARTER_CAT_id";
       public       postgres    false    2967    220    222            �           2606    68054 F   LABS_GROUP_CAT SIIUP_GROUP_CAT_shift_id_58d39466_fk_SIIUP_SHIFT_CAT_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_GROUP_CAT"
    ADD CONSTRAINT "SIIUP_GROUP_CAT_shift_id_58d39466_fk_SIIUP_SHIFT_CAT_id" FOREIGN KEY (shift_id) REFERENCES public."LABS_SHIFT_CAT"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."LABS_GROUP_CAT" DROP CONSTRAINT "SIIUP_GROUP_CAT_shift_id_58d39466_fk_SIIUP_SHIFT_CAT_id";
       public       postgres    false    224    2969    220            �           2606    68059 D   LABS_GROUP_CAT SIIUP_GROUP_CAT_status_id_605142e2_fk_SIUUP_STATUS_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_GROUP_CAT"
    ADD CONSTRAINT "SIIUP_GROUP_CAT_status_id_605142e2_fk_SIUUP_STATUS_id" FOREIGN KEY (status_id) REFERENCES public."LABS_STATUS"(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public."LABS_GROUP_CAT" DROP CONSTRAINT "SIIUP_GROUP_CAT_status_id_605142e2_fk_SIUUP_STATUS_id";
       public       postgres    false    226    2974    220                       2606    68172 J   LABS_MODALITY_CAT SIIUP_MODALITY_CAT_status_id_c6769341_fk_SIUUP_STATUS_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_MODALITY_CAT"
    ADD CONSTRAINT "SIIUP_MODALITY_CAT_status_id_c6769341_fk_SIUUP_STATUS_id" FOREIGN KEY (status_id) REFERENCES public."LABS_STATUS"(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public."LABS_MODALITY_CAT" DROP CONSTRAINT "SIIUP_MODALITY_CAT_status_id_c6769341_fk_SIUUP_STATUS_id";
       public       postgres    false    226    2974    232                        2606    68160 H   LABS_PERIOD_CAT SIIUP_PERIOD_CAT_cycle_id_ba79930f_fk_SIIUP_CYCLE_CAT_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_PERIOD_CAT"
    ADD CONSTRAINT "SIIUP_PERIOD_CAT_cycle_id_ba79930f_fk_SIIUP_CYCLE_CAT_id" FOREIGN KEY (cycle_id) REFERENCES public."LABS_CYCLE_CAT"(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public."LABS_PERIOD_CAT" DROP CONSTRAINT "SIIUP_PERIOD_CAT_cycle_id_ba79930f_fk_SIIUP_CYCLE_CAT_id";
       public       postgres    false    218    230    2954                       2606    68165 F   LABS_PERIOD_CAT SIIUP_PERIOD_CAT_status_id_2eb79177_fk_SIUUP_STATUS_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_PERIOD_CAT"
    ADD CONSTRAINT "SIIUP_PERIOD_CAT_status_id_2eb79177_fk_SIUUP_STATUS_id" FOREIGN KEY (status_id) REFERENCES public."LABS_STATUS"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."LABS_PERIOD_CAT" DROP CONSTRAINT "SIIUP_PERIOD_CAT_status_id_2eb79177_fk_SIUUP_STATUS_id";
       public       postgres    false    226    2974    230            �           2606    68129 N   LABS_SUBJECT_CAT SIIUP_SUBJECT_CAT_quarter_id_f47e038c_fk_SIIUP_QUARTER_CAT_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_SUBJECT_CAT"
    ADD CONSTRAINT "SIIUP_SUBJECT_CAT_quarter_id_f47e038c_fk_SIIUP_QUARTER_CAT_id" FOREIGN KEY (quarter_id) REFERENCES public."LABS_QUARTER_CAT"(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public."LABS_SUBJECT_CAT" DROP CONSTRAINT "SIIUP_SUBJECT_CAT_quarter_id_f47e038c_fk_SIIUP_QUARTER_CAT_id";
       public       postgres    false    222    2967    228            �           2606    68541 H   LABS_SUBJECT_CAT SIIUP_SUBJECT_CAT_status_id_8dc978d1_fk_SIUUP_STATUS_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_SUBJECT_CAT"
    ADD CONSTRAINT "SIIUP_SUBJECT_CAT_status_id_8dc978d1_fk_SIUUP_STATUS_id" FOREIGN KEY (status_id) REFERENCES public."LABS_STATUS"(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public."LABS_SUBJECT_CAT" DROP CONSTRAINT "SIIUP_SUBJECT_CAT_status_id_8dc978d1_fk_SIUUP_STATUS_id";
       public       postgres    false    228    226    2974                       2606    68521 P   LABS_TEACHER_CAT SIIUP_TEACHER_CAT_teacher_status_id_2f733f98_fk_SIUUP_STATUS_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_TEACHER_CAT"
    ADD CONSTRAINT "SIIUP_TEACHER_CAT_teacher_status_id_2f733f98_fk_SIUUP_STATUS_id" FOREIGN KEY (teacher_status_id) REFERENCES public."LABS_STATUS"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."LABS_TEACHER_CAT" DROP CONSTRAINT "SIIUP_TEACHER_CAT_teacher_status_id_2f733f98_fk_SIUUP_STATUS_id";
       public       postgres    false    235    226    2974                       2606    72700 J   LABS_ALUM_PRATICES SIUUP_ALUM_PRATICES_enrollment_id_013d9f53_fk_SIIUP_ALU    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_ALUM_PRATICES"
    ADD CONSTRAINT "SIUUP_ALUM_PRATICES_enrollment_id_013d9f53_fk_SIIUP_ALU" FOREIGN KEY (enrollment_id) REFERENCES public."LABS_ALUMN_CAT"(enrollment) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public."LABS_ALUM_PRATICES" DROP CONSTRAINT "SIUUP_ALUM_PRATICES_enrollment_id_013d9f53_fk_SIIUP_ALU";
       public       postgres    false    2993    233    251                       2606    72705 I   LABS_ALUM_PRATICES SIUUP_ALUM_PRATICES_equipment_id_2cc92772_fk_SIUUP_EQU    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_ALUM_PRATICES"
    ADD CONSTRAINT "SIUUP_ALUM_PRATICES_equipment_id_2cc92772_fk_SIUUP_EQU" FOREIGN KEY (equipment_id) REFERENCES public."LABS_EQUIPMENT_GENERAL"(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public."LABS_ALUM_PRATICES" DROP CONSTRAINT "SIUUP_ALUM_PRATICES_equipment_id_2cc92772_fk_SIUUP_EQU";
       public       postgres    false    3008    239    251                       2606    72715 J   LABS_ALUM_PRATICES SIUUP_ALUM_PRATICES_laboratory_id_9a89237d_fk_SIUUP_LAB    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_ALUM_PRATICES"
    ADD CONSTRAINT "SIUUP_ALUM_PRATICES_laboratory_id_9a89237d_fk_SIUUP_LAB" FOREIGN KEY (laboratory_id) REFERENCES public."LABS_LABORATORIES"(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public."LABS_ALUM_PRATICES" DROP CONSTRAINT "SIUUP_ALUM_PRATICES_laboratory_id_9a89237d_fk_SIUUP_LAB";
       public       postgres    false    251    241    3014                       2606    68488 G   LABS_ALUM_PRATICES SIUUP_ALUM_PRATICES_program_id_3a67132a_fk_SIUUP_PRO    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_ALUM_PRATICES"
    ADD CONSTRAINT "SIUUP_ALUM_PRATICES_program_id_3a67132a_fk_SIUUP_PRO" FOREIGN KEY (program_id) REFERENCES public."LABS_PROGRAMS_CAT"(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public."LABS_ALUM_PRATICES" DROP CONSTRAINT "SIUUP_ALUM_PRATICES_program_id_3a67132a_fk_SIUUP_PRO";
       public       postgres    false    3016    243    251                       2606    68493 P   LABS_ALUM_PRATICES SIUUP_ALUM_PRATICES_schedule_id_1e191b37_fk_SIUUP_SCHEDULE_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_ALUM_PRATICES"
    ADD CONSTRAINT "SIUUP_ALUM_PRATICES_schedule_id_1e191b37_fk_SIUUP_SCHEDULE_id" FOREIGN KEY (schedule_id) REFERENCES public."LABS_SCHEDULE"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."LABS_ALUM_PRATICES" DROP CONSTRAINT "SIUUP_ALUM_PRATICES_schedule_id_1e191b37_fk_SIUUP_SCHEDULE_id";
       public       postgres    false    251    3022    245                       2606    68390 M   LABS_EQUIPMENT_GENERAL SIUUP_EQUIPMENT_GENE_category_id_2b69a292_fk_SIUUP_CAT    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_EQUIPMENT_GENERAL"
    ADD CONSTRAINT "SIUUP_EQUIPMENT_GENE_category_id_2b69a292_fk_SIUUP_CAT" FOREIGN KEY (category_id) REFERENCES public."LABS_CATEGORIES_EQUIPMENT"(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public."LABS_EQUIPMENT_GENERAL" DROP CONSTRAINT "SIUUP_EQUIPMENT_GENE_category_id_2b69a292_fk_SIUUP_CAT";
       public       postgres    false    239    3004    237                       2606    68371 O   LABS_EQUIPMENT_GENERAL SIUUP_EQUIPMENT_GENE_laboratory_id_04797722_fk_SIUUP_LAB    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_EQUIPMENT_GENERAL"
    ADD CONSTRAINT "SIUUP_EQUIPMENT_GENE_laboratory_id_04797722_fk_SIUUP_LAB" FOREIGN KEY (laboratory_id) REFERENCES public."LABS_LABORATORIES"(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."LABS_EQUIPMENT_GENERAL" DROP CONSTRAINT "SIUUP_EQUIPMENT_GENE_laboratory_id_04797722_fk_SIUUP_LAB";
       public       postgres    false    241    3014    239                       2606    68376 K   LABS_EQUIPMENT_GENERAL SIUUP_EQUIPMENT_GENE_status_id_1a720619_fk_SIUUP_STA    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_EQUIPMENT_GENERAL"
    ADD CONSTRAINT "SIUUP_EQUIPMENT_GENE_status_id_1a720619_fk_SIUUP_STA" FOREIGN KEY (status_id) REFERENCES public."LABS_STATUS_EQUIPMENT"(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public."LABS_EQUIPMENT_GENERAL" DROP CONSTRAINT "SIUUP_EQUIPMENT_GENE_status_id_1a720619_fk_SIUUP_STA";
       public       postgres    false    239    247    3030                       2606    68526 D   LABS_PROGRAMS_CAT SIUUP_PROGRAMS_CAT_status_id_47e60d5f_fk_SIUUP_STA    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_PROGRAMS_CAT"
    ADD CONSTRAINT "SIUUP_PROGRAMS_CAT_status_id_47e60d5f_fk_SIUUP_STA" FOREIGN KEY (status_id) REFERENCES public."LABS_STATUS_EQUIPMENT"(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public."LABS_PROGRAMS_CAT" DROP CONSTRAINT "SIUUP_PROGRAMS_CAT_status_id_47e60d5f_fk_SIUUP_STA";
       public       postgres    false    243    247    3030                       2606    68403 D   LABS_SCHEDULE SIUUP_SCHEDULE_group_id_2c573322_fk_SIIUP_GROUP_CAT_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_SCHEDULE"
    ADD CONSTRAINT "SIUUP_SCHEDULE_group_id_2c573322_fk_SIIUP_GROUP_CAT_id" FOREIGN KEY (group_id) REFERENCES public."LABS_GROUP_CAT"(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public."LABS_SCHEDULE" DROP CONSTRAINT "SIUUP_SCHEDULE_group_id_2c573322_fk_SIIUP_GROUP_CAT_id";
       public       postgres    false    220    2959    245                       2606    68531 L   LABS_SCHEDULE SIUUP_SCHEDULE_laboratory_id_56224a60_fk_SIUUP_LABORATORIES_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_SCHEDULE"
    ADD CONSTRAINT "SIUUP_SCHEDULE_laboratory_id_56224a60_fk_SIUUP_LABORATORIES_id" FOREIGN KEY (laboratory_id) REFERENCES public."LABS_LABORATORIES"(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public."LABS_SCHEDULE" DROP CONSTRAINT "SIUUP_SCHEDULE_laboratory_id_56224a60_fk_SIUUP_LABORATORIES_id";
       public       postgres    false    245    241    3014            	           2606    68408 F   LABS_SCHEDULE SIUUP_SCHEDULE_period_id_615165e4_fk_SIIUP_PERIOD_CAT_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_SCHEDULE"
    ADD CONSTRAINT "SIUUP_SCHEDULE_period_id_615165e4_fk_SIIUP_PERIOD_CAT_id" FOREIGN KEY (period_id) REFERENCES public."LABS_PERIOD_CAT"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."LABS_SCHEDULE" DROP CONSTRAINT "SIUUP_SCHEDULE_period_id_615165e4_fk_SIIUP_PERIOD_CAT_id";
       public       postgres    false    2984    230    245            
           2606    68413 B   LABS_SCHEDULE SIUUP_SCHEDULE_status_id_ca9f54d9_fk_SIUUP_STATUS_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_SCHEDULE"
    ADD CONSTRAINT "SIUUP_SCHEDULE_status_id_ca9f54d9_fk_SIUUP_STATUS_id" FOREIGN KEY (status_id) REFERENCES public."LABS_STATUS"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."LABS_SCHEDULE" DROP CONSTRAINT "SIUUP_SCHEDULE_status_id_ca9f54d9_fk_SIUUP_STATUS_id";
       public       postgres    false    2974    226    245                       2606    68418 H   LABS_SCHEDULE SIUUP_SCHEDULE_subject_id_14a0271b_fk_SIIUP_SUBJECT_CAT_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_SCHEDULE"
    ADD CONSTRAINT "SIUUP_SCHEDULE_subject_id_14a0271b_fk_SIIUP_SUBJECT_CAT_id" FOREIGN KEY (subject_id) REFERENCES public."LABS_SUBJECT_CAT"(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public."LABS_SCHEDULE" DROP CONSTRAINT "SIUUP_SCHEDULE_subject_id_14a0271b_fk_SIIUP_SUBJECT_CAT_id";
       public       postgres    false    2979    228    245                       2606    68423 H   LABS_SCHEDULE SIUUP_SCHEDULE_teacher_id_14d752fe_fk_SIIUP_TEACHER_CAT_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_SCHEDULE"
    ADD CONSTRAINT "SIUUP_SCHEDULE_teacher_id_14d752fe_fk_SIIUP_TEACHER_CAT_id" FOREIGN KEY (teacher_id) REFERENCES public."LABS_TEACHER_CAT"(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public."LABS_SCHEDULE" DROP CONSTRAINT "SIUUP_SCHEDULE_teacher_id_14d752fe_fk_SIIUP_TEACHER_CAT_id";
       public       postgres    false    245    235    2998                       2606    68536 N   LABS_TEACHER_PRACTICES SIUUP_TEACHER_PRACTI_equipment_id_400c829d_fk_SIUUP_EQU    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_TEACHER_PRACTICES"
    ADD CONSTRAINT "SIUUP_TEACHER_PRACTI_equipment_id_400c829d_fk_SIUUP_EQU" FOREIGN KEY (equipment_id) REFERENCES public."LABS_EQUIPMENT_GENERAL"(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public."LABS_TEACHER_PRACTICES" DROP CONSTRAINT "SIUUP_TEACHER_PRACTI_equipment_id_400c829d_fk_SIUUP_EQU";
       public       postgres    false    239    249    3008                       2606    68440 O   LABS_TEACHER_PRACTICES SIUUP_TEACHER_PRACTI_laboratory_id_20067035_fk_SIUUP_LAB    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_TEACHER_PRACTICES"
    ADD CONSTRAINT "SIUUP_TEACHER_PRACTI_laboratory_id_20067035_fk_SIUUP_LAB" FOREIGN KEY (laboratory_id) REFERENCES public."LABS_LABORATORIES"(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."LABS_TEACHER_PRACTICES" DROP CONSTRAINT "SIUUP_TEACHER_PRACTI_laboratory_id_20067035_fk_SIUUP_LAB";
       public       postgres    false    241    249    3014                       2606    68445 M   LABS_TEACHER_PRACTICES SIUUP_TEACHER_PRACTI_schedule_id_e7877ed0_fk_SIUUP_SCH    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_TEACHER_PRACTICES"
    ADD CONSTRAINT "SIUUP_TEACHER_PRACTI_schedule_id_e7877ed0_fk_SIUUP_SCH" FOREIGN KEY (schedule_id) REFERENCES public."LABS_SCHEDULE"(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public."LABS_TEACHER_PRACTICES" DROP CONSTRAINT "SIUUP_TEACHER_PRACTI_schedule_id_e7877ed0_fk_SIUUP_SCH";
       public       postgres    false    249    245    3022                       2606    68450 L   LABS_TEACHER_PRACTICES SIUUP_TEACHER_PRACTI_teacher_id_3b30a282_fk_SIIUP_TEA    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_TEACHER_PRACTICES"
    ADD CONSTRAINT "SIUUP_TEACHER_PRACTI_teacher_id_3b30a282_fk_SIIUP_TEA" FOREIGN KEY (teacher_id) REFERENCES public."LABS_TEACHER_CAT"(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public."LABS_TEACHER_PRACTICES" DROP CONSTRAINT "SIUUP_TEACHER_PRACTI_teacher_id_3b30a282_fk_SIIUP_TEA";
       public       postgres    false    249    2998    235            �           2606    67784 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    205    201    2900            �           2606    67779 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    205    203    2905            �           2606    67770 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    201    199    2895            �           2606    67799 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    209    2905    203            �           2606    67794 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    2913    207    209            �           2606    67813 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    201    2900    211            �           2606    67808 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    2913    211    207                       2606    68606 \   dashboard_userdashboardmodule dashboard_userdashboardmodule_user_id_97c13132_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dashboard_userdashboardmodule
    ADD CONSTRAINT dashboard_userdashboardmodule_user_id_97c13132_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.dashboard_userdashboardmodule DROP CONSTRAINT dashboard_userdashboardmodule_user_id_97c13132_fk_auth_user_id;
       public       postgres    false    2913    257    207            �           2606    67832 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    199    213    2895            �           2606    67837 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       postgres    false    2913    207    213                       2606    68579 :   jet_bookmark jet_bookmark_user_id_8efdc332_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.jet_bookmark
    ADD CONSTRAINT jet_bookmark_user_id_8efdc332_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.jet_bookmark DROP CONSTRAINT jet_bookmark_user_id_8efdc332_fk_auth_user_id;
       public       postgres    false    2913    207    253                       2606    68585 L   jet_pinnedapplication jet_pinnedapplication_user_id_7765bcf9_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.jet_pinnedapplication
    ADD CONSTRAINT jet_pinnedapplication_user_id_7765bcf9_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.jet_pinnedapplication DROP CONSTRAINT jet_pinnedapplication_user_id_7765bcf9_fk_auth_user_id;
       public       postgres    false    255    207    2913            �      x�u[I�#7�]�N'��8-� ����XEڿ����E�v�/��O ����֦<�����ű������9o&?7~h��rS�2���ϻ����8�ۮ���o�?�cU�qS7�������ϵ7�r󕄪�&����;���uty7����j,��M�1�����1wCs�������NS�|j���em;7��ᘝ�s�<?��������k8���C6�8a�����ϓ��e}�n ���g����6��ip�����=@��8����퐻��3����=��܈wY��:4bg�h�|��OR��37\�2���r�f��Sl2�������8�Y�l�h�D���������'�Uf���r֩\��^�>�]���x�������d��n�ZD>���7���c���/����?s>������J��v����8�4�����j�=�+�?��1�o�_����;�C���^=�zYe�<�8֝���	;/.��/L�ܠ�f7O��畭�0���?\��"2;ؑ�����y{�C�;��}�6��Fң#k�3v�y-(8�j�ŪM6�����\a�,����'W�?_p��Al�m�Evq�z5X$��i�>�o�*���B�y�o��n޴Z��4v�?��B>�&��i���0��63�b�#�r�����8�wx��E�|�o7�i��e�����.�t��}�	'Ξ,��?�qb���z75�x��,�y��\��#D�	S�%g��"�Qn�͢����6��a{�=����^;�Թ��	?�Y���/ͯ_�i��A����]����s랤��_���FHh��m�����-�#a�e�0�gb9��!�yRo�g��֓~�]EЋL�U0���Dj��N�|�C%3���ڳ�	0��+��r�B?��D V۴�-2�q��ׯ�m�:�((^֎��\��M�#�w�շ��V�>�@b��XN/�q�	O��I���_Df�2�1�riR5�^$Y�g
j�O���`�b�c0pӑ�o���nvq\w��!L`q���_�ݭ.3���N� �poxY�_�M<�	h���J��y��k��t�{��e���h�K��3��~����l��]�Uyd���G~ЮHj]�Q,���0?��=N{~3��ڵ�p}8�u�J��; ?��|nW����ό#T�IvU�t�3S87��]��Ml�i�޵�/3�6�
�o/��`ws�[���b��)4~������Q;}��1�j	]��$��^�LT|�d@��i������r)/���?W\�]�:�0������0 ���������L	������pܐ�/W����5��CH��:�d�}� h���ͻ�y��j������);��7+8��ɟ��lg�+@L�@���kw?`�+�6O��b��� '���;�. #��&wu}�΄-&W����1�}R�ʙD����m7s(�N��e�c���	;��;�_ch{;:A��W�L!v�^Uv�+��4M~��팣[L( ��+��@��#2O��e7w�=�_Q<���@e�/�4&��Dy�r�z�D�� �!��Q�@g������.oٔħ��(g��=���IQ��с��Q߫�Y?YBT-K!�q>��k4Ru���!�����F��L�N���P��҆��50a��t�;nC��W4{����	��{S:2�Y�b���\�LG�@9
l�#�a/Rs<J�6E���Rk��E�[8\G�Ol <��lj9�*�[���\>��د����ZW���ӹ�J1��+.�/F/B[�{�����:�r�9Ҝp<�C�<M`�K���=��%�;ԉ�
�DMQ,r�2.���R婕pF/W:[��,I-��LQ�怯	d��sf��"�Y�	pO䦲űȾ�2�q�a픠s�^k�\��H׆@At�tS���p��`�5�x	�EF���>}��͞A�����>1Вr
�Yŗ0@�&��l)W���Y�W'D��)F��B[(��B��l��V�xUbǙ��W`��
Z��;#��������(י+�?�e%w(py��˥�loP�e������&�{��b� ��ϰ`%+I�.@	F�a��TZc
��?=�� U��eqK�Ҳ�-�'�F��7b)�����a�s|�U�'".��y�]C-"��(@z�]%41��-��$�����.ڼ=Z�N'�`�����XU�#���9l}ĳ�K�lQ"1���S��@Z�P"!l�#�%Ә�HV�!X��@�T%8��o}�]`;Zs	�È���q(AL��i��]"����
G&B���� �]�v�K��@X"��-G����P~i'IB�r-&�,�6fRV巤����2�T�c�|{~$�E�u��ϝpUw�7�+�#O{F$}�~ˮ�z��( �i�. #�ܳD��9�y��'Z���r��׭7�S��嘨�@�Y��\uXY؇B�Y�a1/�x�O�&M�f��IZ�;����@'˜ŗb$^��y�X)����y
�P�1�e�����a���Vr����D�O��m0�r��Έ�V�<�`�%�è��%لr�U��|'a�ՉWJ8F-k�DD�z�!�9|����)NZ8�}g"�1��:�H�2�)��#�:�&�J���/Vm�$�R�@H���:���oW��f4R������B�ͺ�4��%��i(�������qw":R��AT�����ŀl�TFŠ[R��d�e )�������!�8�^�A��^$�^.��N�Z�)��0~S9Xʄ#��D��A�˳b��{*��]�6kY�0���0�Yd���ON�pZ��x�c[Z�=l�#�$/nF��՚Y%	����֠a�|S]jDh��c�@�I7�ż���z�9?�A��"�x�$��|^ǙH���� �)��M�i��v���i�$W�rk'�=\�:�Q�\TI��Y�Xƚ�*���q��p�
�K�:r�1O�j��~�D*��Y/gJ��ۖ�#y��BA�m�Dgݝ^e�>F��f
�":V��))��D��4ˋ�%��Ẻ$�J�����z���.���ˤ$� հ���	����&�7�l1i!�� 9ܬS:���)WK�Ց�r�[5���X෠��?Ft����A����传i]�H5m�(�)�5��𙧴�Ȋ�D]h�i�⧆�_��X����!&�����#�uiU
���{��{���Y٣x��ac\���ti���8=�Xm]�A�\ڧ~	��;N���Nl�N�t7�����Y�dU�"W���AJ@#�'b����	�J�,�*�� �--��ƛe��L-E`�S:�N�L%Fk���SE~?��eZ��^��y� į�&D,d����D�I��N(��f@��	W*�ui)�'�+,#9�X}AuChZD�����@��\��@�ήՔQ{ܲR�D#4������V	�p9����$$Liu����B}�U:��^�A�Jka&u��M���*��L��%�D(����rC�\�5�:��1zbm�kI�	�w�ן�����A��f�$�M^� x&u�isYp�<I�C�
��X17��<I�I��Ʃ���U�rY�j!��ѓjwZT����6�P�b5_[�"U��%j�Q=@��A>u'R���'#�:d��zR�w��:9���B�7�����zN���V xo^OT,d1 7,�ەNfcH?�'"L&���^s�b~Pp�y^��'��ӦB�f��_�LL��n>̂�%���b��c-��[�H�Z��V����:s��db�ϊ�L�Y�F��,�(�0-S���F;B&Up�8T9�s�P�8�c
X�X��w��d|-�Kbp�u[cZ1�=s}�Q�+3
��*�q-vь*q@nS��3�����czB�6K��� ��Y~��TD�Eg)-��넡\��[����� �b��$�09�ϧ_����>�� �	  M:��L��7�%Y,oҪ>B�]U��䛿5���{�O�AU�R�~rZ՝^�,"�l���1垡*�q��C��v���+�1�t�9�+(T�x�10	
��P|�;����@*�(�������p������"m>��1X�8(~ǝ-��1H�)�M�����.9~�m�Pר�#�Ҷ�˅d�4������{W؁�cc�\m40e�g���h,wQO��,�(�k΅�8���@Bn+Uf��e���ל��|am��!R��l�{<���þP!A�l�oM�Ƶ*�#��S�C�䁬�����"ˢ��S��B&E4Υ���-�6
�_�E�������U�d����3_by8����L_�=p$��P����r0�	r��`i`�VG��a����L�Zf�o0y,�����ho�}������v�ޤ��S�j�"�}o���N�P��{���0���wn�� �(��~8� p���N;����/�q:0��it�_�m1�4��6i����H�c�?y��V�o�_s�/�fHB7��l*�޹�D�z��/�y%�iAݨ6��.�`IzB�;U�A�64H�T�H�|l#8H�ȃo���)c��h��{�%H��C,�)��G�e��.' Ijg� _up���|�����@�kBR���.���K)x$����g���RT1�Z(OP����q�F8�8�B�A�9O48p�ܩHaY�&�v����q��b:*�w���E�!<�s��n�֤c��4�#�}TV�v���{�<j@�M�W���'On���` 4�o��֮�J��qZxZB� sq�b�מ��6cG}���k\��HP ��zu����e7��i�ϸ��m�暯���Y�Yi_S���7(-����@ �E�8	��vm�Vz0�6��?P���<�;"9D�y����C��N!f^�6�A4<��F�7�"��N��'�y �ClJ�M�9�u#�g�cX����{��IB�٦�9C����J��}��俤a��w�Ҳ��
�]:3b�0��Ӵ��ٵ4�L�TqL=дr'���3���y�J$�����l~�	Uٿ���|m��R)Hdh�SB���ƥ�ɝd���!�����o�<�(��Y��1��4P��p�>���%�x�/�2ڟT��. ]*��%0�~�`2��q�(���y�q=:_2(,
����a��Vߔ��t��V���ϖj1Ԗ�a鶐��ۢ$R��X�h��7�%/�_�N$���h�Fj�%"Ǖ&����½j�#f)��xX�EƄ��4�n�n �ϯ����6�t <`c�5uOa	$O�ԨK�E-P�H�xw�B�2��rK�J���gb�O!W�&Ls�[w�#E�z�_`�g��5ﴕ���JLP8�[�Z�l��&}b��Vw�j6��TN�N��N >6��
�u6nP���q��o;ɼ8N4�/��!~:��ʊ�ƃ�:E`��5����"�����C�8V4��f�0���2��vռ5u�7����}x�=I�K��x�-!�fc���A�w����1�±D�M��`��}F�46"4X�"v����	�-����U��Zp�����?�f���Ż�)G�""91S���� �z�:}�����(k�9d@S�$� ��e�EitZ{D��T2ř��}ZV�e��������ʒm0ĠD*c�JV	ш]�����Q��M��ҾB�ms��db����� ˖������/� C��ya�,�|��2��F"�Hki���`l��a��Ai��jݖ�U�{��D4Qw�rc��Z�?�!A��U��J���,�b4�[�\�S{��,���:��4�Ӑ���0B�Aͤ�QpO��<v�t,(��ܨ�)���xDH3ܤ'\H�>I�B�_�{��%����6Tni���w�x��@tn)-��;g}D�%�@%��bv�����C5P�!�@.CEǡ����x"6Q����K;Ĵ&)S������Qh�`H}v8�ڍ1@p #$���c�33�W�D�4=i����CV� �1�4�7.�~���r~u(t�J�֭�B\
���^K���O�
�M�Ih@D;V6l�[��d$%Yj��cZy"��D�?Z�R_�g�.�T�_��I���Yo����l��8f�Q������+q]%�i謋�5BCK���j�vi�F]��C�P����.��L�y��8�ME�Ɇ(�r��Ҋ���쫧���!\rgP~�d�X�2ͦ�xj :�V��\/6qX��N���V�<�TYt@�k�7E��'t��ߖj:���Or-�B��������8.2���V5��'R�����#d�ګ����"��bx��EW[���%E��Jn�	"}���W��ܒ3g�I�+S����8n!���!�`D�t,f��o�2h���b��T�a����ہ�h�@�'1k�ўdk{�i�h���`#�B$�՚_��d��j,b>iB��o@I�t��)��tɰ�������42�      �   �   x�m���@�壘4�5>�E���#�B�~g�'�E����b^�@VQ�3��n�-b��q�h��ݸ�dy%����dY{��_�c�
�&���=�N
��,���wP�,%��W�Ra�'&��W�81T���
B:�{����
ھ��z���4N��4M���Y�      �     x���=n�0Fg�:AQ����d����0��*$E��G��*.m�vw~��#Ke��L��3����~����TC����FV�Z�IY7�8�C$�Sw8�;Q�����Q��M<{ԭ;��	��r/Gt�/ܡewu�ܿr��ݟ���׃�x�8�Đ0�A��,�bR0��-D?~q��2�Y�dVPOy�B�����z�~l1�[.���sz���H��h�zGa����z�$�'��%�֌^^�L�D�Py����.��X��0O���(�o�M:M      �   S   x�3�t��-(-��2�JMI-�2��H-*J��L�+I,�2
'&�d��s�r�&��e&� ՙq��&9�U�)@�=... �t      �   ?   x�3�N-(�L�M*JU0202T�UPpL�/.�q�8Ab���f �������)�W� �$�      �   �   x�m�;�@��à����tE��q.�S�#��e�i����������煮���'D�D&p�8Q	�hNt#õ+v~���_;'ud�7�jȋ��>*�^HQ챵 ϊ�sb��\��ȞY�A�[J����      �   �   x�u��
� D���V�q��B`t���#w�#��qvff�B37�v0�YР�bN57�t�0���Q0en������в�F,8����GI�Wɷ+>�1�b��p�
�%���7'm���t�J�K�9N      �      x�3�t��-(-�W�TJMI-����� V��      �      x�3���LN�K�L,)-J�4����� N��      �   }   x�E�=�0��9E/`�疪�H02��P�H@P������l��e�9���s�w�t[M*
�˸��;Qi-��A���%ۍ�\��ǐƁerNk����[���Yro���*'�l��&���*�      �   �  x��V�r�8}n�B�q��G.�,��!���E؂hc$J���G�W�m��3��!���ӧO�� ��Me���=���h�aTZ�UÞl+�l'�x�A��i��F�YKF��p�Q�JZ6� ?�a���a� 09��a�z���k�i��Tu�6�
g,������Zn�U�E�Tɖ��qB��=�q?B��a��_��u�)�٨iaADG0j��d���as��Dbx���{�h�֞������ԇŢsl"��*�#v�+)�Q�~�C���ٳ������M��FoԶ�t�����R8�IE��'g<��ՙ=��(3[J{P��4yG#��7]Q�'�!����z�Սw~'���U���~�J��n�H2?��{*}�q�}xO��1F�~BE���N���J6�s����3���&�l�ؚoͱ�~]��:҈������ ~YO�;�S7�]�s�yO�9��kAܥ}{O7�c����<?����`�Ҋ���{��X�� �_׫�R�m-�?�Ш�no4��&�z8���v�b7������jcM�N��Ƶ�)GTc��6���/�=�b*��.�oL}����)�ӟ��V����UљA��AhY&��<&��}�����0
y�nj�4�j^N�X�fKd��N��n�!�&/��$�3�S4�S�M��?��%J��]�ϐPG'�0ӯM)�9y�'e��� hI�?��56�A�f����U��p�uH�$U����b�![���O+�1�}qbU}
9�, }�Sr���	�L^ �F�0}uf��x��?W8��q8�K��U�ok�]!}�<4�A��M�BU!�SRޏz�l%�gR��1!�>��o<
8'#�8��!�ě����$	�ߖܱ���k����c�½tc)t�f�k|K�e�'������}ݳ��Wt(���O+`A�Ɩ�~-�@I��*fCX`��&�s�ֵ���X������'V
ߛX::�`���MW���%���%"4�y�Ed�<�k���I~w@��	��J�6y
O�ױ�(�	�8�?��2x�bG����_��5}:����xWϖ�`�N�;v?�!|�4�(tf�!%��{�~k�>O�2�����P����J���#^YyרQo6�H�Ҕ>N_�a���a�oɬg���^ʣ�ir	��I/���?� }�?������09t�A]���=Yxs<���ELص#b�K�S^��/bR�����`�^��5      �   1   x��I�0�w7�Ԏos1�Bو��;.���a{9��&�|���"�      �   R  x����N�0E��Ǡ�i^��lY�A�$�����y��M[)G׾�N���|��>���nu�I�����J� ��e��9��n]:�!!-CQ���d�dd%�V� o�]C�0���TR��$�4IN�����mg�����T��HEs/�^�ɜ���e-+� ���'��9�������vE�PZLJ��JԪ�\Q�hb;M����߱˫����4/6�@�#<I���c��u1I��&�}�|5�e�L�/@�M�ƞ�}.�pbmX�ڭt��O�.'[JJrꕧ{ׯK�(Y� �`{f&�732�2�⸚Y������T��0<�W�� k^҇      �   +   x�3��M,)-�����u�2�K-.H-��p��qqq �
�      �   �   x�]�=�0���Sp$�a,�[G+	�4���N���QQ�N�>[�L����6���d�I���y�p�=V�C�2yfh߯RǎUj�A�G�kɯ�{������t�w�(���b�^-ퟰ�B��_~���ѱMH      �   5   x�3�t�,.���L�I�2���W@�s���%*��*��e&g�s��qqq ��      �   �  x�mSKn�0]�N���N������������0E&�袹M�E�#�b�$׍-n
|�͛7��
������o!��o)�!�r(u��pT,�Xq@���H���'�x�VP�WG�hzgp�.u��z�ڠ�w�l�__�?ʃ�!�	s���k*s%J���
;���K�{���}����F�B�0�o�����+Rï�m'��,����IX�q�9V4+\�;�z�3���^z�Sx��q�ঙ��J!|p�c�#�=�F�U �_�/g�$��]`lDnū�::k����k�8[j�^��<�Q��;�Q�=�����E�P~*�{�I���mL�'�pQ}ޅz8H
�6�'��|%�P.�L�
.����Fq�jCr؉֙;,���k�hf��	�f�ך��T�Q[j�E��ӷ�(���l�      �     x�}S�r�0=/_�/�Ҥ���:��dH�S/���ZY2�Ŵ�G9�	���,w&�*'����o���:ej4\�5v�Y���g�sh;l��F&E`���d4�{<*Q͌S� a�'z�`��� Ɏ�c��k�I��F�x5�c�h�(�t&�� �:g!>8Jg�5�'[�����K55}a�{���5�����a:���d�j�A(L����G:��	x&YC�2ew��FV��ɭ���
�v��pD2�c%#(�HS-
ԡ��-U/���;d�M7a���$5��r�@��0�u�Kn>%7V�y�B�(
x�_���m�K�Jc������5�x�����y��v����j�|�[԰���l	e;Bє�O`��Zb��9��C�@4<�=Q���E�D�j�AS[��wl�a�IjKƋ:���j&B�Oe����:jN?�mƊ�� �����R�@TZ+��.�B�h�S�DE�;�Ak��;��K�t�h�
��~��h�^U�      �   \   x�U�;�  й��@��Q�p 1h�����8���Ff��உ2b�h�Ki�r}���#܏�ي�zh�r����*��:P R�*�^D�      �      x������ � �      �      x������ � �      �   	  x�}�ю�E����-Y�ݏ�����Xyhl��Y���r���|B~,%�ź���m�+EV�u�U�o��isΛ�>��EU�����cY/�񣻟{��Wn��_��A�������������٣o���2܋z	;(w�>:`��>@`"�K����(���z�%���z������#Ƥ��#����������X4K �e���������{���v��������>��q�O2k�������j���H���Ǹ"�Ǉ|�faF�.�U��ٻY�-�OeM��g�h����u���b+��s�NC�wM��z��cY�:�Ƅ$��@jXH���)[���a	m��ꖖ�|P��w��X�X��ʿt�y(��"���Gh�+��AZ�
�BV�bn=!dY����]/��TH���ݖ/�OOR죌x��}��7�D/1Gl��s�Ǯ�\�?vc/��Qu�Hԧ��6z���E����{��Yf|yu�x���i��m��q
,eH���YA�+|ج����%x�-s�~yE����
9���QƇ
�b>>� �Z���r�
�v����g�R:� r)�� f�bn��,��/�Ԣ�ս^>z�2@�덥������ s�Խ�8˚_����������@��W��tOS�D=�ʢH�ǂX�)�9!�[Z��c����e{���]��Yikh��m��o�{�����e`�^�;hNf���r�z�9s���$Q��(��5��@���v�:��y�߇�S��i�.�����O�;�j	��ӬO�Z�2��bW�2R��%������2��?/�N���\,RM8<���F*')����"�b�U�����]�\��n~����?N��J°��x�"�k��Ca��M,��n��t ���:ޟ�R:V���꬚��};���+�J�ƻ̥�ğ��y�⠔��\�	K�bn& �
��R)��J�G(��˃���B�A�߀Y}�О#�G�Z����I���f�{}$Ł��z{�)ml����C����n�T������u�V'[i���6�GH�G�Țh3!�2�Dby��'�6�(������5#V��@�R1�ů��p�ƥ�����1�S7u^�L$èS%ek��A�JH�HgcJU�Ͽu�9��w����_}*N�)ԘKD��ȏ)A�Gg�%�=��l+̫�럯�'پ��������&�D9-����g,���;'G)'g$�b7=�gy>���^.}&���� l�+�����=��r�ʳw���|�Eốk�u�� p�Uu�m%R?�55�]��zM�X�]����j��8����[w8x��d�Y�Z����6��C�A����n����6<A��ɍ ��E�67"��S�w�A�sI��*5j�Z[w ��۟^�[Tl��'©� ��q4� v%B+���8I۪[�����?�O�<?�6�X��I������%��.����2w}�u'���䩌�t�� A�]kV�ώ�ڴfՇ�PA�z֬ҪD�8Hϱ(Ji�@� ��,��U���~�O���z�غ���DG"/�b�QS}ȫ��e�P�ZW
3J�߆�[7�Q4�|���ʀ��T����#�K��Y5�߸mN����Ѝ��L�����۾p�]1U�U=�LoA�a�'{c������;�T��E��A���0Cd&�sf�l�R�`�� Ʋ�9���e�va �C�r8@�� ub޹ �����7$±���vDhv�"�DoF�FS/b񭈐�q��hv��eʵ@��"eY��E)+t�b� �Y��g�/]��1�:�(C�NC0�����o� ���BqN ;��rN,���bN$:����׿(i��=MY����Ϲ�i�W�F��a,��g��`�� 0z�*,e �'~�*,�"齫p�/V���H��	�w���5Chp�ubj���H�?�5��(r��怠a"�́BsD(��cF�X�Ӷ���ݳ�ҟծ5�"�v��|�g9mYq�])8Y����e�n��rYGFV�Zi�E�>V"\�E�6V"˶�"ʻXm�XB�Xm�X¯zWm�zW¯�Vm�V¦}b�}�0��MZD!��a�t�e]g�6j���*\d���&���Ų��&�̎�ʼ�&�d�c]�@���6���ǭ`��
���]`����G`�m E�q��:De�b���2����2g	����ڦ�����=q�o��$�ATm���*�/�j�yܦI�QX���p�B	/)��Q��� �����_ʲ�?L��      �     x�}�[o�@���W��[ٝeHLZ�z	"�צI����* ����M���y8��L�|3 dAF�qNPM�%�c�֯�a2ŗ��G�pv\J����d4�����x��OnR��AO�<���p��;�� d��Hoabb0)Q��u�-#*�����lW�s-��̳�el��/��B�.�l��F[@LBMjԽ��	4�}+��	�<WV�YPQ[�� �6^:+'��R�܊/�Sa�g��͵�--����F0���������n��Neh�noPM����Q $�l�      �      x������ � �      �      x������ � �      �   x  x��T�N1>;Oa����Y(��A+U���AhbO6����M+ċ��g�#��:6�&K@T+��o��f��)�G�A���ߍ�ֳk�?�Xp2��l5��T��S�����ͤ������OA{��D��&���x�G5��m  SF+����͂
�V�����8h�UP6����Rdw{|��1��k���q;NKX�V�h���u�J��T���#?���q`6}h[Q����Mo�He��P(4w	x���#A��T�$��U���E)�n%^i��0�jM(�؆�]w�c�;�Œ��s�\�F+B-��1��������+lqO�/�d�_e��0�9߿T�%a��`kOH��?��AmU"⻅(�/U��{��!<��Ŧ�;���GM���Ԗ�=І���߲���.�6�>}��\�pqtPot�jm� �僽qbE[����r���5���
�������2g�Q�\غ�R����ELbk	�R����8���:��q��r�m|^Y[iLt	)�>�1��>?�Ald�� "��S�h�����1l�W�>uC{�9}R�'���z����-~�j���%�U�;�>!�e�D�)���z���-%t�s�вN�\��a�d�����LY      �      x��]Ks#Ǒ>S��C{Y���z?x�Ḧc>� gb-ۇ��-���J�|ۛ�:�����?��U�@���	�q"!�6�̮�wee�F��ȯ��(;�����j)�������U1�/��?����榼��0������s@�`)g�R�s�����t��s��s����_���u�M]���rHUn4��z�O�����c} 2`"F	��}?W-?�9��J��_����ݻ����J���lp;����_Y,��c\z�MN�J�u����Ȯʻ���tpgR!s��Վ;�Q����/w��Ǧ8���(�6Iz����x:��ꂡ$�a���TS��:�V弸�ZnJS*s���N�����p0)���N>X�����[sp6�8��o��.�Bp�S*�<{p5�_Lz>%]sHu�a5Tݳ�~q?nU�"^�ߡ-�Vx�}[�?�U/H"��P�՗>_��_TmK
�
0���C�m��0����ȩ=�&7���
���o������_�~\Nn��矿<Z������W�]�&r֍�DKé_�N�X"��[�Sk�ت���oy.�(x�(��]�Md�:�d���+���m"��[�K#�H����D-���z����]�M��yn�zmP�;~�����\���H��-2�l.	3����w��E��q	˔����IvǯcѢ�P��+ƃ������";*@u����x2)�gU�"r�	c��%�kB���z\|�d�i5�aQfo~�	��S6*�f�N�X��p�D[\�۲z�u
�?��MJ0zٷe5}�yz�gEU�~X<�k�Ia]d�ߡ9��*����l��K6��Ϧ�Yv���@�XL���1�=:��P��hR,n�rx�y^�_~�,'��<v�@�rZf�e����̲��cY�h�nR�l��Q)��Ҡ<GEuWN���⦘,>��_��~�?:�U�.ϭ���$��:;_��ۄW"���RUK�p
�X�wո-��8&�q�K���{�:+~t0.��ı�`����@��(�AN���m5Oo`�ǭ�j���� �ZPCC`���9��>�k~�z�cv1�b�����1�bgny��M7 U����]��C�I(s�x]�����z:� ߰,w��)��H�R OIN���x�j¿ ���l��0V& d (��kS�7�-M'd�I )�*+PP�5)Z������+��`q?���L\�m���Ǫ$�!��(�C�����z\�Pߗ���9���B�n2��X�aalL�w�1V5@�P^ZElpu�y1�ݯ�9Q>��Rz�O^clUeG�����Ŭ
k�j1�J�Ϣ{4V3"���v�v�X�$�T$�J{��Weu�%���I~(!e\3����XO.	a4��&��d�������%���H��܍�b�0�{LAxǼi� ���+V"�o�:��ۑ�E���^�+�����UF*TǬ]߇u�%�}	�q9������˂��|�G9V-�lrT�����r�z@�+�4E;�g�*�O�%��Jc��a߄�UX�z`Ȯ�\}U�rO��MT0R,ŀp�X%eв�#<F0X���q_��͔2�_e/�ŇY��WD������o�>\�e�X�Q"� i�1ZQ�BAuS�.���eDR	JsELH"�������ڶ�3z�Z@ U��@�ϲpt��,�0v����wC��h;�5]e���C��!P|}u��c���ƿ5ȇ֌�Px}ֶ��cM�s���S&u�|4���hr9�YM#AQj1T����5��g��&D�P���<-��*�1���� n�f��x
,%$�Rr��i` �-k��pL���p$C�`8�6|`��z�qd�#H���^��N[%��G�`�x�q������-8�rUd�0m�.D@��>Xn�[<N,ƒ�(�ay�58m��cb�F��")B(��i+�x�X�"+�U�ǺM��z�ǉ�p8l��䄅wM�j3)hD�R�e�t@#��i��4�lD+	ɷCZ�i�)�&j�Q6����.մS�M"��Z��V�rM;�$�-0����PWXm�)�&�m�5&ACbI�e�v
�I�[��k�?���M;��&��^Ņ�����v
�M\�`bL�+}�N;%�&.�KI�cغ��N	����1*�Oغ��N	���8E���"��)�6�p��$��u	g�n	�$�������N	���K��dw��
[�p�)�6�p�O
|��ug�"n"n���ֻ��Pn^�?_�궩;L#1$�"�Lo1׀��MC�֥#�P��1�nT8a�S�^ͪ�2;]����Yu3�@2~TL��u�)�?d14CS˱L�x���,��n�I6{�}y}��;�]����עE!F3Vi�B��UD�RCЄu:k���E�/J�p���?��>|�����J)ZǠ���=I��j�$�'�����'��_�zve���d�ɟuX!�z�YG�}_p>�rwH��#`��a
�I)Pp$X0���w1���G��qw�Jl1�K�����$ƶ$�8D�|����um�����l>{*��������V�h-V��)M'-�--���R�K��]�h��p-�B��)���t��z�DJRVˈ�Ѩ�����FC@��)9�����b�����TJ�	�/���
QZ�<u_VHKlKK�в9���I�.Z��ab9���\	�y��Dv~�ֲ�n8 h�h8���e�}���}q3����]aKܴ��[���	6{�ܟ�C|����~p��C1N�1hkB�(I�gf}���&��R����@�&������'`�M(�e��=M7�i"�$�t�n"�v$��|���J5�lӒ���J6�8����D�h"u���O�iS�y��CRV�O�iS�y��sYC��MI���U�'�)�CҗP}�ޔs�!�\�>9o�9�snP��7��wI9苏z��2�[d����Rq]r;�,Z�^Br&P��:������KM.�J=-�ܘ��6�%8u)�pebm�S��-�1#�4 Qim�~+FDĈ�x�V���BoB����u/�E5�}�U���Q�؉6�7��!f�S���%��a-����>:i�4`�㼎6Z6<<uPN��� _�a�i�	�FG !�`jVG���;��1	���H�A����#4�K������T?��Ҡ)H�	��`�iД��c$b��7,�[Jo�l�n�du0|�
L�m���O��$��ڵ>�!H�O1ꏄ���e�X�j�p�L���3�:!	M��K����P�b2�KC���l�.3�X?�qh�
&�p�15�`�LLE��V+�lO��16&c�_��% �^����l��Tܴ5����" �v�\h&y00�����?�������.f+�jd�	���^ǽ�\��M�˦�t���kk�?�q�ϛG�4\��Ե�H�B����-��e
�ї��0@J
����x<}��n|!.k�L����r��H�c���v'�wQ�R>��l�C�֌�b58���P�dK8`s��im�`��Q4��B�Z� ЩKi�!T-�=[+�5�&5�Tq����@���U���
�X� bN��B��4��,G�j�(�m�l�=��J����E	�a������XˀS��M�����ï��x���mUt7P�X���`�8��0����b�x_�M\�Xv48�=:ok�	౪8�
�o�*<]�X?�̱�1׃A�1^�9X�h��g�~O�yvr�k@3����$��}��0�3l:�J�;��a( ���\���>��x���hzۍ�(�;H'�0�H�iF��m/F�7�5�SfC;�t=�Um�'h5��5�z`���d�(��ઘL�
Q]N�~#/������"ׄ�p��W4b͢������B��	�,c�X%�����h��X�k &|{V_�Y�2���@\��u��
'�GH�3{OQW@��s,���Sw���
�����j�]��D��R�;ڋ��;�M��y1��X+������`���bO�:�{�_    e�_8�_ec��mDI�Pl�v��O��R���F���Ո�r��Rc#�2\������ �t��3B����a��n��@:��]v@ت��w��扤׭	2�y��b;/���T)1a�;-��6�=��tL�[�)�] ��{r��|���`(#��!���������^�h�O�ǣ��b{Tl��`�+FHʕ����O�j��a�ƌ̨��,\��^��	3!q���&,T���>��q����[u%�{�b��È�ΎKd�J�/�b�1��]_r���a=�<r3P��%����bn�B��_�x|���`8��+�}q����󭕭O�Plh�������i�#1����ofc�1ĕ4d�]Y���~g�hln�ƾ5B,��u�wd�J}�b�K���#i\vr�O%;4����@`z��H�C��	�'6ľ����G�3����Dl��;J�&��Nj��pEbۋ%�sE�e^��/|lܜJplV��Bs���o�
T҅���m ¨�JIY0*�}���n��N��P� i/q�B��4Fc��(x��iQFA*����1X�~Xl&�tMk���L���������z�an��e�-�M��m�-���}�%:*�P"e������X�}ҵ�/s�'u�0��1�B�ހ�>�*w�[Hjk��I,G�[�l�c˰�8��[�P��N4McE,���B�� >,'���ns0I�ȉ�4x��0��%V�f���蜗�޵�	��:r��iRPA�:�޼�VM*���-8^�e��ܬն�����cK���]lò�o	/1ԠB�z���xq���Ƹ��gS���h���O2�����=a���.����a?/�j���s��9��+���)�N'���Cǝ/Pp��Z�^�>�:�h�y{���;��%]�q���鬯��d�U��D���r��	��&�����ZA[���w�%jy�+���8�S)|�P�&�u�b˖�%�n�v����жp��j��o��=.�9��}��0�>Hj=wx2Wa�*ږ>i̠k�SW~K�"9�A [���]�>�x����)�g�n��Ci)a�=ߺɘ+qHV7��Ǖ�����[1{,�=Xؠ���l��و}��.�Q�w�l�X�_@.!K"*d�ϳ��/Z��~
)c_ �d������M�@��Zr��g_��t�9��|�B�� �I��J!c \LA�g��?�S-�R���gwc��\��k!��y-���ZCE\>��ƮBth�Y!�系��@.��PÔy��U����[U3���a�u���?�87e��lvW�.U�����,��1W
�.JL����+"]�4�`/'�}�+[���zS�gwUWh�%1����C�.�q�����]�r�l�'&��6�_���l2�IW��Gt�����wk�h|jc����~�6'g���.Bd�a��	>l�f���fB1����%����@mh�.n���^�7s< �;0h����	���My��1���JX�/���:��6�U���)m=��q��V�A�a&�����X����Ґtl*�H���P�e���RDt�2ؑ�M)I�o��n� dHD��
BRB�w7>PI�ДZb��o>��n I��ġڄ��v��N�����6��Q��w���ň�6�V�|&�I�d)I�t��(���i��{|��v4U;MK�o)�Hs6�I}�U�]�g�_����x�����	vwVE5vm?�Y����}���"����%~�,�腛�y�֭h��%��6�����]�i�O��6161e���`b`MtM�oJ��c�H%%&�i���r&�%&N{�ns����DSY��Ԡ�o[�	Y���������ݘ4hldM��n;ttOv��,����W
�	��'�������X�8i7��G��_<N:��a�x��kH'�bE�m����dN:�Êb�yx��:��
~�a'6bI��U�8�<V=��i倖���K�����V�t�%'�-$-������4���ah�t�W�Y�\�58�'R�|�W�x���r��mm(�dLx^�����tQ�9'�:��S~&g���:�嫒�����3�}�{/�pjb�~T�UT~���6%��5�a����^V������H�O����MIJ�K¿�����b{�O'XPd^d?q�.�h�o�и����Tq��s�y�:�ʕh�J���=�/LإL�ǊLY�Xs5ڟ�?���?<��"�G?7��?�5;!~��4)38��j?��y�}��2�B����D֏��$>ƣ����r;�4�$5>^��'�Os�fq�{$���C�yߴ���P�
�aXQ߼N�P"�r-_&�;�՜4�dϕa�	N�7���&�j�R��,�J�����4�t��^�Ó(݄2)�:�ԄqM}s��jB�(����r.�������Z�)$��iO���[�L-���b�^�F�����gfj���>'o,�����\
�Lez$_��3�����#z��L���uJ�C�7�\�Pn@�V��'�~����T��!S�D�k���x��Z#	)��9J��A��o$F=�y_@�Eyn���]�>���n}Hش�9�Cy�gK��Hئ���wK�����$]�AG�7ַK�U�)���dD'r��lE�u���gB����z��w��0�L��E;�%�=�}%+���"��9�_�ǖ��g��?)R_щ�	� ���f�d�*dl�{�I	B�f�a��p�9I|ߒm��K(բ�X�V�M��oq=�[4\3D�����k�[h�I	A���6n�p��x!YX^pK߸ݒ@��.��+�����s�[H��%���zZ^�r�Ut��J����>r�%�D�:l1���ט��O4S`6��1��,����[�'ڪp8�b�8�)�
��׮��N�Zc���$L%�@��f� �3�cE�c.�z*<��;��)�
� Iܳ�F�AS�Ll,��c���dȦ�A4��ݍM��xH���L���=��p�%�5
�W�����F�H�a}5
ެQ��<�P:����j�Y�б)��l��GWv�=�(��a88�la߂a��^���܆�˝_�\�{�H�R�NH����h-��2'6���a�R<%%Y.��x�[[h�Z���@kׇh[hɘ�(�P!�]�m��Pm�u	t>$�����p��ﳙW�bZ���)�Du�����p޴�-����$T�o'�Sd��)��\�?�n�aHC�C�sE!�����=�C�q<��Z���b�/泪�-��m#lI�3B���6��cH����p�VU|��l��(/0m��<z��ӣ;i�Һ�'�a����v�v^~��-��i7��NN��d�V����o���}�4d���5N��4����Eo�p�0'�딅�%H@�l�j6�1V�r���K�N�<ŗYB}���� �����brS�圳nlc���a"<�����
e)2��i	�}�}������5��H�������]Q-w�6VM��*Tڂ�8��f����M��m9)~�a�s�:�1`ǚ�c�!S���zU0�^���e�� �g
��v�0�ĉ�KX�?T8�x2Ɏ�k�ߵz=�OTc�/a�tר��M����4��ø�/��Y�P�[�>*�U^���{>�.F/��雓���������";�_�.6�����߅�9�(������-CS���a����<ˀ��w���w��������t�,%nZ	H:T�4�O�����k w>؁OiI�P`M�=|{r��g/�\����]�U�D�{��KitӘ���>��h�
��2;�F|sr�Y���ߓ�_�F�d����%Rd���go���|�J)�1j)1M�?����*{1���d��G�����l��]�e.m����%�I%wC.uP?|��՛�Av��`�-��'�$��
����h4�@mʱ%�P�͗�Ğ���{MB�&��5���?e@xxyu����Z;F�q~< �  �nʉM�e�z�l�K�r48=KӲ�Ģ�U��P��4��ўF��^����:>���o�oN��[������������h��;�K�{<H��+r���l����� {;<}��w|�
��tp��ļ7#�0��f�k1>~3����w��ĸ�r!Uv�p�w裓˫��iv< q��&;}��띶3�.�њ/	;W? ��@s/�AW�w�?_��N���@7�A���T-�������:��^�����e��BI��"#�{��{zq~<����l�ue�Q�8��dk3�#��rJ:�F�;HK�F�/����C�Uʟ��
�$ƣ� �p�� �� R�;�v��&J�����*t%Hr𺼩ܡ�O'^��U^�g��!ë[}�O��L�힌��Y�ǲ������/��f%�      �   �  x�}�Kv�0���b��a��;q���~�},R��f蓄%�W���;�5�&S��S~�!h�B[��mr����� �`ט���T�t,�=;pa���(c
���� oM���f�'UP]�-itܐ�)�ʅ������x/
	��m0垵�u��[Q^�� ����?����߱����΢�O�N��:�%��3�i�Ðn�j���م��Y��Z	����&-ky�V�\(G�S��Z3�(�{eF�l�4�7�Y�mE�E�;i�d�`HMC��)<54��,�B9�-�q�N^.��/��1�T�0�1Sk;�߃��dP���B�Qɜ��!����7�+�T�9��j����jwܬ�Z��^�Q��f��}|X�G�P��8���<�;"'��ޟ�	�J���ʂ���@4o��}7Y���@����@�����~@\�=t��L��? �=f�      �   t  x���[��:��ӫ�r�����,'�F2@Zӻ?e�	!t�:R��>��*��О����w�1�չ*W�!�b��w�B�LF	 z��;wN�-�f�U��;W6���� �q3A[�Gr����o�Oo��ֺ��fp:V��1��Av���=ۏ����V��&K�G���ə�o��5~�dĔ=����ً�G��6��H_m�$eQ�ef�Pמ�|��%��|��%%�Ew�˰��8U�̐KF��!d��Ȯ�v�%�# 3EQv�^�nNo̻I�"�&O=����tC��������6����K��j�qf3;�ҬLrL̤�!G?B��-
؄:v���#���c�f��R���k�}-��%E�j�3�2����aXJ�_��z?��rT(��<�#�w$���Ed"z�������F�@��v�w���~`�4�آ�����.��뵡�O��9����T}M[�ں��󟕋c̝K۴����30�s�q$��+�}�\32���>ͤ�����κaޑ��,�jR���4����	�1L}�j����h��$/��c� 0ftJ���[1n�&e�2Ss�i��D���u��R]��h��;�F�V��q��+�8�����)��Z����3;g,V�g�V1r�������mM�F�?wm]7a�=��Y�'��L�����oI2�=��0�/�����'�S@i8'V&G�Hs�^���;�	�HR�xku���I+������$Qp�i�tۆ��F�K�Bo��0�1�>Ai��;@T�<�U�%F�Qt������*���8��bu�+|�W�e`Cތ7:���,�x�
��J�f�P�1��?l�<���S$�L�dl/�'LI	ˤt�iߺ�$�	^@K>^�sZNh,Hz����X���2F��A#�p��J^���O��Q?͠�V�PVD;qo��i�m"x8zL�\�!�{�P�A��w`7J&4i 
T�Y����xyy��I��G�^j^li��oJѽ!�S�U��Z&d�|��|�7�
Ӝ&.��!���i>�Ϟ17"����S*�0�ce$[��	<5�6�\p�1��{���H�AF{���fk��[�VU ����������      �   �  x���ٮ���뽞b� ���(�TPD@TԜ���H�=��yN�ZYo0/�_cT����.���b֙���CĖ����
��5]o�1�S@X��B7���Gz���dx�zr�֕���![݀�ڌ�Y��k�y<��ћ:�Tr �j��q��w�sP��o����>�d�;���/��*-����t���*��5�R���Ȗv�)o���=��} 
<����P����x'MO�_�#�]�g(����I[Ľ�!I |A�g�Cb�P`~q�����:�?+_���e��b؟H4pE�C�B�u�X�������&�c�@�6آLOٌcRm��o"�E�<>D�"���񌼹�!�8�D5#�J�OI�A�7�O$K��o,�t�o�1q��Mq��-eb���'�qά�}A�C��x���Q���+��d𘴈��.W�w1.�+��B/�ś����CI�Y�o{���M99���ƽ<��d��K���9Z!`>Dy?ࠣ{�#Ӱ���.!Ӓ�<�s�i�H4�I�����Z]ԑStj�&�DGҼ x�u�\��c.�D��x�y
�X��Cr=
!7'l6�[�A�;n;�44?�'v>zݬ~Ƨ��"�P��7���8��}yR]⸄~�� ���o���G��"�c�UY;�\L� ��yS����G%��'a3��r�A��o"7/��$C���P�T^�h1O�+Y����ǌ�3�B��w�,n:�DO���DF�7�3��M�w�XKΔv$G�(5���f}'$[�	���q_ ��3�W��L~�������{QI�x7%=�a�y}�3���=O�Pv�|��4+��E�:���R�j������o�_D�i�NGA�{��@�w+v a�uD�[ՙM#�w'j�q̓�I���fQ�5���{��rA+�W&@�������}�%�w�����:���~�`�$(�0��q؃b1�I#��7T�\�|-:sR�Y�1J�;�:Q���b�:k�� �c�{E�I;�[�E�3i�|+�����n�vP���ԥ����hp'<�e���.r��SE�?��]����G��(�Q*79(���N���7d�(.�������*��l��(����g��ڒ�#ne�5Q��(���.�*���|oF��y�HR��cZd�t���BXS �6b�W��OU��$+�ݧ��{5����FF�ݞ����h�q�ɂ��(����J�s��g;�)�q�JECG�4��k� [r������B��*^��`�B���;Csª��b�(y���T�v����/%�4��H���ts*��ˢ����j����"�ʦ����y��[)xJd%J�)�����},֑c�i>��n݅��b|�W��9bWnNv5ݔZ��HT��+/��7.R9�u��}��7$mn͝����N7M�Vu*��9/S�Ji>�Ϝ��V�{\�U�[)qe�K(/&~s�F�c��ۓ09�I��<�8����d����J��?��ucލ�V�e �?DS5�9�0��b��oۘ�c�f˟�R*�b�L�������e#�[ɻ�=m��\���|�UM.Y�X�y����`jD��ۉ}�-���㰻�z0�slp:JM�dd�i��J
+���Z�?�9��uG�y�z��Hw�����:�xʁ���S� ��𠊣������F���:l)d��s��T
�����D�g���Z������g��ׯ�*.o?      �      x������ � �      �      x������ � �     