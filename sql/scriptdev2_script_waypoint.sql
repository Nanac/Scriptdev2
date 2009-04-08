-- This file contains all waypoints used by escortAI scripts

DELETE FROM script_waypoint WHERE entry=467;
INSERT INTO script_waypoint VALUES
(467, 0, -10508.40, 1068.00, 55.21, 0, ''),
(467, 1, -10518.30, 1074.84, 53.96, 0, ''),
(467, 2, -10534.82, 1081.92, 49.88, 0, ''),
(467, 3, -10546.51, 1084.88, 50.13, 0, ''),
(467, 4, -10555.29, 1084.45, 45.75, 0, ''),
(467, 5, -10566.57, 1083.53, 42.10, 0, ''),
(467, 6, -10575.83, 1082.34, 39.46, 0, ''),
(467, 7, -10585.67, 1081.08, 37.77, 0, ''),
(467, 8, -10600.08, 1078.19, 36.23, 0, ''),
(467, 9, -10608.69, 1076.08, 35.88, 0, ''),
(467, 10, -10621.26, 1073.00, 35.40, 0, ''),
(467, 11, -10638.12, 1060.18, 33.61, 0, ''),
(467, 12, -10655.87, 1038.99, 33.48, 0, ''),
(467, 13, -10664.68, 1030.54, 32.70, 0, ''),
(467, 14, -10708.68, 1033.86, 33.32, 0, ''),
(467, 15, -10754.43, 1017.93, 32.79, 0, ''),
(467, 16, -10802.26, 1018.01, 32.16, 0, ''),
(467, 17, -10832.60, 1009.04, 32.71, 0, ''),
(467, 18, -10866.56, 1006.51, 31.71, 0, ''),
(467, 19, -10879.98, 1005.10, 32.84, 0, ''),
(467, 20, -10892.45, 1001.32, 34.46, 0, ''),
(467, 21, -10906.14, 997.11, 36.15, 0, ''),
(467, 22, -10922.26, 1002.23, 35.74, 0, ''),
(467, 23, -10936.32, 1023.38, 36.52, 0, ''),
(467, 24, -10933.35, 1052.61, 35.85, 0, ''),
(467, 25, -10940.25, 1077.66, 36.49, 0, ''),
(467, 26, -10957.09, 1099.33, 36.83, 0, ''),
(467, 27, -10956.53, 1119.90, 36.73, 0, ''),
(467, 28, -10939.30, 1150.75, 37.42, 0, ''),
(467, 29, -10915.14, 1202.09, 36.55, 0, ''),
(467, 30, -10892.59, 1257.03, 33.37, 0, ''),
(467, 31, -10891.93, 1306.66, 35.45, 0, ''),
(467, 32, -10896.17, 1327.86, 37.77, 0, ''),
(467, 33, -10906.03, 1368.05, 40.91, 0, ''),
(467, 34, -10910.18, 1389.33, 42.62, 0, ''),
(467, 35, -10915.42, 1417.72, 42.93, 0, ''),
(467, 36, -10926.37, 1421.18, 43.04, 0, 'walk here and say'),
(467, 37, -10952.31, 1421.74, 43.40, 0, ''),
(467, 38, -10980.04, 1411.38, 42.79, 0, ''),
(467, 39, -11006.06, 1420.47, 43.26, 0, ''),
(467, 40, -11021.98, 1450.59, 43.09, 0, ''),
(467, 41, -11025.36, 1491.59, 43.15, 0, ''),
(467, 42, -11036.09, 1508.32, 43.28, 0, ''),
(467, 43, -11060.68, 1526.72, 43.19, 0, ''),
(467, 44, -11072.75, 1527.77, 43.20, 5000, 'say and quest credit');

DELETE FROM script_waypoint WHERE entry=1978;
INSERT INTO script_waypoint VALUES
(1978, 0, 1406.32, 1083.10, 52.55, 0, ''),
(1978, 1, 1400.49, 1080.42, 52.50, 0, 'SAY_START_2'),
(1978, 2, 1388.48, 1083.10, 52.52, 0, ''),
(1978, 3, 1370.16, 1084.02, 52.30, 0, ''),
(1978, 4, 1359.02, 1080.85, 52.46, 0, ''),
(1978, 5, 1341.43, 1087.39, 52.69, 0, ''),
(1978, 6, 1321.93, 1090.51, 50.66, 0, ''),
(1978, 7, 1312.98, 1095.91, 47.49, 0, ''),
(1978, 8, 1301.09, 1102.94, 47.76, 0, ''),
(1978, 9, 1297.73, 1106.35, 50.18, 0, ''),
(1978, 10, 1295.49, 1124.32, 50.49, 0, ''),
(1978, 11, 1294.84, 1137.25, 51.75, 0, ''),
(1978, 12, 1292.89, 1158.99, 52.65, 0, ''),
(1978, 13, 1290.75, 1168.67, 52.56, 2000, 'quest complete SAY_END'),
(1978, 14, 1287.12, 1203.49, 52.66, 5000, 'SAY_RANE'),
(1978, 15, 1288.30, 1203.89, 52.68, 5000, 'SAY_RANE_REPLY'),
(1978, 16, 1288.30, 1203.89, 52.68, 5000, 'SAY_CHECK_NEXT'),
(1978, 17, 1290.72, 1207.44, 52.69, 0, ''),
(1978, 18, 1297.50, 1207.18, 53.74, 0, ''),
(1978, 19, 1301.32, 1220.90, 53.74, 0, ''),
(1978, 20, 1298.55, 1220.43, 53.74, 0, ''),
(1978, 21, 1297.38, 1212.87, 58.51, 0, ''),
(1978, 22, 1297.80, 1210.04, 58.51, 0, ''),
(1978, 23, 1305.01, 1206.10, 58.51, 0, ''),
(1978, 24, 1310.51, 1207.36, 58.51, 5000, 'SAY_QUINN'),
(1978, 25, 1312.59, 1207.21, 58.51, 5000, 'SAY_QUINN_REPLY'),
(1978, 26, 1312.59, 1207.21, 58.51, 30000, 'SAY_BYE');

DELETE FROM script_waypoint WHERE entry=2768;
INSERT INTO script_waypoint VALUES
(2768, 0, -2066.45, -2085.96, 9.08, 0, ''),
(2768, 1, -2077.99, -2105.33, 13.24, 0, ''),
(2768, 2, -2074.60, -2109.67, 14.24, 0, ''),
(2768, 3, -2076.60, -2117.46, 16.67, 0, ''),
(2768, 4, -2073.51, -2123.46, 18.42, 2000, ''),
(2768, 5, -2073.51, -2123.46, 18.42, 4000, ''),
(2768, 6, -2066.60, -2131.85, 21.56, 0, ''),
(2768, 7, -2053.85, -2143.19, 20.31, 0, ''),
(2768, 8, -2043.49, -2153.73, 20.20, 10000, ''),
(2768, 9, -2043.49, -2153.73, 20.20, 20000, ''),
(2768, 10, -2043.49, -2153.73, 20.20, 10000, ''),
(2768, 11, -2043.49, -2153.73, 20.20, 2000, ''),
(2768, 12, -2053.85, -2143.19, 20.31, 0, ''),
(2768, 13, -2066.60, -2131.85, 21.56, 0, ''),
(2768, 14, -2073.51, -2123.46, 18.42, 0, ''),
(2768, 15, -2076.60, -2117.46, 16.67, 0, ''),
(2768, 16, -2074.60, -2109.67, 14.24, 0, ''),
(2768, 17, -2077.99, -2105.33, 13.24, 0, ''),
(2768, 18, -2066.45, -2085.96, 9.08, 0, ''),
(2768, 19, -2066.41, -2086.21, 8.97, 6000, ''),
(2768, 20, -2066.41, -2086.21, 8.97, 2000, '');

