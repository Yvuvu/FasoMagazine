PGDMP     +                    x            fasomag    11.2    11.2 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16570    fasomag    DATABASE     �   CREATE DATABASE fasomag WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_France.1252' LC_CTYPE = 'French_France.1252';
    DROP DATABASE fasomag;
             postgres    false            �            1259    25898 
   categories    TABLE     -  CREATE TABLE public.categories (
    id integer NOT NULL,
    parent_id integer,
    "order" integer DEFAULT 1 NOT NULL,
    name character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.categories;
       public         postgres    false            �            1259    25896    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public       postgres    false    209                       0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
            public       postgres    false    208            �            1259    25845 	   data_rows    TABLE       CREATE TABLE public.data_rows (
    id integer NOT NULL,
    data_type_id integer NOT NULL,
    field character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    display_name character varying(255) NOT NULL,
    required boolean DEFAULT false NOT NULL,
    browse boolean DEFAULT true NOT NULL,
    read boolean DEFAULT true NOT NULL,
    edit boolean DEFAULT true NOT NULL,
    add boolean DEFAULT true NOT NULL,
    delete boolean DEFAULT true NOT NULL,
    details text,
    "order" integer DEFAULT 1 NOT NULL
);
    DROP TABLE public.data_rows;
       public         postgres    false            �            1259    25843    data_rows_id_seq    SEQUENCE     �   CREATE SEQUENCE public.data_rows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.data_rows_id_seq;
       public       postgres    false    203                       0    0    data_rows_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.data_rows_id_seq OWNED BY public.data_rows.id;
            public       postgres    false    202            �            1259    25829 
   data_types    TABLE     �  CREATE TABLE public.data_types (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    display_name_singular character varying(255) NOT NULL,
    display_name_plural character varying(255) NOT NULL,
    icon character varying(255),
    model_name character varying(255),
    description character varying(255),
    generate_permissions boolean DEFAULT false NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    server_side smallint DEFAULT '0'::smallint NOT NULL,
    controller character varying(255),
    policy_name character varying(255),
    details text
);
    DROP TABLE public.data_types;
       public         postgres    false            �            1259    25827    data_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.data_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.data_types_id_seq;
       public       postgres    false    201                       0    0    data_types_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.data_types_id_seq OWNED BY public.data_types.id;
            public       postgres    false    200            �            1259    26037    failed_jobs    TABLE     �   CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         postgres    false            �            1259    26035    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public       postgres    false    225                       0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
            public       postgres    false    224            �            1259    25927 
   menu_items    TABLE       CREATE TABLE public.menu_items (
    id integer NOT NULL,
    menu_id integer,
    title character varying(255) NOT NULL,
    url character varying(255) NOT NULL,
    target character varying(255) DEFAULT '_self'::character varying NOT NULL,
    icon_class character varying(255),
    color character varying(255),
    parent_id integer,
    "order" integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    route character varying(255),
    parameters text
);
    DROP TABLE public.menu_items;
       public         postgres    false            �            1259    25925    menu_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.menu_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.menu_items_id_seq;
       public       postgres    false    213                       0    0    menu_items_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.menu_items_id_seq OWNED BY public.menu_items.id;
            public       postgres    false    212            �            1259    25917    menus    TABLE     �   CREATE TABLE public.menus (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.menus;
       public         postgres    false            �            1259    25915    menus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.menus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.menus_id_seq;
       public       postgres    false    211                       0    0    menus_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.menus_id_seq OWNED BY public.menus.id;
            public       postgres    false    210            �            1259    16573 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         postgres    false            �            1259    16571    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public       postgres    false    197                       0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
            public       postgres    false    196            �            1259    25867    pages    TABLE     b  CREATE TABLE public.pages (
    id integer NOT NULL,
    author_id integer NOT NULL,
    title character varying(255) NOT NULL,
    excerpt text,
    body text,
    image character varying(255),
    slug character varying(255) NOT NULL,
    meta_description text,
    meta_keywords text,
    status character varying(255) DEFAULT 'INACTIVE'::character varying NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT pages_status_check CHECK (((status)::text = ANY ((ARRAY['ACTIVE'::character varying, 'INACTIVE'::character varying])::text[])))
);
    DROP TABLE public.pages;
       public         postgres    false            �            1259    25865    pages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.pages_id_seq;
       public       postgres    false    205                       0    0    pages_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;
            public       postgres    false    204            �            1259    25981    permission_role    TABLE     h   CREATE TABLE public.permission_role (
    permission_id bigint NOT NULL,
    role_id bigint NOT NULL
);
 #   DROP TABLE public.permission_role;
       public         postgres    false            �            1259    25971    permissions    TABLE     �   CREATE TABLE public.permissions (
    id bigint NOT NULL,
    key character varying(255) NOT NULL,
    table_name character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.permissions;
       public         postgres    false            �            1259    25969    permissions_id_seq    SEQUENCE     {   CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.permissions_id_seq;
       public       postgres    false    219                       0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
            public       postgres    false    218            �            1259    26089    post_regions    TABLE     �   CREATE TABLE public.post_regions (
    post_id integer NOT NULL,
    region_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.post_regions;
       public         postgres    false            �            1259    25882    posts    TABLE     �  CREATE TABLE public.posts (
    id integer NOT NULL,
    author_id integer NOT NULL,
    category_id integer,
    title character varying(255) NOT NULL,
    seo_title character varying(255),
    excerpt text,
    body text NOT NULL,
    image character varying(255),
    slug character varying(255) NOT NULL,
    meta_description text,
    meta_keywords text,
    status character varying(255) DEFAULT 'DRAFT'::character varying NOT NULL,
    featured boolean DEFAULT false NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT posts_status_check CHECK (((status)::text = ANY ((ARRAY['PUBLISHED'::character varying, 'DRAFT'::character varying, 'PENDING'::character varying])::text[])))
);
    DROP TABLE public.posts;
       public         postgres    false            �            1259    25880    posts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public       postgres    false    207                       0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
            public       postgres    false    206            �            1259    26049    regions    TABLE     �   CREATE TABLE public.regions (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.regions;
       public         postgres    false            �            1259    26047    regions_id_seq    SEQUENCE     w   CREATE SEQUENCE public.regions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.regions_id_seq;
       public       postgres    false    227                       0    0    regions_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.regions_id_seq OWNED BY public.regions.id;
            public       postgres    false    226            �            1259    25944    roles    TABLE     �   CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    display_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.roles;
       public         postgres    false            �            1259    25942    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public       postgres    false    215                       0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
            public       postgres    false    214            �            1259    25957    settings    TABLE     -  CREATE TABLE public.settings (
    id integer NOT NULL,
    key character varying(255) NOT NULL,
    display_name character varying(255) NOT NULL,
    value text,
    details text,
    type character varying(255) NOT NULL,
    "order" integer DEFAULT 1 NOT NULL,
    "group" character varying(255)
);
    DROP TABLE public.settings;
       public         postgres    false            �            1259    25955    settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.settings_id_seq;
       public       postgres    false    217                       0    0    settings_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.settings_id_seq OWNED BY public.settings.id;
            public       postgres    false    216            �            1259    26074    subscriber_subscriptions    TABLE     �   CREATE TABLE public.subscriber_subscriptions (
    subscriber_id integer NOT NULL,
    subscription_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 ,   DROP TABLE public.subscriber_subscriptions;
       public         postgres    false            �            1259    26057    subscribers    TABLE     �   CREATE TABLE public.subscribers (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.subscribers;
       public         postgres    false            �            1259    26055    subscribers_id_seq    SEQUENCE     {   CREATE SEQUENCE public.subscribers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.subscribers_id_seq;
       public       postgres    false    229                       0    0    subscribers_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.subscribers_id_seq OWNED BY public.subscribers.id;
            public       postgres    false    228            �            1259    26068    subscriptions    TABLE     �   CREATE TABLE public.subscriptions (
    id bigint NOT NULL,
    subscription character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 !   DROP TABLE public.subscriptions;
       public         postgres    false            �            1259    26066    subscriptions_id_seq    SEQUENCE     }   CREATE SEQUENCE public.subscriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.subscriptions_id_seq;
       public       postgres    false    231                        0    0    subscriptions_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.subscriptions_id_seq OWNED BY public.subscriptions.id;
            public       postgres    false    230            �            1259    26001    translations    TABLE     d  CREATE TABLE public.translations (
    id integer NOT NULL,
    table_name character varying(255) NOT NULL,
    column_name character varying(255) NOT NULL,
    foreign_key integer NOT NULL,
    locale character varying(255) NOT NULL,
    value text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.translations;
       public         postgres    false            �            1259    25999    translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.translations_id_seq;
       public       postgres    false    222            !           0    0    translations_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.translations_id_seq OWNED BY public.translations.id;
            public       postgres    false    221            �            1259    26018 
   user_roles    TABLE     ]   CREATE TABLE public.user_roles (
    user_id bigint NOT NULL,
    role_id bigint NOT NULL
);
    DROP TABLE public.user_roles;
       public         postgres    false            �            1259    25815    users    TABLE     �  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    avatar character varying(255) DEFAULT 'users/default.png'::character varying,
    role_id bigint,
    settings text
);
    DROP TABLE public.users;
       public         postgres    false            �            1259    25813    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       postgres    false    199            "           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
            public       postgres    false    198                       2604    25901    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    209    209                        2604    25848    data_rows id    DEFAULT     l   ALTER TABLE ONLY public.data_rows ALTER COLUMN id SET DEFAULT nextval('public.data_rows_id_seq'::regclass);
 ;   ALTER TABLE public.data_rows ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203            �
           2604    25832    data_types id    DEFAULT     n   ALTER TABLE ONLY public.data_types ALTER COLUMN id SET DEFAULT nextval('public.data_types_id_seq'::regclass);
 <   ALTER TABLE public.data_types ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200    201                       2604    26040    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    224    225                       2604    25930    menu_items id    DEFAULT     n   ALTER TABLE ONLY public.menu_items ALTER COLUMN id SET DEFAULT nextval('public.menu_items_id_seq'::regclass);
 <   ALTER TABLE public.menu_items ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212    213                       2604    25920    menus id    DEFAULT     d   ALTER TABLE ONLY public.menus ALTER COLUMN id SET DEFAULT nextval('public.menus_id_seq'::regclass);
 7   ALTER TABLE public.menus ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    211    211            �
           2604    16576    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197                       2604    25870    pages id    DEFAULT     d   ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);
 7   ALTER TABLE public.pages ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    205    205                       2604    25974    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    218    219                       2604    25885    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    207    207                       2604    26052 
   regions id    DEFAULT     h   ALTER TABLE ONLY public.regions ALTER COLUMN id SET DEFAULT nextval('public.regions_id_seq'::regclass);
 9   ALTER TABLE public.regions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    226    227                       2604    25947    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    215    214    215                       2604    25960    settings id    DEFAULT     j   ALTER TABLE ONLY public.settings ALTER COLUMN id SET DEFAULT nextval('public.settings_id_seq'::regclass);
 :   ALTER TABLE public.settings ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    216    217    217                       2604    26060    subscribers id    DEFAULT     p   ALTER TABLE ONLY public.subscribers ALTER COLUMN id SET DEFAULT nextval('public.subscribers_id_seq'::regclass);
 =   ALTER TABLE public.subscribers ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    228    229    229                       2604    26071    subscriptions id    DEFAULT     t   ALTER TABLE ONLY public.subscriptions ALTER COLUMN id SET DEFAULT nextval('public.subscriptions_id_seq'::regclass);
 ?   ALTER TABLE public.subscriptions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    230    231    231                       2604    26004    translations id    DEFAULT     r   ALTER TABLE ONLY public.translations ALTER COLUMN id SET DEFAULT nextval('public.translations_id_seq'::regclass);
 >   ALTER TABLE public.translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    222    221    222            �
           2604    25818    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            �          0    25898 
   categories 
   TABLE DATA               `   COPY public.categories (id, parent_id, "order", name, slug, created_at, updated_at) FROM stdin;
    public       postgres    false    209   +�       �          0    25845 	   data_rows 
   TABLE DATA               �   COPY public.data_rows (id, data_type_id, field, type, display_name, required, browse, read, edit, add, delete, details, "order") FROM stdin;
    public       postgres    false    203   ��       �          0    25829 
   data_types 
   TABLE DATA               �   COPY public.data_types (id, name, slug, display_name_singular, display_name_plural, icon, model_name, description, generate_permissions, created_at, updated_at, server_side, controller, policy_name, details) FROM stdin;
    public       postgres    false    201   y�                 0    26037    failed_jobs 
   TABLE DATA               [   COPY public.failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
    public       postgres    false    225   ��       �          0    25927 
   menu_items 
   TABLE DATA               �   COPY public.menu_items (id, menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, parameters) FROM stdin;
    public       postgres    false    213   ��       �          0    25917    menus 
   TABLE DATA               A   COPY public.menus (id, name, created_at, updated_at) FROM stdin;
    public       postgres    false    211   Q�       �          0    16573 
   migrations 
   TABLE DATA               :   COPY public.migrations (id, migration, batch) FROM stdin;
    public       postgres    false    197   ��       �          0    25867    pages 
   TABLE DATA               �   COPY public.pages (id, author_id, title, excerpt, body, image, slug, meta_description, meta_keywords, status, created_at, updated_at) FROM stdin;
    public       postgres    false    205   ��       �          0    25981    permission_role 
   TABLE DATA               A   COPY public.permission_role (permission_id, role_id) FROM stdin;
    public       postgres    false    220   ,�       �          0    25971    permissions 
   TABLE DATA               R   COPY public.permissions (id, key, table_name, created_at, updated_at) FROM stdin;
    public       postgres    false    219   ��                 0    26089    post_regions 
   TABLE DATA               R   COPY public.post_regions (post_id, region_id, created_at, updated_at) FROM stdin;
    public       postgres    false    233   ��       �          0    25882    posts 
   TABLE DATA               �   COPY public.posts (id, author_id, category_id, title, seo_title, excerpt, body, image, slug, meta_description, meta_keywords, status, featured, created_at, updated_at) FROM stdin;
    public       postgres    false    207   �                 0    26049    regions 
   TABLE DATA               C   COPY public.regions (id, name, created_at, updated_at) FROM stdin;
    public       postgres    false    227   j�       �          0    25944    roles 
   TABLE DATA               O   COPY public.roles (id, name, display_name, created_at, updated_at) FROM stdin;
    public       postgres    false    215   ��       �          0    25957    settings 
   TABLE DATA               a   COPY public.settings (id, key, display_name, value, details, type, "order", "group") FROM stdin;
    public       postgres    false    217   ��       
          0    26074    subscriber_subscriptions 
   TABLE DATA               j   COPY public.subscriber_subscriptions (subscriber_id, subscription_id, created_at, updated_at) FROM stdin;
    public       postgres    false    232   e�                 0    26057    subscribers 
   TABLE DATA               N   COPY public.subscribers (id, name, email, created_at, updated_at) FROM stdin;
    public       postgres    false    229   ��       	          0    26068    subscriptions 
   TABLE DATA               Q   COPY public.subscriptions (id, subscription, created_at, updated_at) FROM stdin;
    public       postgres    false    231   ��                  0    26001    translations 
   TABLE DATA               w   COPY public.translations (id, table_name, column_name, foreign_key, locale, value, created_at, updated_at) FROM stdin;
    public       postgres    false    222   ��                 0    26018 
   user_roles 
   TABLE DATA               6   COPY public.user_roles (user_id, role_id) FROM stdin;
    public       postgres    false    223   
�       �          0    25815    users 
   TABLE DATA               �   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, avatar, role_id, settings) FROM stdin;
    public       postgres    false    199   '�       #           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 5, true);
            public       postgres    false    208            $           0    0    data_rows_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.data_rows_id_seq', 55, true);
            public       postgres    false    202            %           0    0    data_types_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.data_types_id_seq', 6, true);
            public       postgres    false    200            &           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
            public       postgres    false    224            '           0    0    menu_items_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.menu_items_id_seq', 14, true);
            public       postgres    false    212            (           0    0    menus_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.menus_id_seq', 1, true);
            public       postgres    false    210            )           0    0    migrations_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.migrations_id_seq', 186, true);
            public       postgres    false    196            *           0    0    pages_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.pages_id_seq', 1, true);
            public       postgres    false    204            +           0    0    permissions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.permissions_id_seq', 41, true);
            public       postgres    false    218            ,           0    0    posts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.posts_id_seq', 13, true);
            public       postgres    false    206            -           0    0    regions_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.regions_id_seq', 1, false);
            public       postgres    false    226            .           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 2, true);
            public       postgres    false    214            /           0    0    settings_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.settings_id_seq', 10, true);
            public       postgres    false    216            0           0    0    subscribers_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.subscribers_id_seq', 1, false);
            public       postgres    false    228            1           0    0    subscriptions_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.subscriptions_id_seq', 1, false);
            public       postgres    false    230            2           0    0    translations_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.translations_id_seq', 30, true);
            public       postgres    false    221            3           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 3, true);
            public       postgres    false    198            5           2606    25907    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public         postgres    false    209            7           2606    25914 !   categories categories_slug_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_slug_unique UNIQUE (slug);
 K   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_slug_unique;
       public         postgres    false    209            +           2606    25859    data_rows data_rows_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.data_rows
    ADD CONSTRAINT data_rows_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.data_rows DROP CONSTRAINT data_rows_pkey;
       public         postgres    false    203            %           2606    25840 !   data_types data_types_name_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.data_types
    ADD CONSTRAINT data_types_name_unique UNIQUE (name);
 K   ALTER TABLE ONLY public.data_types DROP CONSTRAINT data_types_name_unique;
       public         postgres    false    201            '           2606    25838    data_types data_types_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.data_types
    ADD CONSTRAINT data_types_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.data_types DROP CONSTRAINT data_types_pkey;
       public         postgres    false    201            )           2606    25842 !   data_types data_types_slug_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.data_types
    ADD CONSTRAINT data_types_slug_unique UNIQUE (slug);
 K   ALTER TABLE ONLY public.data_types DROP CONSTRAINT data_types_slug_unique;
       public         postgres    false    201            V           2606    26046    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public         postgres    false    225            =           2606    25936    menu_items menu_items_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.menu_items DROP CONSTRAINT menu_items_pkey;
       public         postgres    false    213            9           2606    25924    menus menus_name_unique 
   CONSTRAINT     R   ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_name_unique UNIQUE (name);
 A   ALTER TABLE ONLY public.menus DROP CONSTRAINT menus_name_unique;
       public         postgres    false    211            ;           2606    25922    menus menus_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.menus DROP CONSTRAINT menus_pkey;
       public         postgres    false    211                       2606    16578    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public         postgres    false    197            -           2606    25877    pages pages_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.pages DROP CONSTRAINT pages_pkey;
       public         postgres    false    205            /           2606    25879    pages pages_slug_unique 
   CONSTRAINT     R   ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_slug_unique UNIQUE (slug);
 A   ALTER TABLE ONLY public.pages DROP CONSTRAINT pages_slug_unique;
       public         postgres    false    205            K           2606    25995 $   permission_role permission_role_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT permission_role_pkey PRIMARY KEY (permission_id, role_id);
 N   ALTER TABLE ONLY public.permission_role DROP CONSTRAINT permission_role_pkey;
       public         postgres    false    220    220            H           2606    25979    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public         postgres    false    219            `           2606    26103    post_regions post_regions_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.post_regions
    ADD CONSTRAINT post_regions_pkey PRIMARY KEY (post_id, region_id);
 H   ALTER TABLE ONLY public.post_regions DROP CONSTRAINT post_regions_pkey;
       public         postgres    false    233    233            1           2606    25893    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public         postgres    false    207            3           2606    25895    posts posts_slug_unique 
   CONSTRAINT     R   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_slug_unique UNIQUE (slug);
 A   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_slug_unique;
       public         postgres    false    207            X           2606    26054    regions regions_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_pkey;
       public         postgres    false    227            ?           2606    25954    roles roles_name_unique 
   CONSTRAINT     R   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_name_unique UNIQUE (name);
 A   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_name_unique;
       public         postgres    false    215            A           2606    25952    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public         postgres    false    215            C           2606    25968    settings settings_key_unique 
   CONSTRAINT     V   ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_key_unique UNIQUE (key);
 F   ALTER TABLE ONLY public.settings DROP CONSTRAINT settings_key_unique;
       public         postgres    false    217            E           2606    25966    settings settings_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.settings DROP CONSTRAINT settings_pkey;
       public         postgres    false    217            ^           2606    26088 6   subscriber_subscriptions subscriber_subscriptions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.subscriber_subscriptions
    ADD CONSTRAINT subscriber_subscriptions_pkey PRIMARY KEY (subscriber_id, subscription_id);
 `   ALTER TABLE ONLY public.subscriber_subscriptions DROP CONSTRAINT subscriber_subscriptions_pkey;
       public         postgres    false    232    232            Z           2606    26065    subscribers subscribers_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.subscribers
    ADD CONSTRAINT subscribers_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.subscribers DROP CONSTRAINT subscribers_pkey;
       public         postgres    false    229            \           2606    26073     subscriptions subscriptions_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.subscriptions DROP CONSTRAINT subscriptions_pkey;
       public         postgres    false    231            N           2606    26009    translations translations_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.translations
    ADD CONSTRAINT translations_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.translations DROP CONSTRAINT translations_pkey;
       public         postgres    false    222            P           2606    26011 J   translations translations_table_name_column_name_foreign_key_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.translations
    ADD CONSTRAINT translations_table_name_column_name_foreign_key_locale_unique UNIQUE (table_name, column_name, foreign_key, locale);
 t   ALTER TABLE ONLY public.translations DROP CONSTRAINT translations_table_name_column_name_foreign_key_locale_unique;
       public         postgres    false    222    222    222    222            R           2606    26032    user_roles user_roles_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (user_id, role_id);
 D   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_pkey;
       public         postgres    false    223    223            !           2606    25825    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public         postgres    false    199            #           2606    25823    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    199            I           1259    25996 #   permission_role_permission_id_index    INDEX     h   CREATE INDEX permission_role_permission_id_index ON public.permission_role USING btree (permission_id);
 7   DROP INDEX public.permission_role_permission_id_index;
       public         postgres    false    220            L           1259    25997    permission_role_role_id_index    INDEX     \   CREATE INDEX permission_role_role_id_index ON public.permission_role USING btree (role_id);
 1   DROP INDEX public.permission_role_role_id_index;
       public         postgres    false    220            F           1259    25980    permissions_key_index    INDEX     L   CREATE INDEX permissions_key_index ON public.permissions USING btree (key);
 )   DROP INDEX public.permissions_key_index;
       public         postgres    false    219            S           1259    26034    user_roles_role_id_index    INDEX     R   CREATE INDEX user_roles_role_id_index ON public.user_roles USING btree (role_id);
 ,   DROP INDEX public.user_roles_role_id_index;
       public         postgres    false    223            T           1259    26033    user_roles_user_id_index    INDEX     R   CREATE INDEX user_roles_user_id_index ON public.user_roles USING btree (user_id);
 ,   DROP INDEX public.user_roles_user_id_index;
       public         postgres    false    223            c           2606    25908 '   categories categories_parent_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_parent_id_foreign FOREIGN KEY (parent_id) REFERENCES public.categories(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_parent_id_foreign;
       public       postgres    false    2869    209    209            b           2606    25860 (   data_rows data_rows_data_type_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.data_rows
    ADD CONSTRAINT data_rows_data_type_id_foreign FOREIGN KEY (data_type_id) REFERENCES public.data_types(id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.data_rows DROP CONSTRAINT data_rows_data_type_id_foreign;
       public       postgres    false    2855    203    201            d           2606    25937 %   menu_items menu_items_menu_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_menu_id_foreign FOREIGN KEY (menu_id) REFERENCES public.menus(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.menu_items DROP CONSTRAINT menu_items_menu_id_foreign;
       public       postgres    false    211    213    2875            e           2606    25984 5   permission_role permission_role_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT permission_role_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.permission_role DROP CONSTRAINT permission_role_permission_id_foreign;
       public       postgres    false    220    2888    219            f           2606    25989 /   permission_role permission_role_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT permission_role_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.permission_role DROP CONSTRAINT permission_role_role_id_foreign;
       public       postgres    false    215    220    2881            k           2606    26092 )   post_regions post_regions_post_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.post_regions
    ADD CONSTRAINT post_regions_post_id_foreign FOREIGN KEY (post_id) REFERENCES public.posts(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 S   ALTER TABLE ONLY public.post_regions DROP CONSTRAINT post_regions_post_id_foreign;
       public       postgres    false    2865    207    233            l           2606    26097 +   post_regions post_regions_region_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.post_regions
    ADD CONSTRAINT post_regions_region_id_foreign FOREIGN KEY (region_id) REFERENCES public.regions(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 U   ALTER TABLE ONLY public.post_regions DROP CONSTRAINT post_regions_region_id_foreign;
       public       postgres    false    233    227    2904            i           2606    26077 G   subscriber_subscriptions subscriber_subscriptions_subscriber_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.subscriber_subscriptions
    ADD CONSTRAINT subscriber_subscriptions_subscriber_id_foreign FOREIGN KEY (subscriber_id) REFERENCES public.subscribers(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 q   ALTER TABLE ONLY public.subscriber_subscriptions DROP CONSTRAINT subscriber_subscriptions_subscriber_id_foreign;
       public       postgres    false    2906    232    229            j           2606    26082 I   subscriber_subscriptions subscriber_subscriptions_subscription_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.subscriber_subscriptions
    ADD CONSTRAINT subscriber_subscriptions_subscription_id_foreign FOREIGN KEY (subscription_id) REFERENCES public.subscriptions(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 s   ALTER TABLE ONLY public.subscriber_subscriptions DROP CONSTRAINT subscriber_subscriptions_subscription_id_foreign;
       public       postgres    false    232    231    2908            h           2606    26026 %   user_roles user_roles_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_role_id_foreign;
       public       postgres    false    215    223    2881            g           2606    26021 %   user_roles user_roles_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_user_id_foreign;
       public       postgres    false    223    2851    199            a           2606    26013    users users_role_id_foreign    FK CONSTRAINT     z   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id);
 E   ALTER TABLE ONLY public.users DROP CONSTRAINT users_role_id_foreign;
       public       postgres    false    2881    215    199            �   �   x���;�0D��Sp� �?��E��6����I��O��"LA5�����Wb�sf�>N+�*�T�;P�M���g����Z�+�d�Gd���[�+������iQ��W�n��$DN�M���SWf�A���L��S�����J�s��#�OH      �   �  x��V�n�6}&��з�0u��-{�Fo�x��)Y�m"��D%q�{Iۑ��*�p��3��pΐ�0""�Vɂd:&�,�݌0j�O�`�cJ?*�<�Sr�g4Z�g+�ˠ��5��3+���HY.E����ق���3�R�9?��gV��@ϮE� �|��`�VH��[�-����"�Ò?I�Ո������0P�?�R�C�.��)�je0�Zj,�&�r���
�i�'��`<�<����2Hrri���}����>��<zm��(�F����[�lįõ)�ē@�51b�P� ˃�|D�_���r�K�Ffà�	W��2����f��̵�(,�2����2V'��y�
D$���3X6�P�S�E���Rf~��ܯ,in0][h��I�H�������g�Y(�J͔JRf�v,�d�MJ5��j��}�Afq��;��9�]"Q�q��u��Y�xȤ���Z�.e�W�&A�yO����\���xuTGA[L�Z�0]Y`�)~�\J���ZD��v?>*%"���B����f ���Ԗv�m����w����g�V�=�N����}�ê~�Ʊ��t�rУ�:�MvmH��7���x-	q���\g�a�=$/}i��"�UVl�˝‗��86�R�x�܈�W�� ƟB^�R}ܾ��55���EmH!µ�-���TG�u<����uV��T�����˺�ru>�H����.ش�b�V�җ>��U�����@�KYT�[#�)��	�~6���Jx$��241=�n��e`�i�kL�x��\u%՝t�>���g����!�W��I���+.�"�tMd�qG�G*��2](?*>ʑ��L������{�e�G���I���Tg\�jݐ:��
h��^.���<蛶h���}�OV��ݭQ��me�o.>ϛ/��o�����1c:��(��0m�����l<�}Q(�F�*h���ى� taW1�Ğ��0T�+y���w;��1<z0����K�Q<"ᚇ��P���#�2��.�t��睥�E�=`�:����N�����S �!��K7�m^�ѣ^[�ɍVZ�����Z����*�b:���O�O��8h��n' �!���V���c_A]�*k+���c�S��h��y�����N)�<      �     x����N�0���S�Ei���p�T!���T�T���}{',�h; U?%�?��[@����N��q�����Nz���ܞ7B�z�[�&��8�,gw9��)�z��/����q89��$!���Di��[���Ţ�]�y�v�toG�V:����~�hյ8/�n�kf��?��-��Q���V���V�׀q9�OH¬�n?E��_��2��祖0hcM`�$D���J�e�(�\��|RKs���*��6HB��)�[����\�̏C�fY���            x������ � �      �   �  x����n� �k��@M����͹d73�mw&���Z�ͽ���Ҕ^���V�����/�����舙/����A���~���$�%Y4^Ӌ��=u��B������/������)�
|S�L2�3>d��F+�̜�Ze&�̖��bJ��5:#L%$��������*�+��������,kR�Y \�7�.��{H��h�8:��k��jC5��3�\�N+��s���Xi-�/O+�0�
���X��(��!x�B��h�wu�6#g�K�P�!�H�;;7���|$����$�=U���+��Q�3uU�=EͅM3hʁ���֍�t$v�O�b{�����-�$��ݑfq���h�SNM���M=��8���      �   +   x�3�LL����4202�50�5�T04�26�21�&����� 5�
z      �     x�}��� ������lB�e\f�4@�x�{�Ԃ�k��}�����0�IL$�9z���k�>Ȩ�V��]�
�p�nR5M����}��O�����/�'���E����TR��#u!�R\�Db.	b��]:�qq�4�I�s��;�8��W=���nJ� ����6A�{i�1��R�yQcIa-��=���jB0n����3LP�B�j���M�:0L��ג7��,5�i��J�4tLkx�B�����u?�A1�8�M���Ws�*B�ѡ��{���[ꗳ�±Z����j���K(U�Վn�0�Aɯ�ؑ��4����#�f�
��4����J��w�u�v?��Y3�s��
��Z��J�D��W'6:#�Q�Hf��6���Y2ҵz&��e��i��C�%e�p(Y��tTƆw����Dc�G�7e��&ʎҴ�ټ��MO�˝�,����^BW��K뷞6�0�����Fo�͋ڳ`��'`y�=o��"�[Z�4�G;���=��u:��d��      �   r  x�uSKo�0>g�ܸ�iwAETU%Z�P� �*�2I&�w��v����li+Q�b��{�dQV��o���.�ʃ��6d����q��np��PǾ�)o�M�td�v�;
QR*j�3B�3e%����mu���h�Ě��K����-�$g=0"�fȔZFhˆz��`���z7��z����JLsM?�鋘�>9�@�� �:��Dq��#�N���Gu}WN،RW'��k�|�8ٕ���9p��/R2[� d��Ek�����ܮ�����!H���wK�Ԅqt�]`M
6ڜh��Nȁ��:gQ��ƦA�FZ���;;��Y������zϘ]�x��X8֎��oQ��?5�q%5����ݮ�t b �� Pʂ�H��8���I}rNo<l<�qĿ��C�6�v#t;r�;)��h��|?�F���Y��y�8'�I�c�m9��:&��gW���մ��/,9�^�����֧���ϵ���~w��wчq�q5<���Z��q͝��Y�<D�j?�k1�X��hnG�����*��tPދzL5��ͷ��}&W���Kj�^U�e�h�xI�_�����O�>T�������|��Gǯ��_=w7��g���1�M      �   Y   x�λ� њ���w��ť�E㖶����jw{�6�8L�V��Z��^ !�0�#�0�#�0"� �"� �"��3����      �   I  x���Mn�0F��S����5"'�T�آ�!F��^��c��`����>˟ނ��~�yWzp���dvʚ�<��u[�m�o�d7���E �r�Sh��e�G�u��y�����߭�'ͽp?��7X^�X���]�g���8�k�<t5ۻA����T�-�-[���B�P��j=��4w��-��b�d��.�B�����aw�w,!����@�%D�2�{7�Lo�a��q�T[;!���)���23-���&�D['���n�{�b��,��d��J}�T��Ls�e������z�X,�A����v}X����i�*k�rk'��B�o��sO            x������ � �      �      x��Z�r�Hv]�_�3�P�#
lV�E��mEPd�IRj��nM(@&	� 0	����W�y)��w����K|n�^��Gw�gc�(@���{��s������t�7��)mM7gR��r�[V誒&��.��V��Ue�iX��\���cܤδl�m�f:��4eYH��hI�ʘ��JjV�eń�2V�<�Jn����ń��[N��Ċ���M*�?<����xX:�e���cQ���y����u��^�r�D�\r��N���f��,E32t���z"[�\Iv�i��d���|⢈R�������Q`���OY��d6���UF+_^DүhnR������IR�O�N���5S�T,v&��>`/eQ��Ւ��U,J��L�®y"�X�������T{V悝���z�8�BHcY�뤜����,��ْ�8�n���DJ�w� )�!�M�Ő��2>2z�#Wװd���e�)V�~ڭ���/��߀B��d��y�]��}-�9fTss�p��ZvXҘ�ta�a֏��p�W��^���qʯw�JGXn�>���T�@L��9�z��<�6��Kxp��-vэ�ڼ�u����s�q ��5�� i�핔5�)��3�X�w`,��i� ���m�Fέ��n�A��[[c7������nn���/�|kwh�������tX�������N\�����t�P^X�k��-����b糺d��9y�sēo֡�G�߳�L���B���Fl�����VZ�t1�nԉ�,D  �c�Z��72�^�F�{l~5X^�l�y��������F�1�l���#����v��=�l���e�|B�Y�-@w���H��f1�;�۵���zӰ��vdP�]%��E�;X�l�� "������9xaf`>�Nx���C߶z| ����B��S˲&4����߿����~\\g���D��"9V�סw���w8!����r�j͢o��m��h4�m��P�Á̯�C�5����v����z|u����u�Z���~mbg���o������m�n���4�����0I�l?QMԄM�#�/����[��2Ku+u5*��&���^V�i�R<}�n?{tr:�;V������U���`4ܹ��=�l���FN؋ʂ9�&���/�s:�}[��~:���w�P�Rŋ���=�J����ս�p����SUe���E��"l�?I��8V�H�<Pda�dx*�4�T<�Zԭr:M�4�R�VLE)�"L�4KRպ:0��[jz������O��m:~���/2����$Z_P�ju��v������m�7zs��Jdp���.���؈#���F�����|�A/��u����} B� iK���\#��ۧ�Ohi�>o	M����'����B4 ���C*���M�X"��1��'#% ) �-ᡮ;����Zc�1�W0K���9���n:Z><��Б7����J4-�T8�R��_ȉ,�!�f7 �˕��G��.J�� �t�q�jݍn��c#M@�H�[-b�a�0�ʢ�h��=��&�FcG��FB*T~�L��X\�P̸�&<�A~�v��b������#	�S`3�!6tZVY>� �Y
MA]=��)��K���x �i�i�+�(���E*�N�e���!Fs<¿8��F���ib�������=*~*����S���N0ձ
υl�̲������G���� ^�H
r,�+�%n�n�JZ�E��a��-��Q�?�T�|}l�v��=�ݽ��fۧ�m�A��^t�H�@̯���E�.��;ۆa�P9a��pae! 3��e�|	m��?qT��>���
�l�5�#�[Em��D� ���<-��r�6.�D�	��tТ�����F��ǆ������� �W<��G�o��Nǀ��}�:��x�å��\����ÿ�1L����H��K{�t�Ho�5�}��2���|�����Ú�MoN�Nud�ynAc0�k�f0�o�%/�Qí��#?>���Ԣ��\��}i3b����>�kQ1G�v��Ahe��؁�<�A�6���x���?���(���:���r�ۆx>�o�"�����^Xz7�$��F�wq_����E�D�5[<���w]�Ţ�G�XLg�z��^�1���:l�m� $�T��E$Z+ �u���2i�&	U��<k���$V�i*"��m��$�h���*l�@��y�]֦��V��Q�0/V�.+� ����~���Ơ)�����"!���;���O��Y�s��r>>�>;<{�_\[U��e�`Ʉ�swp�"���=�a���d��� \��JhA��G���}�6�g�l������O㳋�gcv4>gO�^�^�����f9{1>=�刽y��짷�Ƿcv<f�/���t�N_�=g�O��ٛ�sv������?]���~m�����g�6�ȗ��S��N�5� ~vc�O���O�-�����@{U������Ju�I�¸�(���I��Z'ejk�f��a*���Il�$��I�ڷ�S��q������6�,h�Hs<L�Ic��2z��Q����:Q�t>���a1W��X?�b��TB�`Q
�C��`iRZl�4��b�C�g��z����O���d��<:ع8{����ϓ���Fvnt@#ɏ.����Xx�6. �BDZB�C���u9	Ik��oH�Z��˲c9��`��n>���e�;	��@�"[�v�Cn3M����Ô�[��W�=��N��u��3!�d���	��n��*�s�;={�s�?٪݄��2	�k|�b-f|nt��dQ�����"F� �h������79�[v��i����#J�r`�}9֭�.�փ�V���<Y�إ��B��n5g|��X��%��4��*,-��=�:B�Qd�ШoP~P��)a��Vu�A0��!�G��J:@%�̣�����n����b�Q�\Ds����"�~6���O|׳��Q�ǗC�X�݀ύ��ł>�R`,�62�`��w �r��Ab���PJe,j�FQ+�Hf�0-��!�ע��n��	���z!�%�^]����IfZ:.��<�ؖXPJN�Ul�LL�3��pQ���:$<���jO�l�(:{�Nv�=c[p#86����`����Ca����[-w�b�Q k��.�N��F/����˪f8��	��h�7�n��������`G2�t	�JafeG��9~}z���?Xm�_{~!n�_�J#�wEh���b���}+=�׼��4�V���Z@�|݂-��Y��A����_(�E+���/Y������F��m��$�Ѣ�tP:z��e�kگܠ0|����Q�MIZ�|<���De��%6ˊuq��8-	�Fk9�ݘ-��9O�ؕmH���2K�����	��&I�b)ӥ�UCuX�V&ڸVmH����6��Ԉ�H0%F�8ദn�h�+Y���*�[��_��r�|r��󓓋0�����U <9]R��$d��|n���/h��T�=\=ۡg���A�?��s���ɈjQ�[z-	�3K-� wT�xV�N���[].2U4��g7�� �c���6��+j�cM��yΧ��0:�h�;+���p��٭�؉�xX:?e�`�&\P>�߄,@�J#7c*.�ٟ�N��Ǫ��b������&����w�GW���z?����C&��V�q�A<������I�π��\����	N*������pMG���4t�ԍI֢�@i�-yi�<wc�<Y\��uqd�@�I��u�]ʼ���rsS���刯�}2�rN�_n�� `�-݂�`Xxd����x �3���ƒ�!��W�XX���1���B�kW��դ��4VQ�4`�dR�����#r�hT�ڵ�v-������
c(�V.��Z��L-�����֠ܶl�ŜY��݊i��t"�"�]�&b)ǲZi���ժe�3qj������ӤM�l��F���������{h�}���|�T��RWn��_���_]�� J  ˱�֋
�gT� s��襥�7�����3E ���=9�w�`�=����6v�%읗������ӈ��}He����kP޽�jӷ�Z�.:�{�{����#�!q��� A�Y]3>�����W2������.�@	\���OhA_fr�41�/F� �=4U�b������e�<�����۰��g.�{;{���~���e�{�I����b��Ϲ�B����Έѵ��*z'UԒT;��T���W�K������YIk��r���9�v���z��Q���T�s�:���M*��K�(��R`ͮ]��j?��vYE�j���m������_%��            x������ � �      �   J   x�3�LL����t���%E�%�E�FF��F�
�fV�fV&��ĸ�8K�S�8��rsBAlb���qqq ��      �   t  x�}�[S�0���_�G}azC��2 �3Z�8�aBk�$�I��zC,(��v��;{�T���2#�]�0�[I�8U�r��4��3-�54��O2�r�* ��xZ�kQ�y��)b(�I���,P��,�R����C�!� W_� �K�L���6��Py�=eu�Ja�̫Ӹ��i�%lMXI�(�V�H|�8*0�^⻆o�G�=��H�8��ε];�����(�?G�_n��Ә�$�ϧ��m��.�dj[y�~��H]ޔ�`��XQ�@��a�7z0N4�l���9z�{U�R�͖�^m��y�ϣ�G��'�gY|c�4���Q?;-x����m0��x2��(�Eg$�2��h��aY��I�      
      x������ � �            x������ � �      	      x������ � �          >  x����n?��ۧ���8i�"ġH!UTB~R�jv=�q��Z-o�8�<A_�qhKR�n9��|���=�#^Ŷ�PH���]mU2�㢉Ņ�1M�#q
������|qh�HtC[��w�-��κ�"s�Dm�7���Fϻ�ӌ~������n�,��ɦ��E7t���y���/�7&y4�z3O�����?���O/P�t��~���.��f }�������א:̊j瑣�I����EM���YY�?E���=]�.џ���%���Z*�D���'s�Γ��/��d�y��38���� ���=�M��A�>WhL{�
�w
�-�������D�&@�Rd/��멠F/#Vk���e���<�OƸ[��?��Z܆L��^� k�7%��1��o2�,9�y�N!��$�F��êm�m-V�ϙ?��m�HUj�p�ݍ���U�Ś�&o����A��"	�Bͩ�V5g7�*ey��B`��.����RTkC�7�5o/���:�q�s�1�2i��\�ɫ��	}$/)��,�r��M+,5�*�on.3;fc;ہA��C�'D���c�[�+�.FD�egXU.��������ag�Z���3��*1$��Xqt�.��a�hGn5b<��'���������c�.��e���(�Yg�b�9�[m�߹\��-+������I�V�����\L���W:���E�`�d�}8�����gN�����F��m9\]���W��y�51?��sL��^4��b��y%�������=��6�u�[��t�̘���p�J>���١��lO�ٕV<��r|tt�]�|�            x������ � �      �   �  x���Ko�@F��_Y�ffx�U���S�؁ 6#�Y�I��޺��(��ͷ8WW:���y��Ĭ���y��fiE�FMB,���NU��`�{���KNA�8�MŽ���q�z�9�cȐi%����?F�#�/�0VR1�Ɇ��;.f	��u
0�1/���l�Γ��猀8�5�؛��s�f�>5K�7�k��+����d��\|L9q�/v]�#�woh�*n��h���&�*���ß��)dy'�z��:C/�"z('�:�=���)��V�������
��HGO�3���$��W�Nv�w�*e�3����M��{����$ǥ��Cf|��%�H� �e�a��X��#0��r���0w��
�&�\:�f;��M�Oxg��/�I�N     