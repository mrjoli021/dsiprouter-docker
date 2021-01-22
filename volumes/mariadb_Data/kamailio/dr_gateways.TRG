TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER insert_dr_gateways\n  BEFORE INSERT\n  ON dr_gateways\n  FOR EACH ROW\nBEGIN\n\n  \n  IF (NEW.gwid = 0) THEN\n    SET NEW.gwid = NULL;\n  END IF;\n  IF (NEW.attrs IS NULL) THEN\n    SET NEW.attrs = \'\';\n  END IF;\n\n  SET @new_gwid := COALESCE(NEW.gwid, @new_gwid, (\n    SELECT auto_increment\n    FROM information_schema.tables\n    WHERE table_name = \'dr_gateways\' AND table_schema = DATABASE()));\n\n  \n  SET NEW.attrs = CONCAT(CAST(@new_gwid AS char), \',\', CAST(NEW.type AS char),\n                         SUBSTRING(NEW.attrs, LENGTH(SUBSTRING_INDEX(NEW.attrs, \',\', 2)) + 1));\n  SET @new_gwid = @new_gwid + 1;\n\nEND' 'CREATE DEFINER=`root`@`localhost` TRIGGER update_dr_gateways\n  BEFORE UPDATE\n  ON dr_gateways\n  FOR EACH ROW\nBEGIN\n\n  \n  SET NEW.attrs = CONCAT(CAST(NEW.gwid AS char), \',\', CAST(NEW.type AS char),\n                         SUBSTRING(NEW.attrs, LENGTH(SUBSTRING_INDEX(NEW.attrs, \',\', 2)) + 1));\n\nEND'
sql_modes=1342177280 1342177280
definers='root@localhost' 'root@localhost'
client_cs_names='utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci'
created=161058433553 161058433553