DELETE FROM script_waypoint WHERE entry=3439;
INSERT INTO script_waypoint VALUES
(3439, 0, 1109.15, -3104.11, 82.41, 5000, ''),
(3439, 1, 1105.39, -3102.86, 82.74, 1000, 'SAY_STARTUP1'),
(3439, 2, 1104.97, -3108.52, 83.10, 1000, ''),
(3439, 3, 1110.01, -3110.48, 82.81, 1000, ''),
(3439, 4, 1111.72, -3103.03, 82.21, 1000, ''),
(3439, 5, 1106.98, -3099.44, 82.18, 1000, ''),
(3439, 6, 1103.74, -3103.29, 83.05, 1000, ''),
(3439, 7, 1112.55, -3106.56, 82.31, 1000, ''),
(3439, 8, 1108.12, -3111.04, 82.99, 1000, ''),
(3439, 9, 1109.32, -3100.39, 82.08, 1000, ''),
(3439, 10, 1109.32, -3100.39, 82.08, 5000, 'SAY_STARTUP2'),
(3439, 11, 1098.92, -3095.14, 82.97, 0, ''),
(3439, 12, 1100.94, -3082.60, 82.83, 0, ''),
(3439, 13, 1101.12, -3068.83, 82.53, 0, ''),
(3439, 14, 1096.97, -3051.99, 82.50, 0, ''),
(3439, 15, 1094.06, -3036.79, 82.70, 0, ''),
(3439, 16, 1098.22, -3027.84, 83.79, 0, ''),
(3439, 17, 1109.51, -3015.92, 85.73, 0, ''),
(3439, 18, 1119.87, -3007.21, 87.08, 0, ''),
(3439, 19, 1130.23, -3002.49, 91.27, 5000, ''),
(3439, 20, 1130.23, -3002.49, 91.27, 3000, ''),
(3439, 21, 1130.23, -3002.49, 91.27, 4000, 'SAY_PROGRESS_1'),
(3439, 22, 1129.73, -2985.89, 92.46, 0, ''),
(3439, 23, 1124.10, -2983.29, 92.81, 0, ''),
(3439, 24, 1111.74, -2992.38, 91.59, 0, ''),
(3439, 25, 1111.06, -2976.54, 91.81, 0, ''),
(3439, 26, 1099.91, -2991.17, 91.67, 0, ''),
(3439, 27, 1096.32, -2981.55, 91.73, 8000, 'SAY_PROGRESS_2'),
(3439, 28, 1091.28, -2985.82, 91.74, 5000, 'SAY_PROGRESS_3'),
(3439, 29, 1091.28, -2985.82, 91.74, 0, ''),
(3439, 30, 1091.28, -2985.82, 91.74, 5000, 'SAY_END'),
(3439, 31, 1091.28, -2985.82, 91.74, 180000, '');

DELETE FROM script_waypoint WHERE entry=3849;
INSERT INTO script_waypoint VALUES
(3849, 0, -250.923431, 2116.264160, 81.179, 0, 'SAY_FREE_AD'),
(3849, 1, -255.048538, 2119.392578, 81.179, 0, ''),
(3849, 2, -254.129105, 2123.454346, 81.179, 0, ''),
(3849, 3, -253.897552, 2130.873535, 81.179, 0, ''),
(3849, 4, -249.889435, 2142.307861, 86.972, 0, ''),
(3849, 5, -248.204926, 2144.017090, 87.013, 0, ''),
(3849, 6, -240.552826, 2140.552734, 87.012, 0, ''),
(3849, 7, -237.513916, 2142.066650, 87.012, 0, ''),
(3849, 8, -235.638138, 2149.231689, 90.587, 0, ''),
(3849, 9, -237.188019, 2151.946045, 90.624, 0, ''),
(3849, 10, -241.162064, 2153.649658, 90.624, 0, 'SAY_OPEN_DOOR_AD'),
(3849, 11, -241.129700, 2154.562988, 90.624, 5000, ''),
(3849, 12, -241.129700, 2154.562988, 90.624, 5000, 'SAY_POST1_DOOR_AD'),
(3849, 13, -241.129700, 2154.562988, 90.624, 25000, 'SAY_POST2_DOOR_AD');

DELETE FROM script_waypoint WHERE entry=3850;
INSERT INTO script_waypoint VALUES
(3850, 0, -241.816895, 2122.904053, 81.179, 0, 'SAY_FREE_AS'),
(3850, 1, -247.139297, 2124.886475, 81.179, 0, ''),
(3850, 2, -253.179184, 2127.406738, 81.179, 0, ''),
(3850, 3, -253.897552, 2130.873535, 81.179, 0, ''),
(3850, 4, -249.889435, 2142.307861, 86.972, 0, ''),
(3850, 5, -248.204926, 2144.017090, 87.013, 0, ''),
(3850, 6, -240.552826, 2140.552734, 87.012, 0, ''),
(3850, 7, -237.513916, 2142.066650, 87.012, 0, ''),
(3850, 8, -235.638138, 2149.231689, 90.587, 0, ''),
(3850, 9, -237.188019, 2151.946045, 90.624, 0, ''),
(3850, 10, -241.162064, 2153.649658, 90.624, 0, 'SAY_OPEN_DOOR_AS'),
(3850, 11, -241.129700, 2154.562988, 90.624, 5000, 'cast'),
(3850, 12, -241.129700, 2154.562988, 90.624, 5000, 'SAY_POST_DOOR_AS'),
(3850, 13, -241.129700, 2154.562988, 90.624, 25000, '');

DELETE FROM script_waypoint WHERE entry=6182;
INSERT INTO script_waypoint VALUES
(6182, 0, -11480.684570, 1545.091187, 49.898571, 0, ''),
(6182, 1, -11466.825195, 1530.151733, 50.263611, 0, ''),
(6182, 2, -11465.213867, 1528.343750, 50.954369, 0, 'entrance hut'),
(6182, 3, -11462.990234, 1525.235596, 50.937702, 0, ''),
(6182, 4, -11461.000000, 1526.614014, 50.937702, 5000, 'pick up rifle'),
(6182, 5, -11462.990234, 1525.235596, 50.937702, 0, ''),
(6182, 6, -11465.213867, 1528.343750, 50.954369, 0, ''),
(6182, 7, -11468.353516, 1535.075562, 50.400948, 15000, 'hold, prepare for wave1'),
(6182, 8, -11468.353516, 1535.075562, 50.400948, 15000, 'hold, prepare for wave2'),
(6182, 9, -11468.353516, 1535.075562, 50.400948, 10000, 'hold, prepare for wave3'),
(6182, 10, -11467.898438, 1532.459595, 50.348885, 0, 'we are done'),
(6182, 11, -11466.064453, 1529.855225, 50.209351, 0, ''),
(6182, 12, -11462.990234, 1525.235596, 50.937702, 0, ''),
(6182, 13, -11461.000000, 1526.614014, 50.937702, 5000, 'deliver rifle'),
(6182, 14, -11462.990234, 1525.235596, 50.937702, 0, ''),
(6182, 15, -11465.213867, 1528.343750, 50.954369, 0, ''),
(6182, 16, -11470.260742, 1537.276733, 50.378487, 0, ''),
(6182, 17, -11475.581055, 1548.678833, 50.184380, 0, 'complete quest'),
(6182, 18, -11482.299805, 1557.410034, 48.624519, 0, '');

