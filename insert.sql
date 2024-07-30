--従業員挿入クエリ
insert into m_employee (eid,ename,category) 
values('1','田中太郎','不動産');
insert into m_employee (eid,ename,category) 
values('2','佐藤花子','おうちの修繕');
insert into m_employee (eid,ename,category) 
values('3','鈴木一郎','介護');
insert into m_employee (eid,ename,category) 
values('4','高橋美咲','終活・相続');
insert into m_employee (eid,ename,category) 
values('5','中村健太','車や保険');


--受付停止用従業員挿入クエリ
insert into m_customer (cid, cname, password,administrator)
values ('hanako@admin.mail', '佐藤花子', crypt('P@ssw0rd#Adm!n2024', gen_salt('bf')),'1');
insert into m_customer (cid, cname, password,administrator)
values ('taro@admin.mail', '田中太郎', crypt('P@ssw0rd#Adm!n2024', gen_salt('bf')),'1');
insert into m_customer (cid, cname, password,administrator)
values ('ichiro@admin.mail', '鈴木一郎', crypt('P@ssw0rd#Adm!n2024', gen_salt('bf')),'1');
insert into m_customer (cid, cname, password,administrator)
values ('kenta@admin.mail', '中村健太', crypt('P@ssw0rd#Adm!n2024', gen_salt('bf')),'1');
insert into m_customer (cid, cname, password,administrator)
values ('misaki@admin.mail', '高橋美咲', crypt('P@ssw0rd#Adm!n2024', gen_salt('bf')),'1');

--顧客挿入サンプル
insert into m_customer (cid, cname, password)
values ('yota.s130319@icloud.com', '鈴木陽太', crypt('password', gen_salt('bf')));


--予約挿入サンプル
insert into t_reserve (date,time,eid,cid,etc)
values ('2024/06/28','15:00','1','yota.s130319@icloud.com','かくにん、とりあえず100字まではいる');
