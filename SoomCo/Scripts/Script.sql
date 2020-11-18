CREATE TABLE MEMBER (
	m_seq NUMBER,
	m_id varchar2(10 char) NOT NULL PRIMARY KEY,
	m_password varchar2(16 char) NOT NULL,
	m_name varchar2(10 char) NOT NULL,
	m_location varchar2(60 char) NOT NULL,
	m_mail varchar2(40 char) NOT NULL,
	m_gender varchar2(2 char) NOT NULL,
	m_position varchar2(5 char) NOT NULL,
	m_introduce varchar2(1000 char) NOT NULL,
	m_image varchar2(200 char) DEFAULT 'admin',
	m_interests varchar2(15 char) NOT NULL,
	m_status varchar2(5 char) DEFAULT 'true',
	m_matching_count NUMBER DEFAULT 0,
	m_deadline DATE DEFAULT SYSDATE-1
);

CREATE SEQUENCE seq_member
INCREMENT BY 1
START WITH 1;


CREATE TABLE top_interests (
	top_id NUMBER PRIMARY KEY,
	top_name varchar2(15 char) NOT NULL 
);

CREATE SEQUENCE seq_top_interests
INCREMENT BY 1
START WITH 1;

CREATE TABLE sub_interests (
	sub_id NUMBER PRIMARY KEY,
	top_id NUMBER,
	sub_name varchar2(15 char) NOT NULL,
	CONSTRAINT fk_top_interests FOREIGN KEY (top_id) 
	REFERENCES top_interests(top_id)
);

CREATE SEQUENCE seq_sub_interests
INCREMENT BY 1
START WITH 1;

CREATE TABLE chat (
	m_id varchar2(10 char),
	chat_id NUMBER PRIMARY KEY,
	content varchar2(500 char),
	CONSTRAINT fk_m_id FOREIGN KEY (m_id) 
	REFERENCES member(m_id)
); 

CREATE SEQUENCE seq_chat
INCREMENT BY 1
START WITH 1;

INSERT INTO top_interests(top_id, top_name) VALUES(seq_top_interests.nextval, '���α׷���');
INSERT INTO top_interests(top_id, top_name) VALUES(seq_top_interests.nextval, '�');
INSERT INTO top_interests(top_id, top_name) VALUES(seq_top_interests.nextval, '����');
INSERT INTO top_interests(top_id, top_name) VALUES(seq_top_interests.nextval, '���׸���');
INSERT INTO top_interests(top_id, top_name) VALUES(seq_top_interests.nextval, '�丮');
INSERT INTO top_interests(top_id, top_name) VALUES(seq_top_interests.nextval, '�ܱ���');
INSERT INTO top_interests(top_id, top_name) VALUES(seq_top_interests.nextval, '����');
INSERT INTO top_interests(top_id, top_name) VALUES(seq_top_interests.nextval, '��Ƽ');

INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,1,'C++');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,1,'C');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,1,'Java');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,1,'Python');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,1,'HTML');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,1,'JSP');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,1,'Django');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,1,'Node.JS');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,1,'Android');

INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,2,'�䰡');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,2,'�ʶ��׽�');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,2,'�ｺ');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,2,'����');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,2,'����');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,2,'��Ű');

INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,3,'����');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,3,'�巳');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,3,'��Ÿ');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,3,'����');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,3,'��');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,3,'�̼�');

INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,4,'�ǳ�');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,4,'����Ʈ');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,4,'���');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,4,'Ÿ��');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,4,'����');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,4,'����');

INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,5,'�ѽ�');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,5,'�߽�');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,5,'�Ͻ�');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,5,'���');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,5,'ǻ��');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,5,'��������');

INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,6,'�Ϻ���');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,6,'�߱���');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,6,'�±���');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,6,'���þƾ�');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,6,'��Ż���ƾ�');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,6,'���Ͼ�');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,6,'�����ξ�');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,6,'�Ҿ�');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,6,'����');

INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,7,'����');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,7,'����');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,7,'����');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,7,'�ѱ���');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,7,'�ѹ�');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,7,'����');

INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,8,'����ũ��');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,8,'�̿�');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,8,'���Ͼ�Ʈ');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,8,'Ư������');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,8,'����');
INSERT INTO sub_interests(sub_id, top_id, sub_name) VALUES(seq_sub_interests.nextval,8,'����');