DELETE FROM script_waypoint WHERE entry=6575;
INSERT INTO script_waypoint VALUES
(6575, 0, 1945.81, -431.54, 16.36, 0, ''),
(6575, 1, 1946.21, -436.41, 16.36, 0, ''),
(6575, 2, 1950.01, -444.11, 14.63, 0, ''),
(6575, 3, 1956.08, -449.34, 13.12, 0, ''),
(6575, 4, 1966.59, -450.55, 11.27, 0, ''),
(6575, 5, 1976.09, -447.51, 11.27, 0, ''),
(6575, 6, 1983.42, -435.85, 11.27, 0, ''),
(6575, 7, 1978.17, -428.81, 11.27, 0, ''),
(6575, 8, 1973.97, -422.08, 9.04, 0, ''),
(6575, 9, 1963.84, -418.90, 6.17, 0, ''),
(6575, 10, 1961.22, -422.74, 6.17, 0, ''),
(6575, 11, 1964.80, -431.26, 6.17, 300000, '');

DELETE FROM script_waypoint WHERE entry=7784;
INSERT INTO script_waypoint VALUES
(7784, 0, -8845.65, -4373.98, 43.87, 5000, 'SAY_START'),
(7784, 1, -8840.79, -4373.73, 44.24, 0, ''),
(7784, 2, -8837.43, -4373.56, 45.60, 0, ''),
(7784, 3, -8832.74, -4373.32, 45.68, 0, ''),
(7784, 4, -8829.37, -4373.14, 44.33, 0, ''),
(7784, 5, -8817.38, -4372.41, 35.58, 0, ''),
(7784, 6, -8803.47, -4371.60, 30.34, 0, ''),
(7784, 7, -8795.10, -4365.61, 26.08, 0, ''), 
(7784, 8, -8766.78, -4367.13, 25.15, 0, ''),
(7784, 9, -8755.63, -4367.54, 24.63, 0, ''), 
(7784, 10, -8754.42, -4365.59, 24.15, 0, ''), 
(7784, 11, -8728.82, -4353.13, 20.90, 0, ''),
(7784, 12, -8706.60, -4356.55, 17.93, 0, ''),
(7784, 13, -8679.00, -4380.23, 12.64, 0, ''),
(7784, 14, -8642.96, -4393.82, 12.52, 0, ''),
(7784, 15, -8611.19, -4399.11, 9.55, 0, ''),
(7784, 16, -8554.87, -4409.32, 13.05, 0, ''),
(7784, 17, -8531.64, -4411.96, 11.20, 0, ''),
(7784, 18, -8510.40, -4414.38, 12.84, 0, ''),
(7784, 19, -8476.92, -4418.34, 9.71, 0, ''),
(7784, 20, -8435.89, -4426.74, 9.67, 0, ''),
(7784, 21, -8381.89, -4446.40, 10.23, 0, ''),
(7784, 22, -8351.15, -4447.79, 9.99, 5000, 'first ambush SAY_AMBUSH'),
(7784, 23, -8324.18, -4445.05, 9.71, 0, ''),
(7784, 24, -8138.94, -4384.78, 10.92, 0, ''),
(7784, 25, -8036.87, -4443.38, 9.65, 0, ''),
(7784, 26, -7780.92, -4761.81, 9.50, 0, ''),
(7784, 27, -7587.67, -4765.01, 8.96, 0, ''),
(7784, 28, -7497.65, -4792.86, 10.01, 0, 'second ambush SAY_AMBUSH'),
(7784, 29, -7391.54, -4774.26, 12.44, 0, ''),
(7784, 30, -7308.42, -4739.87, 12.65, 0, ''),
(7784, 31, -7016.11, -4751.12, 10.06, 0, ''),
(7784, 32, -6985.52, -4777.41, 10.26, 0, ''),
(7784, 33, -6953.02, -4786.00, 6.32, 0, ''),
(7784, 34, -6940.37, -4831.03, 0.67, 10000, 'quest complete SAY_END');

DELETE FROM script_waypoint WHERE entry=7807;
INSERT INTO script_waypoint VALUES
(7807, 0, -4943.74, 1715.74, 62.74, 0, 'SAY_START'),
(7807, 1, -4944.93, 1706.66, 63.16, 0, ''),
(7807, 2, -4942.82, 1690.22, 64.25, 0, ''),
(7807, 3, -4946.47, 1669.62, 63.84, 0, ''),
(7807, 4, -4955.93, 1651.88, 63.00, 0, ''),
(7807, 5, -4967.58, 1643.86, 64.31, 0, ''),
(7807, 6, -4978.12, 1607.90, 64.30, 0, ''),
(7807, 7, -4975.38, 1596.16, 64.70, 0, ''),
(7807, 8, -4972.82, 1581.89, 61.75, 0, ''),
(7807, 9, -4958.65, 1581.05, 61.81, 0, ''),
(7807, 10, -4936.72, 1594.89, 65.96, 0, ''),
(7807, 11, -4885.69, 1598.10, 67.45, 4000, 'first ambush SAY_AMBUSH'),
(7807, 12, -4874.20, 1601.73, 68.54, 0, ''),
(7807, 13, -4816.64, 1594.47, 78.20, 0, ''),
(7807, 14, -4802.20, 1571.92, 87.01, 0, ''),
(7807, 15, -4746.40, 1576.11, 84.59, 0, ''),
(7807, 16, -4739.72, 1707.16, 94.04, 0, ''),
(7807, 17, -4674.03, 1840.44, 89.17, 0, ''),
(7807, 18, -4667.94, 1864.11, 85.18, 0, ''),
(7807, 19, -4668.08, 1886.39, 81.14, 0, ''),
(7807, 20, -4679.43, 1932.32, 73.76, 0, ''),
(7807, 21, -4674.17, 1946.66, 70.83, 5000, 'second ambush SAY_AMBUSH'),
(7807, 22, -4643.94, 1967.45, 65.27, 0, ''),
(7807, 23, -4595.60, 2010.75, 52.10, 0, ''),
(7807, 24, -4562.65, 2029.28, 45.41, 0, ''),
(7807, 25, -4538.56, 2032.65, 45.28, 0, ''),
(7807, 26, -4531.96, 2034.15, 48.34, 0, ''),
(7807, 27, -4507.75, 2039.32, 51.57, 0, ''),
(7807, 28, -4482.74, 2045.67, 48.15, 0, ''),
(7807, 29, -4460.87, 2051.54, 45.55, 0, ''),
(7807, 30, -4449.97, 2060.03, 45.51, 10000, 'third ambush SAY_AMBUSH'),
(7807, 31, -4448.99, 2079.05, 44.64, 0, ''),
(7807, 32, -4436.64, 2134.48, 28.83, 0, ''),
(7807, 33, -4429.25, 2170.20, 15.44, 0, ''),
(7807, 34, -4424.83, 2186.11, 11.48, 0, ''),
(7807, 35, -4416.71, 2209.76, 7.36, 0, ''),
(7807, 36, -4405.25, 2231.77, 5.94, 0, ''),
(7807, 37, -4377.61, 2265.45, 06.71, 15000, 'complete quest SAY_END');

