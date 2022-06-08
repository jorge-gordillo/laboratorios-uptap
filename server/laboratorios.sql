PGDMP             	            z           laboratorios    10.20    10.20 _   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
                       false    1            �            1259    68219    LABS_ALUMN_CAT    TABLE     2  CREATE TABLE public."LABS_ALUMN_CAT" (
    enrollment integer NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(15) NOT NULL,
    second_last_name character varying(15) NOT NULL,
    gender character varying(50) NOT NULL,
    email character varying(254) NOT NULL
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
       public       postgres    false    3    216            �           0    0    SIIUP_CAREER_CAT_id_seq    SEQUENCE OWNED BY     V   ALTER SEQUENCE public."SIIUP_CAREER_CAT_id_seq" OWNED BY public."LABS_CAREER_CAT".id;
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
       public       postgres    false    220    3            �           0    0    SIIUP_GROUP_CAT_id_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public."SIIUP_GROUP_CAT_id_seq" OWNED BY public."LABS_GROUP_CAT".id;
            public       postgres    false    219            �            1259    68011    SIIUP_MODALITY_CAT_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SIIUP_MODALITY_CAT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."SIIUP_MODALITY_CAT_id_seq";
       public       postgres    false    3    232            �           0    0    SIIUP_MODALITY_CAT_id_seq    SEQUENCE OWNED BY     Z   ALTER SEQUENCE public."SIIUP_MODALITY_CAT_id_seq" OWNED BY public."LABS_MODALITY_CAT".id;
            public       postgres    false    231            �            1259    68003    SIIUP_PERIOD_CAT_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SIIUP_PERIOD_CAT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."SIIUP_PERIOD_CAT_id_seq";
       public       postgres    false    230    3            �           0    0    SIIUP_PERIOD_CAT_id_seq    SEQUENCE OWNED BY     V   ALTER SEQUENCE public."SIIUP_PERIOD_CAT_id_seq" OWNED BY public."LABS_PERIOD_CAT".id;
            public       postgres    false    229            �            1259    67917    SIIUP_QUARTER_CAT_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SIIUP_QUARTER_CAT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."SIIUP_QUARTER_CAT_id_seq";
       public       postgres    false    3    222            �           0    0    SIIUP_QUARTER_CAT_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public."SIIUP_QUARTER_CAT_id_seq" OWNED BY public."LABS_QUARTER_CAT".id;
            public       postgres    false    221            �            1259    67937    SIIUP_SHIFT_CAT_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SIIUP_SHIFT_CAT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."SIIUP_SHIFT_CAT_id_seq";
       public       postgres    false    3    224            �           0    0    SIIUP_SHIFT_CAT_id_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public."SIIUP_SHIFT_CAT_id_seq" OWNED BY public."LABS_SHIFT_CAT".id;
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
       public       postgres    false    235    3            �           0    0    SIIUP_TEACHER_CAT_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public."SIIUP_TEACHER_CAT_id_seq" OWNED BY public."LABS_TEACHER_CAT".id;
            public       postgres    false    234            �            1259    68381    SIUUP_ALUM_PRATICES_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SIUUP_ALUM_PRATICES_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."SIUUP_ALUM_PRATICES_id_seq";
       public       postgres    false    3    251            �           0    0    SIUUP_ALUM_PRATICES_id_seq    SEQUENCE OWNED BY     \   ALTER SEQUENCE public."SIUUP_ALUM_PRATICES_id_seq" OWNED BY public."LABS_ALUM_PRATICES".id;
            public       postgres    false    250            �            1259    68296 !   SIUUP_CATEGORIES_EQUIPMENT_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SIUUP_CATEGORIES_EQUIPMENT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."SIUUP_CATEGORIES_EQUIPMENT_id_seq";
       public       postgres    false    3    237            �           0    0 !   SIUUP_CATEGORIES_EQUIPMENT_id_seq    SEQUENCE OWNED BY     j   ALTER SEQUENCE public."SIUUP_CATEGORIES_EQUIPMENT_id_seq" OWNED BY public."LABS_CATEGORIES_EQUIPMENT".id;
            public       postgres    false    236            �            1259    68306    SIUUP_EQUIPMENT_GENERAL_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SIUUP_EQUIPMENT_GENERAL_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."SIUUP_EQUIPMENT_GENERAL_id_seq";
       public       postgres    false    3    239            �           0    0    SIUUP_EQUIPMENT_GENERAL_id_seq    SEQUENCE OWNED BY     d   ALTER SEQUENCE public."SIUUP_EQUIPMENT_GENERAL_id_seq" OWNED BY public."LABS_EQUIPMENT_GENERAL".id;
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
       public       postgres    false    245    3            �           0    0    SIUUP_SCHEDULE_id_seq    SEQUENCE OWNED BY     R   ALTER SEQUENCE public."SIUUP_SCHEDULE_id_seq" OWNED BY public."LABS_SCHEDULE".id;
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
       public       postgres    false    3    201            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
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
       public       postgres    false    209    3            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
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
       public       postgres    false    3    213            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
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
       public       postgres    false    253    3            �           0    0    jet_bookmark_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.jet_bookmark_id_seq OWNED BY public.jet_bookmark.id;
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
       public       postgres    false    255    3            �           0    0    jet_pinnedapplication_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.jet_pinnedapplication_id_seq OWNED BY public.jet_pinnedapplication.id;
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
       public       postgres    false    240    241    241            <           2604    68016    LABS_MODALITY_CAT id    DEFAULT     �   ALTER TABLE ONLY public."LABS_MODALITY_CAT" ALTER COLUMN id SET DEFAULT nextval('public."SIIUP_MODALITY_CAT_id_seq"'::regclass);
 E   ALTER TABLE public."LABS_MODALITY_CAT" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    232    231    232            ;           2604    68008    LABS_PERIOD_CAT id    DEFAULT     }   ALTER TABLE ONLY public."LABS_PERIOD_CAT" ALTER COLUMN id SET DEFAULT nextval('public."SIIUP_PERIOD_CAT_id_seq"'::regclass);
 C   ALTER TABLE public."LABS_PERIOD_CAT" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    230    230            A           2604    68332    LABS_PROGRAMS_CAT id    DEFAULT     �   ALTER TABLE ONLY public."LABS_PROGRAMS_CAT" ALTER COLUMN id SET DEFAULT nextval('public."SIUUP_PROGRAMS_CAT_id_seq"'::regclass);
 E   ALTER TABLE public."LABS_PROGRAMS_CAT" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    242    243    243            7           2604    67922    LABS_QUARTER_CAT id    DEFAULT        ALTER TABLE ONLY public."LABS_QUARTER_CAT" ALTER COLUMN id SET DEFAULT nextval('public."SIIUP_QUARTER_CAT_id_seq"'::regclass);
 D   ALTER TABLE public."LABS_QUARTER_CAT" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    222    222            B           2604    68342    LABS_SCHEDULE id    DEFAULT     y   ALTER TABLE ONLY public."LABS_SCHEDULE" ALTER COLUMN id SET DEFAULT nextval('public."SIUUP_SCHEDULE_id_seq"'::regclass);
 A   ALTER TABLE public."LABS_SCHEDULE" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    244    245    245            8           2604    67942    LABS_SHIFT_CAT id    DEFAULT     {   ALTER TABLE ONLY public."LABS_SHIFT_CAT" ALTER COLUMN id SET DEFAULT nextval('public."SIIUP_SHIFT_CAT_id_seq"'::regclass);
 B   ALTER TABLE public."LABS_SHIFT_CAT" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    224    224            9           2604    67950    LABS_STATUS id    DEFAULT     u   ALTER TABLE ONLY public."LABS_STATUS" ALTER COLUMN id SET DEFAULT nextval('public."SIUUP_STATUS_id_seq"'::regclass);
 ?   ALTER TABLE public."LABS_STATUS" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    226    225    226            C           2604    68350    LABS_STATUS_EQUIPMENT id    DEFAULT     �   ALTER TABLE ONLY public."LABS_STATUS_EQUIPMENT" ALTER COLUMN id SET DEFAULT nextval('public."SIUUP_STATUS_EQUIPMENT_id_seq"'::regclass);
 I   ALTER TABLE public."LABS_STATUS_EQUIPMENT" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    246    247    247            :           2604    67990    LABS_SUBJECT_CAT id    DEFAULT        ALTER TABLE ONLY public."LABS_SUBJECT_CAT" ALTER COLUMN id SET DEFAULT nextval('public."SIIUP_SUBJECT_CAT_id_seq"'::regclass);
 D   ALTER TABLE public."LABS_SUBJECT_CAT" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    228    228            =           2604    68284    LABS_TEACHER_CAT id    DEFAULT        ALTER TABLE ONLY public."LABS_TEACHER_CAT" ALTER COLUMN id SET DEFAULT nextval('public."SIIUP_TEACHER_CAT_id_seq"'::regclass);
 D   ALTER TABLE public."LABS_TEACHER_CAT" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    234    235    235            D           2604    68360    LABS_TEACHER_PRACTICES id    DEFAULT     �   ALTER TABLE ONLY public."LABS_TEACHER_PRACTICES" ALTER COLUMN id SET DEFAULT nextval('public."SIUUP_TEACHER_PRACTICES_id_seq"'::regclass);
 J   ALTER TABLE public."LABS_TEACHER_PRACTICES" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    249    248    249            -           2604    67729    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203            .           2604    67739    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    205    205            ,           2604    67721    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            /           2604    67747    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    207    207            0           2604    67757    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208    209            1           2604    67765    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210    211            H           2604    68597     dashboard_userdashboardmodule id    DEFAULT     �   ALTER TABLE ONLY public.dashboard_userdashboardmodule ALTER COLUMN id SET DEFAULT nextval('public.dashboard_userdashboardmodule_id_seq'::regclass);
 O   ALTER TABLE public.dashboard_userdashboardmodule ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    257    256    257            2           2604    67825    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212    213            +           2604    67711    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199            *           2604    67700    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            F           2604    68568    jet_bookmark id    DEFAULT     r   ALTER TABLE ONLY public.jet_bookmark ALTER COLUMN id SET DEFAULT nextval('public.jet_bookmark_id_seq'::regclass);
 >   ALTER TABLE public.jet_bookmark ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    252    253    253            G           2604    68576    jet_pinnedapplication id    DEFAULT     �   ALTER TABLE ONLY public.jet_pinnedapplication ALTER COLUMN id SET DEFAULT nextval('public.jet_pinnedapplication_id_seq'::regclass);
 G   ALTER TABLE public.jet_pinnedapplication ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    254    255    255            �          0    68219    LABS_ALUMN_CAT 
   TABLE DATA               n   COPY public."LABS_ALUMN_CAT" (enrollment, first_name, last_name, second_last_name, gender, email) FROM stdin;
    public       postgres    false    233   R�      �          0    68383    LABS_ALUM_PRATICES 
   TABLE DATA               �   COPY public."LABS_ALUM_PRATICES" (id, entry_date, exit_date, enrollment_id, equipment_id, laboratory_id, program_id, schedule_id) FROM stdin;
    public       postgres    false    251   �      �          0    67865    LABS_CAREER_CAT 
   TABLE DATA               �   COPY public."LABS_CAREER_CAT" (id, academic_program_name, homosigla, academic_program_name_gdp, modality_id, status_id) FROM stdin;
    public       postgres    false    216   ��      �          0    68298    LABS_CATEGORIES_EQUIPMENT 
   TABLE DATA               E   COPY public."LABS_CATEGORIES_EQUIPMENT" (id, desciption) FROM stdin;
    public       postgres    false    237   ��      �          0    67891    LABS_CYCLE_CAT 
   TABLE DATA               U   COPY public."LABS_CYCLE_CAT" (id, name, start_date, end_date, status_id) FROM stdin;
    public       postgres    false    218   �      �          0    68308    LABS_EQUIPMENT_GENERAL 
   TABLE DATA               r   COPY public."LABS_EQUIPMENT_GENERAL" (id, number, description, category_id, laboratory_id, status_id) FROM stdin;
    public       postgres    false    239   g�      �          0    67911    LABS_GROUP_CAT 
   TABLE DATA               t   COPY public."LABS_GROUP_CAT" (id, "group", code, career_id, period_id, quarter_id, shift_id, status_id) FROM stdin;
    public       postgres    false    220   �      �          0    68319    LABS_LABORATORIES 
   TABLE DATA               7   COPY public."LABS_LABORATORIES" (id, name) FROM stdin;
    public       postgres    false    241   ��      �          0    68013    LABS_MODALITY_CAT 
   TABLE DATA               I   COPY public."LABS_MODALITY_CAT" (id, description, status_id) FROM stdin;
    public       postgres    false    232   ��      �          0    68005    LABS_PERIOD_CAT 
   TABLE DATA               �   COPY public."LABS_PERIOD_CAT" (id, name, start_date, end_date, vacational_start_date, vacational_end_date, cycle_id, status_id) FROM stdin;
    public       postgres    false    230   ��      �          0    68329    LABS_PROGRAMS_CAT 
   TABLE DATA               Q   COPY public."LABS_PROGRAMS_CAT" (id, desciption, version, status_id) FROM stdin;
    public       postgres    false    243   ��      �          0    67919    LABS_QUARTER_CAT 
   TABLE DATA               6   COPY public."LABS_QUARTER_CAT" (id, name) FROM stdin;
    public       postgres    false    222   ~�      �          0    68339    LABS_SCHEDULE 
   TABLE DATA               �   COPY public."LABS_SCHEDULE" (id, day, time_start, time_end, laboratory_id, group_id, period_id, status_id, subject_id, teacher_id) FROM stdin;
    public       postgres    false    245   ��      �          0    67939    LABS_SHIFT_CAT 
   TABLE DATA               I   COPY public."LABS_SHIFT_CAT" (id, description, abbreviation) FROM stdin;
    public       postgres    false    224   �      �          0    67947    LABS_STATUS 
   TABLE DATA               @   COPY public."LABS_STATUS" (id, status, description) FROM stdin;
    public       postgres    false    226   Z�      �          0    68347    LABS_STATUS_EQUIPMENT 
   TABLE DATA               A   COPY public."LABS_STATUS_EQUIPMENT" (id, desciption) FROM stdin;
    public       postgres    false    247   ��      �          0    67987    LABS_SUBJECT_CAT 
   TABLE DATA               �   COPY public."LABS_SUBJECT_CAT" (id, name, code_subject, credits, theoretical_hours, practical_hours, certifiable, limit_absence, quarter_id, status_id) FROM stdin;
    public       postgres    false    228   6�      �          0    68281    LABS_TEACHER_CAT 
   TABLE DATA               {   COPY public."LABS_TEACHER_CAT" (id, first_name, last_name, second_last_name, email, gender, teacher_status_id) FROM stdin;
    public       postgres    false    235   ��      �          0    68357    LABS_TEACHER_PRACTICES 
   TABLE DATA               �   COPY public."LABS_TEACHER_PRACTICES" (id, entry_date, exit_date, description, equipment_id, laboratory_id, schedule_id, teacher_id) FROM stdin;
    public       postgres    false    249   �      �          0    67726 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    203   ��      �          0    67736    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    205   ��      �          0    67718    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    201   ��      �          0    67744 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    207   ~�      �          0    67754    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    209   ��      �          0    67762    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    211   ��      �          0    68594    dashboard_userdashboardmodule 
   TABLE DATA               �   COPY public.dashboard_userdashboardmodule (id, title, module, app_label, user_id, "column", "order", settings, children, collapsed) FROM stdin;
    public       postgres    false    257   ��      �          0    67822    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    213   l�      �          0    67708    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    199         �          0    67697    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    197   �      �          0    67853    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    214          �          0    68565    jet_bookmark 
   TABLE DATA               I   COPY public.jet_bookmark (id, url, title, user_id, date_add) FROM stdin;
    public       postgres    false    253   '      �          0    68573    jet_pinnedapplication 
   TABLE DATA               Q   COPY public.jet_pinnedapplication (id, app_label, user_id, date_add) FROM stdin;
    public       postgres    false    255   '      �           0    0    SIIUP_CAREER_CAT_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."SIIUP_CAREER_CAT_id_seq"', 10, true);
            public       postgres    false    215            �           0    0    SIIUP_CYCLE_CAT_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."SIIUP_CYCLE_CAT_id_seq"', 1, true);
            public       postgres    false    217            �           0    0    SIIUP_GROUP_CAT_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."SIIUP_GROUP_CAT_id_seq"', 14, true);
            public       postgres    false    219            �           0    0    SIIUP_MODALITY_CAT_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."SIIUP_MODALITY_CAT_id_seq"', 1, true);
            public       postgres    false    231            �           0    0    SIIUP_PERIOD_CAT_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."SIIUP_PERIOD_CAT_id_seq"', 3, true);
            public       postgres    false    229            �           0    0    SIIUP_QUARTER_CAT_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."SIIUP_QUARTER_CAT_id_seq"', 11, true);
            public       postgres    false    221                        0    0    SIIUP_SHIFT_CAT_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."SIIUP_SHIFT_CAT_id_seq"', 2, true);
            public       postgres    false    223                       0    0    SIIUP_SUBJECT_CAT_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."SIIUP_SUBJECT_CAT_id_seq"', 26, true);
            public       postgres    false    227                       0    0    SIIUP_TEACHER_CAT_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."SIIUP_TEACHER_CAT_id_seq"', 16, true);
            public       postgres    false    234                       0    0    SIUUP_ALUM_PRATICES_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."SIUUP_ALUM_PRATICES_id_seq"', 43, true);
            public       postgres    false    250                       0    0 !   SIUUP_CATEGORIES_EQUIPMENT_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."SIUUP_CATEGORIES_EQUIPMENT_id_seq"', 6, true);
            public       postgres    false    236                       0    0    SIUUP_EQUIPMENT_GENERAL_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."SIUUP_EQUIPMENT_GENERAL_id_seq"', 26, true);
            public       postgres    false    238                       0    0    SIUUP_LABORATORIES_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."SIUUP_LABORATORIES_id_seq"', 1, true);
            public       postgres    false    240                       0    0    SIUUP_PROGRAMS_CAT_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."SIUUP_PROGRAMS_CAT_id_seq"', 1, false);
            public       postgres    false    242                       0    0    SIUUP_SCHEDULE_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."SIUUP_SCHEDULE_id_seq"', 27, true);
            public       postgres    false    244            	           0    0    SIUUP_STATUS_EQUIPMENT_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."SIUUP_STATUS_EQUIPMENT_id_seq"', 3, true);
            public       postgres    false    246            
           0    0    SIUUP_STATUS_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."SIUUP_STATUS_id_seq"', 9, true);
            public       postgres    false    225                       0    0    SIUUP_TEACHER_PRACTICES_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."SIUUP_TEACHER_PRACTICES_id_seq"', 50, true);
            public       postgres    false    248                       0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    202                       0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    204                       0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 164, true);
            public       postgres    false    200                       0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       postgres    false    208                       0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
            public       postgres    false    206                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    210                       0    0 $   dashboard_userdashboardmodule_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.dashboard_userdashboardmodule_id_seq', 10, true);
            public       postgres    false    256                       0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 385, true);
            public       postgres    false    212                       0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 41, true);
            public       postgres    false    198                       0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 50, true);
            public       postgres    false    196                       0    0    jet_bookmark_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.jet_bookmark_id_seq', 1, false);
            public       postgres    false    252                       0    0    jet_pinnedapplication_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.jet_pinnedapplication_id_seq', 1, false);
            public       postgres    false    254            �           2606    68225 (   LABS_ALUMN_CAT SIIUP_ALUMN_CAT_email_key 
   CONSTRAINT     h   ALTER TABLE ONLY public."LABS_ALUMN_CAT"
    ADD CONSTRAINT "SIIUP_ALUMN_CAT_email_key" UNIQUE (email);
 V   ALTER TABLE ONLY public."LABS_ALUMN_CAT" DROP CONSTRAINT "SIIUP_ALUMN_CAT_email_key";
       public         postgres    false    233            �           2606    68223 #   LABS_ALUMN_CAT SIIUP_ALUMN_CAT_pkey 
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
       public         postgres    false    255            �           1259    68242 #   SIIUP_ALUMN_CAT_email_2da9cb18_like    INDEX     w   CREATE INDEX "SIIUP_ALUMN_CAT_email_2da9cb18_like" ON public."LABS_ALUMN_CAT" USING btree (email varchar_pattern_ops);
 9   DROP INDEX public."SIIUP_ALUMN_CAT_email_2da9cb18_like";
       public         postgres    false    233            y           1259    68092 4   SIIUP_CAREER_CAT_academic_program_name_0018feb1_like    INDEX     �   CREATE INDEX "SIIUP_CAREER_CAT_academic_program_name_0018feb1_like" ON public."LABS_CAREER_CAT" USING btree (academic_program_name varchar_pattern_ops);
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
       public       postgres    false    232    216    2990            �           2606    68516 F   LABS_CAREER_CAT SIIUP_CAREER_CAT_status_id_f96f3930_fk_SIUUP_STATUS_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_CAREER_CAT"
    ADD CONSTRAINT "SIIUP_CAREER_CAT_status_id_f96f3930_fk_SIUUP_STATUS_id" FOREIGN KEY (status_id) REFERENCES public."LABS_STATUS"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."LABS_CAREER_CAT" DROP CONSTRAINT "SIIUP_CAREER_CAT_status_id_f96f3930_fk_SIUUP_STATUS_id";
       public       postgres    false    2974    216    226            �           2606    68069 D   LABS_CYCLE_CAT SIIUP_CYCLE_CAT_status_id_46f571ce_fk_SIUUP_STATUS_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_CYCLE_CAT"
    ADD CONSTRAINT "SIIUP_CYCLE_CAT_status_id_46f571ce_fk_SIUUP_STATUS_id" FOREIGN KEY (status_id) REFERENCES public."LABS_STATUS"(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public."LABS_CYCLE_CAT" DROP CONSTRAINT "SIIUP_CYCLE_CAT_status_id_46f571ce_fk_SIUUP_STATUS_id";
       public       postgres    false    2974    226    218                        2606    68099 H   LABS_GROUP_CAT SIIUP_GROUP_CAT_career_id_0dc07730_fk_SIIUP_CAREER_CAT_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_GROUP_CAT"
    ADD CONSTRAINT "SIIUP_GROUP_CAT_career_id_0dc07730_fk_SIIUP_CAREER_CAT_id" FOREIGN KEY (career_id) REFERENCES public."LABS_CAREER_CAT"(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public."LABS_GROUP_CAT" DROP CONSTRAINT "SIIUP_GROUP_CAT_career_id_0dc07730_fk_SIIUP_CAREER_CAT_id";
       public       postgres    false    216    220    2948            �           2606    68044 H   LABS_GROUP_CAT SIIUP_GROUP_CAT_period_id_cdedacba_fk_SIIUP_PERIOD_CAT_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_GROUP_CAT"
    ADD CONSTRAINT "SIIUP_GROUP_CAT_period_id_cdedacba_fk_SIIUP_PERIOD_CAT_id" FOREIGN KEY (period_id) REFERENCES public."LABS_PERIOD_CAT"(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public."LABS_GROUP_CAT" DROP CONSTRAINT "SIIUP_GROUP_CAT_period_id_cdedacba_fk_SIIUP_PERIOD_CAT_id";
       public       postgres    false    220    2984    230            �           2606    68049 J   LABS_GROUP_CAT SIIUP_GROUP_CAT_quarter_id_62ab8649_fk_SIIUP_QUARTER_CAT_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_GROUP_CAT"
    ADD CONSTRAINT "SIIUP_GROUP_CAT_quarter_id_62ab8649_fk_SIIUP_QUARTER_CAT_id" FOREIGN KEY (quarter_id) REFERENCES public."LABS_QUARTER_CAT"(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public."LABS_GROUP_CAT" DROP CONSTRAINT "SIIUP_GROUP_CAT_quarter_id_62ab8649_fk_SIIUP_QUARTER_CAT_id";
       public       postgres    false    222    2967    220            �           2606    68054 F   LABS_GROUP_CAT SIIUP_GROUP_CAT_shift_id_58d39466_fk_SIIUP_SHIFT_CAT_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_GROUP_CAT"
    ADD CONSTRAINT "SIIUP_GROUP_CAT_shift_id_58d39466_fk_SIIUP_SHIFT_CAT_id" FOREIGN KEY (shift_id) REFERENCES public."LABS_SHIFT_CAT"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."LABS_GROUP_CAT" DROP CONSTRAINT "SIIUP_GROUP_CAT_shift_id_58d39466_fk_SIIUP_SHIFT_CAT_id";
       public       postgres    false    224    220    2969            �           2606    68059 D   LABS_GROUP_CAT SIIUP_GROUP_CAT_status_id_605142e2_fk_SIUUP_STATUS_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_GROUP_CAT"
    ADD CONSTRAINT "SIIUP_GROUP_CAT_status_id_605142e2_fk_SIUUP_STATUS_id" FOREIGN KEY (status_id) REFERENCES public."LABS_STATUS"(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public."LABS_GROUP_CAT" DROP CONSTRAINT "SIIUP_GROUP_CAT_status_id_605142e2_fk_SIUUP_STATUS_id";
       public       postgres    false    220    2974    226                       2606    68172 J   LABS_MODALITY_CAT SIIUP_MODALITY_CAT_status_id_c6769341_fk_SIUUP_STATUS_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_MODALITY_CAT"
    ADD CONSTRAINT "SIIUP_MODALITY_CAT_status_id_c6769341_fk_SIUUP_STATUS_id" FOREIGN KEY (status_id) REFERENCES public."LABS_STATUS"(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public."LABS_MODALITY_CAT" DROP CONSTRAINT "SIIUP_MODALITY_CAT_status_id_c6769341_fk_SIUUP_STATUS_id";
       public       postgres    false    232    2974    226                       2606    68160 H   LABS_PERIOD_CAT SIIUP_PERIOD_CAT_cycle_id_ba79930f_fk_SIIUP_CYCLE_CAT_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_PERIOD_CAT"
    ADD CONSTRAINT "SIIUP_PERIOD_CAT_cycle_id_ba79930f_fk_SIIUP_CYCLE_CAT_id" FOREIGN KEY (cycle_id) REFERENCES public."LABS_CYCLE_CAT"(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public."LABS_PERIOD_CAT" DROP CONSTRAINT "SIIUP_PERIOD_CAT_cycle_id_ba79930f_fk_SIIUP_CYCLE_CAT_id";
       public       postgres    false    2954    230    218                       2606    68165 F   LABS_PERIOD_CAT SIIUP_PERIOD_CAT_status_id_2eb79177_fk_SIUUP_STATUS_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_PERIOD_CAT"
    ADD CONSTRAINT "SIIUP_PERIOD_CAT_status_id_2eb79177_fk_SIUUP_STATUS_id" FOREIGN KEY (status_id) REFERENCES public."LABS_STATUS"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."LABS_PERIOD_CAT" DROP CONSTRAINT "SIIUP_PERIOD_CAT_status_id_2eb79177_fk_SIUUP_STATUS_id";
       public       postgres    false    226    2974    230                       2606    68129 N   LABS_SUBJECT_CAT SIIUP_SUBJECT_CAT_quarter_id_f47e038c_fk_SIIUP_QUARTER_CAT_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_SUBJECT_CAT"
    ADD CONSTRAINT "SIIUP_SUBJECT_CAT_quarter_id_f47e038c_fk_SIIUP_QUARTER_CAT_id" FOREIGN KEY (quarter_id) REFERENCES public."LABS_QUARTER_CAT"(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public."LABS_SUBJECT_CAT" DROP CONSTRAINT "SIIUP_SUBJECT_CAT_quarter_id_f47e038c_fk_SIIUP_QUARTER_CAT_id";
       public       postgres    false    2967    228    222                       2606    68541 H   LABS_SUBJECT_CAT SIIUP_SUBJECT_CAT_status_id_8dc978d1_fk_SIUUP_STATUS_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_SUBJECT_CAT"
    ADD CONSTRAINT "SIIUP_SUBJECT_CAT_status_id_8dc978d1_fk_SIUUP_STATUS_id" FOREIGN KEY (status_id) REFERENCES public."LABS_STATUS"(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public."LABS_SUBJECT_CAT" DROP CONSTRAINT "SIIUP_SUBJECT_CAT_status_id_8dc978d1_fk_SIUUP_STATUS_id";
       public       postgres    false    2974    228    226                       2606    68521 P   LABS_TEACHER_CAT SIIUP_TEACHER_CAT_teacher_status_id_2f733f98_fk_SIUUP_STATUS_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_TEACHER_CAT"
    ADD CONSTRAINT "SIIUP_TEACHER_CAT_teacher_status_id_2f733f98_fk_SIUUP_STATUS_id" FOREIGN KEY (teacher_status_id) REFERENCES public."LABS_STATUS"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."LABS_TEACHER_CAT" DROP CONSTRAINT "SIIUP_TEACHER_CAT_teacher_status_id_2f733f98_fk_SIUUP_STATUS_id";
       public       postgres    false    226    2974    235                       2606    72700 J   LABS_ALUM_PRATICES SIUUP_ALUM_PRATICES_enrollment_id_013d9f53_fk_SIIUP_ALU    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_ALUM_PRATICES"
    ADD CONSTRAINT "SIUUP_ALUM_PRATICES_enrollment_id_013d9f53_fk_SIIUP_ALU" FOREIGN KEY (enrollment_id) REFERENCES public."LABS_ALUMN_CAT"(enrollment) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public."LABS_ALUM_PRATICES" DROP CONSTRAINT "SIUUP_ALUM_PRATICES_enrollment_id_013d9f53_fk_SIIUP_ALU";
       public       postgres    false    2996    233    251                       2606    72705 I   LABS_ALUM_PRATICES SIUUP_ALUM_PRATICES_equipment_id_2cc92772_fk_SIUUP_EQU    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_ALUM_PRATICES"
    ADD CONSTRAINT "SIUUP_ALUM_PRATICES_equipment_id_2cc92772_fk_SIUUP_EQU" FOREIGN KEY (equipment_id) REFERENCES public."LABS_EQUIPMENT_GENERAL"(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public."LABS_ALUM_PRATICES" DROP CONSTRAINT "SIUUP_ALUM_PRATICES_equipment_id_2cc92772_fk_SIUUP_EQU";
       public       postgres    false    3011    239    251                       2606    72715 J   LABS_ALUM_PRATICES SIUUP_ALUM_PRATICES_laboratory_id_9a89237d_fk_SIUUP_LAB    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_ALUM_PRATICES"
    ADD CONSTRAINT "SIUUP_ALUM_PRATICES_laboratory_id_9a89237d_fk_SIUUP_LAB" FOREIGN KEY (laboratory_id) REFERENCES public."LABS_LABORATORIES"(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public."LABS_ALUM_PRATICES" DROP CONSTRAINT "SIUUP_ALUM_PRATICES_laboratory_id_9a89237d_fk_SIUUP_LAB";
       public       postgres    false    251    3017    241                       2606    68488 G   LABS_ALUM_PRATICES SIUUP_ALUM_PRATICES_program_id_3a67132a_fk_SIUUP_PRO    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_ALUM_PRATICES"
    ADD CONSTRAINT "SIUUP_ALUM_PRATICES_program_id_3a67132a_fk_SIUUP_PRO" FOREIGN KEY (program_id) REFERENCES public."LABS_PROGRAMS_CAT"(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public."LABS_ALUM_PRATICES" DROP CONSTRAINT "SIUUP_ALUM_PRATICES_program_id_3a67132a_fk_SIUUP_PRO";
       public       postgres    false    251    3019    243                       2606    68493 P   LABS_ALUM_PRATICES SIUUP_ALUM_PRATICES_schedule_id_1e191b37_fk_SIUUP_SCHEDULE_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_ALUM_PRATICES"
    ADD CONSTRAINT "SIUUP_ALUM_PRATICES_schedule_id_1e191b37_fk_SIUUP_SCHEDULE_id" FOREIGN KEY (schedule_id) REFERENCES public."LABS_SCHEDULE"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."LABS_ALUM_PRATICES" DROP CONSTRAINT "SIUUP_ALUM_PRATICES_schedule_id_1e191b37_fk_SIUUP_SCHEDULE_id";
       public       postgres    false    245    251    3025            	           2606    68390 M   LABS_EQUIPMENT_GENERAL SIUUP_EQUIPMENT_GENE_category_id_2b69a292_fk_SIUUP_CAT    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_EQUIPMENT_GENERAL"
    ADD CONSTRAINT "SIUUP_EQUIPMENT_GENE_category_id_2b69a292_fk_SIUUP_CAT" FOREIGN KEY (category_id) REFERENCES public."LABS_CATEGORIES_EQUIPMENT"(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public."LABS_EQUIPMENT_GENERAL" DROP CONSTRAINT "SIUUP_EQUIPMENT_GENE_category_id_2b69a292_fk_SIUUP_CAT";
       public       postgres    false    239    237    3007                       2606    68371 O   LABS_EQUIPMENT_GENERAL SIUUP_EQUIPMENT_GENE_laboratory_id_04797722_fk_SIUUP_LAB    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_EQUIPMENT_GENERAL"
    ADD CONSTRAINT "SIUUP_EQUIPMENT_GENE_laboratory_id_04797722_fk_SIUUP_LAB" FOREIGN KEY (laboratory_id) REFERENCES public."LABS_LABORATORIES"(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."LABS_EQUIPMENT_GENERAL" DROP CONSTRAINT "SIUUP_EQUIPMENT_GENE_laboratory_id_04797722_fk_SIUUP_LAB";
       public       postgres    false    241    239    3017                       2606    68376 K   LABS_EQUIPMENT_GENERAL SIUUP_EQUIPMENT_GENE_status_id_1a720619_fk_SIUUP_STA    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_EQUIPMENT_GENERAL"
    ADD CONSTRAINT "SIUUP_EQUIPMENT_GENE_status_id_1a720619_fk_SIUUP_STA" FOREIGN KEY (status_id) REFERENCES public."LABS_STATUS_EQUIPMENT"(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public."LABS_EQUIPMENT_GENERAL" DROP CONSTRAINT "SIUUP_EQUIPMENT_GENE_status_id_1a720619_fk_SIUUP_STA";
       public       postgres    false    239    3033    247            
           2606    68526 D   LABS_PROGRAMS_CAT SIUUP_PROGRAMS_CAT_status_id_47e60d5f_fk_SIUUP_STA    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_PROGRAMS_CAT"
    ADD CONSTRAINT "SIUUP_PROGRAMS_CAT_status_id_47e60d5f_fk_SIUUP_STA" FOREIGN KEY (status_id) REFERENCES public."LABS_STATUS_EQUIPMENT"(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public."LABS_PROGRAMS_CAT" DROP CONSTRAINT "SIUUP_PROGRAMS_CAT_status_id_47e60d5f_fk_SIUUP_STA";
       public       postgres    false    243    3033    247                       2606    68403 D   LABS_SCHEDULE SIUUP_SCHEDULE_group_id_2c573322_fk_SIIUP_GROUP_CAT_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_SCHEDULE"
    ADD CONSTRAINT "SIUUP_SCHEDULE_group_id_2c573322_fk_SIIUP_GROUP_CAT_id" FOREIGN KEY (group_id) REFERENCES public."LABS_GROUP_CAT"(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public."LABS_SCHEDULE" DROP CONSTRAINT "SIUUP_SCHEDULE_group_id_2c573322_fk_SIIUP_GROUP_CAT_id";
       public       postgres    false    2959    220    245                       2606    68531 L   LABS_SCHEDULE SIUUP_SCHEDULE_laboratory_id_56224a60_fk_SIUUP_LABORATORIES_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_SCHEDULE"
    ADD CONSTRAINT "SIUUP_SCHEDULE_laboratory_id_56224a60_fk_SIUUP_LABORATORIES_id" FOREIGN KEY (laboratory_id) REFERENCES public."LABS_LABORATORIES"(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public."LABS_SCHEDULE" DROP CONSTRAINT "SIUUP_SCHEDULE_laboratory_id_56224a60_fk_SIUUP_LABORATORIES_id";
       public       postgres    false    241    245    3017                       2606    68408 F   LABS_SCHEDULE SIUUP_SCHEDULE_period_id_615165e4_fk_SIIUP_PERIOD_CAT_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_SCHEDULE"
    ADD CONSTRAINT "SIUUP_SCHEDULE_period_id_615165e4_fk_SIIUP_PERIOD_CAT_id" FOREIGN KEY (period_id) REFERENCES public."LABS_PERIOD_CAT"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."LABS_SCHEDULE" DROP CONSTRAINT "SIUUP_SCHEDULE_period_id_615165e4_fk_SIIUP_PERIOD_CAT_id";
       public       postgres    false    2984    230    245                       2606    68413 B   LABS_SCHEDULE SIUUP_SCHEDULE_status_id_ca9f54d9_fk_SIUUP_STATUS_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_SCHEDULE"
    ADD CONSTRAINT "SIUUP_SCHEDULE_status_id_ca9f54d9_fk_SIUUP_STATUS_id" FOREIGN KEY (status_id) REFERENCES public."LABS_STATUS"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."LABS_SCHEDULE" DROP CONSTRAINT "SIUUP_SCHEDULE_status_id_ca9f54d9_fk_SIUUP_STATUS_id";
       public       postgres    false    226    245    2974                       2606    68418 H   LABS_SCHEDULE SIUUP_SCHEDULE_subject_id_14a0271b_fk_SIIUP_SUBJECT_CAT_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_SCHEDULE"
    ADD CONSTRAINT "SIUUP_SCHEDULE_subject_id_14a0271b_fk_SIIUP_SUBJECT_CAT_id" FOREIGN KEY (subject_id) REFERENCES public."LABS_SUBJECT_CAT"(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public."LABS_SCHEDULE" DROP CONSTRAINT "SIUUP_SCHEDULE_subject_id_14a0271b_fk_SIIUP_SUBJECT_CAT_id";
       public       postgres    false    2979    245    228                       2606    68423 H   LABS_SCHEDULE SIUUP_SCHEDULE_teacher_id_14d752fe_fk_SIIUP_TEACHER_CAT_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_SCHEDULE"
    ADD CONSTRAINT "SIUUP_SCHEDULE_teacher_id_14d752fe_fk_SIIUP_TEACHER_CAT_id" FOREIGN KEY (teacher_id) REFERENCES public."LABS_TEACHER_CAT"(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public."LABS_SCHEDULE" DROP CONSTRAINT "SIUUP_SCHEDULE_teacher_id_14d752fe_fk_SIIUP_TEACHER_CAT_id";
       public       postgres    false    3001    235    245                       2606    68536 N   LABS_TEACHER_PRACTICES SIUUP_TEACHER_PRACTI_equipment_id_400c829d_fk_SIUUP_EQU    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_TEACHER_PRACTICES"
    ADD CONSTRAINT "SIUUP_TEACHER_PRACTI_equipment_id_400c829d_fk_SIUUP_EQU" FOREIGN KEY (equipment_id) REFERENCES public."LABS_EQUIPMENT_GENERAL"(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public."LABS_TEACHER_PRACTICES" DROP CONSTRAINT "SIUUP_TEACHER_PRACTI_equipment_id_400c829d_fk_SIUUP_EQU";
       public       postgres    false    239    249    3011                       2606    68440 O   LABS_TEACHER_PRACTICES SIUUP_TEACHER_PRACTI_laboratory_id_20067035_fk_SIUUP_LAB    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_TEACHER_PRACTICES"
    ADD CONSTRAINT "SIUUP_TEACHER_PRACTI_laboratory_id_20067035_fk_SIUUP_LAB" FOREIGN KEY (laboratory_id) REFERENCES public."LABS_LABORATORIES"(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."LABS_TEACHER_PRACTICES" DROP CONSTRAINT "SIUUP_TEACHER_PRACTI_laboratory_id_20067035_fk_SIUUP_LAB";
       public       postgres    false    241    249    3017                       2606    68445 M   LABS_TEACHER_PRACTICES SIUUP_TEACHER_PRACTI_schedule_id_e7877ed0_fk_SIUUP_SCH    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_TEACHER_PRACTICES"
    ADD CONSTRAINT "SIUUP_TEACHER_PRACTI_schedule_id_e7877ed0_fk_SIUUP_SCH" FOREIGN KEY (schedule_id) REFERENCES public."LABS_SCHEDULE"(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public."LABS_TEACHER_PRACTICES" DROP CONSTRAINT "SIUUP_TEACHER_PRACTI_schedule_id_e7877ed0_fk_SIUUP_SCH";
       public       postgres    false    3025    249    245                       2606    68450 L   LABS_TEACHER_PRACTICES SIUUP_TEACHER_PRACTI_teacher_id_3b30a282_fk_SIIUP_TEA    FK CONSTRAINT     �   ALTER TABLE ONLY public."LABS_TEACHER_PRACTICES"
    ADD CONSTRAINT "SIUUP_TEACHER_PRACTI_teacher_id_3b30a282_fk_SIIUP_TEA" FOREIGN KEY (teacher_id) REFERENCES public."LABS_TEACHER_CAT"(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public."LABS_TEACHER_PRACTICES" DROP CONSTRAINT "SIUUP_TEACHER_PRACTI_teacher_id_3b30a282_fk_SIIUP_TEA";
       public       postgres    false    235    3001    249            �           2606    67784 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    205    201    2900            �           2606    67779 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    2905    205    203            �           2606    67770 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    2895    199    201            �           2606    67799 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    209    203    2905            �           2606    67794 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    2913    209    207            �           2606    67813 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    211    2900    201            �           2606    67808 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    211    207    2913                       2606    68606 \   dashboard_userdashboardmodule dashboard_userdashboardmodule_user_id_97c13132_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dashboard_userdashboardmodule
    ADD CONSTRAINT dashboard_userdashboardmodule_user_id_97c13132_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.dashboard_userdashboardmodule DROP CONSTRAINT dashboard_userdashboardmodule_user_id_97c13132_fk_auth_user_id;
       public       postgres    false    207    257    2913            �           2606    67832 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    199    213    2895            �           2606    67837 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       postgres    false    213    2913    207                       2606    68579 :   jet_bookmark jet_bookmark_user_id_8efdc332_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.jet_bookmark
    ADD CONSTRAINT jet_bookmark_user_id_8efdc332_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.jet_bookmark DROP CONSTRAINT jet_bookmark_user_id_8efdc332_fk_auth_user_id;
       public       postgres    false    207    253    2913                       2606    68585 L   jet_pinnedapplication jet_pinnedapplication_user_id_7765bcf9_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.jet_pinnedapplication
    ADD CONSTRAINT jet_pinnedapplication_user_id_7765bcf9_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.jet_pinnedapplication DROP CONSTRAINT jet_pinnedapplication_user_id_7765bcf9_fk_auth_user_id;
       public       postgres    false    255    2913    207            �   �   x�u�M
�0FדSx�n+���t�͠�$��(^�#x�����o��+�2�
���(��б�R-O��tvF��;(Li����d�2�N��VN�#\(Q�<�#�`g�쪂��h��6*��L������u�b3:�~[--�m���W����J�_�jN      �   v   x�m���0г<E� Q��Ct��?Ge��x"�� pHR/���hv�j>Q����"�%���	p��叞��y�<q'mr�����i'g^�x�������~�����{�,      �     x���=n�0Fg�:AQ����d����0��*$E��G��*.m�vw~��#Ke��L��3����~����TC����FV�Z�IY7�8�C$�Sw8�;Q�����Q��M<{ԭ;��	��r/Gt�/ܡewu�ܿr��ݟ���׃�x�8�Đ0�A��,�bR0��-D?~q��2�Y�dVPOy�B�����z�~l1�[.���sz���H��h�zGa����z�$�'��%�֌^^�L�D�Py����.��X��0O���(�o�M:M      �   S   x�3�t��-(-��2�JMI-�2��H-*J��L�+I,�2
'&�d��s�r�&��e&� ՙq��&9�U�)@�=... �t      �   ?   x�3�N-(�L�M*JU0202T�UPpL�/.�q�8Ab���f �������)�W� �$�      �   �   x�m�;�@��à����tE��q.�S�#��e�i����������煮���'D�D&p�8Q	�hNt#õ+v~���_;'ud�7�jȋ��>*�^HQ챵 ϊ�sb��\��ȞY�A�[J����      �   �   x�u��
� D���V�q��B`t���#w�#��qvff�B37�v0�YР�bN57�t�0���Q0en������в�F,8����GI�Wɷ+>�1�b��p�
�%���7'm���t�J�K�9N      �      x�3�t��-(-�W�TJMI-����� V��      �      x�3���LN�K�L,)-J�4����� N��      �   }   x�E�=�0��9E/`�疪�H02��P�H@P������l��e�9���s�w�t[M*
�˸��;Qi-��A���%ۍ�\��ǐƁerNk����[���Yro���*'�l��&���*�      �   �  x��V�r�8}n�B�q��G.�,��!���E؂hc$J���G�W�m��3��!���ӧO�� ��Me���=���h�aTZ�UÞl+�l'�x�A��i��F�YKF��p�Q�JZ6� ?�a���a� 09��a�z���k�i��Tu�6�
g,������Zn�U�E�Tɖ��qB��=�q?B��a��_��u�)�٨iaADG0j��d���as��Dbx���{�h�֞������ԇŢsl"��*�#v�+)�Q�~�C���ٳ������M��FoԶ�t�����R8�IE��'g<��ՙ=��(3[J{P��4yG#��7]Q�'�!����z�Սw~'���U���~�J��n�H2?��{*}�q�}xO��1F�~BE���N���J6�s����3���&�l�ؚoͱ�~]��:҈������ ~YO�;�S7�]�s�yO�9��kAܥ}{O7�c����<?����`�Ҋ���{��X�� �_׫�R�m-�?�Ш�no4��&�z8���v�b7������jcM�N��Ƶ�)GTc��6���/�=�b*��.�oL}����)�ӟ��V����UљA��AhY&��<&��}�����0
y�nj�4�j^N�X�fKd��N��n�!�&/��$�3�S4�S�M��?��%J��]�ϐPG'�0ӯM)�9y�'e��� hI�?��56�A�f����U��p�uH�$U����b�![���O+�1�}qbU}
9�, }�Sr���	�L^ �F�0}uf��x��?W8��q8�K��U�ok�]!}�<4�A��M�BU!�SRޏz�l%�gR��1!�>��o<
8'#�8��!�ě����$	�ߖܱ���k����c�½tc)t�f�k|K�e�'������}ݳ��Wt(���O+`A�Ɩ�~-�@I��*fCX`��&�s�ֵ���X������'V
ߛX::�`���MW���%���%"4�y�Ed�<�k���I~w@��	��J�6y
O�ױ�(�	�8�?��2x�bG����_��5}:����xWϖ�`�N�;v?�!|�4�(tf�!%��{�~k�>O�2�����P����J���#^YyרQo6�H�Ҕ>N_�a���a�oɬg���^ʣ�ir	��I/���?� }�?������09t�A]���=Yxs<���ELص#b�K�S^��/bR�����`�^��5      �   1   x��I�0�w7�Ԏos1�Bو��;.���a{9��&�|���"�      �   P  x����N�0E��Ǡ�i^��lY�A�$�����y��M[)G׾�N���|��>���nu�I�����J� ��e��9��n]:�!!-CQ���d�dd%�V� o�]C�0���TR��$�4I�`�G;���M�n\V�X���03�|��!8�n痏����5;����Q��+U�WPȤ�ijVR�j�ZD��yhJD�4��]^eLf�|�4;D ���$-곏����dR�5���h��S0� �6�{��x��É1�a�j��Y�>��l))ɩW��h�r,]�du����e�����|�Ћ�jf�&:\#�7S����_��;D�"1҇      �   +   x�3��M,)-�����u�2�K-.H-��p��qqq �
�      �   �   x�]�=�0���Sp$�a,�[G+	�4���N���QQ�N�>[�L����6���d�I���y�p�=V�C�2yfh߯RǎUj�A�G�kɯ�{������t�w�(���b�^-ퟰ�B��_~���ѱMH      �   5   x�3�t�,.���L�I�2���W@�s���%*��*��e&g�s��qqq ��      �   �  x�mSKn�0]�N���N������������0E&�袹M�E�#�b�$׍-n
|�͛7��
������o!��o)�!�r(u��pT,�Xq@���H���'�x�VP�WG�hzgp�.u��z�ڠ�w�l�__�?ʃ�!�	s���k*s%J���
;���K�{���}����F�B�0�o�����+Rï�m'��,����IX�q�9V4+\�;�z�3���^z�Sx��q�ঙ��J!|p�c�#�=�F�U �_�/g�$��]`lDnū�::k����k�8[j�^��<�Q��;�Q�=�����E�P~*�{�I���mL�'�pQ}ޅz8H
�6�'��|%�P.�L�
.����Fq�jCr؉֙;,���k�hf��	�f�ך��T�Q[j�E��ӷ�(���l�      �     x�}S�r�0=/_�/�Ҥ���:��dH�S/���ZY2�Ŵ�G9�	���,w&�*'����o���:ej4\�5v�Y���g�sh;l��F&E`���d4�{<*Q͌S� a�'z�`��� Ɏ�c��k�I��F�x5�c�h�(�t&�� �:g!>8Jg�5�'[�����K55}a�{���5�����a:���d�j�A(L����G:��	x&YC�2ew��FV��ɭ���
�v��pD2�c%#(�HS-
ԡ��-U/���;d�M7a���$5��r�@��0�u�Kn>%7V�y�B�(
x�_���m�K�Jc������5�x�����y��v����j�|�[԰���l	e;Bє�O`��Zb��9��C�@4<�=Q���E�D�j�AS[��wl�a�IjKƋ:���j&B�Oe����:jN?�mƊ�� �����R�@TZ+��.�B�h�S�DE�;�Ak��;��K�t�h�
��~��h�^U�      �   q   x�e�1�0D�z}
_ ��x׎�� Q�
	!D��A���mANhzV��n���j0W�\�����~��$*j�L����FQt6~Q�:��b�\��v���y��򴔔��	�      �      x������ � �      �      x������ � �      �   �  x�u����6���S�	
���2H�t�A�e�����W#K�.-�\}��X)��9C�;K�u(rfH:�>�a��fߏ�};,�3�3}���6��� ��n���-K6m�.����w��#��CG���N�n��q�
c�o�NhN���g�'Xg�[���ջ�M���Jc����4Gϝ/���g�![!��p�K�`��)�����.����{���v��[���v�ͫ�ós=����|���8p��;���F��}��|q`�m�
6���֎��vW�B�wf�O���Θ��1��W��y^T3fgkhQ�:�G����c�	I1�=I���9�9�)�῍}v1֦��OK1�-�L1#�e�f`�[���<�?��6fW;���E�1ۉ�م���ҴBf?av>!�Q��ب�kT������͍��Hv.^D���Y�W�6�6��9���r��k5�:�Y�>)��U�-��J,}Xd+�a���9����Z������f�-?V5-��ΰT�H	ζT@Ą�1/i��߻ǘ�6lY�G<�8����!��B� c
����5b�E��{BdE��"i��("�5@E_۩u.ʏT����Dȵ�Y=�r���	"H���q�|i=k���,��fn-:�;ZDO �U@�QhhYj ��]'��Q�K��}�S÷��B]��3E���)y�N�M5��l���T��6.r��Z��L�et�պ�̅�o̞�@e�s��b���E���b� ����;�-�ˤ��nh�8�c-���<��XN�)!sA,�)+!��{�{צ����Kk�|�gN �E��')�y#�����]0��"����&��6�5����-����W[/��D����,"y�/x� ���5ٖ�I����9)�
���:��ƺ����C*!K�Ӡ������搫LDѸ (s�4  b* ̎@���LQT��"b�S��(�ڃ����1�O:Kg�S٤���K�5Сm)�F�)vDH��!�P���\V��_��P�ŀ��|������]$+�:"d�g��
���NE���<sOA��'TD,��PO�%a���z��d68Ņm���8��Z���#�@��c���@���������8�Qo�^���V;l%��֓pہ��"���@��� ��=��g��Xa�}��۞�<��F�ݻ��<&Ji�yG$����t��x����H$�������Q(���y���.;ـ/�/�v��6|�|цؕ'[pe�α���F����/�;��t�l+����R��H�:�J�g`��t������i�Mꮲ�.�ځ�YڵJ\��i�*qH6۽�D�ȱ�JP �R= m8B������!
䧸� �cH9��sԖ�J� ��mV�[��hXJ8.2��`$�s ۄ�9����m��X���m��v&Q!�'�A����H
�.�V8.�З�Pv�{�i��صYiWK��W�6!�N�N��v�I�9�OPӦ5��$�
Z�gM*9Kx���t�<
Tv�h�#��� R�h�H��n�f����d�]��'�@�D�HK)�%�"?�Ք�jHi�M�	%g��q�~W������֐�ȹ*���=�x����
g���}����QM�^�NY����3�H�EVx����&Dvx�D���M@�xـ�O1����n��9���      �     x�}�Ko�@ �3�
��2��nbҢ�GP�GӤYD�* i}�6i�s�L&��o@(�<���2��:jC:���b��զ����hq\I����;Ϝ����!����I�d7�7/�e͈O�Y_  #]FF��(��te��Z`�!;
>/����tm<�fۥ��)��+�������hT����;�W�Ȍ��Ƽ��o�.ؒ��?N���쵝�_r��Lz�Όд����f޿��HS�ʟ�_�Z�۱��
w)6~쯊(��.�l�      �      x������ � �      �      x������ � �      �   x  x��T�N1>;Oa����Y(��A+U���AhbO6����M+ċ��g�#��:6�&K@T+��o��f��)�G�A���ߍ�ֳk�?�Xp2��l5��T��S�����ͤ������OA{��D��&���x�G5��m  SF+����͂
�V�����8h�UP6����Rdw{|��1��k���q;NKX�V�h���u�J��T���#?���q`6}h[Q����Mo�He��P(4w	x���#A��T�$��U���E)�n%^i��0�jM(�؆�]w�c�;�Œ��s�\�F+B-��1��������+lqO�/�d�_e��0�9߿T�%a��`kOH��?��AmU"⻅(�/U��{��!<��Ŧ�;���GM���Ԗ�=І���߲���.�6�>}��\�pqtPot�jm� �僽qbE[����r���5���
�������2g�Q�\غ�R����ELbk	�R����8���:��q��r�m|^Y[iLt	)�>�1��>?�Ald�� "��S�h�����1l�W�>uC{�9}R�'���z����-~�j���%�U�;�>!�e�D�)���z���-%t�s�вN�\��a�d�����LY      �      x��]�r7�>�Oѡ���X ��є�����JZ_f�P"K��6��n�6�y}�aÏ��L լB�?l�<mO_���L$ ~"�ϙz.̄�S�N���QR(��'��l�q������<�����g����?�'�1D Qi� <�89��o���!�sSY���_�ɋ�eSf����)c�\W�p.x���y}y;���7�� BV�j�D��:�sS	�����m��v�ܼ_6��������z��]�?�,��kR\~
���J-ø|U�PO�57�zV��Q���Q�x�d@9����~��^�7�Q�D?I*��h>L�S�g)�8e��3�@�����Y�W���|��U%�P�k�9y��%�5��iQ1D��Ə�=�X|�ΦW�U	� +Υ��N�Mo׳�O��=�U���]�N��#� �k�;�c�ɠ��7���rd���Tڊ�WD~=���y�^��a�N�b��:���o�v�����r�[/��C����z~~��ô�]��Ͽ>;_׷��M��]6��~�;�[�n�bFY�a|�2����oEŝ�&Z`�x�oZ���J�S>Q�K����q�D06Y��@)�RVF��'��ہ::�%p��c�ץ��Я"�,vmI�����V q�m0$[�mF焫��c��ҏ3J��tBk�?�^��NU��S�+�z��^N���Fә/&�Og��v��"��0�8�I��0&m��������|9�q�L����g�ߟ'o�Ū�*#.��xf��K������9����ŬA�7��f9��e~���r��q}�ۼ��WY��w�dJ;킺�e���ur6�]̧����?"��O�,�O(���T���E���Y����$�-�d���~��+X`4�W��i���m��Tϯ�7�OͲ��Y��5#S�RTN��9��^�4��������?6��2����(��]�J��U��A��|�bz��)�"@�Z��f�մ�s�\�:{��梋�cSo��+%!��E����O�%8R�J^Y��i���f>E=�Õ��b:�Z���fC��/$��V�-��i�������-��O�w�0��F�����cgp�~}��
�j������x�Ԑ�Ā�B�7��������/f$7���)F�##���sVq���`R]�W��u5�5��Ƅ�� �����%.���!SKBH�^Y���`I����n��z59[�.n��M��Ԕ�:e�Q�f&F~	��|zS_NQjT������
}�j�!f�&50�����4�Ki��h����!"���i��R�@~[����QD����:����O���j99�^��ǯ�8&9PGY���-���bd���^���5�8�0�@��p�Y^�)ijs
N&��������FrI�,�0%I���y7���	,�.�͕�E��������'4�w"����;a�F�X��a��9?����TO�ƥt�׀q��d�&��p̹�<�a7Ҏ%/���r��r����� �%x�Դ��V��dҎ͜�2�����d��̬S�T�Q*Μ����&A��H0.��%��^�T��!-�.0���V�f��
�U~�M)'���������/'u~j&߼}���w����7Z0���h]f�/��*a�T��J3�H~�b���|�am.줌^�f��2�o�pL�a�D;��՚t�*���fm�ճU�I�9U8��ޝg~L�^�����0Fp��]�&�~lX�c��فe"�����:����'���R�Vp�ګlL~/��kJ�,�RG��~�XR�9��_���C`�0AT
\�����$W1J��Lp��e�p?�����5đ�2�@�;���*)Gq�h�����*�dp��-�tar� ��.Lb',7!X���-'Uc>�gR:��f'Wx�86�h��T,R2��]�\&�z�8Y8)�6!�����1'�o��.�ɉ�nOs����*4!Q)ˉP:��FU�T(1Za���:͋JmJe3 =r_�yQ��@���Z���V}��EŶŖN;�d�+�U�u�t[R�I�X�n�rہrK����A��ݼ��n��>�� �	��o^Tp7PpI�I1}����5�4\�^�V&nǈ��������K�	.]HD_�EQ��@�	E]���]�p7�p�Lzep�}Ew�$���u_�EQ��@��y�;�mE�5\5�4\�Ɠ�_���⢨⮣��#Y*Q�[l6�V-�/p-�.��o��wY9��7��= �kא3#��Sp�(�A٭�{"�g��/��u3y���&_/�W�&���|�\fw��֠H��Z�2u,C�>�w�P��bq��&��?4����ʉ�=.���<
�F�8J�ꃬ2�T�&��9gw�u,����9[մ����)*���e�ּ�A���?e�RݣT�WYš�a,���{�6�[Ma��I��1g��}��*w��y�%�)�'aS���P����r��t�f�v&���\��U
�A����Ğd�M�H�lce�k+sr1�\.V���R99��q9���p9�z,�Oe�\v_.1䢒��,h�r%.>�;�����������/9��	�C4�y�k_E�4D.�H�@U-�\f_.=��Kj�Bt������,�K��e2\�⒱�;)Y��_�]TZ���$��]{�F�q`Ь�q0pV�2�1�����j�}��`)����`si���}נ�Q���
��;�w#K�	��b DJ �Ġ#P�(���,Ɩf��P� ����@�.�*@��q�z00�.�.@Y�ڕ��d�H���"�C2]$�G��-D��*F�t���Q"��#P�� �����"T}�4�鼫�P�tLJ�H�i:�j:4T5�v5
����t��t(h�jLѻz=������PPs�hLͻZ%-G{	1�PW�!���Hmm�J��9f��{��	�@csu�=����Km���Z?,��Y��v�%��B�2�����@*�/`T���?J�"mp��a,�л���w�������ٗ�g�G�m'����H �E���^�X��:*Y�L�u��=�����~�l�u�޼Ö �9\�cdK�wz8"����eէ�(\Jai�A3�+h4�m_q����۱� �����>[9���w��H�T�}>��F��:y��RG�
�q��g/_��s�����	�R�	�.��&�X�|�LYx�b���h��h��̕J�e��Ħ|^2��#G-T锆riL�t�m^r錍Ә��w�q'�lýmf�ÔٔE���h#\O��1.�q�����M������٧z�s}�kEg�@���4BAt0g���[{�aO?D�V-�r1[�א�B��L�?����ԛ��t1D��2�ʰ���k�W[�4#\j�ܷ�(�c�ŝ���_���|�Q�N_^25a�TZ4aŋ���%�4���f6ÿ��kV�F���'��+08�ˈ�n�����=��f���!� �s��)6p(���*���Rc���++�Q��a��\o�)�P���Lyj`�Ɣ��X�S��+j�A=
#Ma�����9!(Ɯ�N���i��^�I�JpZ�c�xz��JK�o�����k���ʐF�J��v{�������x�-�˺�@AS����a3�ۓ�z��P�I�ױ�������������c�a�4q�����M���aN�L�ƭ�&�I_���i:kV�o�)C�V��*�+}<��P~-�vFMG��N�p�@��"Bj\�7�Zg��:��W�D��2����F:�LC�Ms}=�1����p�X��e�g�5?�5�`;�I�..�"n��w�l�,	����y.�����0pq�k�h$�E#�ZE夌+o�[Ʋ�D�d8�5&QO�T�[ !C{�X�[Ĳ���@�b�ztK�'U�G*�3GwQ�R=*���Y�v������H|rmS3 �.�3mA�ò���zu����.fw�fq�Z�R0Q��Sb|���������藓����r����f�b �  Q)v_v�!Oj�J���V��2�D���ګ2��H-���c�V�cH�Zz���<̅��H�=��I��Sߠ�aW��Nǔ�D����ބ���<�g��*w���C2��;�+��=��LJ�--4K ��Gr��|�M�h���1��.�CG¥B@�-����5�CQ܈��q�K%J%�R�|�T�p�v�x*���JY%�����Q�1���.4��ƀ��a�}^Hy�o��]�u)�>�B�TG��4�6;ږ�l��X2��b\G=��2�V��#�l9��SI�?��ۉ�}�W%��Ѿ,�d�s咺O0n	�o��|����J-����3��a�%f8\�����l�3Ƹ��̱��o��K�Sw���1� ��	(d�H}�R��-��B�W���6�ȟKwx�{������{;0=�)�g�����VZ�.�b$29\���� 6���?㈤��J:���a^T�i(|�ܜ�=p�V���+����k�h�>�(<���+��7M8�9��-��I��ݴP>�&x�r���hLe?6��2E/<"�H݄P�iD��)=޴W�����f��]O.���?�'���u�
��'��F���H[�����	1�>���7�؃:S�ؓ1���dO��	?�*�[*kk2�M,��k�ن�-�r��*��b<���eQ�1�m-��˛�������]�W������,�x�!+��-�W�ūs����&{aLDM�,��)�%k�G[��jR�ڷ:H+$g�Ek}.��# cJ��V顄C|æ�o�(��R��������Y��ru;�c�D8���?�����	jòY�������� �J�^��Y��mG��
Wԗ+�C������;��n��t�@��H��}�m�����a3w*��C���8���X�]��Q��DȂ�r*'$D����NTs�V�6��m���c�Oa�LO�p��;U2��"X���شLn$�����n\<	]FBt��#����p�ι����s�8���FRv���RśWɷ�	�S}s�f8��i�H$NXj�3�wǤ�T*A���J�7���aZʄ�7n*�J�2K����I�S���0f���@Dv�+n�&�wC1�5Ar�͡��{\1�t] )1Kb:f��3��Z/h�m
�$R�k��7�0#�G7�. �p4
xL�}��@�B_�%�O�(T��u���xL�P� }�0��1�t=�Z
����3���@R�
�T��V-5X.�o�mp����.�тƅ��<��M���B�G�]�.�w���|��/��3]禝qOfv��H�+�%w��5�Riʻ8��>�ǟ]�H���{s��S�]���t�M}�����3+f���TB������̮J)\��Ӑ����Dh�E?���ʟ��iD��~��L𧆬��6h_m�W�s��Ϧ�DȉT����[���;�����K
����
]l���n��Q��Z�@�E8`���T���@iл�PW)���J:_R��N_��)��'K�r�]�ۥ.�V���&�?���\h�˷46:vUF��vH)u�0hE$[*g2�!�z;���w��e	0�
�Rq����;o�I����	š7��7�R)�R	c���[����!5=�F7l���%�}��X��t�qڲ�3)�$R���?#�-Ļ�َk�����"�s�<��,��9�\�覾��咺�/�?>����9u&)�=9o�3��\�˩oC����jÃ>W�Svר{�ԥ�Ď�Kg�N/�L�q�-��3u.N��׎����C}�ug�2�Gt���fZؕ��b�SJJ�k�x�p\KJ�G�nw�tyb�jyvu(�Ӗw!�4܍>T��|�I�c'o��'�;:<f$�9D�WTf�#e±y�������,�&:�rD��<`��!v�-}xm� V��b�Q�}IVp��c�a���=���`�!uG5+`�b�w�<��؂��p�vZ����T6�������C��4t�Sp4��{�9{��n��)*�kv�W'�ӹ���y�4��P�y��L���8<��#t��qxt�G�P�~���3��}�G/� �)e�*�i�>OU�R�iaE(a�>�h
���S�L�����?M�!���)�j(�Q>-��t�CC��UAɎ7R�&���Ɵee�
l����q8T*��JW���=0&R&EE�Ts�&�?��D>��JI��[>���Q�N�?~2�P��ҙp���({�ˊ0B�����L�ؐ���L;V�����ǫ��,�i�����tj��*^�c������]��TtDc�� �B�!�o��q��.�օR(���	N1vc�p](�������J��;���B���,kÓ(Ӆ�C(:uĹ��5��[-t�e�t%u�ɹ��j0�F_ߒ�1yM{�շ��Z��.E�\�ƻ��;[%ݙi\���1e�l��%�&��|9�����	�6cfL�Ҍ�Aw�e
�/H0�#�`�/�>��������PCr���-�G"�R�%�4��Qδ�j$� 5Y.��L{P*�,��Ƽ�����f�]��A�P�|	�0A�nH,$�[�n@#��%�ԃN�o]h�:�:lR&���utgvO+
�F�LH��r�h^A��+)х? ]�����+	�gTFTJwpX�z�^�:��H��'u&tV 'aws%��B��A�瞴d\���Rs��5'E�[���}�3LU�d���x�����T\��eFo������I��I�A�Q�4����=	f)�@�t<��6|�vO��e�������F��x�$�?K�1�P�my���{Lѿo�8��(���=	6(��q�!\��Ƽ'��2%e�Î�����~`����TL�+�0�{�e�����=gX���Α��
nҤ���\��t|(w�z���*L���nZ/����� �ɞ�:%�Q7��F�G���e(E�43��1ˤ��ԕе��d�F!�j�[�0��h�4�k�X��5
�������`�F��I]A��n�{����EA���f�V�7{OJ��������{�T<Ce��
���/�f�ĐK���x����f�`H�D�������f�d���-e:r�m�K�\��ƥ�\�>�;��[��_�?kgR      �   �  x�m�˖� ���0s�۾�l��J��pY���-�3K���$1-�E�L�	Wo7^1~f�"��z�u"����&���-��c���<�sxd���{�@��y��-Z�ⷄ�V)��x��N�PY$#P�oDKr��XhbUb?��`��^��R�Q��M(�,� �%��|l�xݢ�C�����Z:��a������]^�\�،���]�8z�U���D��Y>N�d�j3���1PaY��]y���-gn��V<�zg
����Z����4K\���%N�x�k�r�%��E�T׹�X=YXHj�M�����3�p~��˵}fߒi��>�=B̶�������%~gO���uE�(�1��0h�Z��xS2n4Xq��(�(ʿ�8�@e_�      �   Y  x���[��:��ӫ�r�����,'�F2@Zӻ?e�	!t�:R��>�uu��О����w�1�չ*W�!�b��w�B�LF	 z��;wN�-�f�U��;W6���� �q3A[�G�}��7���t~k]Yn38+C��� ;�C՞�G��pj�E`�%HQ@��ha3���=��o�������u��;{�]S�}P�m���ڟ���JRuPfF�	u���7��_R A�@�g�XR�_��^���H�)[�f�\2j�!�yv��s.9�� �E��{��9�1�6��L�[y�Iʧ���m�����k;���w�o�.���|ƙ��
�2I��I�C�~�2<�[&�	u����G���@������K���ZT�v|�ɫ���^}T��R�O�
f���ԗ�B��qA���>]D��q@&�j�z���l
m`7xw8��VJ#�-���ݾ�B�}�6Ԕ��8>{�۟���iK_[��w��rq��si���<�`� F}.8�D���!���5#��p��LZ�)}�.���y�X��r���B9�N��:Oմ8a��3��OP-�|����%={�{f�����o���6)����M3�'����?�����&�+�S7"�bF��i�R��on�mO���ڏ�,����;c1�<�(����E���U|B�����݈�箭�&�c�9�ɰ J�B�f��-�LjO#$�K@-㻢q�	R
�#���$4��0����A����Pp�Ij3o���S�>�t�����5I\gZ3�Ƕ��Q�%y�7�?LqL�OP�C�� �z��*�#��(:��pr�qrv���Y��X��
�ꕸlcH͸��u��g.�-*\wT�lV�� %��������#:�����A���y���p���?�[ו$���D���H���Ƃ�w/�!����W��1
=�7���WR�K�?Q|7{�4��Z)CEX�Ľ���A�����1rUi�Bm����+�!W2��b�
5׹�kû�9./�5�@Ғ���˚[5�L�R�7��f�hZ�%_-j>��S�iN���T���4���g��uzJe�y̌d+8<��&݆��2&����������T <      �   �  x���I��J���`E 3�6�ƸSI}��՗�*�K��Č	���q~j4W r�,{�Yg���-����*�O�t���T�NaɶM7���Gz��Pg	2�����ue2�s��-�܀�^��Y��k=J��Mc*��M5��t�;�9��`	�7��cpI�ߝ�{�~q��]dg1=��}�JA!oͤT��1�J;Ք7��
x���>�����"&�Zbl������_�#�]�3�����-ý�!I�! ��$��"1D��tX�8�nZ ��4.ZR
���h������8�ݶBCWA'OM(���m�E���Ǥ�<���I�4�Q��쇨�gƛR��&��TbJ".���#�X$c�(ȥcs����h�3w�n)��� �<Ax�Cpf���/yx�0"��!
�zy�s�J��Q�p�~S����)�B/ޜ�mJbh��}�[�-hW�ɡ�,]� �~df�z����s�b ������L�K���%_y���i��H4�I�W�Q�kuQGNѩmP��I�f�-*��H��,��"�R<�<W,��!��	!7'l6�[��<w�v�i*h~�O�|��Y��Oa�e�C���F;�T��Iu���uJ0��"�>O�+��"�c�UY;�\L� ��yS����W%��'a31%�΃\��Dn8ڛ�$C�귡^Sy�<8��M�8��W���&j 3����nPO��@��I��=��w!���8�7m�����Zr��#9�G���'ޠ����zN\��������0�!J�&NZϧ��E%9�n.Jz������w-��<�B�yP��ViVjW��e�g#�"ը�����o�_D�m��"����:+؁^�!������=xnUg^4���;Q���`�tNR,E7�ʭ������.��~A3�O�^�`ٷ[�x����j��j��lB��J%�@o��E��G�H/j��36#_B�Μ�r�w̤�T������3Ŝ5�p�H�=��"���-A�"˙�j��f�v�����&dh�.���;�	Oz�=�!�����T���;k���&)
~�J�M�b�b��X����(.����P�[�������e(����ڳ�J�����tDi��X�RW���D�/�݌���0���cZd�t���BXS �6b�W��oU��$+�ݧ�ջ]���FF�ݞ����xU�j�G+Q������/���vDS�㾕����i���A��0�'����/��
�_�tx�ꃕNc8�ughNX�r��מI/�:��C>�8�K	��W�1��nnC��,
[
�TK��w��A�l��J��՝����DV�$�b�<M��b9��g�c߭�� ��S�o�*�1G����ZMD7�VF�:#*�������0�!'�������H�[s�d餬�MӶU�J��i�˔�R���3'��*����:��䢊����2�%�C��9s#ձ��I���:�7Nl��2�E�q��d�'�;n�8n�Y0�!�AWxe�M�e4�U��U�T�DG?)L1x&r^��s����e#�[ɻ�=m����X����\�ޱ��v[���Ԉ^'��[��z9�.���a�NgR�a2��ƴz��J
+���Z�?�9��eG�y�z��H����Wmml<�@W��h�Ｇ�g�����p��8xH�[�6;�냝66�� "������4��o�������_��p      �      x������ � �      �      x������ � �     