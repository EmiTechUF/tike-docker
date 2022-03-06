--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_permissions OWNER TO tike;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: tike
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_id_seq OWNER TO tike;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tike
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.admin_permissions_role_links (
    permission_id integer,
    role_id integer
);


ALTER TABLE public.admin_permissions_role_links OWNER TO tike;

--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_roles OWNER TO tike;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: tike
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_roles_id_seq OWNER TO tike;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tike
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_users OWNER TO tike;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: tike
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO tike;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tike
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.admin_users_roles_links (
    user_id integer,
    role_id integer
);


ALTER TABLE public.admin_users_roles_links OWNER TO tike;

--
-- Name: buyers; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.buyers (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    email character varying(255),
    photo text,
    note character varying(255),
    matricule integer,
    cin character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.buyers OWNER TO tike;

--
-- Name: buyers_id_seq; Type: SEQUENCE; Schema: public; Owner: tike
--

CREATE SEQUENCE public.buyers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.buyers_id_seq OWNER TO tike;

--
-- Name: buyers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tike
--

ALTER SEQUENCE public.buyers_id_seq OWNED BY public.buyers.id;


--
-- Name: buying_operations; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.buying_operations (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.buying_operations OWNER TO tike;

--
-- Name: buying_operations_buyer_links; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.buying_operations_buyer_links (
    buying_operation_id integer,
    buyer_id integer
);


ALTER TABLE public.buying_operations_buyer_links OWNER TO tike;

--
-- Name: buying_operations_event_links; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.buying_operations_event_links (
    buying_operation_id integer,
    event_id integer
);


ALTER TABLE public.buying_operations_event_links OWNER TO tike;

--
-- Name: buying_operations_id_seq; Type: SEQUENCE; Schema: public; Owner: tike
--

CREATE SEQUENCE public.buying_operations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.buying_operations_id_seq OWNER TO tike;

--
-- Name: buying_operations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tike
--

ALTER SEQUENCE public.buying_operations_id_seq OWNED BY public.buying_operations.id;


--
-- Name: buying_operations_ticket_links; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.buying_operations_ticket_links (
    buying_operation_id integer,
    ticket_id integer
);


ALTER TABLE public.buying_operations_ticket_links OWNER TO tike;

--
-- Name: event_types; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.event_types (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.event_types OWNER TO tike;

--
-- Name: event_types_id_seq; Type: SEQUENCE; Schema: public; Owner: tike
--

CREATE SEQUENCE public.event_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_types_id_seq OWNER TO tike;

--
-- Name: event_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tike
--

ALTER SEQUENCE public.event_types_id_seq OWNED BY public.event_types.id;


--
-- Name: events; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.events (
    id integer NOT NULL,
    name character varying(255),
    datetime timestamp(6) without time zone,
    location character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.events OWNER TO tike;

--
-- Name: events_event_type_links; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.events_event_type_links (
    event_id integer,
    event_type_id integer
);


ALTER TABLE public.events_event_type_links OWNER TO tike;

--
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: tike
--

CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.events_id_seq OWNER TO tike;

--
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tike
--

ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.files OWNER TO tike;

--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: tike
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_id_seq OWNER TO tike;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tike
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.files_related_morphs (
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" integer
);


ALTER TABLE public.files_related_morphs OWNER TO tike;

--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.i18n_locale OWNER TO tike;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: tike
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locale_id_seq OWNER TO tike;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tike
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_tokens OWNER TO tike;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: tike
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_tokens_id_seq OWNER TO tike;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tike
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO tike;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: tike
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_core_store_settings_id_seq OWNER TO tike;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tike
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO tike;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: tike
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_database_schema_id_seq OWNER TO tike;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tike
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO tike;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: tike
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_migrations_id_seq OWNER TO tike;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tike
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO tike;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: tike
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO tike;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tike
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: tickets; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.tickets (
    id integer NOT NULL,
    uuid text,
    description text,
    taken boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.tickets OWNER TO tike;

--
-- Name: tickets_id_seq; Type: SEQUENCE; Schema: public; Owner: tike
--

CREATE SEQUENCE public.tickets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tickets_id_seq OWNER TO tike;

--
-- Name: tickets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tike
--

ALTER SEQUENCE public.tickets_id_seq OWNED BY public.tickets.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_permissions OWNER TO tike;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: tike
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_id_seq OWNER TO tike;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tike
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.up_permissions_role_links (
    permission_id integer,
    role_id integer
);


ALTER TABLE public.up_permissions_role_links OWNER TO tike;

--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_roles OWNER TO tike;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: tike
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_roles_id_seq OWNER TO tike;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tike
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    note character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_users OWNER TO tike;

--
-- Name: up_users_events_to_check_links; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.up_users_events_to_check_links (
    user_id integer,
    event_id integer
);


ALTER TABLE public.up_users_events_to_check_links OWNER TO tike;

--
-- Name: up_users_events_to_sell_links; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.up_users_events_to_sell_links (
    user_id integer,
    event_id integer
);


ALTER TABLE public.up_users_events_to_sell_links OWNER TO tike;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: tike
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_id_seq OWNER TO tike;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tike
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: tike
--

CREATE TABLE public.up_users_role_links (
    user_id integer,
    role_id integer
);


ALTER TABLE public.up_users_role_links OWNER TO tike;

--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: buyers id; Type: DEFAULT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.buyers ALTER COLUMN id SET DEFAULT nextval('public.buyers_id_seq'::regclass);


--
-- Name: buying_operations id; Type: DEFAULT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.buying_operations ALTER COLUMN id SET DEFAULT nextval('public.buying_operations_id_seq'::regclass);


--
-- Name: event_types id; Type: DEFAULT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.event_types ALTER COLUMN id SET DEFAULT nextval('public.event_types_id_seq'::regclass);


--
-- Name: events id; Type: DEFAULT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: tickets id; Type: DEFAULT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.tickets ALTER COLUMN id SET DEFAULT nextval('public.tickets_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::content-manager.explorer.create	api::buyer.buyer	{"fields": ["firstname", "lastname", "email", "photo", "note", "matricule", "cin"]}	[]	2022-03-06 12:21:56.54	2022-03-06 12:21:56.54	\N	\N
2	plugin::content-manager.explorer.create	api::buying-operation.buying-operation	{"fields": ["buyer", "event", "ticket"]}	[]	2022-03-06 12:21:56.613	2022-03-06 12:21:56.613	\N	\N
3	plugin::content-manager.explorer.create	api::event.event	{"fields": ["name", "datetime", "location", "event_type", "sellers", "checkers"]}	[]	2022-03-06 12:21:56.658	2022-03-06 12:21:56.658	\N	\N
4	plugin::content-manager.explorer.create	api::event-type.event-type	{"fields": ["name"]}	[]	2022-03-06 12:21:56.715	2022-03-06 12:21:56.715	\N	\N
5	plugin::content-manager.explorer.create	plugin::qr-generator.ticket	{"fields": ["uuid", "description", "taken"]}	[]	2022-03-06 12:21:56.774	2022-03-06 12:21:56.774	\N	\N
6	plugin::content-manager.explorer.read	api::buyer.buyer	{"fields": ["firstname", "lastname", "email", "photo", "note", "matricule", "cin"]}	[]	2022-03-06 12:21:56.827	2022-03-06 12:21:56.827	\N	\N
7	plugin::content-manager.explorer.read	api::buying-operation.buying-operation	{"fields": ["buyer", "event", "ticket"]}	[]	2022-03-06 12:21:56.894	2022-03-06 12:21:56.894	\N	\N
8	plugin::content-manager.explorer.read	api::event.event	{"fields": ["name", "datetime", "location", "event_type", "sellers", "checkers"]}	[]	2022-03-06 12:21:56.944	2022-03-06 12:21:56.944	\N	\N
9	plugin::content-manager.explorer.read	api::event-type.event-type	{"fields": ["name"]}	[]	2022-03-06 12:21:56.992	2022-03-06 12:21:56.992	\N	\N
10	plugin::content-manager.explorer.read	plugin::qr-generator.ticket	{"fields": ["uuid", "description", "taken"]}	[]	2022-03-06 12:21:57.04	2022-03-06 12:21:57.04	\N	\N
11	plugin::content-manager.explorer.update	api::buyer.buyer	{"fields": ["firstname", "lastname", "email", "photo", "note", "matricule", "cin"]}	[]	2022-03-06 12:21:57.086	2022-03-06 12:21:57.086	\N	\N
12	plugin::content-manager.explorer.update	api::buying-operation.buying-operation	{"fields": ["buyer", "event", "ticket"]}	[]	2022-03-06 12:21:57.131	2022-03-06 12:21:57.131	\N	\N
13	plugin::content-manager.explorer.update	api::event.event	{"fields": ["name", "datetime", "location", "event_type", "sellers", "checkers"]}	[]	2022-03-06 12:21:57.187	2022-03-06 12:21:57.187	\N	\N
14	plugin::content-manager.explorer.update	api::event-type.event-type	{"fields": ["name"]}	[]	2022-03-06 12:21:57.243	2022-03-06 12:21:57.243	\N	\N
15	plugin::content-manager.explorer.update	plugin::qr-generator.ticket	{"fields": ["uuid", "description", "taken"]}	[]	2022-03-06 12:21:57.289	2022-03-06 12:21:57.289	\N	\N
16	plugin::content-manager.explorer.delete	api::buyer.buyer	{}	[]	2022-03-06 12:21:57.346	2022-03-06 12:21:57.346	\N	\N
17	plugin::content-manager.explorer.delete	api::buying-operation.buying-operation	{}	[]	2022-03-06 12:21:57.386	2022-03-06 12:21:57.386	\N	\N
18	plugin::content-manager.explorer.delete	api::event.event	{}	[]	2022-03-06 12:21:57.42	2022-03-06 12:21:57.42	\N	\N
19	plugin::content-manager.explorer.delete	api::event-type.event-type	{}	[]	2022-03-06 12:21:57.458	2022-03-06 12:21:57.458	\N	\N
20	plugin::content-manager.explorer.delete	plugin::qr-generator.ticket	{}	[]	2022-03-06 12:21:57.504	2022-03-06 12:21:57.504	\N	\N
21	plugin::upload.read	\N	{}	[]	2022-03-06 12:21:57.543	2022-03-06 12:21:57.543	\N	\N
22	plugin::upload.assets.create	\N	{}	[]	2022-03-06 12:21:57.582	2022-03-06 12:21:57.582	\N	\N
23	plugin::upload.assets.update	\N	{}	[]	2022-03-06 12:21:57.628	2022-03-06 12:21:57.628	\N	\N
24	plugin::upload.assets.download	\N	{}	[]	2022-03-06 12:21:57.673	2022-03-06 12:21:57.673	\N	\N
25	plugin::upload.assets.copy-link	\N	{}	[]	2022-03-06 12:21:57.718	2022-03-06 12:21:57.718	\N	\N
26	plugin::content-manager.explorer.create	api::buyer.buyer	{"fields": ["firstname", "lastname", "email", "photo", "note", "matricule", "cin"]}	["admin::is-creator"]	2022-03-06 12:21:57.778	2022-03-06 12:21:57.778	\N	\N
27	plugin::content-manager.explorer.create	api::buying-operation.buying-operation	{"fields": ["buyer", "event", "ticket"]}	["admin::is-creator"]	2022-03-06 12:21:57.814	2022-03-06 12:21:57.814	\N	\N
28	plugin::content-manager.explorer.create	api::event.event	{"fields": ["name", "datetime", "location", "event_type", "sellers", "checkers"]}	["admin::is-creator"]	2022-03-06 12:21:57.853	2022-03-06 12:21:57.853	\N	\N
29	plugin::content-manager.explorer.create	api::event-type.event-type	{"fields": ["name"]}	["admin::is-creator"]	2022-03-06 12:21:57.909	2022-03-06 12:21:57.909	\N	\N
30	plugin::content-manager.explorer.create	plugin::qr-generator.ticket	{"fields": ["uuid", "description", "taken"]}	["admin::is-creator"]	2022-03-06 12:21:57.955	2022-03-06 12:21:57.955	\N	\N
31	plugin::content-manager.explorer.read	api::buyer.buyer	{"fields": ["firstname", "lastname", "email", "photo", "note", "matricule", "cin"]}	["admin::is-creator"]	2022-03-06 12:21:57.999	2022-03-06 12:21:57.999	\N	\N
32	plugin::content-manager.explorer.read	api::buying-operation.buying-operation	{"fields": ["buyer", "event", "ticket"]}	["admin::is-creator"]	2022-03-06 12:21:58.045	2022-03-06 12:21:58.045	\N	\N
33	plugin::content-manager.explorer.read	api::event.event	{"fields": ["name", "datetime", "location", "event_type", "sellers", "checkers"]}	["admin::is-creator"]	2022-03-06 12:21:58.101	2022-03-06 12:21:58.101	\N	\N
34	plugin::content-manager.explorer.read	api::event-type.event-type	{"fields": ["name"]}	["admin::is-creator"]	2022-03-06 12:21:58.157	2022-03-06 12:21:58.157	\N	\N
35	plugin::content-manager.explorer.read	plugin::qr-generator.ticket	{"fields": ["uuid", "description", "taken"]}	["admin::is-creator"]	2022-03-06 12:21:58.202	2022-03-06 12:21:58.202	\N	\N
36	plugin::content-manager.explorer.update	api::buyer.buyer	{"fields": ["firstname", "lastname", "email", "photo", "note", "matricule", "cin"]}	["admin::is-creator"]	2022-03-06 12:21:58.247	2022-03-06 12:21:58.247	\N	\N
37	plugin::content-manager.explorer.update	api::buying-operation.buying-operation	{"fields": ["buyer", "event", "ticket"]}	["admin::is-creator"]	2022-03-06 12:21:58.292	2022-03-06 12:21:58.292	\N	\N
38	plugin::content-manager.explorer.update	api::event.event	{"fields": ["name", "datetime", "location", "event_type", "sellers", "checkers"]}	["admin::is-creator"]	2022-03-06 12:21:58.338	2022-03-06 12:21:58.338	\N	\N
39	plugin::content-manager.explorer.update	api::event-type.event-type	{"fields": ["name"]}	["admin::is-creator"]	2022-03-06 12:21:58.38	2022-03-06 12:21:58.38	\N	\N
40	plugin::content-manager.explorer.update	plugin::qr-generator.ticket	{"fields": ["uuid", "description", "taken"]}	["admin::is-creator"]	2022-03-06 12:21:58.422	2022-03-06 12:21:58.422	\N	\N
41	plugin::content-manager.explorer.delete	api::buyer.buyer	{}	["admin::is-creator"]	2022-03-06 12:21:58.463	2022-03-06 12:21:58.463	\N	\N
42	plugin::content-manager.explorer.delete	api::buying-operation.buying-operation	{}	["admin::is-creator"]	2022-03-06 12:21:58.509	2022-03-06 12:21:58.509	\N	\N
43	plugin::content-manager.explorer.delete	api::event.event	{}	["admin::is-creator"]	2022-03-06 12:21:58.574	2022-03-06 12:21:58.574	\N	\N
44	plugin::content-manager.explorer.delete	api::event-type.event-type	{}	["admin::is-creator"]	2022-03-06 12:21:58.619	2022-03-06 12:21:58.619	\N	\N
45	plugin::content-manager.explorer.delete	plugin::qr-generator.ticket	{}	["admin::is-creator"]	2022-03-06 12:21:58.675	2022-03-06 12:21:58.675	\N	\N
46	plugin::upload.read	\N	{}	["admin::is-creator"]	2022-03-06 12:21:58.72	2022-03-06 12:21:58.72	\N	\N
47	plugin::upload.assets.create	\N	{}	[]	2022-03-06 12:21:58.778	2022-03-06 12:21:58.778	\N	\N
48	plugin::upload.assets.update	\N	{}	["admin::is-creator"]	2022-03-06 12:21:58.823	2022-03-06 12:21:58.823	\N	\N
49	plugin::upload.assets.download	\N	{}	[]	2022-03-06 12:21:58.869	2022-03-06 12:21:58.869	\N	\N
50	plugin::upload.assets.copy-link	\N	{}	[]	2022-03-06 12:21:58.913	2022-03-06 12:21:58.913	\N	\N
51	plugin::content-manager.explorer.create	api::buyer.buyer	{"fields": ["firstname", "lastname", "email", "photo", "note", "matricule", "cin"]}	[]	2022-03-06 12:21:59.026	2022-03-06 12:21:59.026	\N	\N
52	plugin::content-manager.explorer.create	api::buying-operation.buying-operation	{"fields": ["buyer", "event", "ticket"]}	[]	2022-03-06 12:21:59.084	2022-03-06 12:21:59.084	\N	\N
53	plugin::content-manager.explorer.create	api::event.event	{"fields": ["name", "datetime", "location", "event_type", "sellers", "checkers"]}	[]	2022-03-06 12:21:59.123	2022-03-06 12:21:59.123	\N	\N
54	plugin::content-manager.explorer.create	api::event-type.event-type	{"fields": ["name"]}	[]	2022-03-06 12:21:59.168	2022-03-06 12:21:59.168	\N	\N
55	plugin::content-manager.explorer.create	plugin::qr-generator.ticket	{"fields": ["uuid", "description", "taken"]}	[]	2022-03-06 12:21:59.214	2022-03-06 12:21:59.214	\N	\N
56	plugin::content-manager.explorer.create	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "events_to_sell", "events_to_check", "note"]}	[]	2022-03-06 12:21:59.259	2022-03-06 12:21:59.259	\N	\N
57	plugin::content-manager.explorer.read	api::buyer.buyer	{"fields": ["firstname", "lastname", "email", "photo", "note", "matricule", "cin"]}	[]	2022-03-06 12:21:59.304	2022-03-06 12:21:59.304	\N	\N
58	plugin::content-manager.explorer.read	api::buying-operation.buying-operation	{"fields": ["buyer", "event", "ticket"]}	[]	2022-03-06 12:21:59.35	2022-03-06 12:21:59.35	\N	\N
59	plugin::content-manager.explorer.read	api::event.event	{"fields": ["name", "datetime", "location", "event_type", "sellers", "checkers"]}	[]	2022-03-06 12:21:59.391	2022-03-06 12:21:59.391	\N	\N
60	plugin::content-manager.explorer.read	api::event-type.event-type	{"fields": ["name"]}	[]	2022-03-06 12:21:59.526	2022-03-06 12:21:59.526	\N	\N
61	plugin::content-manager.explorer.read	plugin::qr-generator.ticket	{"fields": ["uuid", "description", "taken"]}	[]	2022-03-06 12:21:59.629	2022-03-06 12:21:59.629	\N	\N
62	plugin::content-manager.explorer.read	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "events_to_sell", "events_to_check", "note"]}	[]	2022-03-06 12:21:59.693	2022-03-06 12:21:59.693	\N	\N
63	plugin::content-manager.explorer.update	api::buyer.buyer	{"fields": ["firstname", "lastname", "email", "photo", "note", "matricule", "cin"]}	[]	2022-03-06 12:21:59.746	2022-03-06 12:21:59.746	\N	\N
64	plugin::content-manager.explorer.update	api::buying-operation.buying-operation	{"fields": ["buyer", "event", "ticket"]}	[]	2022-03-06 12:21:59.793	2022-03-06 12:21:59.793	\N	\N
65	plugin::content-manager.explorer.update	api::event.event	{"fields": ["name", "datetime", "location", "event_type", "sellers", "checkers"]}	[]	2022-03-06 12:21:59.838	2022-03-06 12:21:59.838	\N	\N
66	plugin::content-manager.explorer.update	api::event-type.event-type	{"fields": ["name"]}	[]	2022-03-06 12:21:59.883	2022-03-06 12:21:59.883	\N	\N
67	plugin::content-manager.explorer.update	plugin::qr-generator.ticket	{"fields": ["uuid", "description", "taken"]}	[]	2022-03-06 12:21:59.93	2022-03-06 12:21:59.93	\N	\N
68	plugin::content-manager.explorer.update	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "events_to_sell", "events_to_check", "note"]}	[]	2022-03-06 12:21:59.973	2022-03-06 12:21:59.973	\N	\N
69	plugin::content-manager.explorer.delete	api::buyer.buyer	{}	[]	2022-03-06 12:22:00.018	2022-03-06 12:22:00.018	\N	\N
70	plugin::content-manager.explorer.delete	api::buying-operation.buying-operation	{}	[]	2022-03-06 12:22:00.063	2022-03-06 12:22:00.063	\N	\N
71	plugin::content-manager.explorer.delete	api::event.event	{}	[]	2022-03-06 12:22:00.109	2022-03-06 12:22:00.109	\N	\N
72	plugin::content-manager.explorer.delete	api::event-type.event-type	{}	[]	2022-03-06 12:22:00.149	2022-03-06 12:22:00.149	\N	\N
73	plugin::content-manager.explorer.delete	plugin::qr-generator.ticket	{}	[]	2022-03-06 12:22:00.217	2022-03-06 12:22:00.217	\N	\N
74	plugin::content-manager.explorer.delete	plugin::users-permissions.user	{}	[]	2022-03-06 12:22:00.262	2022-03-06 12:22:00.262	\N	\N
75	plugin::content-manager.single-types.configure-view	\N	{}	[]	2022-03-06 12:22:00.319	2022-03-06 12:22:00.319	\N	\N
76	plugin::content-manager.collection-types.configure-view	\N	{}	[]	2022-03-06 12:22:00.364	2022-03-06 12:22:00.364	\N	\N
77	plugin::content-manager.components.configure-layout	\N	{}	[]	2022-03-06 12:22:00.406	2022-03-06 12:22:00.406	\N	\N
78	plugin::content-type-builder.read	\N	{}	[]	2022-03-06 12:22:00.454	2022-03-06 12:22:00.454	\N	\N
79	plugin::email.settings.read	\N	{}	[]	2022-03-06 12:22:00.794	2022-03-06 12:22:00.794	\N	\N
80	plugin::upload.read	\N	{}	[]	2022-03-06 12:22:00.873	2022-03-06 12:22:00.873	\N	\N
81	plugin::upload.assets.create	\N	{}	[]	2022-03-06 12:22:00.93	2022-03-06 12:22:00.93	\N	\N
82	plugin::upload.assets.update	\N	{}	[]	2022-03-06 12:22:00.975	2022-03-06 12:22:00.975	\N	\N
83	plugin::upload.assets.download	\N	{}	[]	2022-03-06 12:22:01.02	2022-03-06 12:22:01.02	\N	\N
84	plugin::upload.assets.copy-link	\N	{}	[]	2022-03-06 12:22:01.065	2022-03-06 12:22:01.065	\N	\N
85	plugin::upload.settings.read	\N	{}	[]	2022-03-06 12:22:01.11	2022-03-06 12:22:01.11	\N	\N
86	plugin::documentation.read	\N	{}	[]	2022-03-06 12:22:01.155	2022-03-06 12:22:01.155	\N	\N
87	plugin::documentation.settings.update	\N	{}	[]	2022-03-06 12:22:01.2	2022-03-06 12:22:01.2	\N	\N
88	plugin::documentation.settings.regenerate	\N	{}	[]	2022-03-06 12:22:01.245	2022-03-06 12:22:01.245	\N	\N
89	plugin::documentation.settings.read	\N	{}	[]	2022-03-06 12:22:01.291	2022-03-06 12:22:01.291	\N	\N
90	plugin::i18n.locale.create	\N	{}	[]	2022-03-06 12:22:01.336	2022-03-06 12:22:01.336	\N	\N
91	plugin::i18n.locale.read	\N	{}	[]	2022-03-06 12:22:01.377	2022-03-06 12:22:01.377	\N	\N
92	plugin::i18n.locale.update	\N	{}	[]	2022-03-06 12:22:01.41	2022-03-06 12:22:01.41	\N	\N
93	plugin::i18n.locale.delete	\N	{}	[]	2022-03-06 12:22:01.449	2022-03-06 12:22:01.449	\N	\N
94	plugin::users-permissions.roles.create	\N	{}	[]	2022-03-06 12:22:01.494	2022-03-06 12:22:01.494	\N	\N
95	plugin::users-permissions.roles.read	\N	{}	[]	2022-03-06 12:22:01.547	2022-03-06 12:22:01.547	\N	\N
96	plugin::users-permissions.roles.update	\N	{}	[]	2022-03-06 12:22:01.592	2022-03-06 12:22:01.592	\N	\N
97	plugin::users-permissions.roles.delete	\N	{}	[]	2022-03-06 12:22:01.641	2022-03-06 12:22:01.641	\N	\N
98	plugin::users-permissions.providers.read	\N	{}	[]	2022-03-06 12:22:01.685	2022-03-06 12:22:01.685	\N	\N
99	plugin::users-permissions.providers.update	\N	{}	[]	2022-03-06 12:22:01.743	2022-03-06 12:22:01.743	\N	\N
100	plugin::users-permissions.email-templates.read	\N	{}	[]	2022-03-06 12:22:01.787	2022-03-06 12:22:01.787	\N	\N
101	plugin::users-permissions.email-templates.update	\N	{}	[]	2022-03-06 12:22:01.832	2022-03-06 12:22:01.832	\N	\N
102	plugin::users-permissions.advanced-settings.read	\N	{}	[]	2022-03-06 12:22:01.892	2022-03-06 12:22:01.892	\N	\N
103	plugin::users-permissions.advanced-settings.update	\N	{}	[]	2022-03-06 12:22:01.935	2022-03-06 12:22:01.935	\N	\N
104	admin::marketplace.read	\N	{}	[]	2022-03-06 12:22:01.981	2022-03-06 12:22:01.981	\N	\N
105	admin::marketplace.plugins.install	\N	{}	[]	2022-03-06 12:22:02.026	2022-03-06 12:22:02.026	\N	\N
106	admin::marketplace.plugins.uninstall	\N	{}	[]	2022-03-06 12:22:02.072	2022-03-06 12:22:02.072	\N	\N
107	admin::webhooks.create	\N	{}	[]	2022-03-06 12:22:02.116	2022-03-06 12:22:02.116	\N	\N
108	admin::webhooks.read	\N	{}	[]	2022-03-06 12:22:02.161	2022-03-06 12:22:02.161	\N	\N
109	admin::webhooks.update	\N	{}	[]	2022-03-06 12:22:02.206	2022-03-06 12:22:02.206	\N	\N
110	admin::webhooks.delete	\N	{}	[]	2022-03-06 12:22:02.251	2022-03-06 12:22:02.251	\N	\N
111	admin::users.create	\N	{}	[]	2022-03-06 12:22:02.292	2022-03-06 12:22:02.292	\N	\N
112	admin::users.read	\N	{}	[]	2022-03-06 12:22:02.332	2022-03-06 12:22:02.332	\N	\N
113	admin::users.update	\N	{}	[]	2022-03-06 12:22:02.376	2022-03-06 12:22:02.376	\N	\N
114	admin::users.delete	\N	{}	[]	2022-03-06 12:22:02.417	2022-03-06 12:22:02.417	\N	\N
115	admin::roles.create	\N	{}	[]	2022-03-06 12:22:02.455	2022-03-06 12:22:02.455	\N	\N
116	admin::roles.read	\N	{}	[]	2022-03-06 12:22:02.5	2022-03-06 12:22:02.5	\N	\N
117	admin::roles.update	\N	{}	[]	2022-03-06 12:22:02.54	2022-03-06 12:22:02.54	\N	\N
118	admin::roles.delete	\N	{}	[]	2022-03-06 12:22:02.573	2022-03-06 12:22:02.573	\N	\N
119	admin::api-tokens.create	\N	{}	[]	2022-03-06 12:22:02.636	2022-03-06 12:22:02.636	\N	\N
120	admin::api-tokens.read	\N	{}	[]	2022-03-06 12:22:02.68	2022-03-06 12:22:02.68	\N	\N
121	admin::api-tokens.update	\N	{}	[]	2022-03-06 12:22:02.766	2022-03-06 12:22:02.766	\N	\N
122	admin::api-tokens.delete	\N	{}	[]	2022-03-06 12:22:02.823	2022-03-06 12:22:02.823	\N	\N
\.