DELETE FROM script_waypoint WHERE entry=9503;
INSERT INTO script_waypoint VALUES
(9503, 0, 883.294861, -188.926300, -43.703655, 0,''),
(9503, 1, 872.763550, -185.605621, -43.703655, 5000,'b1'),
(9503, 2, 867.923401, -188.006393, -43.703655, 5000,'b2'),
(9503, 3, 863.295898, -190.795212, -43.703655, 5000,'b3'),
(9503, 4, 856.139587, -194.652756, -43.703655, 5000,'b4'),
(9503, 5, 851.878906, -196.928131, -43.703655, 15000,'b5'),
(9503, 6, 877.035217, -187.048080, -43.703655, 0,''),
(9503, 7, 891.198000, -197.924000, -43.620400, 0,'home');

DELETE FROM script_waypoint WHERE entry=10096;
INSERT INTO script_waypoint VALUES
(10096, 0, 604.802673, -191.081985, -54.058590, 0,'ring'),
(10096, 1, 604.072998, -222.106918, -52.743759, 0,'first gate'),
(10096, 2, 621.400391, -214.499054, -52.814453, 0,'hiding in corner'),
(10096, 3, 601.300781, -198.556992, -53.950256, 0,'ring'),
(10096, 4, 631.818359, -180.548126, -52.654770, 0,'second gate'),
(10096, 5, 627.390381, -201.075974, -52.692917, 0,'hiding in corner');

DELETE FROM script_waypoint WHERE entry=12423;
INSERT INTO script_waypoint VALUES
(12423, 0, -9509.72, -147.03, 58.74, 0, ''),
(12423, 1, -9517.07, -172.82, 58.66, 0, '');

DELETE FROM script_waypoint WHERE entry=12427;
INSERT INTO script_waypoint VALUES
(12427, 0, -5689.20, -456.44, 391.08, 0, ''),
(12427, 1, -5700.37, -450.77, 393.19, 0, '');

DELETE FROM script_waypoint WHERE entry=12428;
INSERT INTO script_waypoint VALUES
(12428, 0, 2454.09, 361.26, 31.51, 0, ''),
(12428, 1, 2472.03, 378.08, 30.98, 0, '');

DELETE FROM script_waypoint WHERE entry=12429;
INSERT INTO script_waypoint VALUES
(12429, 0, 9654.19, 909.58, 1272.11, 0, ''),
(12429, 1, 9642.53, 908.11, 1269.10, 0, '');

DELETE FROM script_waypoint WHERE entry=12430;
INSERT INTO script_waypoint VALUES
(12430, 0, 161.65, -4779.34, 14.64, 0, ''),
(12430, 1, 140.71, -4813.56, 17.04, 0, '');

DELETE FROM script_waypoint WHERE entry=12818;
INSERT INTO script_waypoint VALUES
(12818, 0, 3347.250089, -694.700989, 159.925995, 0, ''),
(12818, 1, 3341.527039, -694.725891, 161.124542, 4000, ''),
(12818, 2, 3338.351074, -686.088138, 163.444000, 0, ''),
(12818, 3, 3352.744873, -677.721741, 162.316269, 0, ''),
(12818, 4, 3370.291016, -669.366943, 160.751358, 0, ''),
(12818, 5, 3381.479492, -659.449097, 162.545303, 0, ''),
(12818, 6, 3389.554199, -648.500000, 163.651825, 0, ''),
(12818, 7, 3396.645020, -641.508911, 164.216019, 0, ''),
(12818, 8, 3410.498535, -634.299622, 165.773453, 0, ''),
(12818, 9, 3418.461426, -631.791992, 166.477615, 0, ''),
(12818, 10, 3429.500000, -631.588745, 166.921265, 0, ''),
(12818, 11,3434.950195, -629.245483, 168.333969, 0, ''),
(12818, 12,3438.927979, -618.503235, 171.503143, 0, ''),
(12818, 13,3444.217529, -609.293640, 173.077972, 1000, 'Ambush 1'),
(12818, 14,3460.505127, -593.794189, 174.342255, 0, ''),
(12818, 15,3480.283203, -578.210327, 176.652313, 0, ''),
(12818, 16,3492.912842, -562.335449, 181.396301, 0, ''),
(12818, 17,3495.230957, -550.977600, 184.652267, 0, ''),
(12818, 18,3496.247070, -529.194214, 188.172028, 0, ''),
(12818, 19,3497.619385, -510.411499, 188.345322, 1000, 'Ambush 2'),
(12818, 20,3498.498047, -497.787506, 185.806274, 0, ''),
(12818, 21,3484.218750, -489.717529, 182.389862, 4000, '');

DELETE FROM script_waypoint WHERE entry=12858;
INSERT INTO script_waypoint VALUES
(12858, 0, 1782.63, -2241.11, 109.73, 5000, ''),
(12858, 1, 1788.88, -2240.17, 111.71, 0, ''),
(12858, 2, 1797.49, -2238.11, 112.31, 0, ''),
(12858, 3, 1803.83, -2232.77, 111.22, 0, ''),
(12858, 4, 1806.65, -2217.83, 107.36, 0, ''),
(12858, 5, 1811.81, -2208.01, 107.45, 0, ''),
(12858, 6, 1820.85, -2190.82, 100.49, 0, ''),
(12858, 7, 1829.60, -2177.49, 96.44, 0, ''),
(12858, 8, 1837.98, -2164.19, 96.71, 0, 'prepare'),
(12858, 9, 1839.99, -2149.29, 96.78, 0, ''),
(12858, 10, 1835.14, -2134.98, 96.80, 0, ''),
(12858, 11, 1823.57, -2118.27, 97.43, 0, ''),
(12858, 12, 1814.99, -2110.35, 98.38, 0, ''),
(12858, 13, 1806.60, -2103.09, 99.19, 0, ''),
(12858, 14, 1798.27, -2095.77, 100.04, 0, ''),
(12858, 15, 1783.59, -2079.92, 100.81, 0, ''),
(12858, 16, 1776.79, -2069.48, 101.77, 0, ''),
(12858, 17, 1776.82, -2054.59, 109.82, 0, ''),
(12858, 18, 1776.88, -2047.56, 109.83, 0, ''),
(12858, 19, 1776.86, -2036.55, 109.83, 0, ''),
(12858, 20, 1776.90, -2024.56, 109.83, 0, 'win'),
(12858, 21, 1776.87, -2028.31, 109.83,60000, 'stay'),
(12858, 22, 1776.90, -2028.30, 109.83, 0, '');

DELETE FROM script_waypoint WHERE entry=15420;
INSERT INTO script_waypoint VALUES
(15420, 0, 9294.78, -6682.51, 22.42, 0, ''),
(15420, 1, 9298.27, -6667.99, 22.42, 0, ''),
(15420, 2, 9309.63, -6658.84, 22.43, 0, ''),
(15420, 3, 9304.43, -6649.31, 26.46, 0, ''),
(15420, 4, 9298.83, -6648.00, 28.61, 0, ''),
(15420, 5, 9291.06, -6653.46, 31.83,2500, ''),
(15420, 6, 9289.08, -6660.17, 31.85,5000, ''),
(15420, 7, 9291.06, -6653.46, 31.83, 0, '');

