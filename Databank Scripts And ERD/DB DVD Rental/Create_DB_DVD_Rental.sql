drop table if exists film_category;

drop table if exists category;

drop table if exists film_actor;

drop table if exists film;

drop table if exists language;

drop table if exists actor;

drop sequence if exists customer_customer_id_seq;

drop sequence if exists actor_actor_id_seq;

drop sequence if exists category_category_id_seq;

drop sequence if exists film_film_id_seq;

drop sequence if exists address_address_id_seq;

drop sequence if exists city_city_id_seq;

drop sequence if exists country_country_id_seq;

drop sequence if exists inventory_inventory_id_seq;

drop sequence if exists language_language_id_seq;

drop sequence if exists payment_payment_id_seq;

drop sequence if exists rental_rental_id_seq;

drop sequence if exists staff_staff_id_seq;

drop sequence if exists store_store_id_seq;

create sequence customer_customer_id_seq;
alter sequence customer_customer_id_seq owner to postgres;
create sequence actor_actor_id_seq;
alter sequence actor_actor_id_seq owner to postgres;
create sequence category_category_id_seq;
alter sequence category_category_id_seq owner to postgres;
create sequence film_film_id_seq;
alter sequence film_film_id_seq owner to postgres;
create sequence address_address_id_seq;
alter sequence address_address_id_seq owner to postgres;
create sequence city_city_id_seq;
alter sequence city_city_id_seq owner to postgres;
create sequence country_country_id_seq;
alter sequence country_country_id_seq owner to postgres;
create sequence inventory_inventory_id_seq;
alter sequence inventory_inventory_id_seq owner to postgres;
create sequence language_language_id_seq;
alter sequence language_language_id_seq owner to postgres;
create sequence payment_payment_id_seq;
alter sequence payment_payment_id_seq owner to postgres;
create sequence rental_rental_id_seq;
alter sequence rental_rental_id_seq owner to postgres;
create sequence staff_staff_id_seq;
alter sequence staff_staff_id_seq owner to postgres;
create sequence store_store_id_seq;
alter sequence store_store_id_seq owner to postgres;

create table language
(
    language_id integer   default nextval('language_language_id_seq'::regclass) not null
        constraint language_pkey
            primary key,
    name        char(20)                                                        not null,
    last_update timestamp default now()                                         not null
);

alter table language
    owner to postgres;

create table category
(
    category_id integer   default nextval('category_category_id_seq'::regclass) not null
        constraint category_pkey
            primary key,
    name        varchar(25)                                                     not null,
    last_update timestamp default now()                                         not null
);

alter table category
    owner to postgres;

create table film
(
    film_id          integer       default nextval('film_film_id_seq') not null
        constraint film_pkey
            primary key,
    title            varchar(255)                                                not null,
    description      text,
    release_year     integer,
    language_id      smallint                                                    not null
        constraint film_language_id_fkey
            references language
            on update cascade on delete restrict,
    rental_duration  smallint      default 3                                     not null,
    rental_rate      numeric(4, 2) default 4.99                                  not null,
    length           smallint,
    replacement_cost numeric(5, 2) default 19.99                                 not null,
    rating           VARCHAR(10)   default 'G',
    last_update      timestamp     default now()                                 not null,
    special_features varchar(255)  ,
    fulltext         varchar(255)                                                    not null
);

alter table film
    owner to postgres;

create index film_fulltext_idx
    on film (fulltext);

create index idx_fk_language_id
    on film (language_id);

create index idx_title
    on film (title);

create table film_category
(
    film_id     smallint                not null
        constraint film_category_film_id_fkey
            references film
            on update cascade on delete restrict,
    category_id smallint                not null
        constraint film_category_category_id_fkey
            references category
            on update cascade on delete restrict,
    last_update timestamp default now() not null,
    constraint film_category_pkey
        primary key (film_id, category_id)
);

alter table film_category
    owner to postgres;

create table actor
(
    actor_id    integer   default nextval('actor_actor_id_seq'::regclass) not null
        constraint actor_pkey
            primary key,
    first_name  varchar(45)                                               not null,
    last_name   varchar(45)                                               not null,
    last_update timestamp default now()                                   not null
);

alter table actor
    owner to postgres;

create index idx_actor_last_name
    on actor (last_name);

create table film_actor
(
    actor_id    smallint                not null
        constraint film_actor_actor_id_fkey
            references actor
            on update cascade on delete restrict,
    film_id     smallint                not null
        constraint film_actor_film_id_fkey
            references film
            on update cascade on delete restrict,
    last_update timestamp default now() not null,
    constraint film_actor_pkey
        primary key (actor_id, film_id)
);

alter table film_actor
    owner to postgres;

create index idx_fk_film_id
    on film_actor (film_id);

ALTER TABLE actor
    ADD COLUMN birthdate DATE;

UPDATE actor
SET birthdate = (SELECT CURRENT_DATE-CAST(actor_id+(365*20+random()*365*30) AS INTEGER));

DELETE FROM film_category WHERE category_id = 3 OR category_id = 7;

