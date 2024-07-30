--データベース名reservekundbの作成
create database reservekundb;

-- 拡張モジュールの有効化/これをしないとcryptが使えない
CREATE EXTENSION IF NOT EXISTS pgcrypto;

--m_employeeテーブル作成
CREATE TABLE m_employee (
    eid char(8) NOT NULL  PRIMARY KEY,
    ename varchar(30) NOT NULL,
    category varchar(30) NOT NULL,
    stop_flag char(1)

);

--m_customerテーブル作成
CREATE TABLE m_customer (
    cid varchar(60) NOT NULL PRIMARY KEY,
    cname varchar(30) NOT NULL,
    password varchar(60) NOT NULL,
    administrator char(1)
);

--m_temporaryテーブル作成
CREATE TABLE m_temporary (
    cid varchar(60) NOT NULL PRIMARY KEY,
    cname varchar(30) NOT NULL,
    password varchar(60) NOT NULL,
    date TIMESTAMP NOT NULL,
    uuid varchar(36) NOT NULL UNIQUE
);

--t_reserveテーブル作成
CREATE TABLE t_reserve (
    date date NOT NULL,
    time varchar(10) NOT NULL,
    eid char(8) NOT NULL,
    cid varchar(60) NOT NULL,
    etc varchar(100),
    stop_flag char(1),
    PRIMARY KEY(date, time,eid),
    FOREIGN KEY (eid) REFERENCES m_employee(eid),
    FOREIGN KEY (cid) REFERENCES m_customer(cid)
);