DELETE FROM script_waypoint WHERE entry=16295;
INSERT INTO script_waypoint VALUES
(16295, 0, 7545.070000, -7359.870000, 162.354000, 4000, 'SAY_START'),
(16295, 1, 7550.048340, -7362.237793, 162.235657, 0, ''),
(16295, 2, 7566.976074, -7364.315430, 161.738770, 0, ''),
(16295, 3, 7578.830566, -7361.677734, 161.738770, 0, ''),
(16295, 4, 7590.969238, -7359.053711, 162.257660, 0, ''),
(16295, 5, 7598.354004, -7362.815430, 162.256683, 4000, 'SAY_PROGRESS_1'),
(16295, 6, 7605.861328, -7380.424316, 161.937073, 0, ''),
(16295, 7, 7605.295410, -7387.382813, 157.253998, 0, ''),
(16295, 8, 7606.131836, -7393.893555, 156.941925, 0, ''),
(16295, 9, 7615.207520, -7400.187012, 157.142639, 0, ''),
(16295, 10, 7618.956543, -7402.652832, 158.202042, 0, ''),
(16295, 11, 7636.850586, -7401.756836, 162.144791, 0, 'SAY_PROGRESS_2'),
(16295, 12, 7637.058105, -7404.944824, 162.206970, 4000, ''),
(16295, 13, 7636.910645, -7412.585449, 162.366425, 0, ''),
(16295, 14, 7637.607910, -7425.591797, 162.630661, 0, ''),
(16295, 15, 7637.816895, -7459.057129, 163.302704, 0, ''),
(16295, 16, 7638.859863, -7470.902344, 162.517059, 0, ''),
(16295, 17, 7641.395996, -7488.217285, 157.381287, 0, ''),
(16295, 18, 7634.455566, -7505.451660, 154.682159, 0, 'SAY_PROGRESS_3'),
(16295, 19, 7631.906738, -7516.948730, 153.597382, 0, ''),
(16295, 20, 7622.231445, -7537.037598, 151.587112, 0, ''),
(16295, 21, 7610.921875, -7550.670410, 149.639374, 0, ''),
(16295, 22, 7598.229004, -7562.551758, 145.953888, 0, ''),
(16295, 23, 7588.509277, -7577.755371, 148.294479, 0, ''),
(16295, 24, 7567.339355, -7608.456055, 146.006485, 0, ''),
(16295, 25, 7562.547852, -7617.417969, 148.097504, 0, ''),
(16295, 26, 7561.508789, -7645.064453, 151.245163, 0, ''),
(16295, 27, 7563.337402, -7654.652344, 151.227158, 0, ''),
(16295, 28, 7565.533691, -7658.296387, 151.248886, 0, ''),
(16295, 39, 7571.155762, -7659.118652, 151.244568, 0, ''),
(16295, 30, 7579.119629, -7662.213867, 151.651505, 0, 'quest complete'),
(16295, 31, 7603.768066, -7667.000488, 153.997726, 0, ''),
(16295, 32, 7603.768066, -7667.000488, 153.997726, 4000, 'SAY_END_1'),
(16295, 33, 7603.768066, -7667.000488, 153.997726, 8000, 'SAY_END_2'),
(16295, 34, 7603.768066, -7667.000488, 153.997726, 0, '');

DELETE FROM script_waypoint WHERE entry=16993;
INSERT INTO script_waypoint VALUES
(16993, 0, -1137.72, 4272.10, 14.04, 5000, ''),
(16993, 1, -1141.34, 4232.42, 14.63, 0, ''),
(16993, 2, -1133.47, 4220.88, 11.78, 0, ''),
(16993, 3, -1126.18, 4213.26, 13.51, 0, ''),
(16993, 4, -1100.12, 4204.32, 16.41, 0, ''),
(16993, 5, -1063.68, 4197.92, 15.51, 0, ''),
(16993, 6, -1027.28, 4194.36, 15.52, 0, ''),
(16993, 7, -995.68, 4189.59, 19.84, 0, ''),
(16993, 8, -970.90, 4188.60, 24.61, 0, ''),
(16993, 9, -961.93, 4193.34, 26.11, 15000, 'Summon 1'),
(16993, 10, -935.52, 4210.99, 31.98, 0, ''),
(16993, 11, -913.42, 4218.27, 37.29, 0, ''),
(16993, 12, -896.53, 4207.73, 43.23, 0, ''),
(16993, 13, -868.49, 4194.77, 46.75, 30000, 'Kneel and Rest Here'),
(16993, 14, -852.83, 4198.29, 47.28, 15000, 'Summon 2'),
(16993, 15, -819.85, 4200.50, 46.37, 0, ''),
(16993, 16, -791.92, 4201.96, 44.19, 0, ''),
(16993, 17, -774.42, 4202.46, 47.41, 0, ''),
(16993, 18, -762.90, 4202.17, 48.81, 0, ''),
(16993, 19, -728.25, 4195.35, 50.68, 0, ''),
(16993, 20, -713.58, 4192.07, 53.98, 0, ''),
(16993, 21, -703.09, 4189.74, 56.96, 0, ''),
(16993, 22, -693.70, 4185.43, 57.06, 0, ''),
(16993, 23, -686.38, 4159.81, 60.26, 0, ''),
(16993, 24, -679.88, 4147.04, 64.20, 0, ''),
(16993, 25, -656.74, 4147.72, 64.11, 0, ''),
(16993, 26, -652.22, 4137.50, 64.58, 0, ''),
(16993, 27, -649.99, 4136.38, 64.63, 30000, 'Quest Credit');

DELETE FROM script_waypoint WHERE entry=17312;
INSERT INTO script_waypoint VALUES
(17312, 0, -4784.532227, -11051.060547, 3.484263, 0, ''),
(17312, 1, -4805.509277, -11037.293945, 3.043942, 0, ''),
(17312, 2, -4827.826172, -11034.398438, 1.741959, 0, ''),
(17312, 3, -4852.630859, -11033.695313, 2.208656, 0, ''),
(17312, 4, -4876.791992, -11034.517578, 3.175228, 0, ''),
(17312, 5, -4895.486816, -11038.306641, 9.390890, 0, ''),
(17312, 6, -4915.464844, -11048.402344, 12.369793, 0, ''),
(17312, 7, -4937.288086, -11067.041992, 13.857983, 0, ''),
(17312, 8, -4966.577637, -11067.507813, 15.754786, 0, ''),
(17312, 9, -4993.799805, -11056.544922, 19.175295, 0, ''),
(17312, 10, -5017.836426, -11052.569336, 22.476587, 0, ''),
(17312, 11, -5039.706543, -11058.459961, 25.831593, 0, ''),
(17312, 12, -5057.289063, -11045.474609, 26.972496, 0, ''),
(17312, 13, -5078.828125, -11037.601563, 29.053417, 0, ''),
(17312, 14, -5104.158691, -11039.195313, 29.440195, 0, ''),
(17312, 15, -5120.780273, -11039.518555, 30.142139, 0, ''),
(17312, 16, -5140.833008, -11039.810547, 28.788074, 0, ''),
(17312, 17, -5161.201660, -11040.050781, 27.879545, 4000, ''),
(17312, 18, -5171.842285, -11046.803711, 27.183821, 0, ''),
(17312, 19, -5185.995117, -11056.359375, 20.234867, 0, ''),
(17312, 20, -5198.485840, -11065.065430, 18.872593, 0, ''),
(17312, 21, -5214.062500, -11074.653320, 19.215731, 0, ''),
(17312, 22, -5220.157227, -11088.377930, 19.818476, 0, ''),
(17312, 23, -5233.652832, -11098.846680, 18.349432, 0, ''),
(17312, 24, -5250.163086, -11111.653320, 16.438959, 0, ''),
(17312, 25, -5268.194336, -11125.639648, 12.668313, 0, ''),
(17312, 26, -5286.270508, -11130.669922, 6.912246, 0, ''),
(17312, 27, -5317.449707, -11137.392578, 4.963446, 0, ''),
(17312, 28, -5334.854492, -11154.384766, 6.742664, 0, ''),
(17312, 29, -5353.874512, -11171.595703, 6.903912, 20000, ''),
(17312, 30, -5354.240000, -11171.940000, 6.890000, 0, '');

