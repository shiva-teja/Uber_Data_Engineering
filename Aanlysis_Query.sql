{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red39\green78\blue204;\red255\green255\blue254;\red0\green0\blue0;
\red42\green55\blue62;\red21\green129\blue62;\red107\green0\blue1;}
{\*\expandedcolortbl;;\cssrgb\c20000\c40392\c83922;\cssrgb\c100000\c100000\c99608;\cssrgb\c0\c0\c0;
\cssrgb\c21569\c27843\c30980;\cssrgb\c5098\c56471\c30980;\cssrgb\c50196\c0\c0;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE\cf0 \strokec4  \cf2 \strokec2 OR\cf0 \strokec4  \cf2 \strokec2 REPLACE\cf0 \strokec4  \cf2 \strokec2 TABLE\cf0 \strokec4  uber\cf5 \strokec5 -\cf2 \strokec2 data\cf5 \strokec5 -\cf0 \strokec4 engineering\cf5 \strokec5 -\cf0 \strokec4 shiv.uber_dataset.anly_table \cf2 \strokec2 AS\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 (\cf2 \strokec2 SELECT\cf0 \strokec4  \cb1 \
\pard\pardeftab720\partightenfactor0
\cf0 \cb3 f.VendorID,\cb1 \
\cb3 d.tpep_dropoff_datetime,\cb1 \
\cb3 p.passenger_count,\cb1 \
\cb3 t.trip_distance,\cb1 \
\cb3 r.rate_code_name,\cb1 \
\cb3 pl.pickup_latitude,\cb1 \
\cb3 dl.dropoff_latitude,\cb1 \
\cb3 pm.payment_type_name,\cb1 \
\cb3 f.fare_amount,\cb1 \
\cb3 f.extra,\cb1 \
\cb3 f.mta_tax,\cb1 \
\cb3 f.tip_amount,\cb1 \
\cb3 f.tolls_amount,\cb1 \
\cb3 f.improvement_surcharge\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 FROM\cf0 \strokec4  \cb1 \
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 `uber-data-engineering-shiv.uber_dataset.fact_table`\cf0 \strokec4  f\cb1 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 JOIN\cf0 \strokec4  \cf6 \strokec6 `uber-data-engineering-shiv.uber_dataset.datetime_dim`\cf0 \strokec4  d \cb1 \
\cf2 \cb3 \strokec2 ON\cf0 \strokec4  d.\cf7 \strokec7 datetime_id\cf0 \strokec4  = f.datetime_id\cb1 \
\cf2 \cb3 \strokec2 JOIN\cf0 \strokec4   \cf6 \strokec6 `uber-data-engineering-shiv.uber_dataset.passenger_count_dim`\cf0 \strokec4  p\cb1 \
\cf2 \cb3 \strokec2 ON\cf0 \strokec4  f.\cf7 \strokec7 passenger_count_id\cf0 \strokec4  = p.passenger_count_id\cb1 \
\cf2 \cb3 \strokec2 JOIN\cf0 \strokec4  \cf6 \strokec6 `uber-data-engineering-shiv.uber_dataset.trip_distance_dim`\cf0 \strokec4  t\cb1 \
\cf2 \cb3 \strokec2 ON\cf0 \strokec4  t.\cf7 \strokec7 trip_distance_id\cf0 \strokec4  = f.trip_distance_id\cb1 \
\cf2 \cb3 \strokec2 JOIN\cf0 \strokec4  \cf6 \strokec6 `uber-data-engineering-shiv.uber_dataset.rate_code_dim`\cf0 \strokec4  r\cb1 \
\cf2 \cb3 \strokec2 ON\cf0 \strokec4  r.\cf7 \strokec7 rate_code_id\cf0 \strokec4  = f.rate_code_id\cb1 \
\cf2 \cb3 \strokec2 JOIN\cf0 \strokec4  \cf6 \strokec6 `uber-data-engineering-shiv.uber_dataset.payment_type_dim`\cf0 \strokec4  pm\cb1 \
\cf2 \cb3 \strokec2 ON\cf0 \strokec4  pm.\cf7 \strokec7 payment_type_id\cf0 \strokec4  = f.payment_type_id\cb1 \
\cf2 \cb3 \strokec2 JOIN\cf0 \strokec4  \cf6 \strokec6 `uber-data-engineering-shiv.uber_dataset.datetime_dim`\cf0 \strokec4  dt\cb1 \
\cf2 \cb3 \strokec2 ON\cf0 \strokec4  dt.\cf7 \strokec7 datetime_id\cf0 \strokec4  = f.datetime_id\cb1 \
\cf2 \cb3 \strokec2 JOIN\cf0 \strokec4  \cf6 \strokec6 `uber-data-engineering-shiv.uber_dataset.pickup_loc_dim`\cf0 \strokec4  pl\cb1 \
\cf2 \cb3 \strokec2 ON\cf0 \strokec4  pl.\cf7 \strokec7 pickup_loc_id\cf0 \strokec4  = f.pickup_loc_id\cb1 \
\cf2 \cb3 \strokec2 JOIN\cf0 \strokec4  \cf6 \strokec6 `uber-data-engineering-shiv.uber_dataset.dropoff_loc_dim`\cf0 \strokec4  dl\cb1 \
\cf2 \cb3 \strokec2 ON\cf0 \strokec4  dl.\cf7 \strokec7 dropoff_loc_id\cf0 \strokec4  = f.dropoff_loc_id\cf5 \strokec5 )\cf0 \strokec4 ;\cb1 \
}