PGDMP     ;    1                y            marcos    13.0    13.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    32770    marcos    DATABASE     d   CREATE DATABASE marcos WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Ecuador.1252';
    DROP DATABASE marcos;
                postgres    false            �            1259    32773    persona    TABLE     k   CREATE TABLE public.persona (
    pers_id integer NOT NULL,
    pers_nombre text,
    pers_edad integer
);
    DROP TABLE public.persona;
       public         heap    postgres    false            �            1259    32771    persona_pers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.persona_pers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.persona_pers_id_seq;
       public          postgres    false    201            �           0    0    persona_pers_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.persona_pers_id_seq OWNED BY public.persona.pers_id;
          public          postgres    false    200            #           2604    32776    persona pers_id    DEFAULT     r   ALTER TABLE ONLY public.persona ALTER COLUMN pers_id SET DEFAULT nextval('public.persona_pers_id_seq'::regclass);
 >   ALTER TABLE public.persona ALTER COLUMN pers_id DROP DEFAULT;
       public          postgres    false    200    201    201            �          0    32773    persona 
   TABLE DATA           B   COPY public.persona (pers_id, pers_nombre, pers_edad) FROM stdin;
    public          postgres    false    201   �
       �           0    0    persona_pers_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.persona_pers_id_seq', 2, true);
          public          postgres    false    200            %           2606    32781    persona persona_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (pers_id);
 >   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_pkey;
       public            postgres    false    201            �   $   x�3���L�HL��42�2�t�0J�4������ e�     