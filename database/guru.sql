/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100427 (10.4.27-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : guru

 Target Server Type    : MySQL
 Target Server Version : 100427 (10.4.27-MariaDB)
 File Encoding         : 65001

 Date: 04/02/2025 01:54:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity_log
-- ----------------------------
DROP TABLE IF EXISTS `activity_log`;
CREATE TABLE `activity_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_user` int NULL DEFAULT NULL,
  `activity` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2711 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of activity_log
-- ----------------------------
INSERT INTO `activity_log` VALUES (1840, 1, 'Mengakses halaman log aktivitas', '2024-10-31 08:28:58');
INSERT INTO `activity_log` VALUES (1841, 1, 'Mengakses halaman setting', '2024-10-31 08:29:01');
INSERT INTO `activity_log` VALUES (1842, 1, 'Mengakses halaman log aktivitas', '2024-10-31 08:29:03');
INSERT INTO `activity_log` VALUES (1843, 1, 'Mengakses halaman pemberitahuan', '2024-10-31 08:29:04');
INSERT INTO `activity_log` VALUES (1844, 1, 'Mengakses halaman log aktivitas', '2024-10-31 08:29:06');
INSERT INTO `activity_log` VALUES (1845, 1, 'Mengakses halaman manajemen pengumuman', '2024-10-31 08:29:14');
INSERT INTO `activity_log` VALUES (1846, 1, 'Mengakses halaman log aktivitas', '2024-10-31 08:29:16');
INSERT INTO `activity_log` VALUES (1847, 1, 'Mengakses halaman log aktivitas', '2024-10-31 08:31:27');
INSERT INTO `activity_log` VALUES (1848, 1, 'Mengakses halaman pengumuman', '2024-10-31 08:31:35');
INSERT INTO `activity_log` VALUES (1849, 1, 'Mengakses halaman log aktivitas', '2024-10-31 08:31:37');
INSERT INTO `activity_log` VALUES (1850, 1, 'Mengakses halaman log aktivitas', '2024-10-31 08:32:37');
INSERT INTO `activity_log` VALUES (1851, 1, 'Mengakses halaman log aktivitas', '2024-10-31 08:32:55');
INSERT INTO `activity_log` VALUES (1852, 1, 'Mengakses halaman log aktivitas', '2024-10-31 08:33:01');
INSERT INTO `activity_log` VALUES (1853, 1, 'Mengakses halaman restore user', '2024-10-31 08:33:10');
INSERT INTO `activity_log` VALUES (1854, 1, 'Mengakses halaman pengumuman', '2024-10-31 08:33:15');
INSERT INTO `activity_log` VALUES (1855, 1, 'Mengakses halaman pemberitahuan', '2024-10-31 08:33:18');
INSERT INTO `activity_log` VALUES (1856, 1, 'Mengakses halaman pengumuman', '2024-10-31 08:33:24');
INSERT INTO `activity_log` VALUES (1857, 1, 'Mengakses halaman pemberitahuan', '2024-10-31 08:33:56');
INSERT INTO `activity_log` VALUES (1858, 1, 'Mengakses halaman pengumuman', '2024-10-31 08:34:14');
INSERT INTO `activity_log` VALUES (1859, 1, 'Mengakses halaman pemberitahuan', '2024-10-31 08:42:21');
INSERT INTO `activity_log` VALUES (1860, 1, 'Mengakses halaman pengumuman', '2024-10-31 08:42:28');
INSERT INTO `activity_log` VALUES (1861, 1, 'Mengakses halaman user', '2024-10-31 08:42:34');
INSERT INTO `activity_log` VALUES (1862, 1, 'Mengakses halaman pengumuman', '2024-10-31 08:43:23');
INSERT INTO `activity_log` VALUES (1863, 1, 'Mengakses halaman pengumuman', '2024-10-31 08:43:41');
INSERT INTO `activity_log` VALUES (1864, 1, 'Mengakses halaman pengumuman', '2024-10-31 08:43:57');
INSERT INTO `activity_log` VALUES (1865, 1, 'Mengakses halaman pemberitahuan', '2024-10-31 08:44:02');
INSERT INTO `activity_log` VALUES (1866, 1, 'Mengakses halaman pemberitahuan', '2024-10-31 08:44:16');
INSERT INTO `activity_log` VALUES (1867, 1, 'Mengakses halaman setting', '2024-10-31 08:44:20');
INSERT INTO `activity_log` VALUES (1868, 1, 'Mengakses halaman setting', '2024-10-31 08:44:33');
INSERT INTO `activity_log` VALUES (1869, 1, 'Mengakses halaman log aktivitas', '2024-10-31 08:44:34');
INSERT INTO `activity_log` VALUES (1870, 1, 'Mengakses halaman log aktivitas', '2024-10-31 08:44:48');
INSERT INTO `activity_log` VALUES (1871, 1, 'Mengakses halaman restore user', '2024-10-31 08:45:45');
INSERT INTO `activity_log` VALUES (1872, 1, 'Mengakses halaman setting', '2024-10-31 08:45:53');
INSERT INTO `activity_log` VALUES (1873, 1, 'Mengakses halaman setting', '2024-10-31 08:46:07');
INSERT INTO `activity_log` VALUES (1874, 1, 'Mengakses halaman profile', '2024-10-31 08:46:41');
INSERT INTO `activity_log` VALUES (1875, 1, 'Mengakses halaman profile', '2024-10-31 08:46:51');
INSERT INTO `activity_log` VALUES (1876, 1, 'Mengakses halaman profile', '2024-10-31 08:47:16');
INSERT INTO `activity_log` VALUES (1877, 1, 'Mengakses halaman setting', '2024-10-31 08:47:38');
INSERT INTO `activity_log` VALUES (1878, 1, 'Mengakses halaman dashboard', '2024-10-31 08:47:45');
INSERT INTO `activity_log` VALUES (1879, 1, 'Mengakses halaman user', '2024-10-31 08:47:47');
INSERT INTO `activity_log` VALUES (1880, 1, 'Mengakses halaman kelas', '2024-10-31 08:47:52');
INSERT INTO `activity_log` VALUES (1881, 1, 'Mengakses halaman pengumuman', '2024-10-31 08:47:54');
INSERT INTO `activity_log` VALUES (1882, 1, 'Mengakses halaman pemberitahuan', '2024-10-31 08:47:57');
INSERT INTO `activity_log` VALUES (1883, 1, 'Mengakses halaman setting', '2024-10-31 08:48:06');
INSERT INTO `activity_log` VALUES (1884, 1, 'Mengakses halaman log aktivitas', '2024-10-31 08:48:07');
INSERT INTO `activity_log` VALUES (1885, 1, 'Mengakses halaman restore user', '2024-10-31 08:48:11');
INSERT INTO `activity_log` VALUES (1886, 1, 'Mengakses halaman restore kelas', '2024-10-31 08:48:13');
INSERT INTO `activity_log` VALUES (1887, 1, 'Mengakses halaman restore user', '2024-10-31 08:48:17');
INSERT INTO `activity_log` VALUES (1888, 1, 'Mengakses halaman restore pengumuman', '2024-10-31 08:48:19');
INSERT INTO `activity_log` VALUES (1889, 1, 'Mengakses halaman pengumuman', '2024-10-31 08:48:34');
INSERT INTO `activity_log` VALUES (1890, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:04:22');
INSERT INTO `activity_log` VALUES (1891, 1, 'Membagikan pengumuman', '2024-10-31 09:04:42');
INSERT INTO `activity_log` VALUES (1892, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:04:45');
INSERT INTO `activity_log` VALUES (1893, 1, 'Membagikan pengumuman', '2024-10-31 09:05:17');
INSERT INTO `activity_log` VALUES (1894, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:05:22');
INSERT INTO `activity_log` VALUES (1895, 1, 'Membagikan pengumuman', '2024-10-31 09:07:16');
INSERT INTO `activity_log` VALUES (1896, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:07:26');
INSERT INTO `activity_log` VALUES (1897, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:10:29');
INSERT INTO `activity_log` VALUES (1898, 1, 'Membagikan pengumuman', '2024-10-31 09:10:37');
INSERT INTO `activity_log` VALUES (1899, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:10:41');
INSERT INTO `activity_log` VALUES (1900, 1, 'Membagikan pengumuman', '2024-10-31 09:12:17');
INSERT INTO `activity_log` VALUES (1901, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:12:22');
INSERT INTO `activity_log` VALUES (1902, 1, 'Membagikan pengumuman', '2024-10-31 09:16:09');
INSERT INTO `activity_log` VALUES (1903, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:16:15');
INSERT INTO `activity_log` VALUES (1904, 1, 'Membagikan pengumuman', '2024-10-31 09:18:09');
INSERT INTO `activity_log` VALUES (1905, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:18:14');
INSERT INTO `activity_log` VALUES (1906, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:18:50');
INSERT INTO `activity_log` VALUES (1907, 1, 'Membagikan pengumuman', '2024-10-31 09:18:57');
INSERT INTO `activity_log` VALUES (1908, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:19:24');
INSERT INTO `activity_log` VALUES (1909, 1, 'Membagikan pengumuman', '2024-10-31 09:19:31');
INSERT INTO `activity_log` VALUES (1910, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:19:37');
INSERT INTO `activity_log` VALUES (1911, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:22:04');
INSERT INTO `activity_log` VALUES (1912, 1, 'Membagikan pengumuman', '2024-10-31 09:22:11');
INSERT INTO `activity_log` VALUES (1913, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:22:18');
INSERT INTO `activity_log` VALUES (1914, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:30:17');
INSERT INTO `activity_log` VALUES (1915, 1, 'Membagikan pengumuman', '2024-10-31 09:31:07');
INSERT INTO `activity_log` VALUES (1916, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:31:11');
INSERT INTO `activity_log` VALUES (1917, 1, 'Membagikan pengumuman', '2024-10-31 09:33:29');
INSERT INTO `activity_log` VALUES (1918, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:33:34');
INSERT INTO `activity_log` VALUES (1919, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:40:25');
INSERT INTO `activity_log` VALUES (1920, 1, 'Membagikan pengumuman', '2024-10-31 09:40:31');
INSERT INTO `activity_log` VALUES (1921, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:40:35');
INSERT INTO `activity_log` VALUES (1922, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:43:45');
INSERT INTO `activity_log` VALUES (1923, 1, 'Membagikan pengumuman', '2024-10-31 09:43:52');
INSERT INTO `activity_log` VALUES (1924, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:43:57');
INSERT INTO `activity_log` VALUES (1925, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:48:33');
INSERT INTO `activity_log` VALUES (1926, 1, 'Membagikan pengumuman', '2024-10-31 09:48:40');
INSERT INTO `activity_log` VALUES (1927, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:48:43');
INSERT INTO `activity_log` VALUES (1928, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:52:38');
INSERT INTO `activity_log` VALUES (1929, 1, 'Membagikan pengumuman', '2024-10-31 09:52:44');
INSERT INTO `activity_log` VALUES (1930, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:52:48');
INSERT INTO `activity_log` VALUES (1931, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:54:37');
INSERT INTO `activity_log` VALUES (1932, 1, 'Membagikan pengumuman', '2024-10-31 09:54:44');
INSERT INTO `activity_log` VALUES (1933, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:54:47');
INSERT INTO `activity_log` VALUES (1934, 1, 'Membagikan pengumuman', '2024-10-31 09:57:51');
INSERT INTO `activity_log` VALUES (1935, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:58:04');
INSERT INTO `activity_log` VALUES (1936, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:59:33');
INSERT INTO `activity_log` VALUES (1937, 1, 'Membagikan pengumuman', '2024-10-31 09:59:44');
INSERT INTO `activity_log` VALUES (1938, 1, 'Mengakses halaman pengumuman', '2024-10-31 09:59:50');
INSERT INTO `activity_log` VALUES (1939, 1, 'Mengakses halaman dashboard', '2024-10-31 10:35:36');
INSERT INTO `activity_log` VALUES (1940, 1, 'Mengakses halaman user', '2024-10-31 10:36:42');
INSERT INTO `activity_log` VALUES (1941, 1, 'Mengakses halaman kelas', '2024-10-31 10:37:08');
INSERT INTO `activity_log` VALUES (1942, 1, 'Mengakses halaman pengumuman', '2024-10-31 10:37:37');
INSERT INTO `activity_log` VALUES (1943, 1, 'Mengakses halaman pemberitahuan', '2024-10-31 10:37:53');
INSERT INTO `activity_log` VALUES (1944, 1, 'Mengakses halaman setting', '2024-10-31 10:38:24');
INSERT INTO `activity_log` VALUES (1945, 1, 'Mengakses halaman log aktivitas', '2024-10-31 10:38:45');
INSERT INTO `activity_log` VALUES (1946, 1, 'Mengakses halaman restore user', '2024-10-31 10:39:07');
INSERT INTO `activity_log` VALUES (1947, 1, 'Mengakses halaman dashboard', '2024-10-31 10:52:16');
INSERT INTO `activity_log` VALUES (1948, 23, 'Mengakses halaman dashboard', '2024-10-31 10:53:21');
INSERT INTO `activity_log` VALUES (1949, 23, 'Mengakses halaman pemberitahuan', '2024-10-31 10:55:00');
INSERT INTO `activity_log` VALUES (1950, 23, 'Mengakses halaman pengumuman', '2024-10-31 10:55:04');
INSERT INTO `activity_log` VALUES (1951, 23, 'Mengakses halaman pemberitahuan', '2024-10-31 10:55:13');
INSERT INTO `activity_log` VALUES (1952, 27, 'Mengakses halaman dashboard', '2024-10-31 10:56:07');
INSERT INTO `activity_log` VALUES (1953, 27, 'Mengakses halaman pemberitahuan', '2024-10-31 10:56:11');
INSERT INTO `activity_log` VALUES (1954, 27, 'Mengakses halaman dashboard', '2024-10-31 10:56:12');
INSERT INTO `activity_log` VALUES (1955, 1, 'Mengakses halaman dashboard', '2024-10-31 10:56:55');
INSERT INTO `activity_log` VALUES (1956, 1, 'Mengakses halaman profile', '2024-10-31 10:58:04');
INSERT INTO `activity_log` VALUES (1957, 1, 'Mengakses halaman user', '2024-10-31 10:59:42');
INSERT INTO `activity_log` VALUES (1958, 1, 'Mengakses halaman profile', '2024-10-31 10:59:50');
INSERT INTO `activity_log` VALUES (1959, 1, 'Mengakses halaman profile', '2024-10-31 11:03:30');
INSERT INTO `activity_log` VALUES (1960, 1, 'mengubah password profile', '2024-10-31 11:03:36');
INSERT INTO `activity_log` VALUES (1961, 1, 'Mengakses halaman profile', '2024-10-31 11:03:37');
INSERT INTO `activity_log` VALUES (1962, 1, 'mengubah password profile', '2024-10-31 11:04:01');
INSERT INTO `activity_log` VALUES (1963, 1, 'Mengakses halaman profile', '2024-10-31 11:04:01');
INSERT INTO `activity_log` VALUES (1964, 1, 'mengubah password profile', '2024-10-31 11:04:11');
INSERT INTO `activity_log` VALUES (1965, 1, 'Mengakses halaman profile', '2024-10-31 11:04:12');
INSERT INTO `activity_log` VALUES (1966, 1, 'mengubah password profile', '2024-10-31 11:04:21');
INSERT INTO `activity_log` VALUES (1967, 1, 'Mengakses halaman profile', '2024-10-31 11:04:22');
INSERT INTO `activity_log` VALUES (1968, 1, 'Mengakses halaman user', '2024-10-31 11:05:08');
INSERT INTO `activity_log` VALUES (1969, 1, 'Mengubah data user', '2024-10-31 11:06:38');
INSERT INTO `activity_log` VALUES (1970, 1, 'Mengakses halaman user', '2024-10-31 11:06:39');
INSERT INTO `activity_log` VALUES (1971, 1, 'Merestore user yang diedit', '2024-10-31 11:06:50');
INSERT INTO `activity_log` VALUES (1972, 1, 'Mengakses halaman user', '2024-10-31 11:06:51');
INSERT INTO `activity_log` VALUES (1973, 1, 'Mengakses halaman kelas', '2024-10-31 11:07:15');
INSERT INTO `activity_log` VALUES (1974, 1, 'Mengubah data kelas', '2024-10-31 11:08:35');
INSERT INTO `activity_log` VALUES (1975, 1, 'Mengakses halaman kelas', '2024-10-31 11:08:36');
INSERT INTO `activity_log` VALUES (1976, 1, 'Merestore kelas yang diedit', '2024-10-31 11:08:46');
INSERT INTO `activity_log` VALUES (1977, 1, 'Mengakses halaman kelas', '2024-10-31 11:08:47');
INSERT INTO `activity_log` VALUES (1978, 1, 'Mengakses halaman pengumuman', '2024-10-31 11:09:07');
INSERT INTO `activity_log` VALUES (1979, 1, 'Mengubah data pengumuman', '2024-10-31 11:10:14');
INSERT INTO `activity_log` VALUES (1980, 1, 'Mengakses halaman pengumuman', '2024-10-31 11:10:14');
INSERT INTO `activity_log` VALUES (1981, 1, 'Merestore pengumuman yang diedit', '2024-10-31 11:10:25');
INSERT INTO `activity_log` VALUES (1982, 1, 'Mengakses halaman pengumuman', '2024-10-31 11:10:25');
INSERT INTO `activity_log` VALUES (1983, 1, 'Mengakses halaman pemberitahuan', '2024-10-31 11:10:51');
INSERT INTO `activity_log` VALUES (1984, 1, 'Mengakses halaman setting', '2024-10-31 11:12:20');
INSERT INTO `activity_log` VALUES (1985, 1, 'Mengakses halaman log aktivitas', '2024-10-31 11:12:49');
INSERT INTO `activity_log` VALUES (1986, 1, 'Mengakses halaman user', '2024-10-31 11:13:53');
INSERT INTO `activity_log` VALUES (1987, 1, 'Menghapus data user', '2024-10-31 11:13:57');
INSERT INTO `activity_log` VALUES (1988, 1, 'Mengakses halaman user', '2024-10-31 11:13:58');
INSERT INTO `activity_log` VALUES (1989, 1, 'Mengakses halaman kelas', '2024-10-31 11:13:59');
INSERT INTO `activity_log` VALUES (1990, 1, 'Menghapus data kelas', '2024-10-31 11:14:02');
INSERT INTO `activity_log` VALUES (1991, 1, 'Mengakses halaman kelas', '2024-10-31 11:14:03');
INSERT INTO `activity_log` VALUES (1992, 1, 'Mengakses halaman pengumuman', '2024-10-31 11:14:04');
INSERT INTO `activity_log` VALUES (1993, 1, 'Menghapus data pengumuman', '2024-10-31 11:14:08');
INSERT INTO `activity_log` VALUES (1994, 1, 'Mengakses halaman pengumuman', '2024-10-31 11:14:09');
INSERT INTO `activity_log` VALUES (1995, 1, 'Mengakses halaman restore user', '2024-10-31 11:14:12');
INSERT INTO `activity_log` VALUES (1996, 1, 'Merestore user', '2024-10-31 11:14:29');
INSERT INTO `activity_log` VALUES (1997, 1, 'Mengakses halaman restore user', '2024-10-31 11:14:30');
INSERT INTO `activity_log` VALUES (1998, 1, 'Mengakses halaman restore kelas', '2024-10-31 11:14:32');
INSERT INTO `activity_log` VALUES (1999, 1, 'Mengakses halaman restore pengumuman', '2024-10-31 11:14:45');
INSERT INTO `activity_log` VALUES (2000, 1, 'Merestore pengumuman', '2024-10-31 11:15:02');
INSERT INTO `activity_log` VALUES (2001, 1, 'Mengakses halaman restore pengumuman', '2024-10-31 11:15:03');
INSERT INTO `activity_log` VALUES (2002, 1, 'Mengakses halaman restore kelas', '2024-10-31 11:15:05');
INSERT INTO `activity_log` VALUES (2003, 1, 'Merestore kelas', '2024-10-31 11:15:08');
INSERT INTO `activity_log` VALUES (2004, 1, 'Mengakses halaman restore kelas', '2024-10-31 11:15:08');
INSERT INTO `activity_log` VALUES (2005, 1, 'Mengakses halaman dashboard', '2024-11-02 00:55:03');
INSERT INTO `activity_log` VALUES (2006, 1, 'Mengakses halaman dashboard', '2024-11-02 00:55:56');
INSERT INTO `activity_log` VALUES (2007, 1, 'Mengakses halaman user', '2024-11-02 00:56:05');
INSERT INTO `activity_log` VALUES (2008, 1, 'Menambah user', '2024-11-02 00:56:58');
INSERT INTO `activity_log` VALUES (2009, 1, 'Mengakses halaman user', '2024-11-02 00:56:59');
INSERT INTO `activity_log` VALUES (2010, 1, 'Mengubah data user', '2024-11-02 00:57:37');
INSERT INTO `activity_log` VALUES (2011, 1, 'Mengakses halaman user', '2024-11-02 00:57:38');
INSERT INTO `activity_log` VALUES (2012, 1, 'Merestore user yang diedit', '2024-11-02 00:58:06');
INSERT INTO `activity_log` VALUES (2013, 1, 'Mengakses halaman user', '2024-11-02 00:58:07');
INSERT INTO `activity_log` VALUES (2014, 1, 'Mengubah data user', '2024-11-02 00:58:15');
INSERT INTO `activity_log` VALUES (2015, 1, 'Mengakses halaman user', '2024-11-02 00:58:16');
INSERT INTO `activity_log` VALUES (2016, 1, 'Mengubah data user', '2024-11-02 00:58:24');
INSERT INTO `activity_log` VALUES (2017, 1, 'Mengakses halaman user', '2024-11-02 00:58:25');
INSERT INTO `activity_log` VALUES (2018, 1, 'Merestore user yang diedit', '2024-11-02 00:58:30');
INSERT INTO `activity_log` VALUES (2019, 1, 'Mengakses halaman user', '2024-11-02 00:58:31');
INSERT INTO `activity_log` VALUES (2020, 1, 'Mereset password user', '2024-11-02 00:58:37');
INSERT INTO `activity_log` VALUES (2021, 1, 'Mengakses halaman user', '2024-11-02 00:58:38');
INSERT INTO `activity_log` VALUES (2022, 1, 'Menghapus data user', '2024-11-02 00:58:53');
INSERT INTO `activity_log` VALUES (2023, 1, 'Mengakses halaman user', '2024-11-02 00:58:58');
INSERT INTO `activity_log` VALUES (2024, 1, 'Mengakses halaman kelas', '2024-11-02 00:59:04');
INSERT INTO `activity_log` VALUES (2025, 1, 'Menambah data kelas', '2024-11-02 00:59:20');
INSERT INTO `activity_log` VALUES (2026, 1, 'Mengakses halaman kelas', '2024-11-02 00:59:21');
INSERT INTO `activity_log` VALUES (2027, 1, 'Mengubah data kelas', '2024-11-02 00:59:29');
INSERT INTO `activity_log` VALUES (2028, 1, 'Mengakses halaman kelas', '2024-11-02 00:59:30');
INSERT INTO `activity_log` VALUES (2029, 1, 'Merestore kelas yang diedit', '2024-11-02 00:59:36');
INSERT INTO `activity_log` VALUES (2030, 1, 'Mengakses halaman kelas', '2024-11-02 00:59:37');
INSERT INTO `activity_log` VALUES (2031, 1, 'Mengubah data kelas', '2024-11-02 00:59:45');
INSERT INTO `activity_log` VALUES (2032, 1, 'Mengakses halaman kelas', '2024-11-02 00:59:46');
INSERT INTO `activity_log` VALUES (2033, 1, 'Menghapus data kelas', '2024-11-02 00:59:52');
INSERT INTO `activity_log` VALUES (2034, 1, 'Mengakses halaman kelas', '2024-11-02 00:59:54');
INSERT INTO `activity_log` VALUES (2035, 1, 'Mengakses halaman pengumuman', '2024-11-02 00:59:56');
INSERT INTO `activity_log` VALUES (2036, 1, 'Mengakses halaman kelas', '2024-11-02 00:59:59');
INSERT INTO `activity_log` VALUES (2037, 1, 'Mengakses halaman pengumuman', '2024-11-02 01:00:10');
INSERT INTO `activity_log` VALUES (2038, 1, 'Menambah data pengumuman', '2024-11-02 01:00:29');
INSERT INTO `activity_log` VALUES (2039, 1, 'Mengakses halaman pengumuman', '2024-11-02 01:00:30');
INSERT INTO `activity_log` VALUES (2040, 1, 'Mengubah data pengumuman', '2024-11-02 01:00:53');
INSERT INTO `activity_log` VALUES (2041, 1, 'Mengakses halaman pengumuman', '2024-11-02 01:00:54');
INSERT INTO `activity_log` VALUES (2042, 1, 'Membagikan pengumuman', '2024-11-02 01:01:40');
INSERT INTO `activity_log` VALUES (2043, 1, 'Mengakses halaman pengumuman', '2024-11-02 01:01:49');
INSERT INTO `activity_log` VALUES (2044, 1, 'Membagikan pengumuman', '2024-11-02 01:02:39');
INSERT INTO `activity_log` VALUES (2045, 1, 'Mengakses halaman pengumuman', '2024-11-02 01:02:45');
INSERT INTO `activity_log` VALUES (2046, 1, 'Mengakses halaman pemberitahuan', '2024-11-02 01:03:46');
INSERT INTO `activity_log` VALUES (2047, 1, 'Mengakses halaman setting', '2024-11-02 01:03:59');
INSERT INTO `activity_log` VALUES (2048, 1, 'Mengubah data setting', '2024-11-02 01:04:04');
INSERT INTO `activity_log` VALUES (2049, 1, 'Mengakses halaman setting', '2024-11-02 01:04:05');
INSERT INTO `activity_log` VALUES (2050, 1, 'Mengubah data setting', '2024-11-02 01:04:08');
INSERT INTO `activity_log` VALUES (2051, 1, 'Mengakses halaman setting', '2024-11-02 01:04:09');
INSERT INTO `activity_log` VALUES (2052, 1, 'Mengakses halaman log aktivitas', '2024-11-02 01:04:12');
INSERT INTO `activity_log` VALUES (2053, 1, 'Mengakses halaman restore user', '2024-11-02 01:04:17');
INSERT INTO `activity_log` VALUES (2054, 1, 'Merestore user', '2024-11-02 01:04:21');
INSERT INTO `activity_log` VALUES (2055, 1, 'Mengakses halaman restore user', '2024-11-02 01:04:22');
INSERT INTO `activity_log` VALUES (2056, 1, 'Mengakses halaman restore kelas', '2024-11-02 01:04:25');
INSERT INTO `activity_log` VALUES (2057, 1, 'Merestore kelas', '2024-11-02 01:04:28');
INSERT INTO `activity_log` VALUES (2058, 1, 'Mengakses halaman restore kelas', '2024-11-02 01:04:29');
INSERT INTO `activity_log` VALUES (2059, 1, 'Mengakses halaman restore pengumuman', '2024-11-02 01:04:32');
INSERT INTO `activity_log` VALUES (2060, 1, 'Mengakses halaman pengumuman', '2024-11-02 01:04:38');
INSERT INTO `activity_log` VALUES (2061, 1, 'Mengakses halaman profile', '2024-11-02 01:04:42');
INSERT INTO `activity_log` VALUES (2062, 1, 'Mengubah data profile', '2024-11-02 01:04:50');
INSERT INTO `activity_log` VALUES (2063, 1, 'Mengakses halaman profile', '2024-11-02 01:04:51');
INSERT INTO `activity_log` VALUES (2064, 1, 'Mengubah data profile', '2024-11-02 01:05:00');
INSERT INTO `activity_log` VALUES (2065, 1, 'Mengakses halaman profile', '2024-11-02 01:05:01');
INSERT INTO `activity_log` VALUES (2066, 1, 'Mengakses halaman user', '2024-11-02 01:05:12');
INSERT INTO `activity_log` VALUES (2067, 1, 'Mengakses halaman kelas', '2024-11-02 01:05:42');
INSERT INTO `activity_log` VALUES (2068, 1, 'Mengakses halaman pengumuman', '2024-11-02 01:06:06');
INSERT INTO `activity_log` VALUES (2069, 1, 'Membagikan pengumuman', '2024-11-02 01:06:16');
INSERT INTO `activity_log` VALUES (2070, 1, 'Mengakses halaman pengumuman', '2024-11-02 01:06:25');
INSERT INTO `activity_log` VALUES (2071, 1, 'Membagikan pengumuman', '2024-11-02 01:06:57');
INSERT INTO `activity_log` VALUES (2072, 1, 'Mengakses halaman pengumuman', '2024-11-02 01:07:03');
INSERT INTO `activity_log` VALUES (2073, 1, 'Membagikan pengumuman', '2024-11-02 01:07:30');
INSERT INTO `activity_log` VALUES (2074, 1, 'Mengakses halaman pengumuman', '2024-11-02 01:07:42');
INSERT INTO `activity_log` VALUES (2075, 1, 'Membagikan pengumuman', '2024-11-02 01:08:23');
INSERT INTO `activity_log` VALUES (2076, 1, 'Mengakses halaman pengumuman', '2024-11-02 01:08:24');
INSERT INTO `activity_log` VALUES (2077, 1, 'Membagikan pengumuman', '2024-11-02 01:08:59');
INSERT INTO `activity_log` VALUES (2078, 1, 'Mengakses halaman pengumuman', '2024-11-02 01:09:05');
INSERT INTO `activity_log` VALUES (2079, 1, 'Membagikan pengumuman', '2024-11-02 01:09:25');
INSERT INTO `activity_log` VALUES (2080, 1, 'Mengakses halaman pengumuman', '2024-11-02 01:09:31');
INSERT INTO `activity_log` VALUES (2081, 1, 'Mengakses halaman pengumuman', '2024-11-02 01:12:54');
INSERT INTO `activity_log` VALUES (2082, 1, 'Membagikan pengumuman', '2024-11-02 01:13:57');
INSERT INTO `activity_log` VALUES (2083, 1, 'Mengakses halaman pengumuman', '2024-11-02 01:14:07');
INSERT INTO `activity_log` VALUES (2084, 1, 'Membagikan pengumuman', '2024-11-02 01:14:18');
INSERT INTO `activity_log` VALUES (2085, 1, 'Mengakses halaman pengumuman', '2024-11-02 01:14:25');
INSERT INTO `activity_log` VALUES (2086, 1, 'Mengakses halaman pengumuman', '2024-11-02 01:15:15');
INSERT INTO `activity_log` VALUES (2087, 1, 'Membagikan pengumuman', '2024-11-02 01:15:24');
INSERT INTO `activity_log` VALUES (2088, 1, 'Mengakses halaman pengumuman', '2024-11-02 01:15:31');
INSERT INTO `activity_log` VALUES (2089, 1, 'Mengakses halaman pengumuman', '2024-11-02 01:20:57');
INSERT INTO `activity_log` VALUES (2090, 1, 'Membagikan pengumuman', '2024-11-02 01:21:10');
INSERT INTO `activity_log` VALUES (2091, 1, 'Mengakses halaman pengumuman', '2024-11-02 01:21:15');
INSERT INTO `activity_log` VALUES (2092, 25, 'Mengakses halaman dashboard', '2024-11-02 01:22:19');
INSERT INTO `activity_log` VALUES (2093, 25, 'Mengakses halaman dashboard', '2024-11-02 01:22:22');
INSERT INTO `activity_log` VALUES (2094, 25, 'Mengakses halaman pengumuman', '2024-11-02 01:22:24');
INSERT INTO `activity_log` VALUES (2095, 25, 'Mengakses halaman pengumuman', '2024-11-02 01:22:25');
INSERT INTO `activity_log` VALUES (2096, 25, 'Mengakses halaman pemberitahuan', '2024-11-02 01:22:32');
INSERT INTO `activity_log` VALUES (2097, 25, 'Mengakses halaman pengumuman', '2024-11-02 01:22:35');
INSERT INTO `activity_log` VALUES (2098, 27, 'Mengakses halaman dashboard', '2024-11-02 01:23:35');
INSERT INTO `activity_log` VALUES (2099, 27, 'Mengakses halaman pemberitahuan', '2024-11-02 01:24:05');
INSERT INTO `activity_log` VALUES (2100, 27, 'Mengakses halaman profile', '2024-11-02 01:24:26');
INSERT INTO `activity_log` VALUES (2101, 27, 'Mengakses halaman dashboard', '2024-11-02 01:24:32');
INSERT INTO `activity_log` VALUES (2102, 27, 'Mengakses halaman pemberitahuan', '2024-11-02 01:24:37');
INSERT INTO `activity_log` VALUES (2103, 27, 'Mengakses halaman dashboard', '2024-11-02 01:25:09');
INSERT INTO `activity_log` VALUES (2104, 26, 'Mengakses halaman dashboard', '2024-11-02 01:26:46');
INSERT INTO `activity_log` VALUES (2105, 26, 'Mengakses halaman pemberitahuan', '2024-11-02 01:26:49');
INSERT INTO `activity_log` VALUES (2106, 26, 'Mengakses halaman pengumuman', '2024-11-02 01:27:38');
INSERT INTO `activity_log` VALUES (2107, 26, 'Menambah data pengumuman', '2024-11-02 01:27:55');
INSERT INTO `activity_log` VALUES (2108, 26, 'Mengakses halaman pengumuman', '2024-11-02 01:27:56');
INSERT INTO `activity_log` VALUES (2109, 26, 'Membagikan pengumuman', '2024-11-02 01:29:31');
INSERT INTO `activity_log` VALUES (2110, 26, 'Mengakses halaman pengumuman', '2024-11-02 01:29:36');
INSERT INTO `activity_log` VALUES (2111, 26, 'Membagikan pengumuman', '2024-11-02 01:30:06');
INSERT INTO `activity_log` VALUES (2112, 26, 'Mengakses halaman pengumuman', '2024-11-02 01:30:10');
INSERT INTO `activity_log` VALUES (2113, 1, 'Mengakses halaman dashboard', '2024-11-05 21:26:52');
INSERT INTO `activity_log` VALUES (2114, 27, 'Mengakses halaman dashboard', '2025-01-06 20:35:39');
INSERT INTO `activity_log` VALUES (2115, 27, 'Mengakses halaman pemberitahuan', '2025-01-06 20:35:44');
INSERT INTO `activity_log` VALUES (2116, 27, 'Mengakses halaman profile', '2025-01-06 20:35:51');
INSERT INTO `activity_log` VALUES (2117, 23, 'Mengakses halaman dashboard', '2025-01-06 20:36:13');
INSERT INTO `activity_log` VALUES (2118, 23, 'Mengakses halaman pengumuman', '2025-01-06 20:36:19');
INSERT INTO `activity_log` VALUES (2119, 27, 'Mengakses halaman dashboard', '2025-01-06 20:37:39');
INSERT INTO `activity_log` VALUES (2120, 27, 'Mengakses halaman dashboard', '2025-01-06 20:37:49');
INSERT INTO `activity_log` VALUES (2121, 23, 'Mengakses halaman dashboard', '2025-01-06 20:38:13');
INSERT INTO `activity_log` VALUES (2122, 23, 'Mengakses halaman profile', '2025-01-06 20:38:18');
INSERT INTO `activity_log` VALUES (2123, 23, 'Mengakses halaman profile', '2025-01-06 20:44:03');
INSERT INTO `activity_log` VALUES (2124, 23, 'Mengakses halaman profile', '2025-01-06 20:51:50');
INSERT INTO `activity_log` VALUES (2125, 23, 'Mengakses halaman profile', '2025-01-06 20:52:12');
INSERT INTO `activity_log` VALUES (2126, 23, 'Mengakses halaman pengumuman', '2025-01-06 20:55:28');
INSERT INTO `activity_log` VALUES (2127, 23, 'Mengakses halaman pemberitahuan', '2025-01-06 20:55:33');
INSERT INTO `activity_log` VALUES (2128, 23, 'Mengakses halaman pengumuman', '2025-01-06 20:56:42');
INSERT INTO `activity_log` VALUES (2129, 23, 'Mengakses halaman pemberitahuan', '2025-01-06 20:59:50');
INSERT INTO `activity_log` VALUES (2130, 23, 'Mengakses halaman pengumuman', '2025-01-06 20:59:57');
INSERT INTO `activity_log` VALUES (2131, 1, 'Mengakses halaman dashboard', '2025-01-07 20:01:18');
INSERT INTO `activity_log` VALUES (2132, 1, 'Mengakses halaman jurusan', '2025-01-07 20:01:31');
INSERT INTO `activity_log` VALUES (2133, 1, 'Menambah data jurusan', '2025-01-07 20:01:58');
INSERT INTO `activity_log` VALUES (2134, 1, 'Mengakses halaman jurusan', '2025-01-07 20:01:59');
INSERT INTO `activity_log` VALUES (2135, 1, 'Mengakses halaman pengumuman', '2025-01-07 20:02:51');
INSERT INTO `activity_log` VALUES (2136, 1, 'Mengakses halaman pemberitahuan', '2025-01-07 20:03:29');
INSERT INTO `activity_log` VALUES (2137, 1, 'Mengakses halaman jurusan', '2025-01-07 20:03:44');
INSERT INTO `activity_log` VALUES (2138, 1, 'Mengakses halaman jurusan', '2025-01-07 20:06:03');
INSERT INTO `activity_log` VALUES (2139, 1, 'Mengubah data jurusan', '2025-01-07 20:06:12');
INSERT INTO `activity_log` VALUES (2140, 1, 'Mengakses halaman jurusan', '2025-01-07 20:06:13');
INSERT INTO `activity_log` VALUES (2141, 1, 'Mengakses halaman jurusan', '2025-01-07 20:06:19');
INSERT INTO `activity_log` VALUES (2142, 1, 'Mengakses halaman jurusan', '2025-01-07 20:06:26');
INSERT INTO `activity_log` VALUES (2143, 1, 'Mengakses halaman jurusan', '2025-01-07 20:07:08');
INSERT INTO `activity_log` VALUES (2144, 1, 'Mengakses halaman jurusan', '2025-01-07 20:07:14');
INSERT INTO `activity_log` VALUES (2145, 1, 'Mengakses halaman jurusan', '2025-01-07 20:08:12');
INSERT INTO `activity_log` VALUES (2146, 1, 'Mengakses halaman jurusan', '2025-01-07 20:08:18');
INSERT INTO `activity_log` VALUES (2147, 1, 'Mengakses halaman jurusan', '2025-01-07 20:10:35');
INSERT INTO `activity_log` VALUES (2148, 1, 'Mengakses halaman jurusan', '2025-01-07 20:10:47');
INSERT INTO `activity_log` VALUES (2149, 1, 'Mengakses halaman pengumuman', '2025-01-07 20:11:09');
INSERT INTO `activity_log` VALUES (2150, 1, 'Mengakses halaman pengumuman', '2025-01-07 20:13:17');
INSERT INTO `activity_log` VALUES (2151, 1, 'Mengakses halaman jurusan', '2025-01-07 20:13:29');
INSERT INTO `activity_log` VALUES (2152, 1, 'Mengakses halaman jurusan', '2025-01-07 20:13:51');
INSERT INTO `activity_log` VALUES (2153, 1, 'Mengakses halaman jurusan', '2025-01-07 20:19:19');
INSERT INTO `activity_log` VALUES (2154, 1, 'Mengakses halaman jurusan', '2025-01-07 20:19:25');
INSERT INTO `activity_log` VALUES (2155, 1, 'Mengakses halaman jurusan', '2025-01-07 20:35:01');
INSERT INTO `activity_log` VALUES (2156, 1, 'Undo edit data jurusan', '2025-01-07 20:35:07');
INSERT INTO `activity_log` VALUES (2157, 1, 'Mengakses halaman jurusan', '2025-01-07 20:35:07');
INSERT INTO `activity_log` VALUES (2158, 1, 'Mengakses halaman dashboard', '2025-01-08 00:03:24');
INSERT INTO `activity_log` VALUES (2159, 1, 'Mengakses halaman jurusan', '2025-01-08 00:03:34');
INSERT INTO `activity_log` VALUES (2160, 1, 'Mengakses halaman jurusan', '2025-01-08 00:23:13');
INSERT INTO `activity_log` VALUES (2161, 1, 'Mengakses halaman jurusan', '2025-01-08 00:25:58');
INSERT INTO `activity_log` VALUES (2162, 1, 'Mengakses halaman jurusan', '2025-01-08 00:29:56');
INSERT INTO `activity_log` VALUES (2163, 1, 'Mengakses halaman jurusan', '2025-01-08 00:33:24');
INSERT INTO `activity_log` VALUES (2164, 1, 'Mengakses halaman jurusan', '2025-01-08 00:35:03');
INSERT INTO `activity_log` VALUES (2165, 1, 'Mengakses halaman jurusan', '2025-01-08 00:36:57');
INSERT INTO `activity_log` VALUES (2166, 1, 'Mengakses halaman jurusan', '2025-01-08 00:37:05');
INSERT INTO `activity_log` VALUES (2167, 1, 'Mengakses halaman jurusan', '2025-01-08 00:42:39');
INSERT INTO `activity_log` VALUES (2168, 1, 'Mengakses halaman dashboard', '2025-01-08 01:16:48');
INSERT INTO `activity_log` VALUES (2169, 1, 'Mengakses halaman jurusan', '2025-01-08 01:17:19');
INSERT INTO `activity_log` VALUES (2170, 1, 'Mengakses halaman dashboard', '2025-01-08 19:59:29');
INSERT INTO `activity_log` VALUES (2171, 1, 'Mengakses halaman jurusan', '2025-01-08 19:59:40');
INSERT INTO `activity_log` VALUES (2172, 1, 'Mengakses form tambah jurusan', '2025-01-08 19:59:47');
INSERT INTO `activity_log` VALUES (2173, 1, 'Mengakses halaman jurusan', '2025-01-08 19:59:53');
INSERT INTO `activity_log` VALUES (2174, 1, 'Mengakses form edit jurusan', '2025-01-08 19:59:59');
INSERT INTO `activity_log` VALUES (2175, 1, 'Mengakses halaman jurusan', '2025-01-08 20:00:05');
INSERT INTO `activity_log` VALUES (2176, 1, 'Mengakses form edit jurusan', '2025-01-08 20:00:11');
INSERT INTO `activity_log` VALUES (2177, 1, 'Mengubah data jurusan', '2025-01-08 20:00:30');
INSERT INTO `activity_log` VALUES (2178, 1, 'Mengakses halaman jurusan', '2025-01-08 20:00:31');
INSERT INTO `activity_log` VALUES (2179, 1, 'Mengakses form undo edit jurusan', '2025-01-08 20:00:36');
INSERT INTO `activity_log` VALUES (2180, 1, 'Mengakses halaman jurusan', '2025-01-08 20:00:44');
INSERT INTO `activity_log` VALUES (2181, 1, 'Mengakses form edit jurusan', '2025-01-08 20:01:09');
INSERT INTO `activity_log` VALUES (2182, 1, 'Mengubah data jurusan', '2025-01-08 20:01:33');
INSERT INTO `activity_log` VALUES (2183, 1, 'Mengakses halaman jurusan', '2025-01-08 20:01:34');
INSERT INTO `activity_log` VALUES (2184, 1, 'Mengakses form edit jurusan', '2025-01-08 20:01:41');
INSERT INTO `activity_log` VALUES (2185, 1, 'Mengubah data jurusan', '2025-01-08 20:02:02');
INSERT INTO `activity_log` VALUES (2186, 1, 'Mengakses halaman jurusan', '2025-01-08 20:02:03');
INSERT INTO `activity_log` VALUES (2187, 1, 'Mengakses halaman kelas', '2025-01-08 20:02:08');
INSERT INTO `activity_log` VALUES (2188, 1, 'Mengakses halaman kelas', '2025-01-08 20:03:01');
INSERT INTO `activity_log` VALUES (2189, 1, 'Mengakses form edit kelas', '2025-01-08 20:03:07');
INSERT INTO `activity_log` VALUES (2190, 1, 'Mengubah data kelas', '2025-01-08 20:03:18');
INSERT INTO `activity_log` VALUES (2191, 1, 'Mengakses halaman kelas', '2025-01-08 20:03:19');
INSERT INTO `activity_log` VALUES (2192, 1, 'Mengakses form edit kelas', '2025-01-08 20:03:24');
INSERT INTO `activity_log` VALUES (2193, 1, 'Mengubah data kelas', '2025-01-08 20:03:31');
INSERT INTO `activity_log` VALUES (2194, 1, 'Mengakses halaman kelas', '2025-01-08 20:03:32');
INSERT INTO `activity_log` VALUES (2195, 1, 'Mengakses form undo edit kelas', '2025-01-08 20:03:38');
INSERT INTO `activity_log` VALUES (2196, 1, 'Mengakses form undo edit kelas', '2025-01-08 20:03:39');
INSERT INTO `activity_log` VALUES (2197, 1, 'Mengakses halaman kelas', '2025-01-08 20:06:51');
INSERT INTO `activity_log` VALUES (2198, 1, 'Mengakses form undo edit kelas', '2025-01-08 20:07:02');
INSERT INTO `activity_log` VALUES (2199, 1, 'Mengakses halaman kelas', '2025-01-08 20:07:55');
INSERT INTO `activity_log` VALUES (2200, 1, 'Mengakses form undo edit kelas', '2025-01-08 20:08:01');
INSERT INTO `activity_log` VALUES (2201, 1, 'Mengakses halaman kelas', '2025-01-08 20:08:48');
INSERT INTO `activity_log` VALUES (2202, 1, 'Mengakses form undo edit kelas', '2025-01-08 20:08:53');
INSERT INTO `activity_log` VALUES (2203, 1, 'Mengakses halaman kelas', '2025-01-08 20:11:34');
INSERT INTO `activity_log` VALUES (2204, 1, 'Mengakses form undo edit kelas', '2025-01-08 20:11:41');
INSERT INTO `activity_log` VALUES (2205, 1, 'Mengakses halaman kelas', '2025-01-08 20:11:46');
INSERT INTO `activity_log` VALUES (2206, 1, 'Mengakses halaman kelas', '2025-01-08 20:13:08');
INSERT INTO `activity_log` VALUES (2207, 1, 'Mengakses form undo edit kelas', '2025-01-08 20:13:13');
INSERT INTO `activity_log` VALUES (2208, 1, 'Mengakses halaman kelas', '2025-01-08 20:16:54');
INSERT INTO `activity_log` VALUES (2209, 1, 'Mengakses form undo edit kelas', '2025-01-08 20:16:59');
INSERT INTO `activity_log` VALUES (2210, 1, 'Mengakses halaman kelas', '2025-01-08 20:17:37');
INSERT INTO `activity_log` VALUES (2211, 1, 'Mengakses form undo edit kelas', '2025-01-08 20:17:45');
INSERT INTO `activity_log` VALUES (2212, 1, 'Mengakses halaman kelas', '2025-01-08 20:17:58');
INSERT INTO `activity_log` VALUES (2213, 1, 'Mengakses form edit kelas', '2025-01-08 20:18:07');
INSERT INTO `activity_log` VALUES (2214, 1, 'Mengakses halaman kelas', '2025-01-08 20:18:09');
INSERT INTO `activity_log` VALUES (2215, 1, 'Mengakses form undo edit kelas', '2025-01-08 20:18:14');
INSERT INTO `activity_log` VALUES (2216, 1, 'Mengakses halaman kelas', '2025-01-08 20:18:42');
INSERT INTO `activity_log` VALUES (2217, 1, 'Mengakses form undo edit kelas', '2025-01-08 20:18:46');
INSERT INTO `activity_log` VALUES (2218, 1, 'Mengakses halaman kelas', '2025-01-08 20:21:21');
INSERT INTO `activity_log` VALUES (2219, 1, 'Mengakses form undo edit kelas', '2025-01-08 20:21:27');
INSERT INTO `activity_log` VALUES (2220, 1, 'Mengakses halaman kelas', '2025-01-08 20:23:56');
INSERT INTO `activity_log` VALUES (2221, 1, 'Mengakses form undo edit kelas', '2025-01-08 20:24:01');
INSERT INTO `activity_log` VALUES (2222, 1, 'Mengakses halaman kelas', '2025-01-08 20:24:51');
INSERT INTO `activity_log` VALUES (2223, 1, 'Mengakses form edit kelas', '2025-01-08 20:24:57');
INSERT INTO `activity_log` VALUES (2224, 1, 'Mengubah data kelas', '2025-01-08 20:25:03');
INSERT INTO `activity_log` VALUES (2225, 1, 'Mengakses halaman kelas', '2025-01-08 20:25:04');
INSERT INTO `activity_log` VALUES (2226, 1, 'Mengakses form undo edit kelas', '2025-01-08 20:25:23');
INSERT INTO `activity_log` VALUES (2227, 1, 'Mengakses halaman kelas', '2025-01-08 20:25:39');
INSERT INTO `activity_log` VALUES (2228, 1, 'Mengakses form edit kelas', '2025-01-08 20:25:44');
INSERT INTO `activity_log` VALUES (2229, 1, 'Mengubah data kelas', '2025-01-08 20:25:49');
INSERT INTO `activity_log` VALUES (2230, 1, 'Mengakses halaman kelas', '2025-01-08 20:25:50');
INSERT INTO `activity_log` VALUES (2231, 1, 'Mengakses form undo edit kelas', '2025-01-08 20:25:55');
INSERT INTO `activity_log` VALUES (2232, 1, 'Mengakses halaman kelas', '2025-01-08 20:26:16');
INSERT INTO `activity_log` VALUES (2233, 1, 'Mengakses halaman kelas', '2025-01-08 20:26:48');
INSERT INTO `activity_log` VALUES (2234, 1, 'Mengakses form undo edit kelas', '2025-01-08 20:26:53');
INSERT INTO `activity_log` VALUES (2235, 1, 'Mengakses halaman kelas', '2025-01-08 20:26:59');
INSERT INTO `activity_log` VALUES (2236, 1, 'Mengakses halaman kelas', '2025-01-08 20:27:19');
INSERT INTO `activity_log` VALUES (2237, 1, 'Mengakses form undo edit kelas', '2025-01-08 20:27:24');
INSERT INTO `activity_log` VALUES (2238, 1, 'Undo edit data kelas', '2025-01-08 20:27:30');
INSERT INTO `activity_log` VALUES (2239, 1, 'Mengakses halaman kelas', '2025-01-08 20:27:31');
INSERT INTO `activity_log` VALUES (2240, 1, 'Mengakses halaman user', '2025-01-08 20:28:00');
INSERT INTO `activity_log` VALUES (2241, 1, 'Mengakses form tambah user', '2025-01-08 20:36:36');
INSERT INTO `activity_log` VALUES (2242, 1, 'Mengakses form tambah user', '2025-01-08 20:37:08');
INSERT INTO `activity_log` VALUES (2243, 1, 'Mengakses halaman kelas', '2025-01-08 20:37:30');
INSERT INTO `activity_log` VALUES (2244, 1, 'Mengakses form tambah kelas', '2025-01-08 20:37:34');
INSERT INTO `activity_log` VALUES (2245, 1, 'Mengakses halaman user', '2025-01-08 20:37:41');
INSERT INTO `activity_log` VALUES (2246, 1, 'Mengakses form tambah user', '2025-01-08 20:37:49');
INSERT INTO `activity_log` VALUES (2247, 1, 'Mengakses form tambah user', '2025-01-08 20:39:25');
INSERT INTO `activity_log` VALUES (2248, 1, 'Mengakses form tambah user', '2025-01-08 20:41:29');
INSERT INTO `activity_log` VALUES (2249, 1, 'Mengakses form tambah user', '2025-01-08 20:43:49');
INSERT INTO `activity_log` VALUES (2250, 1, 'Mengakses form tambah user', '2025-01-08 20:44:10');
INSERT INTO `activity_log` VALUES (2251, 1, 'Mengakses form tambah user', '2025-01-08 20:44:34');
INSERT INTO `activity_log` VALUES (2252, 1, 'Mengakses form tambah user', '2025-01-08 20:44:45');
INSERT INTO `activity_log` VALUES (2253, 1, 'Mengakses form tambah user', '2025-01-08 20:45:13');
INSERT INTO `activity_log` VALUES (2254, 1, 'Mengakses halaman dashboard', '2025-01-08 23:40:27');
INSERT INTO `activity_log` VALUES (2255, 1, 'Mengakses halaman user', '2025-01-08 23:40:33');
INSERT INTO `activity_log` VALUES (2256, 1, 'Mengakses form tambah user', '2025-01-08 23:40:57');
INSERT INTO `activity_log` VALUES (2257, 1, 'Menambah user', '2025-01-08 23:41:12');
INSERT INTO `activity_log` VALUES (2258, 1, 'Mengakses halaman user', '2025-01-08 23:41:18');
INSERT INTO `activity_log` VALUES (2259, 1, 'Mengakses halaman user', '2025-01-08 23:44:16');
INSERT INTO `activity_log` VALUES (2260, 1, 'Mengakses form tambah user', '2025-01-08 23:44:22');
INSERT INTO `activity_log` VALUES (2261, 1, 'Mengakses halaman user', '2025-01-08 23:44:29');
INSERT INTO `activity_log` VALUES (2262, 1, 'Mengakses halaman user', '2025-01-08 23:44:49');
INSERT INTO `activity_log` VALUES (2263, 1, 'Mengakses halaman user', '2025-01-08 23:46:17');
INSERT INTO `activity_log` VALUES (2264, 1, 'Mengakses halaman user', '2025-01-08 23:46:25');
INSERT INTO `activity_log` VALUES (2265, 1, 'Mengakses halaman user', '2025-01-08 23:46:52');
INSERT INTO `activity_log` VALUES (2266, 1, 'Mengakses halaman user', '2025-01-08 23:48:37');
INSERT INTO `activity_log` VALUES (2267, 1, 'Mengakses form edit user', '2025-01-08 23:48:42');
INSERT INTO `activity_log` VALUES (2268, 1, 'Mengakses form edit user', '2025-01-08 23:48:57');
INSERT INTO `activity_log` VALUES (2269, 1, 'Mengakses form edit user', '2025-01-08 23:50:34');
INSERT INTO `activity_log` VALUES (2270, 1, 'Mengakses form edit user', '2025-01-08 23:54:54');
INSERT INTO `activity_log` VALUES (2271, 1, 'Mengakses form edit user', '2025-01-08 23:55:54');
INSERT INTO `activity_log` VALUES (2272, 1, 'Mengakses form edit user', '2025-01-08 23:58:15');
INSERT INTO `activity_log` VALUES (2273, 1, 'Mengakses form edit user', '2025-01-08 23:58:34');
INSERT INTO `activity_log` VALUES (2274, 1, 'Mengakses form edit user', '2025-01-08 23:58:45');
INSERT INTO `activity_log` VALUES (2275, 1, 'Mengakses form edit user', '2025-01-09 00:01:37');
INSERT INTO `activity_log` VALUES (2276, 1, 'Mengakses form edit user', '2025-01-09 00:01:43');
INSERT INTO `activity_log` VALUES (2277, 1, 'Mengakses form edit user', '2025-01-09 00:02:09');
INSERT INTO `activity_log` VALUES (2278, 1, 'Mengakses form edit user', '2025-01-09 00:02:37');
INSERT INTO `activity_log` VALUES (2279, 1, 'Mengakses form edit user', '2025-01-09 00:03:00');
INSERT INTO `activity_log` VALUES (2280, 1, 'Mengubah data user', '2025-01-09 00:03:28');
INSERT INTO `activity_log` VALUES (2281, 1, 'Mengakses halaman user', '2025-01-09 00:03:30');
INSERT INTO `activity_log` VALUES (2282, 1, 'Mengakses form edit user', '2025-01-09 00:03:36');
INSERT INTO `activity_log` VALUES (2283, 1, 'Mengakses form edit user', '2025-01-09 00:04:55');
INSERT INTO `activity_log` VALUES (2284, 1, 'Mengakses halaman dashboard', '2025-01-09 00:05:15');
INSERT INTO `activity_log` VALUES (2285, 1, 'Mengakses halaman user', '2025-01-09 00:05:24');
INSERT INTO `activity_log` VALUES (2286, 1, 'Mengakses halaman kelas', '2025-01-09 00:05:37');
INSERT INTO `activity_log` VALUES (2287, 1, 'Mengakses halaman jurusan', '2025-01-09 00:05:46');
INSERT INTO `activity_log` VALUES (2288, 1, 'Mengakses halaman pengumuman', '2025-01-09 00:05:55');
INSERT INTO `activity_log` VALUES (2289, 1, 'Mengakses halaman pemberitahuan', '2025-01-09 00:06:02');
INSERT INTO `activity_log` VALUES (2290, 1, 'Mengakses halaman setting', '2025-01-09 00:06:04');
INSERT INTO `activity_log` VALUES (2291, 1, 'Mengakses halaman pemberitahuan', '2025-01-09 00:06:09');
INSERT INTO `activity_log` VALUES (2292, 1, 'Mengakses halaman log aktivitas', '2025-01-09 00:06:21');
INSERT INTO `activity_log` VALUES (2293, 1, 'Mengakses halaman restore user', '2025-01-09 00:06:28');
INSERT INTO `activity_log` VALUES (2294, 1, 'Mengakses halaman restore kelas', '2025-01-09 00:06:39');
INSERT INTO `activity_log` VALUES (2295, 1, 'Mengakses halaman user', '2025-01-09 00:06:56');
INSERT INTO `activity_log` VALUES (2296, 1, 'Mengakses halaman user', '2025-01-09 00:07:11');
INSERT INTO `activity_log` VALUES (2297, 1, 'Mengakses form edit user', '2025-01-09 00:07:15');
INSERT INTO `activity_log` VALUES (2298, 1, 'Mengubah data user', '2025-01-09 00:07:23');
INSERT INTO `activity_log` VALUES (2299, 1, 'Mengakses halaman user', '2025-01-09 00:07:24');
INSERT INTO `activity_log` VALUES (2300, 1, 'Mengakses halaman user', '2025-01-09 00:09:30');
INSERT INTO `activity_log` VALUES (2301, 1, 'Mengakses form edit user', '2025-01-09 00:09:34');
INSERT INTO `activity_log` VALUES (2302, 1, 'Mengubah data user', '2025-01-09 00:10:00');
INSERT INTO `activity_log` VALUES (2303, 1, 'Mengakses halaman user', '2025-01-09 00:10:03');
INSERT INTO `activity_log` VALUES (2304, 1, 'Mengakses form edit user', '2025-01-09 00:10:09');
INSERT INTO `activity_log` VALUES (2305, 1, 'Mengubah data user', '2025-01-09 00:10:28');
INSERT INTO `activity_log` VALUES (2306, 1, 'Mengakses halaman user', '2025-01-09 00:10:29');
INSERT INTO `activity_log` VALUES (2307, 1, 'Mengakses form edit user', '2025-01-09 00:10:38');
INSERT INTO `activity_log` VALUES (2308, 1, 'Mengakses form edit user', '2025-01-09 00:13:33');
INSERT INTO `activity_log` VALUES (2309, 1, 'Mengubah data user', '2025-01-09 00:13:43');
INSERT INTO `activity_log` VALUES (2310, 1, 'Mengakses halaman user', '2025-01-09 00:13:44');
INSERT INTO `activity_log` VALUES (2311, 1, 'Mengakses form edit user', '2025-01-09 00:13:52');
INSERT INTO `activity_log` VALUES (2312, 1, 'Mengubah data user', '2025-01-09 00:14:00');
INSERT INTO `activity_log` VALUES (2313, 1, 'Mengakses halaman user', '2025-01-09 00:14:01');
INSERT INTO `activity_log` VALUES (2314, 1, 'Mengakses form edit user', '2025-01-09 00:14:05');
INSERT INTO `activity_log` VALUES (2315, 1, 'Mengubah data user', '2025-01-09 00:14:16');
INSERT INTO `activity_log` VALUES (2316, 1, 'Mengakses halaman user', '2025-01-09 00:14:17');
INSERT INTO `activity_log` VALUES (2317, 1, 'Mengakses form edit user', '2025-01-09 00:14:20');
INSERT INTO `activity_log` VALUES (2318, 1, 'Mengakses form edit user', '2025-01-09 00:16:19');
INSERT INTO `activity_log` VALUES (2319, 1, 'Mengakses form edit user', '2025-01-09 00:18:15');
INSERT INTO `activity_log` VALUES (2320, 1, 'Mengubah data user', '2025-01-09 00:18:24');
INSERT INTO `activity_log` VALUES (2321, 1, 'Mengakses halaman user', '2025-01-09 00:18:25');
INSERT INTO `activity_log` VALUES (2322, 1, 'Mengakses form edit user', '2025-01-09 00:18:28');
INSERT INTO `activity_log` VALUES (2323, 1, 'Mengakses halaman user', '2025-01-09 00:18:37');
INSERT INTO `activity_log` VALUES (2324, 1, 'Mengakses halaman user', '2025-01-09 00:25:16');
INSERT INTO `activity_log` VALUES (2325, 1, 'Mengakses halaman user', '2025-01-09 00:26:01');
INSERT INTO `activity_log` VALUES (2326, 1, 'Mengakses form undo edit user', '2025-01-09 00:26:07');
INSERT INTO `activity_log` VALUES (2327, 1, 'Mengakses form undo edit user', '2025-01-09 00:28:23');
INSERT INTO `activity_log` VALUES (2328, 1, 'Mengakses form undo edit user', '2025-01-09 00:30:58');
INSERT INTO `activity_log` VALUES (2329, 1, 'Mengakses halaman user', '2025-01-09 00:34:23');
INSERT INTO `activity_log` VALUES (2330, 1, 'Mengakses halaman pengumuman', '2025-01-09 00:34:27');
INSERT INTO `activity_log` VALUES (2331, 1, 'Mengakses halaman pengumuman', '2025-01-09 00:36:12');
INSERT INTO `activity_log` VALUES (2332, 1, 'Mengakses halaman user', '2025-01-09 00:36:16');
INSERT INTO `activity_log` VALUES (2333, 1, 'Mengakses form undo edit user', '2025-01-09 00:36:24');
INSERT INTO `activity_log` VALUES (2334, 1, 'Mengakses form undo edit user', '2025-01-09 00:36:40');
INSERT INTO `activity_log` VALUES (2335, 1, 'Mengakses form undo edit user', '2025-01-09 00:38:38');
INSERT INTO `activity_log` VALUES (2336, 1, 'Mengakses form undo edit user', '2025-01-09 00:48:56');
INSERT INTO `activity_log` VALUES (2337, 1, 'Mengakses form undo edit user', '2025-01-09 00:50:01');
INSERT INTO `activity_log` VALUES (2338, 1, 'Mengakses form undo edit user', '2025-01-09 00:50:52');
INSERT INTO `activity_log` VALUES (2339, 1, 'Mengakses halaman user', '2025-01-09 00:52:18');
INSERT INTO `activity_log` VALUES (2340, 1, 'Mengakses halaman dashboard', '2025-02-03 13:30:37');
INSERT INTO `activity_log` VALUES (2341, 1, 'Mengakses halaman dashboard', '2025-02-03 13:31:48');
INSERT INTO `activity_log` VALUES (2342, 1, 'Mengakses halaman dashboard', '2025-02-03 13:32:32');
INSERT INTO `activity_log` VALUES (2343, 1, 'Mengakses halaman profile', '2025-02-03 13:32:38');
INSERT INTO `activity_log` VALUES (2344, 1, 'Mengakses halaman user', '2025-02-03 13:32:44');
INSERT INTO `activity_log` VALUES (2345, 1, 'Mengakses halaman user', '2025-02-03 13:33:22');
INSERT INTO `activity_log` VALUES (2346, 1, 'Mengakses halaman user', '2025-02-03 13:34:43');
INSERT INTO `activity_log` VALUES (2347, 1, 'Mengakses halaman user', '2025-02-03 13:39:08');
INSERT INTO `activity_log` VALUES (2348, 1, 'Mengakses form tambah user', '2025-02-03 13:40:31');
INSERT INTO `activity_log` VALUES (2349, 1, 'Mengakses halaman user', '2025-02-03 13:42:27');
INSERT INTO `activity_log` VALUES (2350, 1, 'Mengakses form tambah user', '2025-02-03 13:42:31');
INSERT INTO `activity_log` VALUES (2351, 1, 'Mengakses halaman user', '2025-02-03 13:42:38');
INSERT INTO `activity_log` VALUES (2352, 1, 'Mengakses halaman user', '2025-02-03 13:43:24');
INSERT INTO `activity_log` VALUES (2353, 1, 'Mengakses form tambah user', '2025-02-03 13:43:30');
INSERT INTO `activity_log` VALUES (2354, 1, 'Mengakses halaman user', '2025-02-03 13:44:24');
INSERT INTO `activity_log` VALUES (2355, 1, 'Mengakses halaman user', '2025-02-03 13:45:12');
INSERT INTO `activity_log` VALUES (2356, 1, 'Mengakses form tambah user', '2025-02-03 13:45:16');
INSERT INTO `activity_log` VALUES (2357, 1, 'Mengakses halaman user', '2025-02-03 13:47:17');
INSERT INTO `activity_log` VALUES (2358, 1, 'Mengakses form tambah user', '2025-02-03 13:47:30');
INSERT INTO `activity_log` VALUES (2359, 1, 'Mengakses halaman user', '2025-02-03 13:48:03');
INSERT INTO `activity_log` VALUES (2360, 1, 'Mengakses halaman user', '2025-02-03 13:48:39');
INSERT INTO `activity_log` VALUES (2361, 1, 'Mengakses form tambah user', '2025-02-03 13:48:43');
INSERT INTO `activity_log` VALUES (2362, 1, 'Mengakses halaman user', '2025-02-03 13:52:24');
INSERT INTO `activity_log` VALUES (2363, 1, 'Mengakses form tambah user', '2025-02-03 13:52:31');
INSERT INTO `activity_log` VALUES (2364, 1, 'Mengakses halaman dashboard', '2025-02-03 13:53:20');
INSERT INTO `activity_log` VALUES (2365, 1, 'Mengakses halaman dashboard', '2025-02-03 13:53:51');
INSERT INTO `activity_log` VALUES (2366, 1, 'Mengakses halaman dashboard', '2025-02-03 14:37:58');
INSERT INTO `activity_log` VALUES (2367, 1, 'Mengakses halaman pengumuman', '2025-02-03 14:38:22');
INSERT INTO `activity_log` VALUES (2368, 1, 'Mengakses halaman agenda', '2025-02-03 14:44:26');
INSERT INTO `activity_log` VALUES (2369, 1, 'Mengakses halaman agenda', '2025-02-03 14:45:46');
INSERT INTO `activity_log` VALUES (2370, 1, 'Mengakses halaman agenda', '2025-02-03 14:45:55');
INSERT INTO `activity_log` VALUES (2371, 1, 'Mengakses halaman dashboard', '2025-02-03 15:30:44');
INSERT INTO `activity_log` VALUES (2372, 1, 'Mengakses halaman agenda', '2025-02-03 15:50:39');
INSERT INTO `activity_log` VALUES (2373, 1, 'Mengakses halaman agenda', '2025-02-03 15:56:37');
INSERT INTO `activity_log` VALUES (2374, 1, 'Mengakses halaman agenda', '2025-02-03 15:57:00');
INSERT INTO `activity_log` VALUES (2375, 1, 'Mengakses halaman agenda', '2025-02-03 15:57:22');
INSERT INTO `activity_log` VALUES (2376, 1, 'Mengakses halaman agenda', '2025-02-03 16:04:59');
INSERT INTO `activity_log` VALUES (2377, 1, 'Mengakses halaman agenda', '2025-02-03 16:06:16');
INSERT INTO `activity_log` VALUES (2378, 1, 'Mengakses halaman agenda', '2025-02-03 16:08:02');
INSERT INTO `activity_log` VALUES (2379, 1, 'Mengakses halaman agenda', '2025-02-03 16:09:11');
INSERT INTO `activity_log` VALUES (2380, 1, 'Mengakses halaman agenda', '2025-02-03 16:09:33');
INSERT INTO `activity_log` VALUES (2381, 1, 'Mengakses halaman agenda', '2025-02-03 16:09:42');
INSERT INTO `activity_log` VALUES (2382, 1, 'Mengakses halaman agenda', '2025-02-03 16:09:52');
INSERT INTO `activity_log` VALUES (2383, 1, 'Mengakses halaman agenda', '2025-02-03 16:10:11');
INSERT INTO `activity_log` VALUES (2384, 1, 'Mengakses halaman agenda', '2025-02-03 16:11:38');
INSERT INTO `activity_log` VALUES (2385, 1, 'Mengakses halaman agenda', '2025-02-03 16:12:51');
INSERT INTO `activity_log` VALUES (2386, 1, 'Mengakses halaman agenda', '2025-02-03 16:22:43');
INSERT INTO `activity_log` VALUES (2387, 1, 'Mengakses halaman agenda', '2025-02-03 16:29:01');
INSERT INTO `activity_log` VALUES (2388, 1, 'Mengakses form tambah agenda', '2025-02-03 16:29:46');
INSERT INTO `activity_log` VALUES (2389, 1, 'Mengakses halaman agenda', '2025-02-03 16:30:55');
INSERT INTO `activity_log` VALUES (2390, 1, 'Mengakses form tambah agenda', '2025-02-03 16:31:16');
INSERT INTO `activity_log` VALUES (2391, 1, 'Mengakses halaman agenda', '2025-02-03 16:32:47');
INSERT INTO `activity_log` VALUES (2392, 1, 'Mengakses form tambah agenda', '2025-02-03 16:32:52');
INSERT INTO `activity_log` VALUES (2393, 1, 'Mengakses halaman agenda', '2025-02-03 16:33:29');
INSERT INTO `activity_log` VALUES (2394, 1, 'Mengakses form tambah agenda', '2025-02-03 16:33:33');
INSERT INTO `activity_log` VALUES (2395, 1, 'Mengakses halaman agenda', '2025-02-03 16:33:46');
INSERT INTO `activity_log` VALUES (2396, 1, 'Mengakses form tambah agenda', '2025-02-03 16:34:43');
INSERT INTO `activity_log` VALUES (2397, 1, 'Mengakses halaman agenda', '2025-02-03 16:35:04');
INSERT INTO `activity_log` VALUES (2398, 1, 'Mengakses form tambah agenda', '2025-02-03 16:35:28');
INSERT INTO `activity_log` VALUES (2399, 1, 'Mengakses halaman agenda', '2025-02-03 16:35:59');
INSERT INTO `activity_log` VALUES (2400, 1, 'Mengakses halaman agenda', '2025-02-03 16:40:36');
INSERT INTO `activity_log` VALUES (2401, 1, 'Mengakses form tambah agenda', '2025-02-03 16:40:38');
INSERT INTO `activity_log` VALUES (2402, 1, 'Mengakses halaman agenda', '2025-02-03 16:43:57');
INSERT INTO `activity_log` VALUES (2403, 1, 'Mengakses form tambah agenda', '2025-02-03 16:44:04');
INSERT INTO `activity_log` VALUES (2404, 1, 'Mengakses halaman agenda', '2025-02-03 16:44:48');
INSERT INTO `activity_log` VALUES (2405, 1, 'Mengakses form tambah agenda', '2025-02-03 16:44:52');
INSERT INTO `activity_log` VALUES (2406, 1, 'Mengakses halaman agenda', '2025-02-03 16:45:21');
INSERT INTO `activity_log` VALUES (2407, 1, 'Mengakses form tambah agenda', '2025-02-03 16:45:24');
INSERT INTO `activity_log` VALUES (2408, 1, 'Mengakses halaman agenda', '2025-02-03 16:45:43');
INSERT INTO `activity_log` VALUES (2409, 1, 'Mengakses halaman agenda', '2025-02-03 16:45:53');
INSERT INTO `activity_log` VALUES (2410, 1, 'Mengakses form tambah agenda', '2025-02-03 16:45:56');
INSERT INTO `activity_log` VALUES (2411, 1, 'Mengakses halaman agenda', '2025-02-03 16:47:57');
INSERT INTO `activity_log` VALUES (2412, 1, 'Mengakses form tambah agenda', '2025-02-03 16:47:59');
INSERT INTO `activity_log` VALUES (2413, 1, 'Menambah data agenda', '2025-02-03 16:48:06');
INSERT INTO `activity_log` VALUES (2414, 1, 'Mengakses halaman agenda', '2025-02-03 16:48:11');
INSERT INTO `activity_log` VALUES (2415, 1, 'Mengakses halaman agenda', '2025-02-03 16:49:37');
INSERT INTO `activity_log` VALUES (2416, 1, 'Mengakses form tambah agenda', '2025-02-03 16:51:21');
INSERT INTO `activity_log` VALUES (2417, 1, 'Mengakses halaman agenda', '2025-02-03 16:51:41');
INSERT INTO `activity_log` VALUES (2418, 1, 'Mengakses form tambah agenda', '2025-02-03 16:51:42');
INSERT INTO `activity_log` VALUES (2419, 1, 'Mengakses halaman agenda', '2025-02-03 16:51:51');
INSERT INTO `activity_log` VALUES (2420, 1, 'Mengakses form tambah agenda', '2025-02-03 16:51:53');
INSERT INTO `activity_log` VALUES (2421, 1, 'Mengakses halaman agenda', '2025-02-03 16:52:26');
INSERT INTO `activity_log` VALUES (2422, 1, 'Mengakses form tambah agenda', '2025-02-03 16:52:28');
INSERT INTO `activity_log` VALUES (2423, 1, 'Menambah data agenda', '2025-02-03 16:52:44');
INSERT INTO `activity_log` VALUES (2424, 1, 'Mengakses halaman agenda', '2025-02-03 16:52:44');
INSERT INTO `activity_log` VALUES (2425, 1, 'Mengakses halaman agenda', '2025-02-03 16:59:29');
INSERT INTO `activity_log` VALUES (2426, 1, 'Mengakses form edit agenda', '2025-02-03 16:59:34');
INSERT INTO `activity_log` VALUES (2427, 1, 'Mengakses halaman agenda', '2025-02-03 17:00:20');
INSERT INTO `activity_log` VALUES (2428, 1, 'Mengakses form edit agenda', '2025-02-03 17:00:24');
INSERT INTO `activity_log` VALUES (2429, 1, 'Mengakses halaman agenda', '2025-02-03 17:00:58');
INSERT INTO `activity_log` VALUES (2430, 1, 'Mengakses form edit agenda', '2025-02-03 17:01:02');
INSERT INTO `activity_log` VALUES (2431, 1, 'Mengubah data agenda', '2025-02-03 17:01:17');
INSERT INTO `activity_log` VALUES (2432, 1, 'Mengakses halaman agenda', '2025-02-03 17:01:18');
INSERT INTO `activity_log` VALUES (2433, 1, 'Mengakses form edit agenda', '2025-02-03 17:01:44');
INSERT INTO `activity_log` VALUES (2434, 1, 'Mengubah data agenda', '2025-02-03 17:02:13');
INSERT INTO `activity_log` VALUES (2435, 1, 'Mengakses halaman agenda', '2025-02-03 17:02:13');
INSERT INTO `activity_log` VALUES (2436, 1, 'Mengakses form edit agenda', '2025-02-03 17:02:15');
INSERT INTO `activity_log` VALUES (2437, 1, 'Mengakses halaman agenda', '2025-02-03 17:03:18');
INSERT INTO `activity_log` VALUES (2438, 1, 'Mengakses form edit agenda', '2025-02-03 17:03:23');
INSERT INTO `activity_log` VALUES (2439, 1, 'Mengubah data agenda', '2025-02-03 17:03:32');
INSERT INTO `activity_log` VALUES (2440, 1, 'Mengakses halaman agenda', '2025-02-03 17:03:33');
INSERT INTO `activity_log` VALUES (2441, 1, 'Mengakses form edit agenda', '2025-02-03 17:03:51');
INSERT INTO `activity_log` VALUES (2442, 1, 'Mengakses halaman agenda', '2025-02-03 17:06:13');
INSERT INTO `activity_log` VALUES (2443, 1, 'Mengakses halaman agenda', '2025-02-03 17:08:33');
INSERT INTO `activity_log` VALUES (2444, 1, 'Mengakses form undo edit agenda', '2025-02-03 17:08:40');
INSERT INTO `activity_log` VALUES (2445, 1, 'Mengakses halaman agenda', '2025-02-03 17:09:14');
INSERT INTO `activity_log` VALUES (2446, 1, 'Mengakses form undo edit agenda', '2025-02-03 17:09:21');
INSERT INTO `activity_log` VALUES (2447, 1, 'Mengakses halaman agenda', '2025-02-03 17:10:08');
INSERT INTO `activity_log` VALUES (2448, 1, 'Mengakses form undo edit agenda', '2025-02-03 17:10:12');
INSERT INTO `activity_log` VALUES (2449, 1, 'Mengakses halaman agenda', '2025-02-03 17:10:20');
INSERT INTO `activity_log` VALUES (2450, 1, 'Mengakses form undo edit agenda', '2025-02-03 17:10:29');
INSERT INTO `activity_log` VALUES (2451, 1, 'Mengakses halaman agenda', '2025-02-03 17:10:43');
INSERT INTO `activity_log` VALUES (2452, 1, 'Mengakses halaman agenda', '2025-02-03 17:10:53');
INSERT INTO `activity_log` VALUES (2453, 1, 'Mengakses form undo edit agenda', '2025-02-03 17:10:58');
INSERT INTO `activity_log` VALUES (2454, 1, 'Mengakses halaman agenda', '2025-02-03 17:12:43');
INSERT INTO `activity_log` VALUES (2455, 1, 'Mengakses form edit agenda', '2025-02-03 17:12:46');
INSERT INTO `activity_log` VALUES (2456, 1, 'Mengakses halaman agenda', '2025-02-03 17:12:47');
INSERT INTO `activity_log` VALUES (2457, 1, 'Mengakses form undo edit agenda', '2025-02-03 17:12:53');
INSERT INTO `activity_log` VALUES (2458, 1, 'Mengakses halaman agenda', '2025-02-03 17:13:29');
INSERT INTO `activity_log` VALUES (2459, 1, 'Mengakses halaman agenda', '2025-02-03 17:14:32');
INSERT INTO `activity_log` VALUES (2460, 1, 'Mengakses form undo edit agenda', '2025-02-03 17:14:36');
INSERT INTO `activity_log` VALUES (2461, 1, 'Mengakses halaman agenda', '2025-02-03 17:14:55');
INSERT INTO `activity_log` VALUES (2462, 1, 'Mengakses form undo edit agenda', '2025-02-03 17:15:00');
INSERT INTO `activity_log` VALUES (2463, 1, 'Mengakses halaman agenda', '2025-02-03 17:16:03');
INSERT INTO `activity_log` VALUES (2464, 1, 'Mengakses form undo edit agenda', '2025-02-03 17:16:10');
INSERT INTO `activity_log` VALUES (2465, 1, 'Undo edit data agenda', '2025-02-03 17:16:15');
INSERT INTO `activity_log` VALUES (2466, 1, 'Mengakses halaman agenda', '2025-02-03 17:16:16');
INSERT INTO `activity_log` VALUES (2467, 1, 'Mengakses form edit agenda', '2025-02-03 17:16:43');
INSERT INTO `activity_log` VALUES (2468, 1, 'Mengakses halaman agenda', '2025-02-03 17:17:40');
INSERT INTO `activity_log` VALUES (2469, 1, 'Menghapus data agenda', '2025-02-03 17:17:46');
INSERT INTO `activity_log` VALUES (2470, 1, 'Mengakses halaman agenda', '2025-02-03 17:17:47');
INSERT INTO `activity_log` VALUES (2471, 1, 'Mengakses halaman agenda', '2025-02-03 17:19:30');
INSERT INTO `activity_log` VALUES (2472, 1, 'Mengakses halaman agenda', '2025-02-03 17:19:54');
INSERT INTO `activity_log` VALUES (2473, 1, 'Mengakses halaman agenda', '2025-02-03 17:21:34');
INSERT INTO `activity_log` VALUES (2474, 1, 'Mengakses halaman agenda', '2025-02-03 17:24:13');
INSERT INTO `activity_log` VALUES (2475, 1, 'Mengakses halaman agenda', '2025-02-03 17:26:30');
INSERT INTO `activity_log` VALUES (2476, 1, 'Mengakses halaman agenda', '2025-02-03 17:26:59');
INSERT INTO `activity_log` VALUES (2477, 1, 'Mengakses halaman agenda', '2025-02-03 17:29:19');
INSERT INTO `activity_log` VALUES (2478, 1, 'Mengakses halaman agenda', '2025-02-03 17:30:12');
INSERT INTO `activity_log` VALUES (2479, 1, 'Mengakses halaman agenda', '2025-02-03 17:33:06');
INSERT INTO `activity_log` VALUES (2480, 1, 'Mengakses halaman agenda', '2025-02-03 17:34:09');
INSERT INTO `activity_log` VALUES (2481, 1, 'Mengakses halaman agenda', '2025-02-03 17:38:06');
INSERT INTO `activity_log` VALUES (2482, 1, 'Mengakses halaman agenda', '2025-02-03 17:38:28');
INSERT INTO `activity_log` VALUES (2483, 1, 'Mengakses halaman agenda', '2025-02-03 17:38:37');
INSERT INTO `activity_log` VALUES (2484, 1, 'Mengakses halaman agenda', '2025-02-03 17:38:45');
INSERT INTO `activity_log` VALUES (2485, 1, 'Mengakses halaman agenda', '2025-02-03 17:41:19');
INSERT INTO `activity_log` VALUES (2486, 1, 'Mengakses halaman agenda', '2025-02-03 17:41:27');
INSERT INTO `activity_log` VALUES (2487, 1, 'Mengakses halaman agenda', '2025-02-03 17:42:18');
INSERT INTO `activity_log` VALUES (2488, 1, 'Mengakses halaman agenda', '2025-02-03 17:42:29');
INSERT INTO `activity_log` VALUES (2489, 1, 'Mengakses halaman agenda', '2025-02-03 17:43:18');
INSERT INTO `activity_log` VALUES (2490, 1, 'Mengakses halaman agenda', '2025-02-03 17:43:23');
INSERT INTO `activity_log` VALUES (2491, 1, 'Mengakses halaman agenda', '2025-02-03 17:44:17');
INSERT INTO `activity_log` VALUES (2492, 1, 'Mengakses halaman agenda', '2025-02-03 17:45:23');
INSERT INTO `activity_log` VALUES (2493, 1, 'Mengakses halaman agenda', '2025-02-03 17:45:32');
INSERT INTO `activity_log` VALUES (2494, 1, 'Mengakses halaman agenda', '2025-02-03 17:45:50');
INSERT INTO `activity_log` VALUES (2495, 1, 'Mengakses halaman pemberitahuan', '2025-02-03 17:48:28');
INSERT INTO `activity_log` VALUES (2496, 1, 'Mengakses halaman pemberitahuan', '2025-02-03 17:49:09');
INSERT INTO `activity_log` VALUES (2497, 1, 'Mengakses halaman pemberitahuan', '2025-02-03 17:49:28');
INSERT INTO `activity_log` VALUES (2498, 1, 'Mengakses halaman agenda murid', '2025-02-03 17:49:59');
INSERT INTO `activity_log` VALUES (2499, 1, 'Mengakses halaman agenda murid', '2025-02-03 17:50:13');
INSERT INTO `activity_log` VALUES (2500, 1, 'Mengakses halaman agenda murid', '2025-02-03 17:51:12');
INSERT INTO `activity_log` VALUES (2501, 1, 'Mengakses halaman agenda murid', '2025-02-03 17:51:43');
INSERT INTO `activity_log` VALUES (2502, 1, 'Mengakses halaman agenda murid', '2025-02-03 17:51:55');
INSERT INTO `activity_log` VALUES (2503, 1, 'Mengakses halaman agenda', '2025-02-03 17:51:55');
INSERT INTO `activity_log` VALUES (2504, 1, 'Mengakses halaman agenda', '2025-02-03 17:52:25');
INSERT INTO `activity_log` VALUES (2505, 1, 'Mengakses halaman agenda', '2025-02-03 17:52:35');
INSERT INTO `activity_log` VALUES (2506, 1, 'Mengakses halaman agenda', '2025-02-03 17:52:42');
INSERT INTO `activity_log` VALUES (2507, 1, 'Mengakses halaman agenda', '2025-02-03 17:53:19');
INSERT INTO `activity_log` VALUES (2508, 1, 'Mengakses halaman restore user', '2025-02-03 18:53:48');
INSERT INTO `activity_log` VALUES (2509, 1, 'Mengakses halaman restore user', '2025-02-03 18:54:01');
INSERT INTO `activity_log` VALUES (2510, 1, 'Mengakses halaman restore user', '2025-02-03 18:54:25');
INSERT INTO `activity_log` VALUES (2511, 1, 'Merestore user', '2025-02-03 18:54:34');
INSERT INTO `activity_log` VALUES (2512, 1, 'Mengakses halaman restore user', '2025-02-03 18:54:34');
INSERT INTO `activity_log` VALUES (2513, 1, 'Mengakses halaman restore user', '2025-02-03 18:54:43');
INSERT INTO `activity_log` VALUES (2514, 1, 'Mengakses halaman restore user', '2025-02-03 18:55:04');
INSERT INTO `activity_log` VALUES (2515, 1, 'Mengakses halaman restore user', '2025-02-03 18:55:25');
INSERT INTO `activity_log` VALUES (2516, 1, 'Mengakses halaman restore user', '2025-02-03 18:57:03');
INSERT INTO `activity_log` VALUES (2517, 1, 'Mengakses halaman restore user', '2025-02-03 18:57:18');
INSERT INTO `activity_log` VALUES (2518, 1, 'Mengakses halaman restore user', '2025-02-03 18:57:28');
INSERT INTO `activity_log` VALUES (2519, 1, 'Merestore user', '2025-02-03 18:57:31');
INSERT INTO `activity_log` VALUES (2520, 1, 'Mengakses halaman restore user', '2025-02-03 18:57:31');
INSERT INTO `activity_log` VALUES (2521, 1, 'Mengakses halaman restore kelas', '2025-02-03 18:57:34');
INSERT INTO `activity_log` VALUES (2522, 1, 'Mengakses halaman restore kelas', '2025-02-03 18:57:49');
INSERT INTO `activity_log` VALUES (2523, 1, 'Merestore kelas', '2025-02-03 18:57:56');
INSERT INTO `activity_log` VALUES (2524, 1, 'Mengakses halaman restore kelas', '2025-02-03 18:57:57');
INSERT INTO `activity_log` VALUES (2525, 1, 'Mengakses halaman restore jurusan', '2025-02-03 18:57:59');
INSERT INTO `activity_log` VALUES (2526, 1, 'Mengakses halaman restore jurusan', '2025-02-03 18:58:08');
INSERT INTO `activity_log` VALUES (2527, 1, 'Merestore jurusan', '2025-02-03 18:58:15');
INSERT INTO `activity_log` VALUES (2528, 1, 'Mengakses halaman restore jurusan', '2025-02-03 18:58:16');
INSERT INTO `activity_log` VALUES (2529, 1, 'Mengakses halaman restore agenda', '2025-02-03 18:58:16');
INSERT INTO `activity_log` VALUES (2530, 1, 'Mengakses halaman restore agenda', '2025-02-03 18:58:45');
INSERT INTO `activity_log` VALUES (2531, 1, 'Mengakses halaman restore agenda', '2025-02-03 19:01:33');
INSERT INTO `activity_log` VALUES (2532, 1, 'Mengakses halaman restore agenda', '2025-02-03 19:01:54');
INSERT INTO `activity_log` VALUES (2533, 1, 'Mengakses halaman restore agenda', '2025-02-03 19:02:16');
INSERT INTO `activity_log` VALUES (2534, 1, 'Mengakses halaman restore agenda', '2025-02-03 19:02:24');
INSERT INTO `activity_log` VALUES (2535, 1, 'Mengakses halaman restore agenda', '2025-02-03 19:02:32');
INSERT INTO `activity_log` VALUES (2536, 1, 'Merestore agenda', '2025-02-03 19:02:38');
INSERT INTO `activity_log` VALUES (2537, 1, 'Mengakses halaman restore agenda', '2025-02-03 19:02:38');
INSERT INTO `activity_log` VALUES (2538, 1, 'Mengakses halaman agenda murid', '2025-02-03 19:02:46');
INSERT INTO `activity_log` VALUES (2539, 1, 'Mengakses halaman agenda', '2025-02-03 19:02:51');
INSERT INTO `activity_log` VALUES (2540, 1, 'Mengakses halaman agenda', '2025-02-03 19:04:47');
INSERT INTO `activity_log` VALUES (2541, NULL, 'Mengakses halaman agenda', '2025-02-03 21:15:53');
INSERT INTO `activity_log` VALUES (2542, NULL, 'Mengakses halaman agenda', '2025-02-03 21:16:24');
INSERT INTO `activity_log` VALUES (2543, NULL, 'Mengakses halaman agenda', '2025-02-03 21:19:48');
INSERT INTO `activity_log` VALUES (2544, NULL, 'Mengakses halaman agenda', '2025-02-03 21:35:00');
INSERT INTO `activity_log` VALUES (2545, NULL, 'Mengakses halaman agenda', '2025-02-03 21:35:11');
INSERT INTO `activity_log` VALUES (2546, NULL, 'Mengakses halaman agenda', '2025-02-03 21:53:42');
INSERT INTO `activity_log` VALUES (2547, NULL, 'Mengakses halaman agenda', '2025-02-03 21:54:03');
INSERT INTO `activity_log` VALUES (2548, NULL, 'Mengakses halaman agenda', '2025-02-03 21:54:24');
INSERT INTO `activity_log` VALUES (2549, 1, 'Mengakses halaman dashboard', '2025-02-03 21:54:43');
INSERT INTO `activity_log` VALUES (2550, 1, 'Mengakses halaman agenda', '2025-02-03 21:55:21');
INSERT INTO `activity_log` VALUES (2551, 1, 'Mengakses halaman agenda', '2025-02-03 21:57:35');
INSERT INTO `activity_log` VALUES (2552, 1, 'Mengakses halaman agenda', '2025-02-03 22:01:49');
INSERT INTO `activity_log` VALUES (2553, 1, 'Mengakses halaman agenda', '2025-02-03 22:02:21');
INSERT INTO `activity_log` VALUES (2554, 1, 'Mengakses halaman agenda', '2025-02-03 22:03:08');
INSERT INTO `activity_log` VALUES (2555, 1, 'Mengakses halaman agenda', '2025-02-03 22:03:11');
INSERT INTO `activity_log` VALUES (2556, 1, 'Mengakses halaman agenda', '2025-02-03 22:07:28');
INSERT INTO `activity_log` VALUES (2557, 1, 'Mengakses halaman agenda', '2025-02-03 22:07:43');
INSERT INTO `activity_log` VALUES (2558, 1, 'Mengakses halaman agenda', '2025-02-03 22:10:27');
INSERT INTO `activity_log` VALUES (2559, 1, 'Mengakses halaman agenda', '2025-02-03 22:10:42');
INSERT INTO `activity_log` VALUES (2560, 1, 'Mengakses halaman agenda', '2025-02-03 22:11:39');
INSERT INTO `activity_log` VALUES (2561, 1, 'Mengakses halaman agenda', '2025-02-03 22:13:51');
INSERT INTO `activity_log` VALUES (2562, 1, 'Mengakses halaman agenda', '2025-02-03 22:14:03');
INSERT INTO `activity_log` VALUES (2563, 1, 'Mengakses halaman agenda', '2025-02-03 22:15:27');
INSERT INTO `activity_log` VALUES (2564, 1, 'Mengakses halaman agenda', '2025-02-03 22:15:37');
INSERT INTO `activity_log` VALUES (2565, 1, 'Mengakses halaman agenda', '2025-02-03 22:18:32');
INSERT INTO `activity_log` VALUES (2566, 1, 'Mengakses halaman agenda', '2025-02-03 22:22:25');
INSERT INTO `activity_log` VALUES (2567, 1, 'Mengakses halaman agenda', '2025-02-03 22:31:15');
INSERT INTO `activity_log` VALUES (2568, 1, 'Mengakses halaman agenda', '2025-02-03 22:35:39');
INSERT INTO `activity_log` VALUES (2569, 1, 'Mengakses halaman agenda', '2025-02-03 22:36:15');
INSERT INTO `activity_log` VALUES (2570, 1, 'Mengakses halaman agenda', '2025-02-03 22:44:22');
INSERT INTO `activity_log` VALUES (2571, 1, 'Mengakses halaman agenda', '2025-02-03 22:46:38');
INSERT INTO `activity_log` VALUES (2572, 1, 'Mengakses halaman agenda', '2025-02-03 22:47:05');
INSERT INTO `activity_log` VALUES (2573, 1, 'Mengakses halaman agenda', '2025-02-03 22:47:35');
INSERT INTO `activity_log` VALUES (2574, 1, 'Mengakses halaman agenda', '2025-02-03 23:00:55');
INSERT INTO `activity_log` VALUES (2575, 1, 'Mengakses halaman agenda', '2025-02-03 23:02:27');
INSERT INTO `activity_log` VALUES (2576, 1, 'Mengakses halaman agenda', '2025-02-03 23:05:23');
INSERT INTO `activity_log` VALUES (2577, 1, 'Mengakses halaman agenda', '2025-02-03 23:07:31');
INSERT INTO `activity_log` VALUES (2578, 1, 'Mengakses halaman agenda', '2025-02-03 23:07:56');
INSERT INTO `activity_log` VALUES (2579, 1, 'Mengakses halaman agenda', '2025-02-03 23:11:42');
INSERT INTO `activity_log` VALUES (2580, 1, 'Mengakses halaman agenda', '2025-02-03 23:12:01');
INSERT INTO `activity_log` VALUES (2581, 1, 'Mengakses halaman agenda', '2025-02-03 23:16:57');
INSERT INTO `activity_log` VALUES (2582, 1, 'Mengakses halaman agenda', '2025-02-03 23:19:07');
INSERT INTO `activity_log` VALUES (2583, 1, 'Mengakses halaman agenda', '2025-02-03 23:19:25');
INSERT INTO `activity_log` VALUES (2584, 1, 'Mengakses halaman agenda', '2025-02-03 23:19:36');
INSERT INTO `activity_log` VALUES (2585, 1, 'Mengakses halaman agenda', '2025-02-03 23:30:28');
INSERT INTO `activity_log` VALUES (2586, 1, 'Mengakses halaman agenda', '2025-02-03 23:30:50');
INSERT INTO `activity_log` VALUES (2587, 1, 'Mengakses halaman agenda', '2025-02-03 23:33:38');
INSERT INTO `activity_log` VALUES (2588, 1, 'Mengakses halaman agenda', '2025-02-03 23:42:43');
INSERT INTO `activity_log` VALUES (2589, 1, 'Mengakses halaman agenda', '2025-02-03 23:43:01');
INSERT INTO `activity_log` VALUES (2590, 1, 'Mengakses halaman agenda', '2025-02-03 23:43:13');
INSERT INTO `activity_log` VALUES (2591, 1, 'Mengakses halaman agenda', '2025-02-03 23:45:53');
INSERT INTO `activity_log` VALUES (2592, 1, 'Mengakses halaman agenda', '2025-02-03 23:46:11');
INSERT INTO `activity_log` VALUES (2593, 1, 'Mengakses halaman agenda murid', '2025-02-03 23:46:35');
INSERT INTO `activity_log` VALUES (2594, 1, 'Mengakses halaman agenda murid', '2025-02-03 23:47:53');
INSERT INTO `activity_log` VALUES (2595, 1, 'Mengakses halaman agenda murid', '2025-02-03 23:48:35');
INSERT INTO `activity_log` VALUES (2596, 1, 'Mengakses halaman agenda murid', '2025-02-03 23:49:06');
INSERT INTO `activity_log` VALUES (2597, 1, 'Mengakses halaman agenda murid', '2025-02-03 23:49:51');
INSERT INTO `activity_log` VALUES (2598, 1, 'Mengakses halaman agenda murid', '2025-02-03 23:50:03');
INSERT INTO `activity_log` VALUES (2599, 1, 'Mengakses halaman agenda murid', '2025-02-03 23:54:13');
INSERT INTO `activity_log` VALUES (2600, 1, 'Mengakses halaman agenda murid', '2025-02-03 23:54:26');
INSERT INTO `activity_log` VALUES (2601, 27, 'Mengakses halaman dashboard', '2025-02-03 23:54:52');
INSERT INTO `activity_log` VALUES (2602, 27, 'Mengakses halaman agenda', '2025-02-03 23:54:54');
INSERT INTO `activity_log` VALUES (2603, 27, 'Mengakses halaman agenda murid', '2025-02-03 23:54:55');
INSERT INTO `activity_log` VALUES (2604, 27, 'Mengakses halaman agenda murid', '2025-02-03 23:55:11');
INSERT INTO `activity_log` VALUES (2605, 27, 'Mengakses halaman agenda murid', '2025-02-03 23:57:01');
INSERT INTO `activity_log` VALUES (2606, 27, 'Mengakses halaman agenda murid', '2025-02-03 23:57:39');
INSERT INTO `activity_log` VALUES (2607, 27, 'Mengakses halaman agenda murid', '2025-02-03 23:59:43');
INSERT INTO `activity_log` VALUES (2608, 27, 'Mengakses halaman agenda murid', '2025-02-03 23:59:55');
INSERT INTO `activity_log` VALUES (2609, 27, 'Mengakses halaman agenda murid', '2025-02-04 00:00:08');
INSERT INTO `activity_log` VALUES (2610, 27, 'Mengakses halaman agenda murid', '2025-02-04 00:00:18');
INSERT INTO `activity_log` VALUES (2611, 27, 'Mengakses halaman agenda murid', '2025-02-04 00:01:22');
INSERT INTO `activity_log` VALUES (2612, 27, 'Mengakses halaman agenda murid', '2025-02-04 00:02:14');
INSERT INTO `activity_log` VALUES (2613, 27, 'Mengakses halaman agenda murid', '2025-02-04 00:02:24');
INSERT INTO `activity_log` VALUES (2614, 27, 'Mengakses halaman agenda murid', '2025-02-04 00:02:32');
INSERT INTO `activity_log` VALUES (2615, 27, 'Mengakses halaman agenda murid', '2025-02-04 00:04:06');
INSERT INTO `activity_log` VALUES (2616, 27, 'Mengakses halaman agenda murid', '2025-02-04 00:04:14');
INSERT INTO `activity_log` VALUES (2617, 27, 'Mengakses halaman agenda murid', '2025-02-04 00:04:22');
INSERT INTO `activity_log` VALUES (2618, 27, 'Mengakses halaman agenda murid', '2025-02-04 00:05:02');
INSERT INTO `activity_log` VALUES (2619, 27, 'Mengakses halaman agenda murid', '2025-02-04 00:05:49');
INSERT INTO `activity_log` VALUES (2620, 27, 'Mengakses halaman agenda murid', '2025-02-04 00:07:29');
INSERT INTO `activity_log` VALUES (2621, 27, 'Mengakses halaman agenda murid', '2025-02-04 00:07:40');
INSERT INTO `activity_log` VALUES (2622, 27, 'Mengakses halaman agenda murid', '2025-02-04 00:07:56');
INSERT INTO `activity_log` VALUES (2623, 27, 'Mengakses halaman agenda murid', '2025-02-04 00:09:30');
INSERT INTO `activity_log` VALUES (2624, 27, 'Mengakses halaman agenda murid', '2025-02-04 00:10:11');
INSERT INTO `activity_log` VALUES (2625, 27, 'Mengakses halaman agenda murid', '2025-02-04 00:11:57');
INSERT INTO `activity_log` VALUES (2626, 27, 'Mengakses halaman agenda murid', '2025-02-04 00:12:10');
INSERT INTO `activity_log` VALUES (2627, 27, 'Mengakses halaman agenda murid', '2025-02-04 00:12:27');
INSERT INTO `activity_log` VALUES (2628, 27, 'Mengakses halaman agenda murid', '2025-02-04 00:12:35');
INSERT INTO `activity_log` VALUES (2629, 27, 'Mengakses halaman agenda murid', '2025-02-04 00:15:03');
INSERT INTO `activity_log` VALUES (2630, 27, 'Mengakses halaman agenda murid', '2025-02-04 00:15:16');
INSERT INTO `activity_log` VALUES (2631, 27, 'Mengakses halaman agenda murid', '2025-02-04 00:15:26');
INSERT INTO `activity_log` VALUES (2632, 27, 'Mengakses halaman agenda murid', '2025-02-04 00:18:57');
INSERT INTO `activity_log` VALUES (2633, 27, 'Mengakses halaman agenda murid', '2025-02-04 00:19:19');
INSERT INTO `activity_log` VALUES (2634, 27, 'Mengakses halaman profile', '2025-02-04 00:19:23');
INSERT INTO `activity_log` VALUES (2635, 1, 'Mengakses halaman dashboard', '2025-02-04 00:19:37');
INSERT INTO `activity_log` VALUES (2636, 1, 'Mengakses halaman agenda murid', '2025-02-04 00:19:48');
INSERT INTO `activity_log` VALUES (2637, 1, 'Mengakses halaman agenda', '2025-02-04 00:19:50');
INSERT INTO `activity_log` VALUES (2638, 1, 'Mengakses halaman agenda', '2025-02-04 00:24:10');
INSERT INTO `activity_log` VALUES (2639, 1, 'Mengakses halaman agenda', '2025-02-04 00:33:19');
INSERT INTO `activity_log` VALUES (2640, 1, 'Mengakses halaman agenda', '2025-02-04 00:33:41');
INSERT INTO `activity_log` VALUES (2641, 1, 'Mengakses halaman agenda', '2025-02-04 00:34:46');
INSERT INTO `activity_log` VALUES (2642, 1, 'Mengakses halaman agenda', '2025-02-04 00:41:14');
INSERT INTO `activity_log` VALUES (2643, 1, 'Mengakses halaman agenda', '2025-02-04 00:41:28');
INSERT INTO `activity_log` VALUES (2644, 1, 'Mengakses halaman agenda', '2025-02-04 00:47:45');
INSERT INTO `activity_log` VALUES (2645, 1, 'Mengakses halaman agenda', '2025-02-04 00:49:15');
INSERT INTO `activity_log` VALUES (2646, 1, 'Mengakses halaman agenda', '2025-02-04 00:50:57');
INSERT INTO `activity_log` VALUES (2647, 1, 'Mengakses halaman agenda', '2025-02-04 00:51:22');
INSERT INTO `activity_log` VALUES (2648, 1, 'Mengakses halaman agenda', '2025-02-04 00:56:46');
INSERT INTO `activity_log` VALUES (2649, 1, 'Mengakses halaman agenda', '2025-02-04 00:57:00');
INSERT INTO `activity_log` VALUES (2650, 1, 'Mengakses halaman agenda', '2025-02-04 00:57:27');
INSERT INTO `activity_log` VALUES (2651, 1, 'Mengakses halaman agenda', '2025-02-04 00:57:33');
INSERT INTO `activity_log` VALUES (2652, 1, 'Mengakses halaman agenda', '2025-02-04 00:59:04');
INSERT INTO `activity_log` VALUES (2653, 1, 'Mengakses halaman agenda', '2025-02-04 00:59:22');
INSERT INTO `activity_log` VALUES (2654, 1, 'Mengakses halaman agenda', '2025-02-04 01:01:12');
INSERT INTO `activity_log` VALUES (2655, 1, 'Mengakses halaman agenda', '2025-02-04 01:01:31');
INSERT INTO `activity_log` VALUES (2656, 1, 'Mengakses halaman agenda', '2025-02-04 01:03:03');
INSERT INTO `activity_log` VALUES (2657, 1, 'Mengakses halaman agenda', '2025-02-04 01:03:18');
INSERT INTO `activity_log` VALUES (2658, 1, 'Mengakses halaman agenda', '2025-02-04 01:06:26');
INSERT INTO `activity_log` VALUES (2659, 1, 'Mengakses form tambah agenda', '2025-02-04 01:06:28');
INSERT INTO `activity_log` VALUES (2660, 1, 'Mengakses halaman agenda', '2025-02-04 01:06:31');
INSERT INTO `activity_log` VALUES (2661, 1, 'Mengakses form tambah agenda', '2025-02-04 01:06:32');
INSERT INTO `activity_log` VALUES (2662, 1, 'Mengakses halaman agenda', '2025-02-04 01:06:33');
INSERT INTO `activity_log` VALUES (2663, 1, 'Mengakses halaman agenda', '2025-02-04 01:07:37');
INSERT INTO `activity_log` VALUES (2664, 1, 'Mengakses halaman agenda', '2025-02-04 01:07:52');
INSERT INTO `activity_log` VALUES (2665, 1, 'Mengakses halaman agenda', '2025-02-04 01:08:33');
INSERT INTO `activity_log` VALUES (2666, 1, 'Mengakses halaman agenda', '2025-02-04 01:22:03');
INSERT INTO `activity_log` VALUES (2667, 1, 'Mengakses halaman agenda', '2025-02-04 01:22:23');
INSERT INTO `activity_log` VALUES (2668, 1, 'Mengakses halaman agenda', '2025-02-04 01:26:32');
INSERT INTO `activity_log` VALUES (2669, 1, 'Mengakses halaman agenda', '2025-02-04 01:27:56');
INSERT INTO `activity_log` VALUES (2670, 1, 'Mengakses halaman agenda', '2025-02-04 01:28:52');
INSERT INTO `activity_log` VALUES (2671, 1, 'Mengakses halaman agenda', '2025-02-04 01:29:16');
INSERT INTO `activity_log` VALUES (2672, 1, 'Mengakses halaman dashboard', '2025-02-04 01:32:16');
INSERT INTO `activity_log` VALUES (2673, 1, 'Mengakses halaman profile', '2025-02-04 01:32:27');
INSERT INTO `activity_log` VALUES (2674, 1, 'Mengakses halaman dashboard', '2025-02-04 01:32:47');
INSERT INTO `activity_log` VALUES (2675, 1, 'Mengakses halaman user', '2025-02-04 01:32:58');
INSERT INTO `activity_log` VALUES (2676, 1, 'Mengakses form tambah user', '2025-02-04 01:33:02');
INSERT INTO `activity_log` VALUES (2677, 1, 'Mengakses halaman user', '2025-02-04 01:33:07');
INSERT INTO `activity_log` VALUES (2678, 1, 'Mengakses form edit user', '2025-02-04 01:33:14');
INSERT INTO `activity_log` VALUES (2679, 1, 'Mengubah data user', '2025-02-04 01:33:19');
INSERT INTO `activity_log` VALUES (2680, 1, 'Mengakses halaman user', '2025-02-04 01:33:20');
INSERT INTO `activity_log` VALUES (2681, 1, 'Mengakses form undo edit user', '2025-02-04 01:33:26');
INSERT INTO `activity_log` VALUES (2682, 1, 'Undo edit data user', '2025-02-04 01:33:35');
INSERT INTO `activity_log` VALUES (2683, 1, 'Mengakses halaman user', '2025-02-04 01:33:35');
INSERT INTO `activity_log` VALUES (2684, 1, 'Mengakses halaman kelas', '2025-02-04 01:33:49');
INSERT INTO `activity_log` VALUES (2685, 1, 'Mengakses form tambah kelas', '2025-02-04 01:33:55');
INSERT INTO `activity_log` VALUES (2686, 1, 'Mengakses halaman kelas', '2025-02-04 01:34:00');
INSERT INTO `activity_log` VALUES (2687, 1, 'Mengakses halaman jurusan', '2025-02-04 01:34:19');
INSERT INTO `activity_log` VALUES (2688, 1, 'Mengakses form tambah jurusan', '2025-02-04 01:34:25');
INSERT INTO `activity_log` VALUES (2689, 1, 'Mengakses halaman jurusan', '2025-02-04 01:34:29');
INSERT INTO `activity_log` VALUES (2690, 1, 'Mengakses halaman agenda', '2025-02-04 01:34:46');
INSERT INTO `activity_log` VALUES (2691, 1, 'Mengakses form tambah agenda', '2025-02-04 01:34:52');
INSERT INTO `activity_log` VALUES (2692, 1, 'Mengakses halaman agenda', '2025-02-04 01:35:03');
INSERT INTO `activity_log` VALUES (2693, 1, 'Mengakses halaman agenda murid', '2025-02-04 01:35:47');
INSERT INTO `activity_log` VALUES (2694, 1, 'Mengakses halaman setting', '2025-02-04 01:35:57');
INSERT INTO `activity_log` VALUES (2695, 1, 'Mengubah data setting', '2025-02-04 01:36:10');
INSERT INTO `activity_log` VALUES (2696, 1, 'Mengakses halaman setting', '2025-02-04 01:36:11');
INSERT INTO `activity_log` VALUES (2697, 1, 'Mengakses halaman log aktivitas', '2025-02-04 01:36:15');
INSERT INTO `activity_log` VALUES (2698, 1, 'Mengakses halaman user', '2025-02-04 01:36:36');
INSERT INTO `activity_log` VALUES (2699, 1, 'Menghapus data user', '2025-02-04 01:36:41');
INSERT INTO `activity_log` VALUES (2700, 1, 'Mengakses halaman user', '2025-02-04 01:36:42');
INSERT INTO `activity_log` VALUES (2701, 1, 'Mengakses halaman restore user', '2025-02-04 01:36:44');
INSERT INTO `activity_log` VALUES (2702, 1, 'Merestore user', '2025-02-04 01:36:51');
INSERT INTO `activity_log` VALUES (2703, 1, 'Mengakses halaman restore user', '2025-02-04 01:36:52');
INSERT INTO `activity_log` VALUES (2704, 1, 'Mengakses halaman user', '2025-02-04 01:36:54');
INSERT INTO `activity_log` VALUES (2705, 1, 'Mengakses halaman restore kelas', '2025-02-04 01:36:59');
INSERT INTO `activity_log` VALUES (2706, 26, 'Mengakses halaman dashboard', '2025-02-04 01:37:19');
INSERT INTO `activity_log` VALUES (2707, 27, 'Mengakses halaman dashboard', '2025-02-04 01:38:48');
INSERT INTO `activity_log` VALUES (2708, 27, 'Mengakses halaman agenda murid', '2025-02-04 01:38:56');
INSERT INTO `activity_log` VALUES (2709, 1, 'Mengakses halaman dashboard', '2025-02-04 01:50:11');
INSERT INTO `activity_log` VALUES (2710, 1, 'Mengakses halaman agenda', '2025-02-04 01:50:15');

-- ----------------------------
-- Table structure for agenda
-- ----------------------------
DROP TABLE IF EXISTS `agenda`;
CREATE TABLE `agenda`  (
  `id_agenda` int NOT NULL AUTO_INCREMENT,
  `id_user` int NULL DEFAULT NULL,
  `id_kelas` int NOT NULL,
  `waktu` datetime NULL DEFAULT NULL,
  `isi_agenda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `deleted_by` int NULL DEFAULT NULL,
  `isdelete` int NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id_agenda`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of agenda
-- ----------------------------
INSERT INTO `agenda` VALUES (21, 27, 0, '2025-02-04 01:27:00', 'temui pak if di lab', '2025-02-03 16:52:44', 1, NULL, NULL, NULL, NULL, 0, 0);

-- ----------------------------
-- Table structure for backup_agenda
-- ----------------------------
DROP TABLE IF EXISTS `backup_agenda`;
CREATE TABLE `backup_agenda`  (
  `id_agenda` int NOT NULL AUTO_INCREMENT,
  `id_user` int NULL DEFAULT NULL,
  `id_kelas` int NOT NULL,
  `waktu` datetime NULL DEFAULT NULL,
  `isi_agenda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `deleted_by` int NULL DEFAULT NULL,
  `isdelete` int NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id_agenda`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of backup_agenda
-- ----------------------------

-- ----------------------------
-- Table structure for backup_jurusan
-- ----------------------------
DROP TABLE IF EXISTS `backup_jurusan`;
CREATE TABLE `backup_jurusan`  (
  `id_jurusan` int NOT NULL AUTO_INCREMENT,
  `nama_jurusan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `deleted_by` int NULL DEFAULT NULL,
  `isdelete` int NOT NULL,
  PRIMARY KEY (`id_jurusan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of backup_jurusan
-- ----------------------------
INSERT INTO `backup_jurusan` VALUES (1, 'XII A', '2024-10-15 01:34:23', '2024-10-25 11:02:39', NULL, 1, 1, NULL, 0);
INSERT INTO `backup_jurusan` VALUES (26, 'XII  B', '2024-10-28 01:16:22', NULL, NULL, 1, NULL, NULL, 0);
INSERT INTO `backup_jurusan` VALUES (28, 'RPL', '2025-01-07 20:01:58', NULL, NULL, 1, NULL, NULL, 0);

-- ----------------------------
-- Table structure for backup_kelas
-- ----------------------------
DROP TABLE IF EXISTS `backup_kelas`;
CREATE TABLE `backup_kelas`  (
  `id_kelas` int NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_jurusan` int NOT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `deleted_by` int NULL DEFAULT NULL,
  `isdelete` int NOT NULL,
  `id_user` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_kelas`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of backup_kelas
-- ----------------------------

-- ----------------------------
-- Table structure for backup_user
-- ----------------------------
DROP TABLE IF EXISTS `backup_user`;
CREATE TABLE `backup_user`  (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `level` int NULL DEFAULT NULL,
  `id_kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `nohp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `isdelete` int NOT NULL,
  `created_by` int NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `deleted_by` int NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `nis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nisn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nuptk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of backup_user
-- ----------------------------
INSERT INTO `backup_user` VALUES (1, 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 1, NULL, NULL, '62', 0, NULL, NULL, 1, '2024-11-02 01:05:00', NULL, NULL, NULL, NULL, '', '');

-- ----------------------------
-- Table structure for jurusan
-- ----------------------------
DROP TABLE IF EXISTS `jurusan`;
CREATE TABLE `jurusan`  (
  `id_jurusan` int NOT NULL AUTO_INCREMENT,
  `nama_jurusan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `deleted_by` int NULL DEFAULT NULL,
  `isdelete` int NOT NULL,
  PRIMARY KEY (`id_jurusan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jurusan
-- ----------------------------
INSERT INTO `jurusan` VALUES (1, 'AKUNTANSI DAN KEUANGAN LEMBAGA', '2024-10-15 01:34:23', '2025-01-08 20:01:33', NULL, 1, 1, NULL, 0);
INSERT INTO `jurusan` VALUES (26, 'BISNIS DARING DAN PEMASARAN', '2024-10-28 01:16:22', '2025-01-08 20:00:30', NULL, 1, 1, NULL, 0);
INSERT INTO `jurusan` VALUES (28, 'REKAYASA PERANGKAT LUNAK', '2025-01-07 20:01:58', '2025-01-08 20:02:02', NULL, 1, 1, NULL, 0);

-- ----------------------------
-- Table structure for kelas
-- ----------------------------
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas`  (
  `id_kelas` int NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_jurusan` int NOT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `deleted_by` int NULL DEFAULT NULL,
  `isdelete` int NOT NULL,
  `id_user` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_kelas`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kelas
-- ----------------------------
INSERT INTO `kelas` VALUES (1, 'XII A', 28, '2024-10-15 01:34:23', '2025-01-08 20:03:31', NULL, 1, 1, NULL, 0, 26);
INSERT INTO `kelas` VALUES (26, 'XII  B', 26, '2024-10-28 01:16:22', '2025-01-08 20:25:03', NULL, 1, 1, NULL, 0, 26);

-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting`  (
  `id_setting` int NOT NULL AUTO_INCREMENT,
  `nama_setting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `logo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_sekolah` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `nohp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_setting`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES (1, 'AGENDA SPH', 'logo_sph.png', 'Komp.Batu Batam Mas, Jl. Gajah Mada Blok D & E No.1,2,3, Baloi Indah, Kec. Lubuk Baja, Kota Batam, Kepulauan Riau 29444', 'SEKOLAH PERMATA HARAPAN', '(0778) 431318', 1, '2025-02-04 01:36:10');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `level` int NULL DEFAULT NULL,
  `id_kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `nohp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `isdelete` int NOT NULL,
  `created_by` int NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `deleted_by` int NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `nis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nisn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nuptk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 1, NULL, 'admin@gmail.com', '62', 0, NULL, NULL, 1, '2024-11-02 01:05:00', NULL, NULL, NULL, NULL, '', '');
INSERT INTO `user` VALUES (26, 'guru', 'c4ca4238a0b923820dcc509a6f75849b', 2, NULL, 'guru@gmail.com', '62', 0, 1, '2024-10-25 10:54:30', NULL, NULL, NULL, NULL, '', '', '1', '1');
INSERT INTO `user` VALUES (27, 'siswa', 'c4ca4238a0b923820dcc509a6f75849b', 3, '1', 'siswa@gmail.com', '6282171810404', 0, 1, '2024-10-25 10:54:58', 1, '2024-10-28 01:17:36', NULL, NULL, '22161017', '1', '', '');

SET FOREIGN_KEY_CHECKS = 1;