--
-- Data for Name: admin_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.admin_permissions_role_links (permission_id, role_id) FROM stdin;
1	2
2	2
3	2
4	2
5	2
6	2
7	2
8	2
9	2
10	2
11	2
12	2
13	2
14	2
15	2
16	2
17	2
18	2
19	2
20	2
21	2
22	2
23	2
24	2
25	2
26	3
27	3
28	3
29	3
30	3
31	3
32	3
33	3
34	3
35	3
36	3
37	3
38	3
39	3
40	3
41	3
42	3
43	3
44	3
45	3
46	3
47	3
48	3
49	3
50	3
51	1
52	1
53	1
54	1
55	1
56	1
57	1
58	1
59	1
60	1
61	1
62	1
63	1
64	1
65	1
66	1
67	1
68	1
69	1
70	1
71	1
72	1
73	1
74	1
75	1
76	1
77	1
78	1
79	1
80	1
81	1
82	1
83	1
84	1
85	1
86	1
87	1
88	1
89	1
90	1
91	1
92	1
93	1
94	1
95	1
96	1
97	1
98	1
99	1
100	1
101	1
102	1
103	1
104	1
105	1
106	1
107	1
108	1
109	1
110	1
111	1
112	1
113	1
114	1
115	1
116	1
117	1
118	1
119	1
120	1
121	1
122	1
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2022-03-06 12:21:56.276	2022-03-06 12:21:56.276	\N	\N
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2022-03-06 12:21:56.448	2022-03-06 12:21:56.448	\N	\N
3	Author	strapi-author	Authors can manage the content they have created.	2022-03-06 12:21:56.491	2022-03-06 12:21:56.491	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Jaona	Rajaomaria	\N	rajaomariajaona11@gmail.com	$2a$10$KMuRBcvRtsN6pSR1WCdiAeFkj/7QiZdtxjtNzdofAAbZjmU7kaMLm	\N	\N	t	f	\N	2022-03-06 12:22:42.706	2022-03-06 12:22:42.706	\N	\N
2	Admin	Super	\N	admin@admin.com	$2a$10$QX68yU/T5WoBHEvljSm9QeodjEjTg5yo.nxaKPBJYZUSFoBpvyAdq	\N	\N	t	f	\N	2022-03-06 13:42:21.015	2022-03-06 13:42:42.266	\N	\N
\.


