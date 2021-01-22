TYPE=VIEW
query=select `kamailio`.`dr_rules`.`prefix` AS `prefix`,cast(`kamailio`.`dr_rules`.`ruleid` as char(64) charset utf8mb4) AS `ruleid`,cast(`kamailio`.`dr_rules`.`priority` as char(64) charset utf8mb4) AS `priority`,\'0\' AS `key_type`,\'0\' AS `value_type` from `kamailio`.`dr_rules` where `kamailio`.`dr_rules`.`groupid` = 9000
md5=cbf70ebf8f0501ad07529f8331753ec5
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2021-01-14 00:32:17
create-version=2
source=select `dr_rules`.`prefix` AS `prefix`,cast(`dr_rules`.`ruleid` as char(64) charset utf8mb4) AS `ruleid`,cast(`dr_rules`.`priority` as char(64) charset utf8mb4) AS `priority`,\'0\' AS `key_type`,\'0\' AS `value_type` from `dr_rules` where (`dr_rules`.`groupid` = 9000)
client_cs_name=utf8
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `kamailio`.`dr_rules`.`prefix` AS `prefix`,cast(`kamailio`.`dr_rules`.`ruleid` as char(64) charset utf8mb4) AS `ruleid`,cast(`kamailio`.`dr_rules`.`priority` as char(64) charset utf8mb4) AS `priority`,\'0\' AS `key_type`,\'0\' AS `value_type` from `kamailio`.`dr_rules` where `kamailio`.`dr_rules`.`groupid` = 9000
mariadb-version=100508
