PGDMP                      |         
   vegitables    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16428 
   vegitables    DATABASE     }   CREATE DATABASE vegitables WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE vegitables;
                postgres    false            �            1259    16435 
   shop_items    TABLE     �   CREATE TABLE public.shop_items (
    id integer NOT NULL,
    name character varying(150),
    price integer,
    stock_qty integer,
    plucked_date date,
    expire_within integer NOT NULL,
    shop_id integer,
    all_total character varying
);
    DROP TABLE public.shop_items;
       public         heap    postgres    false            �            1259    16434    shop_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shop_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.shop_items_id_seq;
       public          postgres    false    217            �           0    0    shop_items_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.shop_items_id_seq OWNED BY public.shop_items.id;
          public          postgres    false    216            �            1259    16429    shops    TABLE     M  CREATE TABLE public.shops (
    id integer NOT NULL,
    name character varying(150),
    no_of_items integer,
    category character varying(15),
    no_of_emp integer,
    owner_name character varying(150),
    address character varying(150),
    mobile_no integer,
    sales integer,
    revenue integer,
    is_active boolean
);
    DROP TABLE public.shops;
       public         heap    postgres    false                       2604    16438    shop_items id    DEFAULT     n   ALTER TABLE ONLY public.shop_items ALTER COLUMN id SET DEFAULT nextval('public.shop_items_id_seq'::regclass);
 <   ALTER TABLE public.shop_items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �          0    16435 
   shop_items 
   TABLE DATA           q   COPY public.shop_items (id, name, price, stock_qty, plucked_date, expire_within, shop_id, all_total) FROM stdin;
    public          postgres    false    217          �          0    16429    shops 
   TABLE DATA           �   COPY public.shops (id, name, no_of_items, category, no_of_emp, owner_name, address, mobile_no, sales, revenue, is_active) FROM stdin;
    public          postgres    false    215   b       �           0    0    shop_items_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.shop_items_id_seq', 4, true);
          public          postgres    false    216            "           2606    16440    shop_items shop_items_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.shop_items
    ADD CONSTRAINT shop_items_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.shop_items DROP CONSTRAINT shop_items_pkey;
       public            postgres    false    217                        2606    16433    shops shops_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.shops
    ADD CONSTRAINT shops_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.shops DROP CONSTRAINT shops_pkey;
       public            postgres    false    215            #           2606    16441 "   shop_items shop_items_shop_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.shop_items
    ADD CONSTRAINT shop_items_shop_id_fkey FOREIGN KEY (shop_id) REFERENCES public.shops(id);
 L   ALTER TABLE ONLY public.shop_items DROP CONSTRAINT shop_items_shop_id_fkey;
       public          postgres    false    4640    217    215            �   Q   x�3�LNLJLO�42�42�F&�f����@g��1gA~IbI>H�U��1H�!g~^f~'Pd
B�	�!H>F��� ��      �   �  x��X�r�6|?@���x����Z�\���T��`Dz�|}z H"�؉Va�l�LѲ�rWz�~+u-tGA��BvBU�n�~m�J�F�
M���)	>|�A�EL�Z����Z�~B��]I�' �M��ZԢy�0(�E�,JB7Rn���Zo[���
�j�yˮ�Ost�-Z�609s60��I�Q��6��[�vrGyB_+��tۨ�1�{�:��de�

�X����y{ˀ��u�v�j^)��.}{���$����e�:#~�]�_��в�j�QhB�^T�)���
 �Ŋ,VA�Rj�ݛdA�C�6��0���D)��:)�-HlA@���#�
�~�5d�Y�Ѕ��3`Z���[�\@�R�����	��[����e�*@<�� Kq�;�u�������N�s�k��Lsb�v^�6�j%���������.�m�����9�H"<�K�՞�a"�JV�hֽM?�:�H�CJ�L^%\50�4Ht�Ghѕ�]Uٷ̧ �Q���%	��i7�����Q*�N�[�ǔQ>r$2{�?J����?K
[�����C�FP��"��ضo��a5r���w������ܸ֥҃F��z�t'��Ee`��,��;����� �z�S��~��M�ȸ�>9D�|�=���H�Ĺ`���v�+N6���q�xS'��i�@ﾅ�?��	����l���!�i����oTg�~s�ڐn��Ǆؠ�|d�M�J#��	��z\/ї+��G�&�$�ڦ+�O"�,o��=ά|b�l��)l[��3�����	�ߪ]�Z6��$| �P@}��O���yES��񁏉�O�a`��Ԍ�xjpD;m�'1�t��[��?��L��.��g&1h�%x�g��(�%�mL��S�͑>ͩ���F�4���q�p��y�S���?Q�ֱ!t��z}���'��todx�h���Ñ)�ϤgO�f/>�l�db����쫏&&�9��B�y[���#��9���h�@�pd}��O��*>ڠ(�|��̛�@��x��aE�R:zy��5&��w-v]�0�s���l�.��w�b��J��8�ٓf��k�FKQ3���<��A�%� ����b��]y�fh�l=涂����kٽp��D�z/K�!�F����_�����%����@>q�Z�cS���$��2Ig,h���9�<�S�ȧh���*�sۍ�	Eq>Zf����Q12Ckg��p������ޢ�1]�(����rsFo����nߊn#N��Mɚ5uds�]6���s��N����ϐ��7Y8�~�P�	�Pfe.��Ѿ�Ԏ��Րu!��=��p�',4�)w��)5pA�.e�oٮZ��`��u��p�h�3.º:i7�4z%	\��ūZ��j�Ig���Ӑᚵhp8y��B������`�4<LDލ�l���u�>iU����sj�1
���`�KݚaA����E�3\F��;�><���83F�l���ص�#q<
�@y����`&�hMʹu`><��x|��~w,=��S�c��O+���	첔5�� �*t��`fw7��p�(��x��EG���x�� ����1*&gw$���|`h�?(	|�{ϥP� �ߠ���$(������$��hV҅�(��ƫ�W�?������/� Lj��     