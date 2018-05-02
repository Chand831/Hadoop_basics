CREATE EXTERNAL TABLE IF NOT EXISTS ennarit.aadhaar(
   Registrar string,
   EnrolmentAgency string,
   State string,
   District string,
   SubDistrict string,
   PinCode bigint,
   Gender string,
   Age int,
   AadharGenerated int,
   EnrolmentRejected int,
   ResidentsProvidingEmail int,
   ResidentsProvidingMobileNumber int)

ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
TBLPROPERTIES ('skip.header.line.count' = '1');