DELETE FROM script_waypoint WHERE entry=17876;
INSERT INTO script_waypoint VALUES
(17876, 0, 2230.91, 118.765, 82.2947,5000, ''),
(17876, 1, 2230.33, 114.980, 82.2946, 0, ''),
(17876, 2, 2233.36, 111.057, 82.2996, 0, ''),
(17876, 3, 2231.17, 108.486, 82.6624, 0, ''),
(17876, 4, 2220.22, 114.605, 89.4264, 0, ''),
(17876, 5, 2215.23, 115.990, 89.4549, 0, ''),
(17876, 6, 2210.00, 106.849, 89.4549, 0, ''),
(17876, 7, 2205.66, 105.234, 89.4549, 0, ''),
(17876, 8, 2192.26, 112.618, 89.4549, 0, 'spawn armorer'),
(17876, 9, 2181.28, 118.612, 89.4549,8000, 'get weapon'),
(17876, 10, 2181.62, 120.385, 89.4549,5000, 'get armor'),
(17876, 11, 2189.44, 113.922, 89.4549, 0, ''),
(17876, 12, 2195.63, 110.584, 89.4549, 0, ''),
(17876, 13, 2201.09, 115.115, 89.4549, 0, ''),
(17876, 14, 2204.34, 121.036, 89.4355, 0, ''),
(17876, 15, 2208.66, 129.127, 87.9560, 0, 'first ambush'),
(17876, 16, 2193.09, 137.940, 88.2164, 0, ''),
(17876, 17, 2173.39, 149.064, 87.9227, 0, ''),
(17876, 18, 2164.25, 137.965, 85.0595, 0, ''),
(17876, 19, 2149.31, 125.645, 77.0858, 0, ''),
(17876, 20, 2142.78, 127.173, 75.5954, 0, ''),
(17876, 21, 2139.28, 133.952, 73.6386, 0, 'second ambush'),
(17876, 22, 2139.54, 155.235, 67.1269, 0, ''),
(17876, 23, 2145.38, 167.551, 64.8974, 0, ''),
(17876, 24, 2134.28, 175.304, 67.9446, 0, ''),
(17876, 25, 2118.08, 187.387, 68.8141, 0, ''),
(17876, 26, 2105.88, 195.461, 65.1854, 0, 'third ambush'),
(17876, 27, 2096.77, 196.939, 65.2117, 0, ''),
(17876, 28, 2083.90, 209.395, 64.8736, 0, ''),
(17876, 29, 2067.84, 224.376, 64.8022,30000, 'meeting scarloc'),
(17876, 30, 2055.40, 242.90, 63.3418, 0, 'after skarloc'),
(17876, 31, 2039.20, 266.460, 63.0182,10000, 'mount up'),
(17876, 32, 2011.77, 278.478, 65.3388, 0, ''),
(17876, 33, 2005.08, 289.676, 66.1179, 0, ''),
(17876, 34, 2033.11, 337.450, 66.0948, 0, ''),
(17876, 35, 2070.30, 416.208, 66.0893, 0, ''),
(17876, 36, 2086.76, 469.768, 65.9182, 0, ''),
(17876, 37, 2101.70, 497.955, 61.7881, 0, 'road ambush'),
(17876, 38, 2133.39, 530.933, 55.3700,5000, ''),
(17876, 39, 2157.91, 559.635, 48.5157, 0, ''),
(17876, 40, 2167.34, 586.191, 42.4394, 0, ''),
(17876, 41, 2174.17, 637.643, 33.9002, 0, ''),
(17876, 42, 2179.31, 656.053, 34.723, 0, ''),
(17876, 43, 2183.65, 670.941, 34.0318, 0, ''),
(17876, 44, 2201.50, 668.616, 36.1236, 0, ''),
(17876, 45, 2221.56, 652.747, 36.6153, 0, ''),
(17876, 46, 2238.97, 640.125, 37.2214, 0, ''),
(17876, 47, 2251.17, 620.574, 40.1473, 0, ''),
(17876, 48, 2261.98, 595.303, 41.4117, 0, ''),
(17876, 49, 2278.67, 560.172, 38.9090, 0, ''),
(17876, 50, 2336.72, 528.327, 40.9369, 0, ''),
(17876, 51, 2381.04, 519.612, 37.7312, 0, ''),
(17876, 52, 2412.20, 515.425, 39.2068, 0, ''),
(17876, 53, 2452.39, 516.174, 42.9387, 0, ''),
(17876, 54, 2467.38, 539.389, 47.4992, 0, ''),
(17876, 55, 2470.70, 554.333, 46.6668, 0, ''),
(17876, 56, 2478.07, 575.321, 55.4549, 0, ''),
(17876, 57, 2480.00, 585.408, 56.6921, 0, ''),
(17876, 58, 2482.67, 608.817, 55.6643, 0, ''),
(17876, 59, 2485.62, 626.061, 58.0132, 2000, 'dismount'),
(17876, 60, 2486.91, 626.356, 58.0761, 0, 'scare horse'),
(17876, 61, 2488.58, 660.940, 57.3913, 0, ''),
(17876, 62, 2502.56, 686.059, 55.6252, 0, ''),
(17876, 63, 2502.08, 694.360, 55.5083, 0, ''),
(17876, 64, 2491.46, 694.321, 55.7163, 0, ''),
(17876, 65, 2491.10, 703.300, 55.7630, 0, ''),
(17876, 66, 2485.64, 702.992, 55.7917, 0, ''),
(17876, 67, 2479.10, 695.291, 55.7901, 10000, ''),
(17876, 68, 2476.75, 693.689, 55.7960, 0, 'spawn mobs'),
(17876, 69, 2475.39, 695.983, 55.8146, 0, ''),
(17876, 70, 2477.75, 694.473, 55.7945, 0, ''),
(17876, 71, 2481.27, 697.747, 55.7910, 0, 'mobs in doorway'),
(17876, 72, 2486.31, 703.131, 55.7861, 5000, ''),
(17876, 73, 2490.76, 703.511, 55.7662, 0, ''),
(17876, 74, 2491.30, 694.792, 55.7195, 0, ''),
(17876, 75, 2518.69, 693.876, 55.1383, 0, ''),
(17876, 76, 2531.33, 681.914, 55.1383, 0, ''),
(17876, 77, 2568.25, 682.654, 55.1778, 0, ''),
(17876, 78, 2589.61, 689.981, 55.1421, 0, ''),
(17876, 79, 2634.74, 679.833, 54.6613, 0, ''),
(17876, 80, 2630.41, 661.464, 54.2761, 0, ''),
(17876, 81, 2629.00, 656.982, 56.0651, 0, ''),
(17876, 82, 2620.84, 633.007, 56.0300, 3000, 'stop in church'),
(17876, 83, 2622.99, 639.178, 56.0300, 0, 'summon'),
(17876, 84, 2628.73, 656.693, 56.0610, 5000, ''),
(17876, 85, 2630.34, 661.135, 54.2738, 0, ''),
(17876, 86, 2635.38, 672.243, 54.4508, 0, ''),
(17876, 87, 2644.13, 668.158, 55.3797, 0, ''),
(17876, 88, 2646.82, 666.740, 56.9898, 0, ''),
(17876, 89, 2658.22, 665.432, 57.1725, 0, ''),
(17876, 90, 2661.88, 674.849, 57.1725, 0, ''),
(17876, 91, 2656.23, 677.208, 57.1725, 0, ''),
(17876, 92, 2652.28, 670.270, 61.9353, 0, ''),
(17876, 93, 2650.79, 664.290, 61.9302, 0, 'summon inn'),
(17876, 94, 2658.19, 660.454, 61.9320, 5000, ''),
(17876, 95, 2660.57, 659.173, 61.9370, 0, 'speak with Taretha'),
(17876, 96, 2658.19, 660.454, 61.9320, 5000, 'epoch calls'),
(17876, 97, 2659.84, 659.482, 61.9361, 5000, 'taretha "dies"'),
(17876, 98, 2654.28, 662.722, 61.9313, 0, ''),
(17876, 99, 2652.37, 670.561, 61.9368, 0, ''),
(17876, 100, 2656.05, 676.761, 57.1727, 0, ''),
(17876, 101, 2658.49, 677.166, 57.1727, 0, ''),
(17876, 102, 2659.28, 667.117, 57.1727, 0, ''),
(17876, 103, 2649.71, 665.387, 57.1727, 0, ''),
(17876, 104, 2634.79, 672.964, 54.4577, 0, 'outside inn'),
(17876, 105, 2635.06, 673.892, 54.4713, 30000, 'getting ready'),
(17876, 106, 2634.79, 672.964, 54.4577, 60000, 'when all dead and meet Taretha'),
(17876, 107, 2631.72, 665.629, 54.2923, 0, 'run off'),
(17876, 108, 2647.40, 640.530, 55.7634, 0, '');

