CREATE TABLE PRODUCT(
    PRODUCT_NUM VARCHAR2(30) PRIMARY KEY,
    PRODUCT_NAME VARCHAR2(50) NOT NULL,
    PRODUCT_TYPE VARCHAR2(10) NOT NULL,
    COUNTRY VARCHAR2(30) NOT NULL,
    TRAVEL_DESTINATION VARCHAR2(30) NOT NULL,
    TRAVEL_DESTINATION_INFO VARCHAR2(1000) NOT NULL,
    ITINERARY VARCHAR2(4000) NOT NULL,
    ITINERARY_IMAGE VARCHAR2(50),
    BANNER_IMAGE VARCHAR2(50),
    PRODUCT_PRICE NUMBER NOT NULL,
    PASSENGER_COUNT NUMBER NOT NULL,
    D_DEPARTURE_DATE_TIME VARCHAR2(20) NOT NULL,
    D_ARRIVAL_DATE_TIME VARCHAR2(20) NOT NULL,
    E_DEPARTURE_DATE_TIME VARCHAR2(20) NOT NULL,
    E_ARRIVAL_DATE_TIME VARCHAR2(20) NOT NULL
);



COMMENT ON COLUMN PRODUCT.PRODUCT_NUM IS '��ǰ��ȣ';
COMMENT ON COLUMN PRODUCT.PRODUCT_NAME IS '��ǰ��';
COMMENT ON COLUMN PRODUCT.PRODUCT_TYPE IS '��ǰ����';
COMMENT ON COLUMN PRODUCT.COUNTRY IS '����';
COMMENT ON COLUMN PRODUCT.TRAVEL_DESTINATION IS '������';
COMMENT ON COLUMN PRODUCT.TRAVEL_DESTINATION_INFO IS '����������';
COMMENT ON COLUMN PRODUCT.ITINERARY IS '��������';
COMMENT ON COLUMN PRODUCT.ITINERARY_IMAGE IS '���������̹������ϸ�';
COMMENT ON COLUMN PRODUCT.BANNER_IMAGE IS '�������̹������ϸ�';
COMMENT ON COLUMN PRODUCT.PRODUCT_PRICE IS '��ǰ����';
COMMENT ON COLUMN PRODUCT.PASSENGER_COUNT IS '�°���';
COMMENT ON COLUMN PRODUCT.D_DEPARTURE_DATE_TIME IS '�ⱹ�����/��(yyyy-mm-dd hh24:mi)';
COMMENT ON COLUMN PRODUCT.D_ARRIVAL_DATE_TIME IS '�ⱹ������/��(yyyy-mm-dd hh24:mi)';
COMMENT ON COLUMN PRODUCT.E_DEPARTURE_DATE_TIME IS '�Ա������/��(yyyy-mm-dd hh24:mi)';
COMMENT ON COLUMN PRODUCT.E_ARRIVAL_DATE_TIME IS '�Ա�������/��(yyyy-mm-dd hh24:mi)';


INSERT INTO PRODUCT VALUES('jp0001', '����ġ���� ��õ ü���ϱ�', '��Ű��', '�Ϻ�', '�߸���Ÿ ��', '�߸���Ÿ ���� �Ϻ� ���Ϻ��� ���ʿ� ��ġ�� �ڿ������ �پ ���Դϴ�. Ư��, �߸���Ÿ ������ ������ ������ ��ü���� õ����õ�� �ھƳ��� ��õ õ������ �θ� �˷��� ������, �� �������� Ư�� �ִ� ��õ�� ������ �� �ֽ��ϴ�. ���� ���������� ������ �ڿ���õ��Ű��� �ѿ������� ������ �԰� ��Ű�� ��� �� �ִ� ���꽺Ű���� �־� ���� ��������� �պ��ϴ�.', '1����... 2����...', '1��������', '���1', 890000, 1, '201907180820', '201907181000', '201907211640', '201907211820');
INSERT INTO PRODUCT VALUES('jp0002', '��ǰ��1', '�׸�', '�Ϻ�', '����ī', '����������1', '1����... 2����...', '1��������', '���1', 780000, 1, '201908180820', '201908181020', '201909211640', '201909211820');
INSERT INTO PRODUCT VALUES('jp0003', '��ǰ��2', '�׸�', '�Ϻ�', '�����ī', '����������1', '1����... 2����...', '1��������', '���1', 350000, 1, '201906150820', '201906151020', '201906181640', '201906181820');
INSERT INTO PRODUCT VALUES('la0001', '��ǰ��1', '�׸�', '�ν���������', 'LA', '����������1', '1����... 2����...', '1��������', '���1', 780000, 1, '201908180820', '201908181020', '201909211640', '201909211820');


SELECT TO_CHAR(TO_DATE(D_DEPARTURE_DATE_TIME, 'yyyy-mm-dd hh24:mi'), 'YYYY-MM-DD HH24 : MI'), TO_CHAR(TO_DATE(D_ARRIVAL_DATE_TIME, 'yyyy-mm-dd hh24:mi'), 'YYYY-MM-DD HH24 : MI')
FROM PRODUCT;



COMMIT;

















