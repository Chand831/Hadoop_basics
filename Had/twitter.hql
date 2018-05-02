ADD JAR /home/cloudera/Downloads/cdh-twitter-example-master/hive-serdes/target/hive-serdes-1.0-SNAPSHOT.jar;
ADD JAR /usr/lib/hive-hcatalog/share/hcatalog/hive-hcatalog-core.jar;
ADD JAR /home/cloudera/Downloads/hive-json-serde-0.2.jar;

 CREATE EXTERNAL TABLE ennarit.tweets (
   id BIGINT,
   created_at STRING,
   source STRING,
   favorited BOOLEAN,
   retweeted_status STRUCT<
     text:STRING,
     user:STRUCT<screen_name:STRING,name:STRING>,
     retweet_count:INT>,
   entities STRUCT<
     urls:ARRAY<STRUCT<expanded_url:STRING>>,
     user_mentions:ARRAY<STRUCT<screen_name:STRING,name:STRING>>,
     hashtags:ARRAY<STRUCT<text:STRING>>>,
   text STRING,
   user STRUCT<
     screen_name:STRING,
     name:STRING,
     friends_count:INT,
     followers_count:INT,
     statuses_count:INT,
     verified:BOOLEAN,
     utc_offset:INT,
     time_zone:STRING>,
     in_reply_to_screen_name STRING,
     datehour INT)
 ROW FORMAT SERDE 'com.cloudera.hive.serde.JSONSerDe'
 LOCATION '/user/cloudera/flume/events/';
