# mysql> DESC robl.fossa_ip_ranges;
# +--------------+--------------+------+-----+---------+----------------+
# | Field        | Type         | Null | Key | Default | Extra          |
# +--------------+--------------+------+-----+---------+----------------+
# | id           | int(11)      | NO   | PRI | NULL    | auto_increment |
# | start_ip     | bigint(20)   | YES  |     | NULL    |                |
# | end_ip       | bigint(20)   | YES  |     | NULL    |                |
# | country_code | varchar(255) | YES  |     | NULL    |                |
# +--------------+--------------+------+-----+---------+----------------+
# 4 rows in set (0.00 sec)

# mysql> LOAD DATA INFILE '/Users/roblacey/repos/rails5/robl/tmp/IPCountry.csv' INTO TABLE robl.fossa_ip_ranges FIELDS TERMINATED BY "," ENCLOSED BY "\"" LINES TERMINATED BY "\r\n" (start_ip, end_ip, country_code, @dummy);
# Query OK, 343487 rows affected (0.77 sec)
# Records: 343487  Deleted: 0  Skipped: 0  Warnings: 0

module Fossa
  class IpRange < ApplicationRecord
    serialize :start_ip, IpEncoder.new
    serialize :end_ip,   IpEncoder.new
  end
end
