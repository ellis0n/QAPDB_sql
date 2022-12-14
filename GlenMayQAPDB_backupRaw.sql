PGDMP                 	    	    z           GlenMayQAP1    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16472    GlenMayQAP1    DATABASE     q   CREATE DATABASE "GlenMayQAP1" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "GlenMayQAP1";
                postgres    false                        2615    16509    qap1    SCHEMA        CREATE SCHEMA qap1;
    DROP SCHEMA qap1;
                postgres    false            ?            1259    16510    aircraft    TABLE     N   CREATE TABLE qap1.aircraft (
    id bigint NOT NULL,
    type character(5)
);
    DROP TABLE qap1.aircraft;
       qap1         heap    postgres    false    5            ?            1259    16596    aircraft_passengers    TABLE     s   CREATE TABLE qap1.aircraft_passengers (
    id bigint NOT NULL,
    aircraft_id bigint,
    passenger_id bigint
);
 %   DROP TABLE qap1.aircraft_passengers;
       qap1         heap    postgres    false    5            ?            1259    16572    airport_aircraft    TABLE     n   CREATE TABLE qap1.airport_aircraft (
    id bigint NOT NULL,
    airport_id bigint,
    aircraft_id bigint
);
 "   DROP TABLE qap1.airport_aircraft;
       qap1         heap    postgres    false    5            ?            1259    16517    airports    TABLE     ?   CREATE TABLE qap1.airports (
    id bigint NOT NULL,
    "airportName" character(50),
    code character(3),
    city_id bigint
);
    DROP TABLE qap1.airports;
       qap1         heap    postgres    false    5            ?            1259    16522    cities    TABLE     {   CREATE TABLE qap1.cities (
    id bigint NOT NULL,
    "cityName" character(20),
    state character(2),
    pop bigint
);
    DROP TABLE qap1.cities;
       qap1         heap    postgres    false    5            ?            1259    16529 
   passengers    TABLE     f   CREATE TABLE qap1.passengers (
    id bigint NOT NULL,
    name character(255),
    city_id bigint
);
    DROP TABLE qap1.passengers;
       qap1         heap    postgres    false    5                      0    16510    aircraft 
   TABLE DATA           *   COPY qap1.aircraft (id, type) FROM stdin;
    qap1          postgres    false    210   K                 0    16596    aircraft_passengers 
   TABLE DATA           J   COPY qap1.aircraft_passengers (id, aircraft_id, passenger_id) FROM stdin;
    qap1          postgres    false    215   ?                 0    16572    airport_aircraft 
   TABLE DATA           E   COPY qap1.airport_aircraft (id, airport_id, aircraft_id) FROM stdin;
    qap1          postgres    false    214   ?                 0    16517    airports 
   TABLE DATA           B   COPY qap1.airports (id, "airportName", code, city_id) FROM stdin;
    qap1          postgres    false    211   T                  0    16522    cities 
   TABLE DATA           :   COPY qap1.cities (id, "cityName", state, pop) FROM stdin;
    qap1          postgres    false    212   !                 0    16529 
   passengers 
   TABLE DATA           5   COPY qap1.passengers (id, name, city_id) FROM stdin;
    qap1          postgres    false    213   ?!       {           2606    16600 ,   aircraft_passengers aircraft_passengers_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY qap1.aircraft_passengers
    ADD CONSTRAINT aircraft_passengers_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY qap1.aircraft_passengers DROP CONSTRAINT aircraft_passengers_pkey;
       qap1            postgres    false    215            q           2606    16516    aircraft aircraft_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY qap1.aircraft
    ADD CONSTRAINT aircraft_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY qap1.aircraft DROP CONSTRAINT aircraft_pkey;
       qap1            postgres    false    210            y           2606    16576 &   airport_aircraft airport_aircraft_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY qap1.airport_aircraft
    ADD CONSTRAINT airport_aircraft_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY qap1.airport_aircraft DROP CONSTRAINT airport_aircraft_pkey;
       qap1            postgres    false    214            s           2606    16521    airports airports_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY qap1.airports
    ADD CONSTRAINT airports_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY qap1.airports DROP CONSTRAINT airports_pkey;
       qap1            postgres    false    211            u           2606    16528    cities cities_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY qap1.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY qap1.cities DROP CONSTRAINT cities_pkey;
       qap1            postgres    false    212            w           2606    16535    passengers passengers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY qap1.passengers
    ADD CONSTRAINT passengers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY qap1.passengers DROP CONSTRAINT passengers_pkey;
       qap1            postgres    false    213            ~           2606    16582    airport_aircraft aircraft_fk    FK CONSTRAINT     ~   ALTER TABLE ONLY qap1.airport_aircraft
    ADD CONSTRAINT aircraft_fk FOREIGN KEY (aircraft_id) REFERENCES qap1.aircraft(id);
 D   ALTER TABLE ONLY qap1.airport_aircraft DROP CONSTRAINT aircraft_fk;
       qap1          postgres    false    214    3185    210            ?           2606    16601    aircraft_passengers aircraft_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY qap1.aircraft_passengers
    ADD CONSTRAINT aircraft_fk FOREIGN KEY (aircraft_id) REFERENCES qap1.aircraft(id);
 G   ALTER TABLE ONLY qap1.aircraft_passengers DROP CONSTRAINT aircraft_fk;
       qap1          postgres    false    210    215    3185                       2606    16591    airport_aircraft airport_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY qap1.airport_aircraft
    ADD CONSTRAINT airport_fk FOREIGN KEY (airport_id) REFERENCES qap1.airports(id) NOT VALID;
 C   ALTER TABLE ONLY qap1.airport_aircraft DROP CONSTRAINT airport_fk;
       qap1          postgres    false    214    3187    211            |           2606    16536    airports city_fk    FK CONSTRAINT     v   ALTER TABLE ONLY qap1.airports
    ADD CONSTRAINT city_fk FOREIGN KEY (city_id) REFERENCES qap1.cities(id) NOT VALID;
 8   ALTER TABLE ONLY qap1.airports DROP CONSTRAINT city_fk;
       qap1          postgres    false    211    3189    212            }           2606    16561    passengers city_fk    FK CONSTRAINT     x   ALTER TABLE ONLY qap1.passengers
    ADD CONSTRAINT city_fk FOREIGN KEY (city_id) REFERENCES qap1.cities(id) NOT VALID;
 :   ALTER TABLE ONLY qap1.passengers DROP CONSTRAINT city_fk;
       qap1          postgres    false    212    213    3189            ?           2606    16606     aircraft_passengers passenger_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY qap1.aircraft_passengers
    ADD CONSTRAINT passenger_fk FOREIGN KEY (passenger_id) REFERENCES qap1.passengers(id);
 H   ALTER TABLE ONLY qap1.aircraft_passengers DROP CONSTRAINT passenger_fk;
       qap1          postgres    false    213    215    3191               1   x?3?476WP?2?t466P?2?(?/P?2?47??r:???=... ?k         ]   x???DQ?v0S??s???1x?KJ@?e?k1??c5?mlN?x\k%ϐPƌ?????8h?
ٵ?.?F??3?]?M2?CZTv*)?????=         K   x????0???0E?#iw??s????%????
?:2ZG?v|`??#??GF-?@?$4L¤q\?R?h?]?~/jL         ?   x????
?@??????+?????a.ڌyPQ΁q$??j[????q?T2Y??F%w?$G???@2?a??J󸰩%/2?g\dF5)32???6?
R??????hխ????j?P?J?N??V?<q?Y?h?ex<??HH??da
?8?uڤ?[?{i???~B? ??Y            x?U̱
?0????)??^r1?K?PD,????Tr?(??????????R?????H7ߐ JQ!???ʏ? ?O~?v?|?????>Yo?t?,ɵ8???9?S?<?k??Z2l=^6??Ο#?         s  x???Mn? ???)8A?o?Di????H??jO2X@*??ܞ?,??==???
?Hd??e????? %???D??0???zr s????Pp$???ܒ&???ZS????5?Q|????	??Li?у<y?dZ???[΄?EN????N{7v?z,>???a??????{l.??ЧMn]S??@???4W䩷???#?6%<$)5????1?R???̷Eyt?!???I&,??nH?????{c?u?/?
^??A?bqِ?????M???)"?ܚ&*?V<*i??O]?)H$?p?tF?ʓ????_O????????0?֓?d??>jCr?8*sK?n??G?o1?Oڛ??MaY??!?/??z     