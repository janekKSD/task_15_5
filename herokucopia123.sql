PGDMP  :    /                |            hodlopedia_04    16.1    16.0 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    26033    hodlopedia_04    DATABASE     �   CREATE DATABASE hodlopedia_04 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Polish_Poland.1250';
    DROP DATABASE hodlopedia_04;
                postgres    false            �            1259    26034    alembic_version    TABLE     X   CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);
 #   DROP TABLE public.alembic_version;
       public         heap    postgres    false            �            1259    26039    coin    TABLE     ]  CREATE TABLE public.coin (
    id character varying(50) NOT NULL,
    name character varying(500) NOT NULL,
    symbol character varying(50) NOT NULL,
    logo character varying(1000),
    favourites boolean,
    last_updated timestamp without time zone,
    manual_date_updated timestamp without time zone,
    categories jsonb,
    links jsonb
);
    DROP TABLE public.coin;
       public         heap    postgres    false            �            1259    26057 
   coin_chart    TABLE     %  CREATE TABLE public.coin_chart (
    id character varying(50) NOT NULL,
    chart_description text,
    chart_dolar integer,
    chart_btc integer,
    chart_eth integer,
    chart_mc_unlock integer,
    chart_basic_points integer,
    chart_redflag_points integer,
    chart_score integer
);
    DROP TABLE public.coin_chart;
       public         heap    postgres    false            �            1259    26069    coin_contract_chain    TABLE     �  CREATE TABLE public.coin_contract_chain (
    id character varying(50) NOT NULL,
    contract_chain_description text,
    contract_chain_number integer,
    contract_chain_security integer,
    contract_chain_audit integer,
    contract_chain_hodlers integer,
    contract_chain_operations_number integer,
    contract_chain_basic_points integer,
    contract_chain_redflag_points integer,
    contract_chain_score integer
);
 '   DROP TABLE public.coin_contract_chain;
       public         heap    postgres    false            �            1259    26081    coin_cooperation    TABLE     {  CREATE TABLE public.coin_cooperation (
    id character varying(50) NOT NULL,
    cooperation_description text,
    cooperation_size integer,
    cooperation_quality integer,
    cooperation_rules integer,
    cooperation_vc integer,
    cooperation_shillers integer,
    cooperation_basic_points integer,
    cooperation_redflag_points integer,
    cooperation_score integer
);
 $   DROP TABLE public.coin_cooperation;
       public         heap    postgres    false            �            1259    26093    coin_description    TABLE     �  CREATE TABLE public.coin_description (
    id character varying(50) NOT NULL,
    description text,
    description_trend integer,
    description_wp integer,
    description_www integer,
    description_roadmap integer,
    description_solutions integer,
    description_product_ready integer,
    description_better_than_others integer,
    description_basic_points integer,
    description_redflag_points integer,
    description_score integer
);
 $   DROP TABLE public.coin_description;
       public         heap    postgres    false            �            1259    26105    coin_exchange    TABLE     u  CREATE TABLE public.coin_exchange (
    id character varying(50) NOT NULL,
    exchange_description text,
    exchange_cex_number integer,
    exchange_cex_quality integer,
    exchange_dex_number integer,
    exchange_dex_liquidity integer,
    exchange_volume integer,
    exchange_basic_points integer,
    exchange_redflag_points integer,
    exchange_score integer
);
 !   DROP TABLE public.coin_exchange;
       public         heap    postgres    false            �            1259    26117 
   coin_notes    TABLE     Z   CREATE TABLE public.coin_notes (
    id character varying(50) NOT NULL,
    notes text
);
    DROP TABLE public.coin_notes;
       public         heap    postgres    false            �            1259    26129    coin_other_extra_points    TABLE     �   CREATE TABLE public.coin_other_extra_points (
    id character varying(50) NOT NULL,
    other_extra_points_description text,
    other_extra_points_score integer
);
 +   DROP TABLE public.coin_other_extra_points;
       public         heap    postgres    false            �            1259    26141    coin_other_red_flag    TABLE     �   CREATE TABLE public.coin_other_red_flag (
    id character varying(50) NOT NULL,
    other_red_flag_description text,
    other_red_flag_score integer
);
 '   DROP TABLE public.coin_other_red_flag;
       public         heap    postgres    false            �            1259    26153    coin_prediction    TABLE     �  CREATE TABLE public.coin_prediction (
    id character varying(50) NOT NULL,
    prediction_scam jsonb,
    prediction_minus50 jsonb,
    prediction_const jsonb,
    prediction_x5 jsonb,
    prediction_x10 jsonb,
    prediction_x100 jsonb,
    prediction_x1000 jsonb,
    risk_points double precision,
    reward_points double precision,
    risk_reward_points double precision,
    risk_reward_score double precision
);
 #   DROP TABLE public.coin_prediction;
       public         heap    postgres    false            �            1259    26165    coin_social    TABLE     �  CREATE TABLE public.coin_social (
    id character varying(50) NOT NULL,
    social_description text,
    social_twitter integer,
    social_reddit integer,
    social_telegram integer,
    social_discord integer,
    social_medium integer,
    social_linkedin integer,
    social_github integer,
    social_extra_points integer,
    social_basic_points integer,
    social_redflag_points integer,
    social_score integer,
    facebook_likes integer,
    twitter_followers integer,
    reddit_average_posts_48h double precision,
    reddit_average_comments_48h double precision,
    reddit_subscribers integer,
    reddit_accounts_active_48h integer,
    telegram_channel_user_count integer
);
    DROP TABLE public.coin_social;
       public         heap    postgres    false            �            1259    26177    coin_strategy    TABLE     �   CREATE TABLE public.coin_strategy (
    id character varying(50) NOT NULL,
    strategy text,
    wallet_basic jsonb,
    wallet_x5 jsonb,
    wallet_x100 jsonb,
    wallet_x1000 jsonb
);
 !   DROP TABLE public.coin_strategy;
       public         heap    postgres    false            �            1259    26189    coin_summary    TABLE     �   CREATE TABLE public.coin_summary (
    id character varying(50) NOT NULL,
    summary text,
    total_basic_points integer,
    total_extra_points integer,
    total_redflag_points integer,
    total_score integer,
    red_flag jsonb
);
     DROP TABLE public.coin_summary;
       public         heap    postgres    false            �            1259    26201    coin_supply_market    TABLE     �  CREATE TABLE public.coin_supply_market (
    id character varying(50) NOT NULL,
    market_cap bigint,
    market_cap_rank bigint,
    market_cap_points integer,
    fully_diluted_valuation double precision,
    price double precision,
    price_points integer,
    circulating_supply bigint,
    circulating_supply_points integer,
    circulating_supply_redflag_points integer,
    total_supply double precision,
    max_supply double precision,
    max_supply_redflag_points integer,
    percentage_supply double precision,
    freeze_money double precision,
    freeze_money_redflag_points integer,
    extra_supply_points integer,
    total_supply_market_basic_points integer,
    total_supply_market_redflag_points integer,
    total_supply_market_score integer,
    price_change_percentage_24h_in_currency double precision,
    price_change_percentage_7d_in_currency double precision,
    price_change_percentage_30d_in_currency double precision
);
 &   DROP TABLE public.coin_supply_market;
       public         heap    postgres    false            �            1259    26211 	   coin_team    TABLE     E  CREATE TABLE public.coin_team (
    id character varying(50) NOT NULL,
    team_description text,
    team_size integer,
    team_skills integer,
    team_experience integer,
    team_credibility integer,
    team_recognition integer,
    team_basic_points integer,
    team_redflag_points integer,
    team_score integer
);
    DROP TABLE public.coin_team;
       public         heap    postgres    false            �            1259    26223    coin_tokenomics    TABLE     *  CREATE TABLE public.coin_tokenomics (
    id character varying(50) NOT NULL,
    tokenomics text,
    tokenomics_kind_unlock_points integer,
    tokenomics_time_unlock_points integer,
    tokenomics_division_unlock_points integer,
    tokenomics_for_community integer,
    tokenomics_availability integer,
    tokenomics_current_status integer,
    tokenomics_redflag_baghodlers_last_hossa integer,
    tokenomics_redflag_current_status integer,
    tokenomics_basic_points integer,
    tokenomics_redflag_points integer,
    tokenomics_score integer
);
 #   DROP TABLE public.coin_tokenomics;
       public         heap    postgres    false            �            1259    26236 	   portfolio    TABLE       CREATE TABLE public.portfolio (
    id integer NOT NULL,
    user_id integer,
    total_value double precision,
    total_invested_capital double precision,
    total_in_positions double precision,
    total_profit_loss double precision,
    total_percentage_change double precision
);
    DROP TABLE public.portfolio;
       public         heap    postgres    false            �            1259    26298    portfolio_coin    TABLE     Q  CREATE TABLE public.portfolio_coin (
    id integer NOT NULL,
    portfolio_id integer,
    coin_id character varying(50),
    quantity double precision,
    price_buy double precision,
    invested_capital double precision,
    current_value double precision,
    profit_loss double precision,
    percentage_change double precision
);
 "   DROP TABLE public.portfolio_coin;
       public         heap    postgres    false            �            1259    26297    portfolio_coin_id_seq    SEQUENCE     �   CREATE SEQUENCE public.portfolio_coin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.portfolio_coin_id_seq;
       public          postgres    false    242            �           0    0    portfolio_coin_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.portfolio_coin_id_seq OWNED BY public.portfolio_coin.id;
          public          postgres    false    241            �            1259    26235    portfolio_id_seq    SEQUENCE     �   CREATE SEQUENCE public.portfolio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.portfolio_id_seq;
       public          postgres    false    235            �           0    0    portfolio_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.portfolio_id_seq OWNED BY public.portfolio.id;
          public          postgres    false    234            �            1259    26315    position    TABLE     k  CREATE TABLE public."position" (
    id integer NOT NULL,
    wallet_id integer,
    coin_id character varying(50),
    name character varying(100),
    quantity double precision,
    price_buy double precision,
    invested_capital double precision,
    current_value double precision,
    profit_loss double precision,
    percentage_change double precision
);
    DROP TABLE public."position";
       public         heap    postgres    false            �            1259    26314    position_id_seq    SEQUENCE     �   CREATE SEQUENCE public.position_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.position_id_seq;
       public          postgres    false    244            �           0    0    position_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.position_id_seq OWNED BY public."position".id;
          public          postgres    false    243            �            1259    26047    user    TABLE     �   CREATE TABLE public."user" (
    id integer NOT NULL,
    username character varying(64),
    email character varying(120),
    password_hash character varying(128),
    settings jsonb
);
    DROP TABLE public."user";
       public         heap    postgres    false            �            1259    26249    user_coin_status    TABLE     m  CREATE TABLE public.user_coin_status (
    user_id integer NOT NULL,
    coin_id character varying(50) NOT NULL,
    favourite boolean,
    observe boolean,
    hot boolean,
    staking boolean,
    status character varying(100),
    prediction integer,
    wallets integer,
    chart integer,
    summary text,
    status_updated_at timestamp without time zone
);
 $   DROP TABLE public.user_coin_status;
       public         heap    postgres    false            �            1259    26046    user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          postgres    false    218            �           0    0    user_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;
          public          postgres    false    217            �            1259    26267 	   user_note    TABLE     �  CREATE TABLE public.user_note (
    id integer NOT NULL,
    coin_id character varying(50) NOT NULL,
    user_id integer NOT NULL,
    is_public boolean NOT NULL,
    title character varying(255),
    category character varying(255),
    text text NOT NULL,
    date_created timestamp without time zone NOT NULL,
    date_edited timestamp without time zone,
    status character varying(255),
    deadline timestamp without time zone,
    priority character varying(255)
);
    DROP TABLE public.user_note;
       public         heap    postgres    false            �            1259    26266    user_note_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_note_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.user_note_id_seq;
       public          postgres    false    238            �           0    0    user_note_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.user_note_id_seq OWNED BY public.user_note.id;
          public          postgres    false    237            �            1259    26349    view_coins_all_details3    VIEW     �  CREATE VIEW public.view_coins_all_details3 AS
 SELECT coin.id,
    coin.name,
    coin.symbol,
    coin.logo,
    coin.favourites,
    coin.last_updated,
    coin.manual_date_updated,
    coin.categories,
    coin.links,
    coin_supply_market.market_cap,
    coin_supply_market.market_cap_rank,
    coin_supply_market.market_cap_points,
    coin_supply_market.fully_diluted_valuation,
    coin_supply_market.price,
    coin_supply_market.price_points,
    coin_supply_market.circulating_supply,
    coin_supply_market.circulating_supply_points,
    coin_supply_market.circulating_supply_redflag_points,
    coin_supply_market.total_supply,
    coin_supply_market.max_supply,
    coin_supply_market.max_supply_redflag_points,
    coin_supply_market.percentage_supply,
    coin_supply_market.freeze_money,
    coin_supply_market.freeze_money_redflag_points,
    coin_supply_market.extra_supply_points,
    coin_supply_market.total_supply_market_basic_points,
    coin_supply_market.total_supply_market_redflag_points,
    coin_supply_market.total_supply_market_score,
    coin_supply_market.price_change_percentage_24h_in_currency,
    coin_supply_market.price_change_percentage_7d_in_currency,
    coin_supply_market.price_change_percentage_30d_in_currency,
    coin_tokenomics.tokenomics,
    coin_tokenomics.tokenomics_kind_unlock_points,
    coin_tokenomics.tokenomics_time_unlock_points,
    coin_tokenomics.tokenomics_division_unlock_points,
    coin_tokenomics.tokenomics_for_community,
    coin_tokenomics.tokenomics_availability,
    coin_tokenomics.tokenomics_current_status,
    coin_tokenomics.tokenomics_redflag_baghodlers_last_hossa,
    coin_tokenomics.tokenomics_redflag_current_status,
    coin_tokenomics.tokenomics_basic_points,
    coin_tokenomics.tokenomics_redflag_points,
    coin_tokenomics.tokenomics_score,
    coin_description.description,
    coin_description.description_trend,
    coin_description.description_wp,
    coin_description.description_www,
    coin_description.description_roadmap,
    coin_description.description_solutions,
    coin_description.description_product_ready,
    coin_description.description_better_than_others,
    coin_description.description_basic_points,
    coin_description.description_redflag_points,
    coin_description.description_score,
    coin_team.team_description,
    coin_team.team_size,
    coin_team.team_skills,
    coin_team.team_experience,
    coin_team.team_credibility,
    coin_team.team_recognition,
    coin_team.team_basic_points,
    coin_team.team_redflag_points,
    coin_team.team_score,
    coin_cooperation.cooperation_description,
    coin_cooperation.cooperation_size,
    coin_cooperation.cooperation_quality,
    coin_cooperation.cooperation_rules,
    coin_cooperation.cooperation_vc,
    coin_cooperation.cooperation_shillers,
    coin_cooperation.cooperation_basic_points,
    coin_cooperation.cooperation_redflag_points,
    coin_cooperation.cooperation_score,
    coin_social.social_description,
    coin_social.social_twitter,
    coin_social.social_reddit,
    coin_social.social_telegram,
    coin_social.social_discord,
    coin_social.social_medium,
    coin_social.social_linkedin,
    coin_social.social_github,
    coin_social.social_extra_points,
    coin_social.social_basic_points,
    coin_social.social_redflag_points,
    coin_social.social_score,
    coin_social.facebook_likes,
    coin_social.twitter_followers,
    coin_social.reddit_average_posts_48h,
    coin_social.reddit_average_comments_48h,
    coin_social.reddit_subscribers,
    coin_social.reddit_accounts_active_48h,
    coin_social.telegram_channel_user_count,
    coin_contract_chain.contract_chain_description,
    coin_contract_chain.contract_chain_number,
    coin_contract_chain.contract_chain_security,
    coin_contract_chain.contract_chain_audit,
    coin_contract_chain.contract_chain_hodlers,
    coin_contract_chain.contract_chain_operations_number,
    coin_contract_chain.contract_chain_basic_points,
    coin_contract_chain.contract_chain_redflag_points,
    coin_contract_chain.contract_chain_score,
    coin_exchange.exchange_description,
    coin_exchange.exchange_cex_number,
    coin_exchange.exchange_cex_quality,
    coin_exchange.exchange_dex_number,
    coin_exchange.exchange_dex_liquidity,
    coin_exchange.exchange_volume,
    coin_exchange.exchange_basic_points,
    coin_exchange.exchange_redflag_points,
    coin_exchange.exchange_score,
    coin_chart.chart_description,
    coin_chart.chart_dolar,
    coin_chart.chart_btc,
    coin_chart.chart_eth,
    coin_chart.chart_mc_unlock,
    coin_chart.chart_basic_points,
    coin_chart.chart_redflag_points,
    coin_chart.chart_score,
    coin_other_red_flag.other_red_flag_description,
    coin_other_red_flag.other_red_flag_score,
    coin_other_extra_points.other_extra_points_description,
    coin_other_extra_points.other_extra_points_score,
    coin_summary.summary,
    coin_summary.total_basic_points,
    coin_summary.total_extra_points,
    coin_summary.total_redflag_points,
    coin_summary.total_score,
    coin_summary.red_flag,
    coin_prediction.prediction_scam,
    coin_prediction.prediction_minus50,
    coin_prediction.prediction_const,
    coin_prediction.prediction_x5,
    coin_prediction.prediction_x10,
    coin_prediction.prediction_x100,
    coin_prediction.prediction_x1000,
    coin_prediction.risk_points,
    coin_prediction.reward_points,
    coin_prediction.risk_reward_points,
    coin_prediction.risk_reward_score,
    coin_strategy.strategy,
    coin_strategy.wallet_basic,
    coin_strategy.wallet_x5,
    coin_strategy.wallet_x100,
    coin_strategy.wallet_x1000,
    coin_notes.notes
   FROM (((((((((((((((public.coin
     LEFT JOIN public.coin_supply_market ON (((coin.id)::text = (coin_supply_market.id)::text)))
     LEFT JOIN public.coin_tokenomics ON (((coin.id)::text = (coin_tokenomics.id)::text)))
     LEFT JOIN public.coin_description ON (((coin.id)::text = (coin_description.id)::text)))
     LEFT JOIN public.coin_team ON (((coin.id)::text = (coin_team.id)::text)))
     LEFT JOIN public.coin_cooperation ON (((coin.id)::text = (coin_cooperation.id)::text)))
     LEFT JOIN public.coin_social ON (((coin.id)::text = (coin_social.id)::text)))
     LEFT JOIN public.coin_contract_chain ON (((coin.id)::text = (coin_contract_chain.id)::text)))
     LEFT JOIN public.coin_exchange ON (((coin.id)::text = (coin_exchange.id)::text)))
     LEFT JOIN public.coin_chart ON (((coin.id)::text = (coin_chart.id)::text)))
     LEFT JOIN public.coin_other_red_flag ON (((coin.id)::text = (coin_other_red_flag.id)::text)))
     LEFT JOIN public.coin_other_extra_points ON (((coin.id)::text = (coin_other_extra_points.id)::text)))
     LEFT JOIN public.coin_summary ON (((coin.id)::text = (coin_summary.id)::text)))
     LEFT JOIN public.coin_prediction ON (((coin.id)::text = (coin_prediction.id)::text)))
     LEFT JOIN public.coin_strategy ON (((coin.id)::text = (coin_strategy.id)::text)))
     LEFT JOIN public.coin_notes ON (((coin.id)::text = (coin_notes.id)::text)));
 *   DROP VIEW public.view_coins_all_details3;
       public          postgres    false    216    233    233    233    233    233    233    233    233    233    233    233    233    233    232    232    232    232    232    232    232    232    232    232    231    231    231    231    231    231    231    231    231    231    231    231    231    231    231    231    231    231    231    231    231    231    231    230    230    230    230    230    230    230    229    229    229    229    229    229    228    228    228    228    228    228    228    228    228    228    228    228    228    228    228    228    228    228    228    228    227    227    227    227    227    227    227    227    227    227    227    227    226    226    226    225    225    225    224    224    223    223    223    223    223    223    223    223    223    223    222    222    222    222    222    222    222    222    222    222    222    222    221    221    221    221    221    221    221    221    221    221    220    220    220    220    220    220    220    220    220    220    219    219    219    219    219    219    219    219    219    216    216    216    216    216    216    216    216            �            1259    26286    wallet    TABLE     <  CREATE TABLE public.wallet (
    id integer NOT NULL,
    user_id integer,
    name character varying(100),
    total_value double precision,
    total_invested_capital double precision,
    total_in_positions double precision,
    total_profit_loss double precision,
    total_percentage_change double precision
);
    DROP TABLE public.wallet;
       public         heap    postgres    false            �            1259    26332    wallet_coin    TABLE     K  CREATE TABLE public.wallet_coin (
    id integer NOT NULL,
    wallet_id integer,
    coin_id character varying(50),
    quantity double precision,
    price_buy double precision,
    invested_capital double precision,
    current_value double precision,
    profit_loss double precision,
    percentage_change double precision
);
    DROP TABLE public.wallet_coin;
       public         heap    postgres    false            �            1259    26331    wallet_coin_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wallet_coin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.wallet_coin_id_seq;
       public          postgres    false    246            �           0    0    wallet_coin_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.wallet_coin_id_seq OWNED BY public.wallet_coin.id;
          public          postgres    false    245            �            1259    26285    wallet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wallet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.wallet_id_seq;
       public          postgres    false    240            �           0    0    wallet_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.wallet_id_seq OWNED BY public.wallet.id;
          public          postgres    false    239            �           2604    26239    portfolio id    DEFAULT     l   ALTER TABLE ONLY public.portfolio ALTER COLUMN id SET DEFAULT nextval('public.portfolio_id_seq'::regclass);
 ;   ALTER TABLE public.portfolio ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    26301    portfolio_coin id    DEFAULT     v   ALTER TABLE ONLY public.portfolio_coin ALTER COLUMN id SET DEFAULT nextval('public.portfolio_coin_id_seq'::regclass);
 @   ALTER TABLE public.portfolio_coin ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242            �           2604    26318    position id    DEFAULT     l   ALTER TABLE ONLY public."position" ALTER COLUMN id SET DEFAULT nextval('public.position_id_seq'::regclass);
 <   ALTER TABLE public."position" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    244    244            �           2604    26050    user id    DEFAULT     d   ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    26270    user_note id    DEFAULT     l   ALTER TABLE ONLY public.user_note ALTER COLUMN id SET DEFAULT nextval('public.user_note_id_seq'::regclass);
 ;   ALTER TABLE public.user_note ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238            �           2604    26289 	   wallet id    DEFAULT     f   ALTER TABLE ONLY public.wallet ALTER COLUMN id SET DEFAULT nextval('public.wallet_id_seq'::regclass);
 8   ALTER TABLE public.wallet ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    240    240            �           2604    26335    wallet_coin id    DEFAULT     p   ALTER TABLE ONLY public.wallet_coin ALTER COLUMN id SET DEFAULT nextval('public.wallet_coin_id_seq'::regclass);
 =   ALTER TABLE public.wallet_coin ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245    246            l          0    26034    alembic_version 
   TABLE DATA           6   COPY public.alembic_version (version_num) FROM stdin;
    public          postgres    false    215   v�       m          0    26039    coin 
   TABLE DATA           x   COPY public.coin (id, name, symbol, logo, favourites, last_updated, manual_date_updated, categories, links) FROM stdin;
    public          postgres    false    216   ��       p          0    26057 
   coin_chart 
   TABLE DATA           �   COPY public.coin_chart (id, chart_description, chart_dolar, chart_btc, chart_eth, chart_mc_unlock, chart_basic_points, chart_redflag_points, chart_score) FROM stdin;
    public          postgres    false    219   ��       q          0    26069    coin_contract_chain 
   TABLE DATA             COPY public.coin_contract_chain (id, contract_chain_description, contract_chain_number, contract_chain_security, contract_chain_audit, contract_chain_hodlers, contract_chain_operations_number, contract_chain_basic_points, contract_chain_redflag_points, contract_chain_score) FROM stdin;
    public          postgres    false    220   ��       r          0    26081    coin_cooperation 
   TABLE DATA           �   COPY public.coin_cooperation (id, cooperation_description, cooperation_size, cooperation_quality, cooperation_rules, cooperation_vc, cooperation_shillers, cooperation_basic_points, cooperation_redflag_points, cooperation_score) FROM stdin;
    public          postgres    false    221   ��       s          0    26093    coin_description 
   TABLE DATA             COPY public.coin_description (id, description, description_trend, description_wp, description_www, description_roadmap, description_solutions, description_product_ready, description_better_than_others, description_basic_points, description_redflag_points, description_score) FROM stdin;
    public          postgres    false    222   �       t          0    26105    coin_exchange 
   TABLE DATA           �   COPY public.coin_exchange (id, exchange_description, exchange_cex_number, exchange_cex_quality, exchange_dex_number, exchange_dex_liquidity, exchange_volume, exchange_basic_points, exchange_redflag_points, exchange_score) FROM stdin;
    public          postgres    false    223   1�       u          0    26117 
   coin_notes 
   TABLE DATA           /   COPY public.coin_notes (id, notes) FROM stdin;
    public          postgres    false    224   N�       v          0    26129    coin_other_extra_points 
   TABLE DATA           o   COPY public.coin_other_extra_points (id, other_extra_points_description, other_extra_points_score) FROM stdin;
    public          postgres    false    225   k�       w          0    26141    coin_other_red_flag 
   TABLE DATA           c   COPY public.coin_other_red_flag (id, other_red_flag_description, other_red_flag_score) FROM stdin;
    public          postgres    false    226   ��       x          0    26153    coin_prediction 
   TABLE DATA           �   COPY public.coin_prediction (id, prediction_scam, prediction_minus50, prediction_const, prediction_x5, prediction_x10, prediction_x100, prediction_x1000, risk_points, reward_points, risk_reward_points, risk_reward_score) FROM stdin;
    public          postgres    false    227   ��       y          0    26165    coin_social 
   TABLE DATA           �  COPY public.coin_social (id, social_description, social_twitter, social_reddit, social_telegram, social_discord, social_medium, social_linkedin, social_github, social_extra_points, social_basic_points, social_redflag_points, social_score, facebook_likes, twitter_followers, reddit_average_posts_48h, reddit_average_comments_48h, reddit_subscribers, reddit_accounts_active_48h, telegram_channel_user_count) FROM stdin;
    public          postgres    false    228   ��       z          0    26177    coin_strategy 
   TABLE DATA           i   COPY public.coin_strategy (id, strategy, wallet_basic, wallet_x5, wallet_x100, wallet_x1000) FROM stdin;
    public          postgres    false    229   ��       {          0    26189    coin_summary 
   TABLE DATA           �   COPY public.coin_summary (id, summary, total_basic_points, total_extra_points, total_redflag_points, total_score, red_flag) FROM stdin;
    public          postgres    false    230   ��       |          0    26201    coin_supply_market 
   TABLE DATA           C  COPY public.coin_supply_market (id, market_cap, market_cap_rank, market_cap_points, fully_diluted_valuation, price, price_points, circulating_supply, circulating_supply_points, circulating_supply_redflag_points, total_supply, max_supply, max_supply_redflag_points, percentage_supply, freeze_money, freeze_money_redflag_points, extra_supply_points, total_supply_market_basic_points, total_supply_market_redflag_points, total_supply_market_score, price_change_percentage_24h_in_currency, price_change_percentage_7d_in_currency, price_change_percentage_30d_in_currency) FROM stdin;
    public          postgres    false    231   �       }          0    26211 	   coin_team 
   TABLE DATA           �   COPY public.coin_team (id, team_description, team_size, team_skills, team_experience, team_credibility, team_recognition, team_basic_points, team_redflag_points, team_score) FROM stdin;
    public          postgres    false    232   6�       ~          0    26223    coin_tokenomics 
   TABLE DATA           {  COPY public.coin_tokenomics (id, tokenomics, tokenomics_kind_unlock_points, tokenomics_time_unlock_points, tokenomics_division_unlock_points, tokenomics_for_community, tokenomics_availability, tokenomics_current_status, tokenomics_redflag_baghodlers_last_hossa, tokenomics_redflag_current_status, tokenomics_basic_points, tokenomics_redflag_points, tokenomics_score) FROM stdin;
    public          postgres    false    233   S�       �          0    26236 	   portfolio 
   TABLE DATA           �   COPY public.portfolio (id, user_id, total_value, total_invested_capital, total_in_positions, total_profit_loss, total_percentage_change) FROM stdin;
    public          postgres    false    235   p�       �          0    26298    portfolio_coin 
   TABLE DATA           �   COPY public.portfolio_coin (id, portfolio_id, coin_id, quantity, price_buy, invested_capital, current_value, profit_loss, percentage_change) FROM stdin;
    public          postgres    false    242   ��       �          0    26315    position 
   TABLE DATA           �   COPY public."position" (id, wallet_id, coin_id, name, quantity, price_buy, invested_capital, current_value, profit_loss, percentage_change) FROM stdin;
    public          postgres    false    244   ��       o          0    26047    user 
   TABLE DATA           N   COPY public."user" (id, username, email, password_hash, settings) FROM stdin;
    public          postgres    false    218   ��       �          0    26249    user_coin_status 
   TABLE DATA           �   COPY public.user_coin_status (user_id, coin_id, favourite, observe, hot, staking, status, prediction, wallets, chart, summary, status_updated_at) FROM stdin;
    public          postgres    false    236   ��       �          0    26267 	   user_note 
   TABLE DATA           �   COPY public.user_note (id, coin_id, user_id, is_public, title, category, text, date_created, date_edited, status, deadline, priority) FROM stdin;
    public          postgres    false    238   �       �          0    26286    wallet 
   TABLE DATA           �   COPY public.wallet (id, user_id, name, total_value, total_invested_capital, total_in_positions, total_profit_loss, total_percentage_change) FROM stdin;
    public          postgres    false    240   �       �          0    26332    wallet_coin 
   TABLE DATA           �   COPY public.wallet_coin (id, wallet_id, coin_id, quantity, price_buy, invested_capital, current_value, profit_loss, percentage_change) FROM stdin;
    public          postgres    false    246   ;�       �           0    0    portfolio_coin_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.portfolio_coin_id_seq', 1, false);
          public          postgres    false    241            �           0    0    portfolio_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.portfolio_id_seq', 1, false);
          public          postgres    false    234            �           0    0    position_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.position_id_seq', 1, false);
          public          postgres    false    243            �           0    0    user_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.user_id_seq', 1, false);
          public          postgres    false    217            �           0    0    user_note_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.user_note_id_seq', 1, false);
          public          postgres    false    237            �           0    0    wallet_coin_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.wallet_coin_id_seq', 1, false);
          public          postgres    false    245            �           0    0    wallet_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.wallet_id_seq', 1, false);
          public          postgres    false    239            �           2606    26038 #   alembic_version alembic_version_pkc 
   CONSTRAINT     j   ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);
 M   ALTER TABLE ONLY public.alembic_version DROP CONSTRAINT alembic_version_pkc;
       public            postgres    false    215            �           2606    26063    coin_chart coin_chart_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.coin_chart
    ADD CONSTRAINT coin_chart_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.coin_chart DROP CONSTRAINT coin_chart_pkey;
       public            postgres    false    219            �           2606    26075 ,   coin_contract_chain coin_contract_chain_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.coin_contract_chain
    ADD CONSTRAINT coin_contract_chain_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.coin_contract_chain DROP CONSTRAINT coin_contract_chain_pkey;
       public            postgres    false    220            �           2606    26087 &   coin_cooperation coin_cooperation_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.coin_cooperation
    ADD CONSTRAINT coin_cooperation_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.coin_cooperation DROP CONSTRAINT coin_cooperation_pkey;
       public            postgres    false    221            �           2606    26099 &   coin_description coin_description_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.coin_description
    ADD CONSTRAINT coin_description_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.coin_description DROP CONSTRAINT coin_description_pkey;
       public            postgres    false    222            �           2606    26111     coin_exchange coin_exchange_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.coin_exchange
    ADD CONSTRAINT coin_exchange_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.coin_exchange DROP CONSTRAINT coin_exchange_pkey;
       public            postgres    false    223            �           2606    26123    coin_notes coin_notes_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.coin_notes
    ADD CONSTRAINT coin_notes_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.coin_notes DROP CONSTRAINT coin_notes_pkey;
       public            postgres    false    224            �           2606    26135 4   coin_other_extra_points coin_other_extra_points_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.coin_other_extra_points
    ADD CONSTRAINT coin_other_extra_points_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.coin_other_extra_points DROP CONSTRAINT coin_other_extra_points_pkey;
       public            postgres    false    225            �           2606    26147 ,   coin_other_red_flag coin_other_red_flag_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.coin_other_red_flag
    ADD CONSTRAINT coin_other_red_flag_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.coin_other_red_flag DROP CONSTRAINT coin_other_red_flag_pkey;
       public            postgres    false    226            �           2606    26045    coin coin_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.coin
    ADD CONSTRAINT coin_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.coin DROP CONSTRAINT coin_pkey;
       public            postgres    false    216            �           2606    26159 $   coin_prediction coin_prediction_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.coin_prediction
    ADD CONSTRAINT coin_prediction_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.coin_prediction DROP CONSTRAINT coin_prediction_pkey;
       public            postgres    false    227            �           2606    26171    coin_social coin_social_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.coin_social
    ADD CONSTRAINT coin_social_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.coin_social DROP CONSTRAINT coin_social_pkey;
       public            postgres    false    228            �           2606    26183     coin_strategy coin_strategy_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.coin_strategy
    ADD CONSTRAINT coin_strategy_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.coin_strategy DROP CONSTRAINT coin_strategy_pkey;
       public            postgres    false    229            �           2606    26195    coin_summary coin_summary_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.coin_summary
    ADD CONSTRAINT coin_summary_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.coin_summary DROP CONSTRAINT coin_summary_pkey;
       public            postgres    false    230            �           2606    26205 *   coin_supply_market coin_supply_market_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.coin_supply_market
    ADD CONSTRAINT coin_supply_market_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.coin_supply_market DROP CONSTRAINT coin_supply_market_pkey;
       public            postgres    false    231            �           2606    26217    coin_team coin_team_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.coin_team
    ADD CONSTRAINT coin_team_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.coin_team DROP CONSTRAINT coin_team_pkey;
       public            postgres    false    232            �           2606    26229 $   coin_tokenomics coin_tokenomics_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.coin_tokenomics
    ADD CONSTRAINT coin_tokenomics_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.coin_tokenomics DROP CONSTRAINT coin_tokenomics_pkey;
       public            postgres    false    233            �           2606    26303 "   portfolio_coin portfolio_coin_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.portfolio_coin
    ADD CONSTRAINT portfolio_coin_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.portfolio_coin DROP CONSTRAINT portfolio_coin_pkey;
       public            postgres    false    242            �           2606    26241    portfolio portfolio_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.portfolio
    ADD CONSTRAINT portfolio_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.portfolio DROP CONSTRAINT portfolio_pkey;
       public            postgres    false    235            �           2606    26243    portfolio portfolio_user_id_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.portfolio
    ADD CONSTRAINT portfolio_user_id_key UNIQUE (user_id);
 I   ALTER TABLE ONLY public.portfolio DROP CONSTRAINT portfolio_user_id_key;
       public            postgres    false    235            �           2606    26320    position position_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."position"
    ADD CONSTRAINT position_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."position" DROP CONSTRAINT position_pkey;
       public            postgres    false    244            �           2606    26255 &   user_coin_status user_coin_status_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.user_coin_status
    ADD CONSTRAINT user_coin_status_pkey PRIMARY KEY (user_id, coin_id);
 P   ALTER TABLE ONLY public.user_coin_status DROP CONSTRAINT user_coin_status_pkey;
       public            postgres    false    236    236            �           2606    26274    user_note user_note_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.user_note
    ADD CONSTRAINT user_note_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.user_note DROP CONSTRAINT user_note_pkey;
       public            postgres    false    238            �           2606    26054    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    218            �           2606    26337    wallet_coin wallet_coin_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.wallet_coin
    ADD CONSTRAINT wallet_coin_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.wallet_coin DROP CONSTRAINT wallet_coin_pkey;
       public            postgres    false    246            �           2606    26291    wallet wallet_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.wallet
    ADD CONSTRAINT wallet_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.wallet DROP CONSTRAINT wallet_pkey;
       public            postgres    false    240            �           1259    26055    ix_user_email    INDEX     H   CREATE UNIQUE INDEX ix_user_email ON public."user" USING btree (email);
 !   DROP INDEX public.ix_user_email;
       public            postgres    false    218            �           1259    26056    ix_user_username    INDEX     N   CREATE UNIQUE INDEX ix_user_username ON public."user" USING btree (username);
 $   DROP INDEX public.ix_user_username;
       public            postgres    false    218            �           2606    26064    coin_chart coin_chart_id_fkey    FK CONSTRAINT     v   ALTER TABLE ONLY public.coin_chart
    ADD CONSTRAINT coin_chart_id_fkey FOREIGN KEY (id) REFERENCES public.coin(id);
 G   ALTER TABLE ONLY public.coin_chart DROP CONSTRAINT coin_chart_id_fkey;
       public          postgres    false    219    4750    216            �           2606    26076 /   coin_contract_chain coin_contract_chain_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.coin_contract_chain
    ADD CONSTRAINT coin_contract_chain_id_fkey FOREIGN KEY (id) REFERENCES public.coin(id);
 Y   ALTER TABLE ONLY public.coin_contract_chain DROP CONSTRAINT coin_contract_chain_id_fkey;
       public          postgres    false    216    4750    220            �           2606    26088 )   coin_cooperation coin_cooperation_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.coin_cooperation
    ADD CONSTRAINT coin_cooperation_id_fkey FOREIGN KEY (id) REFERENCES public.coin(id);
 S   ALTER TABLE ONLY public.coin_cooperation DROP CONSTRAINT coin_cooperation_id_fkey;
       public          postgres    false    216    4750    221            �           2606    26100 )   coin_description coin_description_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.coin_description
    ADD CONSTRAINT coin_description_id_fkey FOREIGN KEY (id) REFERENCES public.coin(id);
 S   ALTER TABLE ONLY public.coin_description DROP CONSTRAINT coin_description_id_fkey;
       public          postgres    false    216    222    4750            �           2606    26112 #   coin_exchange coin_exchange_id_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.coin_exchange
    ADD CONSTRAINT coin_exchange_id_fkey FOREIGN KEY (id) REFERENCES public.coin(id);
 M   ALTER TABLE ONLY public.coin_exchange DROP CONSTRAINT coin_exchange_id_fkey;
       public          postgres    false    223    4750    216            �           2606    26124    coin_notes coin_notes_id_fkey    FK CONSTRAINT     v   ALTER TABLE ONLY public.coin_notes
    ADD CONSTRAINT coin_notes_id_fkey FOREIGN KEY (id) REFERENCES public.coin(id);
 G   ALTER TABLE ONLY public.coin_notes DROP CONSTRAINT coin_notes_id_fkey;
       public          postgres    false    4750    224    216            �           2606    26136 7   coin_other_extra_points coin_other_extra_points_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.coin_other_extra_points
    ADD CONSTRAINT coin_other_extra_points_id_fkey FOREIGN KEY (id) REFERENCES public.coin(id);
 a   ALTER TABLE ONLY public.coin_other_extra_points DROP CONSTRAINT coin_other_extra_points_id_fkey;
       public          postgres    false    216    225    4750            �           2606    26148 /   coin_other_red_flag coin_other_red_flag_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.coin_other_red_flag
    ADD CONSTRAINT coin_other_red_flag_id_fkey FOREIGN KEY (id) REFERENCES public.coin(id);
 Y   ALTER TABLE ONLY public.coin_other_red_flag DROP CONSTRAINT coin_other_red_flag_id_fkey;
       public          postgres    false    216    226    4750            �           2606    26160 '   coin_prediction coin_prediction_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.coin_prediction
    ADD CONSTRAINT coin_prediction_id_fkey FOREIGN KEY (id) REFERENCES public.coin(id);
 Q   ALTER TABLE ONLY public.coin_prediction DROP CONSTRAINT coin_prediction_id_fkey;
       public          postgres    false    227    216    4750            �           2606    26172    coin_social coin_social_id_fkey    FK CONSTRAINT     x   ALTER TABLE ONLY public.coin_social
    ADD CONSTRAINT coin_social_id_fkey FOREIGN KEY (id) REFERENCES public.coin(id);
 I   ALTER TABLE ONLY public.coin_social DROP CONSTRAINT coin_social_id_fkey;
       public          postgres    false    228    216    4750            �           2606    26184 #   coin_strategy coin_strategy_id_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.coin_strategy
    ADD CONSTRAINT coin_strategy_id_fkey FOREIGN KEY (id) REFERENCES public.coin(id);
 M   ALTER TABLE ONLY public.coin_strategy DROP CONSTRAINT coin_strategy_id_fkey;
       public          postgres    false    229    4750    216            �           2606    26196 !   coin_summary coin_summary_id_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.coin_summary
    ADD CONSTRAINT coin_summary_id_fkey FOREIGN KEY (id) REFERENCES public.coin(id);
 K   ALTER TABLE ONLY public.coin_summary DROP CONSTRAINT coin_summary_id_fkey;
       public          postgres    false    4750    216    230            �           2606    26206 -   coin_supply_market coin_supply_market_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.coin_supply_market
    ADD CONSTRAINT coin_supply_market_id_fkey FOREIGN KEY (id) REFERENCES public.coin(id);
 W   ALTER TABLE ONLY public.coin_supply_market DROP CONSTRAINT coin_supply_market_id_fkey;
       public          postgres    false    4750    231    216            �           2606    26218    coin_team coin_team_id_fkey    FK CONSTRAINT     t   ALTER TABLE ONLY public.coin_team
    ADD CONSTRAINT coin_team_id_fkey FOREIGN KEY (id) REFERENCES public.coin(id);
 E   ALTER TABLE ONLY public.coin_team DROP CONSTRAINT coin_team_id_fkey;
       public          postgres    false    232    216    4750            �           2606    26230 '   coin_tokenomics coin_tokenomics_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.coin_tokenomics
    ADD CONSTRAINT coin_tokenomics_id_fkey FOREIGN KEY (id) REFERENCES public.coin(id);
 Q   ALTER TABLE ONLY public.coin_tokenomics DROP CONSTRAINT coin_tokenomics_id_fkey;
       public          postgres    false    216    4750    233            �           2606    26304 *   portfolio_coin portfolio_coin_coin_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_coin
    ADD CONSTRAINT portfolio_coin_coin_id_fkey FOREIGN KEY (coin_id) REFERENCES public.coin(id);
 T   ALTER TABLE ONLY public.portfolio_coin DROP CONSTRAINT portfolio_coin_coin_id_fkey;
       public          postgres    false    216    4750    242            �           2606    26309 /   portfolio_coin portfolio_coin_portfolio_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_coin
    ADD CONSTRAINT portfolio_coin_portfolio_id_fkey FOREIGN KEY (portfolio_id) REFERENCES public.portfolio(id);
 Y   ALTER TABLE ONLY public.portfolio_coin DROP CONSTRAINT portfolio_coin_portfolio_id_fkey;
       public          postgres    false    4786    235    242            �           2606    26244     portfolio portfolio_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio
    ADD CONSTRAINT portfolio_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id);
 J   ALTER TABLE ONLY public.portfolio DROP CONSTRAINT portfolio_user_id_fkey;
       public          postgres    false    218    4754    235            �           2606    26321    position position_coin_id_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public."position"
    ADD CONSTRAINT position_coin_id_fkey FOREIGN KEY (coin_id) REFERENCES public.coin(id);
 J   ALTER TABLE ONLY public."position" DROP CONSTRAINT position_coin_id_fkey;
       public          postgres    false    4750    244    216            �           2606    26326     position position_wallet_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."position"
    ADD CONSTRAINT position_wallet_id_fkey FOREIGN KEY (wallet_id) REFERENCES public.wallet(id);
 L   ALTER TABLE ONLY public."position" DROP CONSTRAINT position_wallet_id_fkey;
       public          postgres    false    240    4794    244            �           2606    26256 .   user_coin_status user_coin_status_coin_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_coin_status
    ADD CONSTRAINT user_coin_status_coin_id_fkey FOREIGN KEY (coin_id) REFERENCES public.coin(id);
 X   ALTER TABLE ONLY public.user_coin_status DROP CONSTRAINT user_coin_status_coin_id_fkey;
       public          postgres    false    236    4750    216            �           2606    26261 .   user_coin_status user_coin_status_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_coin_status
    ADD CONSTRAINT user_coin_status_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id);
 X   ALTER TABLE ONLY public.user_coin_status DROP CONSTRAINT user_coin_status_user_id_fkey;
       public          postgres    false    218    4754    236            �           2606    26275     user_note user_note_coin_id_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.user_note
    ADD CONSTRAINT user_note_coin_id_fkey FOREIGN KEY (coin_id) REFERENCES public.coin(id);
 J   ALTER TABLE ONLY public.user_note DROP CONSTRAINT user_note_coin_id_fkey;
       public          postgres    false    238    4750    216            �           2606    26280     user_note user_note_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_note
    ADD CONSTRAINT user_note_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id);
 J   ALTER TABLE ONLY public.user_note DROP CONSTRAINT user_note_user_id_fkey;
       public          postgres    false    238    218    4754            �           2606    26338 $   wallet_coin wallet_coin_coin_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.wallet_coin
    ADD CONSTRAINT wallet_coin_coin_id_fkey FOREIGN KEY (coin_id) REFERENCES public.coin(id);
 N   ALTER TABLE ONLY public.wallet_coin DROP CONSTRAINT wallet_coin_coin_id_fkey;
       public          postgres    false    4750    246    216            �           2606    26343 &   wallet_coin wallet_coin_wallet_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.wallet_coin
    ADD CONSTRAINT wallet_coin_wallet_id_fkey FOREIGN KEY (wallet_id) REFERENCES public.wallet(id);
 P   ALTER TABLE ONLY public.wallet_coin DROP CONSTRAINT wallet_coin_wallet_id_fkey;
       public          postgres    false    246    4794    240            �           2606    26292    wallet wallet_user_id_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.wallet
    ADD CONSTRAINT wallet_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id);
 D   ALTER TABLE ONLY public.wallet DROP CONSTRAINT wallet_user_id_fkey;
       public          postgres    false    4754    218    240            l      x�KJN5602�0O14����� ,��      m      x������ � �      p      x������ � �      q      x������ � �      r      x������ � �      s      x������ � �      t      x������ � �      u      x������ � �      v      x������ � �      w      x������ � �      x      x������ � �      y      x������ � �      z      x������ � �      {      x������ � �      |      x������ � �      }      x������ � �      ~      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      o      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     