CREATE TABLE delivery (
    delivery_no       NUMBER(5) NOT NULL,
    delivery_city     VARCHAR2(10) NOT NULL,
    delivery_street   VARCHAR2(10) NOT NULL,
    delivery_zipcode  VARCHAR2(10) NOT NULL,
    status            VARCHAR2(10)
);

ALTER TABLE delivery ADD CONSTRAINT delivery_pk PRIMARY KEY ( delivery_no );

CREATE TABLE image (
    image_no        NUMBER(6) NOT NULL,
    image1          VARCHAR2(30),
    image2          VARCHAR2(30),
    image3          VARCHAR2(30),
    items_items_no  NUMBER(5) NOT NULL
);

ALTER TABLE image ADD CONSTRAINT image_pk PRIMARY KEY ( image_no );

CREATE TABLE items (
    items_no           NUMBER(5) NOT NULL,
    items_name         VARCHAR2(20) NOT NULL,
    items_company      VARCHAR2(20) NOT NULL,
    items_price        NUMBER(10) NOT NULL,
    items_context      CLOB NOT NULL,
    items_color        VARCHAR2(10) NOT NULL,
    items_detail       CLOB NOT NULL,
    items_model        VARCHAR2(30) NOT NULL,
    items_manufacture  VARCHAR2(10) NOT NULL,
    items_origin       VARCHAR2(10) NOT NULL,
    items_stock        NUMBER(4) NOT NULL,
    items_mainphoto    BLOB NOT NULL
);

ALTER TABLE items ADD CONSTRAINT items_pk PRIMARY KEY ( items_no );

CREATE TABLE members (
    members_id        VARCHAR2(10) NOT NULL,
    members_name      VARCHAR2(20) NOT NULL,
    members_password  VARCHAR2(13) NOT NULL,
    members_city      VARCHAR2(10) NOT NULL,
    members_street    VARCHAR2(10) NOT NULL,
    members_zipcode   VARCHAR2(10) NOT NULL
);

ALTER TABLE members ADD CONSTRAINT member_pk PRIMARY KEY ( members_id );

CREATE TABLE notice (
    notice_no       NUMBER(5) NOT NULL,
    notice_title    VARCHAR2(50) NOT NULL,
    notice_content  CLOB NOT NULL,
    notice_date     DATE NOT NULL
);

ALTER TABLE notice ADD CONSTRAINT qna_pk PRIMARY KEY ( notice_no );

CREATE TABLE order_items (
    order_items_no     NUMBER(5) NOT NULL,
    order_items_count  NUMBER(3) NOT NULL,
    order_items_price  NUMBER(10) NOT NULL,
    orders_order_no    NUMBER(5) NOT NULL,
    items_items_no     NUMBER(5) NOT NULL
);

ALTER TABLE order_items ADD CONSTRAINT order_items_pk PRIMARY KEY ( order_items_no );

CREATE TABLE orders (
    order_no              NUMBER(5) NOT NULL,
    orders_datetime       DATE,
    status                VARCHAR2(10),
    delivery_delivery_no  NUMBER(5) NOT NULL,
    members_members_id    VARCHAR2(10) NOT NULL
);

ALTER TABLE orders ADD CONSTRAINT order_pk PRIMARY KEY ( order_no );

ALTER TABLE image
    ADD CONSTRAINT image_items_fk FOREIGN KEY ( items_items_no )
        REFERENCES items ( items_no );

ALTER TABLE order_items
    ADD CONSTRAINT order_items_items_fk FOREIGN KEY ( items_items_no )
        REFERENCES items ( items_no );

ALTER TABLE order_items
    ADD CONSTRAINT order_items_orders_fk FOREIGN KEY ( orders_order_no )
        REFERENCES orders ( order_no );

ALTER TABLE orders
    ADD CONSTRAINT orders_delivery_fk FOREIGN KEY ( delivery_delivery_no )
        REFERENCES delivery ( delivery_no );

ALTER TABLE orders
    ADD CONSTRAINT orders_members_fk FOREIGN KEY ( members_members_id )
        REFERENCES members ( members_id );