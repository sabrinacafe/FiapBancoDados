BEGIN 
    FOR X IN (

        SELECT
            table_name
        FROM
            user_tables 
        WHERE
            table_name = 'T_ANIMAL'
        ) LOOP
            EXECUTE IMMEDIATE 'DROP TABLE '
                                || x.table_name
                                || ' CASCADE CONSTRAINTS ';
        END LOOP;
END;
                            