--
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.admin_users_roles_links (user_id, role_id) FROM stdin;
1	1
2	1
\.


--
-- Data for Name: buyers; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.buyers (id, firstname, lastname, email, photo, note, matricule, cin, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: buying_operations; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.buying_operations (id, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: buying_operations_buyer_links; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.buying_operations_buyer_links (buying_operation_id, buyer_id) FROM stdin;
\.


--
-- Data for Name: buying_operations_event_links; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.buying_operations_event_links (buying_operation_id, event_id) FROM stdin;
\.


--
-- Data for Name: buying_operations_ticket_links; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.buying_operations_ticket_links (buying_operation_id, ticket_id) FROM stdin;
\.


--
-- Data for Name: event_types; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.event_types (id, name, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Reception	2022-03-06 13:46:40.449	2022-03-06 13:46:40.449	1	1
\.


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.events (id, name, datetime, location, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Reception Bacc 2020	2022-03-24 15:00:00	KSLMD	2022-03-06 13:46:47.555	2022-03-06 13:46:58.071	1	1
2	Reception Bacc 2021	2022-04-09 15:00:00	KSLMD	2022-03-06 13:47:12.548	2022-03-06 13:47:12.548	1	1
\.


--
-- Data for Name: events_event_type_links; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.events_event_type_links (event_id, event_type_id) FROM stdin;
1	1
2	1
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.files_related_morphs (file_id, related_id, related_type, field, "order") FROM stdin;
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	English (en)	en	2022-03-06 12:21:55.213	2022-03-06 12:21:55.213	\N	\N
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.strapi_api_tokens (id, name, description, type, access_key, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
2	plugin_content_manager_configuration_content_types::admin::permission	{"uid":"admin::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}]]}}	object	\N	\N
3	plugin_content_manager_configuration_content_types::api::buying-operation.buying-operation	{"uid":"api::buying-operation.buying-operation","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"buyer":{"edit":{"label":"buyer","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"buyer","searchable":true,"sortable":true}},"event":{"edit":{"label":"event","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"event","searchable":true,"sortable":true}},"ticket":{"edit":{"label":"ticket","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"ticket","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","buyer","event","ticket"],"editRelations":["buyer","event","ticket"],"edit":[]}}	object	\N	\N
4	plugin_content_manager_configuration_content_types::api::event.event	{"uid":"api::event.event","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"datetime":{"edit":{"label":"datetime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"datetime","searchable":true,"sortable":true}},"location":{"edit":{"label":"location","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"location","searchable":true,"sortable":true}},"event_type":{"edit":{"label":"event_type","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"event_type","searchable":true,"sortable":true}},"sellers":{"edit":{"label":"sellers","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"sellers","searchable":false,"sortable":false}},"checkers":{"edit":{"label":"checkers","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"checkers","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","datetime","location"],"editRelations":["event_type","sellers","checkers"],"edit":[[{"name":"name","size":6},{"name":"datetime","size":6}],[{"name":"location","size":6}]]}}	object	\N	\N
5	plugin_content_manager_configuration_content_types::admin::role	{"uid":"admin::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}	object	\N	\N
14	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"uid":"plugin::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"events_to_sell":{"edit":{"label":"events_to_sell","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"events_to_sell","searchable":false,"sortable":false}},"events_to_check":{"edit":{"label":"events_to_check","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"events_to_check","searchable":false,"sortable":false}},"note":{"edit":{"label":"note","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"note","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role","events_to_sell","events_to_check"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"note","size":6}]]}}	object	\N	\N
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access"],"configurable":false,"required":false,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access"],"configurable":false,"required":false,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"api::buyer.buyer":{"kind":"collectionType","collectionName":"buyers","info":{"singularName":"buyer","pluralName":"buyers","displayName":"Buyer","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"firstname":{"type":"string"},"lastname":{"type":"string"},"email":{"type":"email"},"photo":{"type":"text"},"note":{"type":"string"},"matricule":{"type":"integer"},"cin":{"type":"string","regex":"[0-9]{12}","unique":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"buyers","info":{"singularName":"buyer","pluralName":"buyers","displayName":"Buyer","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"firstname":{"type":"string"},"lastname":{"type":"string"},"email":{"type":"email"},"photo":{"type":"text"},"note":{"type":"string"},"matricule":{"type":"integer"},"cin":{"type":"string","regex":"[0-9]{12}","unique":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"buyer","connection":"default","uid":"api::buyer.buyer","apiName":"buyer","globalId":"Buyer","actions":{},"lifecycles":{}},"api::buying-operation.buying-operation":{"kind":"collectionType","collectionName":"buying_operations","info":{"singularName":"buying-operation","pluralName":"buying-operations","displayName":"BuyingOperation","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"buyer":{"type":"relation","relation":"oneToOne","target":"api::buyer.buyer"},"event":{"type":"relation","relation":"oneToOne","target":"api::event.event"},"ticket":{"type":"relation","relation":"oneToOne","target":"plugin::qr-generator.ticket"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"buying_operations","info":{"singularName":"buying-operation","pluralName":"buying-operations","displayName":"BuyingOperation","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"buyer":{"type":"relation","relation":"oneToOne","target":"api::buyer.buyer"},"event":{"type":"relation","relation":"oneToOne","target":"api::event.event"},"ticket":{"type":"relation","relation":"oneToOne","target":"plugin::qr-generator.ticket"}},"kind":"collectionType"},"modelType":"contentType","modelName":"buying-operation","connection":"default","uid":"api::buying-operation.buying-operation","apiName":"buying-operation","globalId":"BuyingOperation","actions":{},"lifecycles":{}},"api::event.event":{"kind":"collectionType","collectionName":"events","info":{"singularName":"event","pluralName":"events","displayName":"Event","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true},"datetime":{"type":"datetime","required":true},"location":{"type":"string","required":true},"event_type":{"type":"relation","relation":"oneToOne","target":"api::event-type.event-type"},"sellers":{"type":"relation","relation":"manyToMany","target":"plugin::users-permissions.user","mappedBy":"events_to_sell"},"checkers":{"type":"relation","relation":"manyToMany","target":"plugin::users-permissions.user","mappedBy":"events_to_check"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"events","info":{"singularName":"event","pluralName":"events","displayName":"Event","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true},"datetime":{"type":"datetime","required":true},"location":{"type":"string","required":true},"event_type":{"type":"relation","relation":"oneToOne","target":"api::event-type.event-type"},"sellers":{"type":"relation","relation":"manyToMany","target":"plugin::users-permissions.user","mappedBy":"events_to_sell"},"checkers":{"type":"relation","relation":"manyToMany","target":"plugin::users-permissions.user","mappedBy":"events_to_check"}},"kind":"collectionType"},"modelType":"contentType","modelName":"event","connection":"default","uid":"api::event.event","apiName":"event","globalId":"Event","actions":{},"lifecycles":{}},"api::event-type.event-type":{"kind":"collectionType","collectionName":"event_types","info":{"singularName":"event-type","pluralName":"event-types","displayName":"EventType"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"event_types","info":{"singularName":"event-type","pluralName":"event-types","displayName":"EventType"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"event-type","connection":"default","uid":"api::event-type.event-type","apiName":"event-type","globalId":"EventType","actions":{},"lifecycles":{}},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::qr-generator.ticket":{"kind":"collectionType","collectionName":"tickets","info":{"singularName":"ticket","pluralName":"tickets","displayName":"Ticket"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":true},"content-type-builder":{"visible":true}},"attributes":{"uuid":{"type":"text","configurable":false,"unique":true},"description":{"type":"text","configurable":false},"taken":{"type":"boolean","default":false,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"tickets","info":{"singularName":"ticket","pluralName":"tickets","displayName":"Ticket"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":true},"content-type-builder":{"visible":true}},"attributes":{"uuid":{"type":"text","configurable":false,"unique":true},"description":{"type":"text","configurable":false},"taken":{"type":"boolean","default":false,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"ticket","connection":"default","uid":"plugin::qr-generator.ticket","plugin":"qr-generator","globalId":"QrGeneratorTicket"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"events_to_sell":{"type":"relation","relation":"manyToMany","target":"api::event.event","inversedBy":"sellers"},"events_to_check":{"type":"relation","relation":"manyToMany","target":"api::event.event","inversedBy":"checkers"},"note":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__filename__":"schema.json","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"events_to_sell":{"type":"relation","relation":"manyToMany","target":"api::event.event","inversedBy":"sellers"},"events_to_check":{"type":"relation","relation":"manyToMany","target":"api::event.event","inversedBy":"checkers"},"note":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"}}	object	\N	\N
6	plugin_content_manager_configuration_content_types::admin::api-token	{"uid":"admin::api-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}]]}}	object	\N	\N
7	plugin_content_manager_configuration_content_types::api::buyer.buyer	{"uid":"api::buyer.buyer","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"photo":{"edit":{"label":"photo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"photo","searchable":true,"sortable":true}},"note":{"edit":{"label":"note","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"note","searchable":true,"sortable":true}},"matricule":{"edit":{"label":"matricule","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"matricule","searchable":true,"sortable":true}},"cin":{"edit":{"label":"cin","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cin","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","email"],"editRelations":[],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"email","size":6},{"name":"photo","size":6}],[{"name":"note","size":6},{"name":"matricule","size":4}],[{"name":"cin","size":6}]]}}	object	\N	\N
8	plugin_content_manager_configuration_content_types::admin::user	{"uid":"admin::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4},{"name":"preferedLanguage","size":6}]]}}	object	\N	\N
9	plugin_content_manager_configuration_content_types::plugin::qr-generator.ticket	{"uid":"plugin::qr-generator.ticket","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"uuid":{"edit":{"label":"uuid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"uuid","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"taken":{"edit":{"label":"taken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"taken","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","uuid","description","taken"],"editRelations":[],"edit":[[{"name":"uuid","size":6},{"name":"description","size":6}],[{"name":"taken","size":4}]]}}	object	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::upload.file	{"uid":"plugin::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"uid":"plugin::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"editRelations":["role"],"edit":[[{"name":"action","size":6}]]}}	object	\N	\N
13	plugin_content_manager_configuration_content_types::api::event-type.event-type	{"uid":"api::event-type.event-type","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","createdAt","updatedAt"],"editRelations":[],"edit":[[{"name":"name","size":6}]]}}	object	\N	\N
12	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"uid":"plugin::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object	\N	\N
15	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"uid":"plugin::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}	object	\N	\N
16	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
17	plugin_documentation_config	{"restrictedAccess":false}	object	\N	\N
18	plugin_i18n_default_locale	"en"	string	\N	\N
19	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"}}	object	\N	\N
20	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
21	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
22	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null}}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
1	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"buyers","indexes":[{"name":"buyers_created_by_id_fk","columns":["created_by_id"]},{"name":"buyers_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"buyers_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"buyers_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"photo","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"note","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"matricule","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"cin","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"buying_operations","indexes":[{"name":"buying_operations_created_by_id_fk","columns":["created_by_id"]},{"name":"buying_operations_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"buying_operations_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"buying_operations_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"events","indexes":[{"name":"events_created_by_id_fk","columns":["created_by_id"]},{"name":"events_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"events_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"events_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"datetime","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"location","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"event_types","indexes":[{"name":"event_types_created_by_id_fk","columns":["created_by_id"]},{"name":"event_types_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"event_types_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"event_types_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"tickets","indexes":[{"name":"tickets_created_by_id_fk","columns":["created_by_id"]},{"name":"tickets_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"tickets_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"tickets_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"uuid","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"taken","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"note","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"buying_operations_buyer_links","indexes":[{"name":"buying_operations_buyer_links_fk","columns":["buying_operation_id"]},{"name":"buying_operations_buyer_links_inv_fk","columns":["buyer_id"]}],"foreignKeys":[{"name":"buying_operations_buyer_links_fk","columns":["buying_operation_id"],"referencedColumns":["id"],"referencedTable":"buying_operations","onDelete":"CASCADE"},{"name":"buying_operations_buyer_links_inv_fk","columns":["buyer_id"],"referencedColumns":["id"],"referencedTable":"buyers","onDelete":"CASCADE"}],"columns":[{"name":"buying_operation_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"buyer_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"buying_operations_event_links","indexes":[{"name":"buying_operations_event_links_fk","columns":["buying_operation_id"]},{"name":"buying_operations_event_links_inv_fk","columns":["event_id"]}],"foreignKeys":[{"name":"buying_operations_event_links_fk","columns":["buying_operation_id"],"referencedColumns":["id"],"referencedTable":"buying_operations","onDelete":"CASCADE"},{"name":"buying_operations_event_links_inv_fk","columns":["event_id"],"referencedColumns":["id"],"referencedTable":"events","onDelete":"CASCADE"}],"columns":[{"name":"buying_operation_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"event_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"buying_operations_ticket_links","indexes":[{"name":"buying_operations_ticket_links_fk","columns":["buying_operation_id"]},{"name":"buying_operations_ticket_links_inv_fk","columns":["ticket_id"]}],"foreignKeys":[{"name":"buying_operations_ticket_links_fk","columns":["buying_operation_id"],"referencedColumns":["id"],"referencedTable":"buying_operations","onDelete":"CASCADE"},{"name":"buying_operations_ticket_links_inv_fk","columns":["ticket_id"],"referencedColumns":["id"],"referencedTable":"tickets","onDelete":"CASCADE"}],"columns":[{"name":"buying_operation_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"ticket_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"events_event_type_links","indexes":[{"name":"events_event_type_links_fk","columns":["event_id"]},{"name":"events_event_type_links_inv_fk","columns":["event_type_id"]}],"foreignKeys":[{"name":"events_event_type_links_fk","columns":["event_id"],"referencedColumns":["id"],"referencedTable":"events","onDelete":"CASCADE"},{"name":"events_event_type_links_inv_fk","columns":["event_type_id"],"referencedColumns":["id"],"referencedTable":"event_types","onDelete":"CASCADE"}],"columns":[{"name":"event_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"event_type_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_events_to_sell_links","indexes":[{"name":"up_users_events_to_sell_links_fk","columns":["user_id"]},{"name":"up_users_events_to_sell_links_inv_fk","columns":["event_id"]}],"foreignKeys":[{"name":"up_users_events_to_sell_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_events_to_sell_links_inv_fk","columns":["event_id"],"referencedColumns":["id"],"referencedTable":"events","onDelete":"CASCADE"}],"columns":[{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"event_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_events_to_check_links","indexes":[{"name":"up_users_events_to_check_links_fk","columns":["user_id"]},{"name":"up_users_events_to_check_links_inv_fk","columns":["event_id"]}],"foreignKeys":[{"name":"up_users_events_to_check_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_events_to_check_links_inv_fk","columns":["event_id"],"referencedColumns":["id"],"referencedTable":"events","onDelete":"CASCADE"}],"columns":[{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"event_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2022-03-06 11:54:08.68	12bc1d3897c2b1055a7e0e57eb831db9
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: tickets; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.tickets (id, uuid, description, taken, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::users-permissions.auth.connect	2022-03-06 12:21:55.699	2022-03-06 12:21:55.699	\N	\N
2	plugin::users-permissions.user.me	2022-03-06 12:21:55.699	2022-03-06 12:21:55.699	\N	\N
5	plugin::users-permissions.auth.callback	2022-03-06 12:21:55.821	2022-03-06 12:21:55.821	\N	\N
7	plugin::users-permissions.auth.connect	2022-03-06 12:21:55.821	2022-03-06 12:21:55.821	\N	\N
8	plugin::users-permissions.auth.register	2022-03-06 12:21:55.821	2022-03-06 12:21:55.821	\N	\N
10	plugin::users-permissions.user.me	2022-03-06 12:21:55.822	2022-03-06 12:21:55.822	\N	\N
12	api::buyer.buyer.synchronise	2022-03-06 13:40:12.678	2022-03-06 13:40:12.678	\N	\N
13	api::buyer.buyer.find	2022-03-06 13:40:12.679	2022-03-06 13:40:12.679	\N	\N
14	api::event.event.find	2022-03-06 13:40:12.679	2022-03-06 13:40:12.679	\N	\N
15	api::event-type.event-type.find	2022-03-06 13:40:12.679	2022-03-06 13:40:12.679	\N	\N
16	api::buying-operation.buying-operation.synchronise	2022-03-06 13:40:12.679	2022-03-06 13:40:12.679	\N	\N
17	api::buying-operation.buying-operation.find	2022-03-06 13:40:12.679	2022-03-06 13:40:12.679	\N	\N
18	api::event-type.event-type.findOne	2022-03-06 13:40:12.679	2022-03-06 13:40:12.679	\N	\N
19	api::buyer.buyer.find	2022-03-06 13:41:11.436	2022-03-06 13:41:11.436	\N	\N
20	api::buying-operation.buying-operation.synchronise	2022-03-06 13:41:11.436	2022-03-06 13:41:11.436	\N	\N
21	api::buying-operation.buying-operation.findChecker	2022-03-06 13:41:11.437	2022-03-06 13:41:11.437	\N	\N
22	api::buying-operation.buying-operation.find	2022-03-06 13:41:11.437	2022-03-06 13:41:11.437	\N	\N
23	api::event.event.find	2022-03-06 13:41:11.437	2022-03-06 13:41:11.437	\N	\N
24	api::event.event.findOne	2022-03-06 13:41:11.437	2022-03-06 13:41:11.437	\N	\N
25	api::event-type.event-type.find	2022-03-06 13:41:11.437	2022-03-06 13:41:11.437	\N	\N
26	api::event-type.event-type.findOne	2022-03-06 13:41:11.437	2022-03-06 13:41:11.437	\N	\N
27	api::buyer.buyer.create	2022-03-06 13:48:10.49	2022-03-06 13:48:10.49	\N	\N
\.


--
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.up_permissions_role_links (permission_id, role_id) FROM stdin;
1	1
27	2
8	2
5	2
7	2
10	2
12	3
14	3
19	4
15	3
16	3
17	3
21	4
13	3
18	3
20	4
22	4
23	4
25	4
24	4
26	4
2	1
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	2022-03-06 12:21:55.568	2022-03-06 12:21:55.568	\N	\N
3	Seller	Seller	seller	2022-03-06 13:39:21.261	2022-03-06 13:40:12.557	\N	\N
4	Checker	Checker	checker	2022-03-06 13:39:32.177	2022-03-06 13:41:11.386	\N	\N
2	Public	Default role given to unauthenticated user.	public	2022-03-06 12:21:55.624	2022-03-06 13:48:10.137	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, note, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	m1sigd	m1sigd@gmail.com	local	$2a$10$zHZ4cJVsSnTuY5MrmG.LYulkF7qWL1kxFBLYqR.jLoVgZQOtinK42	\N	\N	t	f	M1:SIGD:C	2022-03-06 13:44:05.261	2022-03-06 13:44:05.261	1	1
2	m2sigd	m2sigd@gmail.com	local	$2a$10$HaSFaLwX68pTXrsmBcIw4eM9SM1tulLhlen225vpD1JlM5cPDZX5G	\N	\N	t	f	M2:SIGD:C	2022-03-06 13:44:40.422	2022-03-06 13:44:40.422	1	1
3	da2i	da2i@gmail.com	local	$2a$10$Av6EzTRdWwCBSfMyE17rrOmFFshp84aWxKPUF9gU1GxcwVqJ/kfx.	\N	\N	t	f	DA2I	2022-03-06 13:45:33.107	2022-03-06 13:45:33.107	1	1
\.


--
-- Data for Name: up_users_events_to_check_links; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.up_users_events_to_check_links (user_id, event_id) FROM stdin;
\.


--
-- Data for Name: up_users_events_to_sell_links; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.up_users_events_to_sell_links (user_id, event_id) FROM stdin;
\.


--
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: tike
--

COPY public.up_users_role_links (user_id, role_id) FROM stdin;
1	3
2	3
3	4
\.


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tike
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 122, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tike
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tike
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 2, true);


--
-- Name: buyers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tike
--

SELECT pg_catalog.setval('public.buyers_id_seq', 1, false);


--
-- Name: buying_operations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tike
--

SELECT pg_catalog.setval('public.buying_operations_id_seq', 1, false);


--
-- Name: event_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tike
--

SELECT pg_catalog.setval('public.event_types_id_seq', 1, true);


--
-- Name: events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tike
--

SELECT pg_catalog.setval('public.events_id_seq', 2, true);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tike
--

SELECT pg_catalog.setval('public.files_id_seq', 1, false);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tike
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tike
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tike
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 22, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tike
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 1, true);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tike
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tike
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: tickets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tike
--

SELECT pg_catalog.setval('public.tickets_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tike
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 27, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tike
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 4, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tike
--

SELECT pg_catalog.setval('public.up_users_id_seq', 3, true);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: buyers buyers_pkey; Type: CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.buyers
    ADD CONSTRAINT buyers_pkey PRIMARY KEY (id);


--
-- Name: buying_operations buying_operations_pkey; Type: CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.buying_operations
    ADD CONSTRAINT buying_operations_pkey PRIMARY KEY (id);


--
-- Name: event_types event_types_pkey; Type: CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.event_types
    ADD CONSTRAINT event_types_pkey PRIMARY KEY (id);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: tickets tickets_pkey; Type: CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT tickets_pkey PRIMARY KEY (id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: buyers_created_by_id_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX buyers_created_by_id_fk ON public.buyers USING btree (created_by_id);


--
-- Name: buyers_updated_by_id_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX buyers_updated_by_id_fk ON public.buyers USING btree (updated_by_id);


--
-- Name: buying_operations_buyer_links_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX buying_operations_buyer_links_fk ON public.buying_operations_buyer_links USING btree (buying_operation_id);


--
-- Name: buying_operations_buyer_links_inv_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX buying_operations_buyer_links_inv_fk ON public.buying_operations_buyer_links USING btree (buyer_id);


--
-- Name: buying_operations_created_by_id_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX buying_operations_created_by_id_fk ON public.buying_operations USING btree (created_by_id);


--
-- Name: buying_operations_event_links_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX buying_operations_event_links_fk ON public.buying_operations_event_links USING btree (buying_operation_id);


--
-- Name: buying_operations_event_links_inv_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX buying_operations_event_links_inv_fk ON public.buying_operations_event_links USING btree (event_id);


--
-- Name: buying_operations_ticket_links_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX buying_operations_ticket_links_fk ON public.buying_operations_ticket_links USING btree (buying_operation_id);


--
-- Name: buying_operations_ticket_links_inv_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX buying_operations_ticket_links_inv_fk ON public.buying_operations_ticket_links USING btree (ticket_id);


--
-- Name: buying_operations_updated_by_id_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX buying_operations_updated_by_id_fk ON public.buying_operations USING btree (updated_by_id);


--
-- Name: event_types_created_by_id_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX event_types_created_by_id_fk ON public.event_types USING btree (created_by_id);


--
-- Name: event_types_updated_by_id_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX event_types_updated_by_id_fk ON public.event_types USING btree (updated_by_id);


--
-- Name: events_created_by_id_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX events_created_by_id_fk ON public.events USING btree (created_by_id);


--
-- Name: events_event_type_links_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX events_event_type_links_fk ON public.events_event_type_links USING btree (event_id);


--
-- Name: events_event_type_links_inv_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX events_event_type_links_inv_fk ON public.events_event_type_links USING btree (event_type_id);


--
-- Name: events_updated_by_id_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX events_updated_by_id_fk ON public.events USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: tickets_created_by_id_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX tickets_created_by_id_fk ON public.tickets USING btree (created_by_id);


--
-- Name: tickets_updated_by_id_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX tickets_updated_by_id_fk ON public.tickets USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_events_to_check_links_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX up_users_events_to_check_links_fk ON public.up_users_events_to_check_links USING btree (user_id);


--
-- Name: up_users_events_to_check_links_inv_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX up_users_events_to_check_links_inv_fk ON public.up_users_events_to_check_links USING btree (event_id);


--
-- Name: up_users_events_to_sell_links_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX up_users_events_to_sell_links_fk ON public.up_users_events_to_sell_links USING btree (user_id);


--
-- Name: up_users_events_to_sell_links_inv_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX up_users_events_to_sell_links_inv_fk ON public.up_users_events_to_sell_links USING btree (event_id);


--
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: tike
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: buyers buyers_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.buyers
    ADD CONSTRAINT buyers_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: buyers buyers_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.buyers
    ADD CONSTRAINT buyers_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: buying_operations_buyer_links buying_operations_buyer_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.buying_operations_buyer_links
    ADD CONSTRAINT buying_operations_buyer_links_fk FOREIGN KEY (buying_operation_id) REFERENCES public.buying_operations(id) ON DELETE CASCADE;


--
-- Name: buying_operations_buyer_links buying_operations_buyer_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.buying_operations_buyer_links
    ADD CONSTRAINT buying_operations_buyer_links_inv_fk FOREIGN KEY (buyer_id) REFERENCES public.buyers(id) ON DELETE CASCADE;


--
-- Name: buying_operations buying_operations_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.buying_operations
    ADD CONSTRAINT buying_operations_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: buying_operations_event_links buying_operations_event_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.buying_operations_event_links
    ADD CONSTRAINT buying_operations_event_links_fk FOREIGN KEY (buying_operation_id) REFERENCES public.buying_operations(id) ON DELETE CASCADE;


--
-- Name: buying_operations_event_links buying_operations_event_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.buying_operations_event_links
    ADD CONSTRAINT buying_operations_event_links_inv_fk FOREIGN KEY (event_id) REFERENCES public.events(id) ON DELETE CASCADE;


--
-- Name: buying_operations_ticket_links buying_operations_ticket_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.buying_operations_ticket_links
    ADD CONSTRAINT buying_operations_ticket_links_fk FOREIGN KEY (buying_operation_id) REFERENCES public.buying_operations(id) ON DELETE CASCADE;


--
-- Name: buying_operations_ticket_links buying_operations_ticket_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.buying_operations_ticket_links
    ADD CONSTRAINT buying_operations_ticket_links_inv_fk FOREIGN KEY (ticket_id) REFERENCES public.tickets(id) ON DELETE CASCADE;


--
-- Name: buying_operations buying_operations_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.buying_operations
    ADD CONSTRAINT buying_operations_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: event_types event_types_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.event_types
    ADD CONSTRAINT event_types_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: event_types event_types_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.event_types
    ADD CONSTRAINT event_types_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: events events_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: events_event_type_links events_event_type_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.events_event_type_links
    ADD CONSTRAINT events_event_type_links_fk FOREIGN KEY (event_id) REFERENCES public.events(id) ON DELETE CASCADE;


--
-- Name: events_event_type_links events_event_type_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.events_event_type_links
    ADD CONSTRAINT events_event_type_links_inv_fk FOREIGN KEY (event_type_id) REFERENCES public.event_types(id) ON DELETE CASCADE;


--
-- Name: events events_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: tickets tickets_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT tickets_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: tickets tickets_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT tickets_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_events_to_check_links up_users_events_to_check_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.up_users_events_to_check_links
    ADD CONSTRAINT up_users_events_to_check_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_events_to_check_links up_users_events_to_check_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.up_users_events_to_check_links
    ADD CONSTRAINT up_users_events_to_check_links_inv_fk FOREIGN KEY (event_id) REFERENCES public.events(id) ON DELETE CASCADE;


--
-- Name: up_users_events_to_sell_links up_users_events_to_sell_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.up_users_events_to_sell_links
    ADD CONSTRAINT up_users_events_to_sell_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_events_to_sell_links up_users_events_to_sell_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.up_users_events_to_sell_links
    ADD CONSTRAINT up_users_events_to_sell_links_inv_fk FOREIGN KEY (event_id) REFERENCES public.events(id) ON DELETE CASCADE;


--
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: tike
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