DELETE FROM script_waypoint WHERE entry=18887;
INSERT INTO script_waypoint VALUES
(18887, 0, 2650.06, 665.473, 61.9305, 0, ''),
(18887, 1, 2652.44, 670.761, 61.9370, 0, ''),
(18887, 2, 2655.96, 676.913, 57.1725, 0, ''),
(18887, 3, 2659.40, 677.317, 57.1725, 0, ''),
(18887, 4, 2651.75, 664.482, 57.1725, 0, ''),
(18887, 5, 2647.49, 666.595, 57.0824, 0, ''),
(18887, 6, 2644.37, 668.167, 55.4182, 0, ''),
(18887, 7, 2640.96, 669.890, 54.7567, 60000, '');

DELETE FROM script_waypoint WHERE entry=19685;
INSERT INTO script_waypoint VALUES
(19685, 0, -1863.369019, 5419.517090, -10.463668, 5000, ''),
(19685, 1, -1861.749023, 5416.465332, -10.508068, 0, ''),
(19685, 2, -1857.036133, 5410.966309, -12.428039, 0, ''),
(19685, 3, -1831.539185, 5365.472168, -12.428039, 0, ''),
(19685, 4, -1813.416504, 5333.776855, -12.428039, 0, ''),
(19685, 5, -1800.354370, 5313.290039, -12.428039, 0, ''),
(19685, 6, -1775.624878, 5268.786133, -38.809181, 0, ''),
(19685, 7, -1770.147339, 5259.268066, -38.829231, 0, ''),
(19685, 8, -1762.814209, 5261.098145, -38.848995, 0, ''),
(19685, 9, -1740.110474, 5268.858398, -40.208965, 0, ''),
(19685, 10, -1725.837402, 5270.936035, -40.208965, 0, ''),
(19685, 11, -1701.580322, 5290.323242, -40.209187, 0, ''),
(19685, 12, -1682.877808, 5291.406738, -34.429646, 0, ''),
(19685, 13, -1670.101685, 5291.201172, -32.786007, 0, ''),
(19685, 14, -1656.666870, 5294.333496, -37.862648, 0, ''),
(19685, 15, -1652.035767, 5295.413086, -40.245499, 0, ''),
(19685, 16, -1620.860596, 5300.133301, -40.208992, 0, ''),
(19685, 17, -1607.630981, 5293.983398, -38.577045, 5000, ''),
(19685, 18, -1607.630981, 5293.983398, -38.577045, 5000, ''),
(19685, 19, -1607.630981, 5293.983398, -38.577045, 5000, ''),
(19685, 20, -1622.140869, 5301.955566, -40.208897, 0, ''),
(19685, 21, -1621.131836, 5333.112793, -40.208897, 0, ''),
(19685, 22, -1637.598999, 5342.134277, -40.208790, 0, ''),
(19685, 23, -1648.521606, 5352.309570, -47.496170, 0, ''),
(19685, 24, -1654.606934, 5357.419434, -45.870892, 0, ''),
(19685, 25, -1633.670044, 5422.067871, -42.835541, 0, ''),
(19685, 26, -1656.567505, 5426.236328, -40.405815, 0, ''),
(19685, 27, -1664.932373, 5425.686523, -38.846405, 0, ''),
(19685, 28, -1681.406006, 5425.871094, -38.810928, 0, ''),
(19685, 29, -1730.875977, 5427.413574, -12.427910, 0, ''),
(19685, 30, -1743.509521, 5369.599121, -12.427910, 0, ''),
(19685, 31, -1877.217041, 5303.710449, -12.427989, 0, ''),
(19685, 32, -1890.371216, 5289.273438, -12.428268, 0, ''),
(19685, 33, -1905.505737, 5266.534668, 2.630672, 0, ''),
(19685, 34, -1909.381348, 5273.008301, 1.663714, 10000, ''),
(19685, 35, -1909.381348, 5273.008301, 1.663714, 12000, ''),
(19685, 36, -1909.381348, 5273.008301, 1.663714, 8000, ''),
(19685, 37, -1909.381348, 5273.008301, 1.663714, 15000, ''),
(19685, 38, -1927.561401, 5275.324707, 1.984987, 0, ''),
(19685, 39, -1927.385498, 5300.879883, -12.427236, 0, ''),
(19685, 40, -1921.063965, 5314.318359, -12.427236, 0, ''),
(19685, 41, -1965.425415, 5379.298828, -12.427236, 0, ''),
(19685, 42, -1981.233154, 5450.743652, -12.427236, 0, ''),
(19685, 43, -1958.022461, 5455.904297, 0.487659, 0, ''),
(19685, 44, -1951.991455, 5463.580566, 0.874490, 10000, ''),
(19685, 45, -1951.991455, 5463.580566, 0.874490, 12000, ''),
(19685, 46, -1968.730225, 5481.752930, -12.427846, 0, ''),
(19685, 47, -1881.839844, 5554.040039, -12.427846, 0, ''),
(19685, 48, -1841.566650, 5545.965332, -12.427846, 0, ''),
(19685, 49, -1837.658325, 5523.780273, 0.558756, 0, ''),
(19685, 50, -1831.321777, 5534.821777, 1.221819, 6000, ''),
(19685, 51, -1831.321777, 5534.821777, 1.221819, 8000, ''),
(19685, 52, -1831.321777, 5534.821777, 1.221819, 5000, ''),
(19685, 53, -1850.060669, 5472.610840, 0.857320, 6000, ''),
(19685, 54, -1850.060669, 5472.610840, 0.857320, 8000, ''),
(19685, 55, -1850.060669, 5472.610840, 0.857320, 9000, ''),
(19685, 56, -1850.060669, 5472.610840, 0.857320, 9000, ''),
(19685, 57, -1850.060669, 5472.610840, 0.857320, 4000, '');

