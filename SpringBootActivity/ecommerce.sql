PGDMP     6                     {         	   ecommerce    15.1    15.1 $               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    18596 	   ecommerce    DATABASE     ?   CREATE DATABASE ecommerce WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE ecommerce;
                postgres    false            ?            1259    18758    carts    TABLE     ?   CREATE TABLE public.carts (
    cart_id integer NOT NULL,
    product_id integer,
    quantity double precision,
    user_id integer
);
    DROP TABLE public.carts;
       public         heap    postgres    false            ?            1259    18757    carts_cart_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.carts_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.carts_cart_id_seq;
       public          postgres    false    221                        0    0    carts_cart_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.carts_cart_id_seq OWNED BY public.carts.cart_id;
          public          postgres    false    220            ?            1259    18744    products    TABLE       CREATE TABLE public.products (
    product_id integer NOT NULL,
    productname character varying(255),
    productdescription character varying(255),
    productquantity integer,
    productprice double precision,
    user_id integer,
    productimage character varying(255)
);
    DROP TABLE public.products;
       public         heap    postgres    false            ?            1259    18743    products_product_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.products_product_id_seq;
       public          postgres    false    219            !           0    0    products_product_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products.product_id;
          public          postgres    false    218            ?            1259    18699    roles    TABLE     a   CREATE TABLE public.roles (
    role_id integer NOT NULL,
    rolename character varying(255)
);
    DROP TABLE public.roles;
       public         heap    postgres    false            ?            1259    18698    roles_role_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.roles_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.roles_role_id_seq;
       public          postgres    false    215            "           0    0    roles_role_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.roles_role_id_seq OWNED BY public.roles.role_id;
          public          postgres    false    214            ?            1259    18729    users    TABLE     ?   CREATE TABLE public.users (
    user_id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    email character varying(255),
    password character varying(255),
    role_id integer
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    18728    users_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    217            #           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
          public          postgres    false    216            w           2604    18761    carts cart_id    DEFAULT     n   ALTER TABLE ONLY public.carts ALTER COLUMN cart_id SET DEFAULT nextval('public.carts_cart_id_seq'::regclass);
 <   ALTER TABLE public.carts ALTER COLUMN cart_id DROP DEFAULT;
       public          postgres    false    220    221    221            v           2604    18747    products product_id    DEFAULT     z   ALTER TABLE ONLY public.products ALTER COLUMN product_id SET DEFAULT nextval('public.products_product_id_seq'::regclass);
 B   ALTER TABLE public.products ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    219    218    219            t           2604    18702    roles role_id    DEFAULT     n   ALTER TABLE ONLY public.roles ALTER COLUMN role_id SET DEFAULT nextval('public.roles_role_id_seq'::regclass);
 <   ALTER TABLE public.roles ALTER COLUMN role_id DROP DEFAULT;
       public          postgres    false    215    214    215            u           2604    18732    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    216    217    217                      0    18758    carts 
   TABLE DATA           G   COPY public.carts (cart_id, product_id, quantity, user_id) FROM stdin;
    public          postgres    false    221   z'                 0    18744    products 
   TABLE DATA           ?   COPY public.products (product_id, productname, productdescription, productquantity, productprice, user_id, productimage) FROM stdin;
    public          postgres    false    219   ?'                 0    18699    roles 
   TABLE DATA           2   COPY public.roles (role_id, rolename) FROM stdin;
    public          postgres    false    215   -(                 0    18729    users 
   TABLE DATA           W   COPY public.users (user_id, firstname, lastname, email, password, role_id) FROM stdin;
    public          postgres    false    217   _(       $           0    0    carts_cart_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.carts_cart_id_seq', 10, true);
          public          postgres    false    220            %           0    0    products_product_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.products_product_id_seq', 79, true);
          public          postgres    false    218            &           0    0    roles_role_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.roles_role_id_seq', 3, true);
          public          postgres    false    214            '           0    0    users_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_user_id_seq', 11, true);
          public          postgres    false    216                       2606    18763    carts carts_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY (cart_id);
 :   ALTER TABLE ONLY public.carts DROP CONSTRAINT carts_pkey;
       public            postgres    false    221            }           2606    18751    products products_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    219            y           2606    18704    roles roles_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (role_id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    215            {           2606    18736    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    217            ?           2606    18769    carts fk_carts    FK CONSTRAINT     r   ALTER TABLE ONLY public.carts
    ADD CONSTRAINT fk_carts FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 8   ALTER TABLE ONLY public.carts DROP CONSTRAINT fk_carts;
       public          postgres    false    3195    217    221            ?           2606    18737    users fk_users    FK CONSTRAINT     r   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_users FOREIGN KEY (role_id) REFERENCES public.roles(role_id);
 8   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_users;
       public          postgres    false    217    215    3193            ?           2606    18752    products fk_users    FK CONSTRAINT     u   ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_users FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 ;   ALTER TABLE ONLY public.products DROP CONSTRAINT fk_users;
       public          postgres    false    217    219    3195            ?           2606    18764    carts fk_users    FK CONSTRAINT     {   ALTER TABLE ONLY public.carts
    ADD CONSTRAINT fk_users FOREIGN KEY (product_id) REFERENCES public.products(product_id);
 8   ALTER TABLE ONLY public.carts DROP CONSTRAINT fk_users;
       public          postgres    false    219    221    3197                  x?34?4??4?44?????? R1         {   x?3??tM,*???K?3RR???2J2??88?@tjb?^VZf??%?'D????Ɉ???+?@/? ??ܜ381??4/]?=1'??R!J?-'? .
????B?C???S?
?b???? I?5k         "   x?3???q?w
?t?2?p?]}|??=... ???         ?   x?e̻?0 @ѹ??B+B???A?H?%m^?z5.?nk`(9/???*?7R ??
?9x???n?q??E4+r??H??9FG?[uN?m??^?nsM	 c????_w#?/C??ΛID??#0e?J;5VFy\]?P$̈́?9?y	0|"?L?=b     