DELETE FROM script_waypoint WHERE entry=20129;
INSERT INTO script_waypoint VALUES
(20129, 0, -8374.93,-4250.21, -204.38,5000, ''),
(20129, 1, -8374.93,-4250.21, -204.38,16000, ''),
(20129, 2, -8374.93,-4250.21, -204.38,10000, ''),
(20129, 3, -8374.93,-4250.21, -204.38,2000, ''),
(20129, 4, -8439.40,-4180.05, -209.25, 0, ''),
(20129, 5, -8437.82,-4120.84, -208.59,10000, ''),
(20129, 6, -8437.82,-4120.84, -208.59,16000, ''),
(20129, 7, -8437.82,-4120.84, -208.59,13000, ''),
(20129, 8, -8437.82,-4120.84, -208.59,18000, ''),
(20129, 9, -8437.82,-4120.84, -208.59,15000, ''),
(20129, 10, -8437.82,-4120.84, -208.59,2000, ''),
(20129, 11, -8467.26,-4198.63, -214.21, 0, ''),
(20129, 12, -8667.76,-4252.13, -209.56, 0, ''),
(20129, 13, -8703.71,-4234.58, -209.5,14000, ''),
(20129, 14, -8703.71,-4234.58, -209.5,2000, ''),
(20129, 15, -8642.81,-4304.37, -209.57, 0, ''),
(20129, 16, -8649.06,-4394.36, -208.46,6000, ''),
(20129, 17, -8649.06,-4394.36, -208.46,18000, ''),
(20129, 18, -8649.06,-4394.36, -208.46,2000, ''),
(20129, 19, -8468.72,-4437.67, -215.45, 0, ''),
(20129, 20, -8427.54,-4426, -211.13, 0, ''),
(20129, 21, -8364.83,-4393.32, -205.91, 0, ''),
(20129, 22, -8304.54,-4357.2, -208.2,18000, ''),
(20129, 23, -8304.54,-4357.2, -208.2,2000, ''),
(20129, 24, -8375.42,-4250.41, -205.14,5000, ''),
(20129, 25, -8375.42,-4250.41, -205.14,5000, '');

DELETE FROM script_waypoint WHERE entry=22916;
INSERT INTO script_waypoint VALUES
(22916, 0, 7461.49, -3121.06, 438.210, 7000, 'SAY_START'),
(22916, 1, 7465.26, -3115.50, 439.315, 0, ''),
(22916, 2, 7470.03, -3109.29, 439.333, 0, ''),
(22916, 3, 7473.77, -3104.65, 442.366, 0, ''),
(22916, 4, 7478.67, -3098.55, 443.551, 0, ''),
(22916, 5, 7482.78, -3093.35, 441.883, 0, ''),
(22916, 6, 7486.23, -3089.19, 439.698, 0, ''),
(22916, 7, 7484.64, -3084.55, 439.566, 0, ''),
(22916, 8, 7477.09, -3084.43, 442.132, 0, ''),
(22916, 9, 7470.66, -3084.86, 443.194, 0, ''),
(22916, 10, 7456.51, -3085.83, 438.863, 0, ''),
(22916, 11, 7446.00, -3085.59, 438.210, 0, ''),
(22916, 12, 7444.60, -3084.10, 438.323, 0, ''),
(22916, 13, 7445.58, -3080.92, 439.374, 5000, 'collect 1'),
(22916, 14, 7446.18, -3085.36, 438.210, 5000, 'SAY_RELIC1'),
(22916, 15, 7453.90, -3086.69, 439.454, 0, ''),
(22916, 16, 7459.41, -3085.50, 439.158, 0, ''),
(22916, 17, 7465.90, -3085.01, 442.329, 0, ''),
(22916, 18, 7472.80, -3084.81, 443.085, 0, ''),
(22916, 19, 7480.58, -3084.56, 440.642, 0, ''),
(22916, 20, 7484.59, -3084.71, 439.568, 0, ''),
(22916, 21, 7491.81, -3090.55, 440.052, 0, ''),
(22916, 22, 7497.13, -3095.34, 437.505, 0, ''),
(22916, 23, 7496.61, -3113.62, 434.554, 0, ''),
(22916, 24, 7501.79, -3123.79, 435.347, 0, ''),
(22916, 25, 7506.60, -3130.78, 434.179, 0, ''),
(22916, 26, 7504.53, -3133.46, 435.579, 5000, 'collect 2'),
(22916, 27, 7505.20, -3130.03, 434.151, 15000, 'SAY_RELIC2'),
(22916, 28, 7502.04, -3124.44, 435.298, 0, ''),
(22916, 29, 7495.90, -3113.93, 434.538, 0, ''),
(22916, 30, 7488.79, -3111.10, 434.310, 0, ''),
(22916, 31, 7477.81, -3105.37, 430.541, 0, 'summon'),
(22916, 32, 7471.49, -3092.55, 429.006, 0, ''),
(22916, 33, 7472.35, -3062.72, 428.341, 0, ''),
(22916, 34, 7472.26, -3054.92, 427.150, 0, ''),
(22916, 35, 7475.03, -3053.39, 428.672, 5000, 'collect 3'),
(22916, 36, 7472.40, -3057.21, 426.870, 5000, 'SAY_RELIC3'),
(22916, 37, 7472.39, -3062.86, 428.301, 0, ''),
(22916, 38, 7470.24, -3087.69, 429.045, 0, ''),
(22916, 39, 7475.24, -3099.03, 429.917, 0, ''),
(22916, 40, 7484.24, -3109.85, 432.719, 0, ''),
(22916, 41, 7489.10, -3111.31, 434.400, 0, ''),
(22916, 42, 7497.02, -3108.54, 434.798, 0, ''),
(22916, 43, 7497.75, -3097.70, 437.031, 0, ''),
(22916, 44, 7492.53, -3090.12, 440.041, 0, ''),
(22916, 45, 7490.43, -3085.44, 439.807, 0, ''),
(22916, 46, 7501.02, -3069.70, 441.875, 0, ''),
(22916, 47, 7509.15, -3064.67, 445.012, 0, ''),
(22916, 48, 7515.78, -3060.16, 445.727, 0, ''),
(22916, 49, 7516.46, -3058.11, 445.682, 10000, 'quest credit');

DELETE FROM script_waypoint WHERE entry=24358; -- incomplete, in-progress, needs to be done
INSERT INTO script_waypoint VALUES
(24358, 0, 121.193970, 1645.619385, 42.021, 0, ''),
(24358, 1, 132.051468, 1642.176025, 42.021, 5000, 'SAY_AT_GONG'),
(24358, 2, 120.670631, 1636.346802, 42.415, 0, ''),
(24358, 3, 120.536003, 1611.654663, 43.473, 30000, 'SAY_OPEN_ENTRANCE');

-- EOF
