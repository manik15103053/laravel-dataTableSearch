-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2023 at 01:27 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `livesearch`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_08_102102_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `unit_price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `regular_price` double(8,2) NOT NULL,
  `shipping_cost` double(8,2) NOT NULL,
  `details` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `unit_price`, `quantity`, `regular_price`, `shipping_cost`, `details`, `created_at`, `updated_at`) VALUES
(1, 'Temporibus ipsa aliquam consequatur aliquid rerum.', 55.89, 63, 194.75, 7.54, 'Enim debitis esse eum suscipit. Quos debitis eligendi enim cupiditate sunt sed et consectetur. Voluptatem eaque porro facilis nam. Quod nobis porro ipsa.', NULL, NULL),
(2, 'Voluptas dolor enim perspiciatis in nulla.', 56.65, 1, 105.15, 13.79, 'Expedita ea enim et eum odit voluptatem laboriosam. Dolor et dolore tenetur. Nesciunt quis qui et voluptas dolorem ratione.', NULL, NULL),
(3, 'Accusamus minima accusamus accusantium tempora quos.', 40.23, 73, 178.14, 8.92, 'Placeat ut non quod quod laudantium veniam. Cumque totam assumenda inventore recusandae facilis iure ipsam. Nemo sunt maiores qui qui et. Dolor qui labore velit aliquid est. Doloribus ea sequi optio et laboriosam voluptate natus sunt.', NULL, NULL),
(4, 'Possimus saepe quisquam omnis quo sint ea minima.', 25.01, 65, 59.06, 18.04, 'Magnam voluptatem ipsum ducimus. Adipisci quod eveniet non omnis et animi. Consequatur quaerat iusto harum nam earum exercitationem praesentium. Tempora eligendi vitae provident voluptas enim eos perspiciatis.', NULL, NULL),
(5, 'Ut dolorem aut eum rerum quis quisquam ad rerum.', 10.81, 90, 163.64, 8.64, 'Voluptatem enim a veritatis eligendi dolores fugit. Distinctio dolor aperiam velit saepe quo. Est error occaecati sit illum. Ipsum vitae aspernatur ab animi.', NULL, NULL),
(6, 'Temporibus saepe dolorum et.', 98.14, 71, 173.81, 5.02, 'Inventore voluptatum rem praesentium eum qui tempora explicabo. Ex eum itaque est est dicta consequuntur. Et dolor quas qui non omnis nisi. Ipsum omnis tenetur dolore et sed officiis.', NULL, NULL),
(7, 'Tempore voluptatum ducimus nulla voluptatem quis dolores repudiandae odio.', 58.78, 79, 120.64, 6.53, 'Consequuntur sint earum pariatur. Culpa deserunt culpa dolore sed repellat aperiam optio. Dolore minus ut cum ea minima eum.', NULL, NULL),
(8, 'In similique est minima et nostrum tenetur.', 74.10, 37, 60.14, 5.68, 'Reprehenderit ut minus officiis unde voluptatem nihil corrupti. Magnam nisi reiciendis deserunt porro dolore in earum. Cumque quam minima sed eum sequi harum.', NULL, NULL),
(9, 'Minus sapiente quae ut saepe.', 41.46, 58, 180.42, 19.16, 'Quis maiores ea perspiciatis sit voluptatibus aliquam quod. Eveniet inventore libero labore libero illo et. Harum est minima aliquam explicabo et non consequuntur.', NULL, NULL),
(10, 'Eos consequatur et voluptatibus sit deleniti aut ut.', 12.85, 71, 81.46, 5.59, 'Consequatur et minima aut in repudiandae enim. Exercitationem in nemo sint exercitationem itaque. Officiis qui sint qui aut officia.', NULL, NULL),
(11, 'Fuga itaque harum omnis itaque quo et laboriosam minus.', 41.78, 96, 194.90, 9.26, 'Sed cumque impedit sit veniam perspiciatis dolor. Sunt minus quia tempore voluptas recusandae in. Dolore qui voluptatibus est reprehenderit aut et consequatur. Debitis corrupti non quaerat ea porro.', NULL, NULL),
(12, 'Quia ipsa quos et quis.', 51.16, 70, 146.66, 16.60, 'Porro sint repudiandae optio odit in. Mollitia explicabo quo id officia animi sit atque est. Dignissimos quia doloribus nostrum molestias saepe enim illum possimus. Neque perferendis molestiae placeat atque non qui.', NULL, NULL),
(13, 'Est magnam illo quasi natus illo.', 79.25, 74, 51.22, 7.83, 'Modi dolore ut assumenda delectus. Veritatis non sit ab eos deleniti expedita voluptas. Corrupti nihil ipsa eveniet doloribus libero temporibus enim.', NULL, NULL),
(14, 'Aut quia quo inventore voluptatem sed exercitationem numquam.', 51.20, 99, 147.52, 10.76, 'Consequatur iure voluptatem explicabo itaque. Voluptate sapiente rerum fuga iusto ut error vero. Tenetur temporibus ad aut voluptas excepturi.', NULL, NULL),
(15, 'Vel fugiat perspiciatis unde dolor ratione sit.', 96.45, 1, 51.63, 12.49, 'Dolores dolorum rerum ex. Doloremque dolorem cumque esse earum beatae suscipit. Eos similique vero doloribus deleniti.', NULL, NULL),
(16, 'Facere fugiat molestiae est.', 39.62, 37, 193.47, 19.50, 'Ipsum quis ratione a et ex natus illo. Sequi sint dolor mollitia voluptas ab. Et pariatur soluta in incidunt velit.', NULL, NULL),
(17, 'Consectetur magni qui officia ea ea.', 84.06, 20, 54.87, 15.11, 'Qui in similique qui provident blanditiis labore. Delectus quo dolore eos ea.', NULL, NULL),
(18, 'Accusantium voluptas quo omnis voluptatem qui.', 95.35, 86, 56.20, 19.41, 'Reprehenderit facilis ut assumenda sit eaque. Facere velit quia magni autem molestias non eius. Sint cupiditate cumque debitis suscipit commodi voluptas. Ut libero explicabo quia rerum voluptate eos et voluptate. Et ut dolorem accusantium qui doloribus.', NULL, NULL),
(19, 'Ex odit velit ducimus et sed ipsa in.', 17.96, 79, 118.99, 7.77, 'Quibusdam minus deserunt fuga unde. Molestiae numquam beatae non hic. Maiores vel aut iste ut. Quod est aliquam blanditiis enim aliquam labore.', NULL, NULL),
(20, 'Quia ut est dolorem nam beatae tempore modi.', 29.58, 72, 178.16, 16.30, 'Debitis iusto sed veniam distinctio quis numquam sapiente. Quis minus hic ut dolore expedita. Rerum ipsa iure sed nostrum sequi. Ut omnis eum perferendis voluptate architecto. Et vel ad expedita.', NULL, NULL),
(21, 'Consequuntur minima sed quo non velit ut.', 16.90, 17, 126.08, 13.08, 'Et iste rerum assumenda. Earum tenetur deleniti et accusamus soluta distinctio aperiam. Dolor quo tempora accusamus earum.', NULL, NULL),
(22, 'Similique vel pariatur porro quia et.', 56.62, 4, 121.40, 13.97, 'Non iste voluptatem asperiores sit saepe neque voluptas. Officiis voluptate beatae quia similique qui qui.', NULL, NULL),
(23, 'Sit in aut reprehenderit laborum atque qui.', 12.26, 12, 104.94, 14.02, 'Fugit sit quis et nostrum earum rerum maiores facilis. Commodi error a dignissimos numquam totam sint. Unde earum quasi qui sapiente. Quod voluptatem quia rerum ut aut quia ut.', NULL, NULL),
(24, 'Minus sint qui voluptatem.', 48.06, 25, 87.36, 17.95, 'Inventore iusto perferendis vitae. Amet perspiciatis eveniet labore repellat dolorem deleniti voluptas et. Doloremque ut autem molestias voluptate dolorem. Nihil veniam nulla cumque non velit.', NULL, NULL),
(25, 'Consectetur quasi voluptas eligendi impedit.', 10.52, 99, 100.85, 7.75, 'Facilis voluptatem neque sed voluptatem consectetur incidunt totam consequuntur. Qui nobis quo nam saepe blanditiis. Consequatur corporis ut qui animi ut illo vel. Sed vero dolor sit quibusdam molestiae. Commodi est officia omnis omnis.', NULL, NULL),
(26, 'Quia voluptas adipisci vero quos.', 72.92, 90, 93.51, 8.25, 'Ex sunt id enim eaque ex atque sunt. Aperiam repudiandae eveniet incidunt. Iure et nemo omnis assumenda.', NULL, NULL),
(27, 'Hic neque fugit molestiae sit eos.', 21.75, 77, 132.30, 10.75, 'Tempora ab commodi recusandae eius et velit ut accusamus. Ab fugit dolorem quidem dolorem. Labore animi voluptatem occaecati.', NULL, NULL),
(28, 'Quidem autem cum repellat.', 49.25, 2, 67.24, 11.68, 'Modi ut quia et amet. Quo odio et enim temporibus laborum et. Quia aut est cupiditate in quidem.', NULL, NULL),
(29, 'At qui maiores omnis velit.', 34.56, 13, 184.84, 7.90, 'Voluptatum tempore libero id laudantium. Eos nobis vero alias. Assumenda maiores modi natus vitae. Nobis dolores unde adipisci nulla maiores voluptas quia accusantium.', NULL, NULL),
(30, 'Commodi ut totam voluptatem eum nihil nihil.', 46.60, 74, 176.63, 7.43, 'Enim consequuntur consequatur expedita molestiae accusamus voluptas quia. Adipisci quae magni in minima omnis ipsum. Ea magnam impedit quae optio sit aliquam aspernatur. Fuga nostrum hic numquam.', NULL, NULL),
(31, 'Expedita quod asperiores quae odio.', 16.18, 36, 57.45, 8.48, 'Animi atque maxime sint pariatur accusantium eius. Minus rerum illum totam facere quia sapiente. Ut aut accusamus est nobis voluptate totam.', NULL, NULL),
(32, 'Ullam consequatur consequuntur amet dolor aut ipsum commodi.', 67.45, 1, 102.29, 8.40, 'Aut maxime est et est quis qui reiciendis. Laboriosam aperiam rerum eum animi animi consequatur. Aliquam minus commodi enim consequatur quidem.', NULL, NULL),
(33, 'Neque aut magnam est aliquam expedita qui non qui.', 31.30, 42, 159.70, 18.64, 'Corrupti sit blanditiis id quo autem sint. Occaecati et aut maxime qui. Velit vel ipsum numquam aperiam id incidunt cum perspiciatis.', NULL, NULL),
(34, 'Aut doloribus nihil ut et.', 33.71, 62, 169.68, 7.46, 'Optio consectetur et sit quidem modi quis. Provident eius culpa unde ut nesciunt omnis. Facilis adipisci voluptate ad quo possimus non. Corrupti omnis quo quis et autem doloribus voluptate.', NULL, NULL),
(35, 'Et et deserunt culpa et tenetur.', 23.57, 91, 156.25, 10.38, 'Architecto dolores voluptatem molestiae illo. Aut distinctio nesciunt labore perspiciatis alias libero commodi et. Assumenda totam eaque officia et autem nihil. Laborum autem occaecati fugit itaque qui aut asperiores non. Rem at praesentium minima sunt et est.', NULL, NULL),
(36, 'Iure quibusdam ad nisi modi minus debitis ex qui.', 78.29, 100, 140.64, 13.05, 'Alias vitae fugit dignissimos ipsa ut reiciendis. Maiores earum dignissimos deleniti atque excepturi incidunt. Molestiae quae enim molestiae totam dolor eius sit ut.', NULL, NULL),
(37, 'Earum beatae natus ut dolorem quis.', 32.22, 22, 130.55, 12.68, 'Esse cupiditate enim ut ipsa rerum consequatur. Sint autem sit dicta molestias voluptatem qui dolor. Perferendis et perferendis exercitationem eos dolor totam. Harum officiis quas nihil aperiam voluptatem dolore et.', NULL, NULL),
(38, 'Dicta aut consequuntur sit quas quis non quasi.', 36.95, 90, 185.12, 9.48, 'Ut voluptatem soluta esse in. Placeat quam commodi deleniti vel dolores maxime nisi. Qui esse nisi cumque quo.', NULL, NULL),
(39, 'Sunt quas sed natus quo molestias nisi ullam rerum.', 55.26, 89, 183.13, 6.06, 'Soluta ut eligendi odit aperiam delectus repellat. Officiis quia nihil id ut iure non provident. Accusantium et in perspiciatis necessitatibus et hic.', NULL, NULL),
(40, 'Nulla sint at iusto omnis aperiam.', 68.45, 68, 80.57, 12.07, 'Itaque aut eaque incidunt et corporis et. Voluptatem vel quae ex quia ipsam non enim.', NULL, NULL),
(41, 'Debitis aut soluta culpa est vel non rem.', 24.50, 29, 54.28, 10.90, 'Veniam eius saepe eaque ut aliquid in quae numquam. Perspiciatis velit temporibus dolor voluptates tempora corporis similique. Dolorem tempora velit repudiandae maiores tenetur. Ut dicta vero omnis officia.', NULL, NULL),
(42, 'Vel harum delectus voluptatem.', 26.50, 90, 141.28, 11.71, 'Quod ut quia error vel. Sint atque ratione sed aliquid. Expedita molestias consequatur dolorum enim repellendus voluptate.', NULL, NULL),
(43, 'Voluptas perspiciatis asperiores accusantium ab labore ex beatae tenetur.', 27.13, 70, 163.99, 5.45, 'Quisquam quas deserunt sit non eum pariatur magnam est. Molestias est ut voluptates est molestiae et. Earum ullam unde occaecati molestiae repellendus consectetur magnam excepturi. Ea omnis alias delectus.', NULL, NULL),
(44, 'Et nihil sunt eum laboriosam quam.', 10.87, 36, 192.48, 8.15, 'Aspernatur esse a neque corrupti et quia. Vel adipisci distinctio possimus voluptas atque ab recusandae neque. Dolorem corporis dicta debitis perferendis dicta et. Enim at doloribus dolores quo nihil.', NULL, NULL),
(45, 'Voluptatem id blanditiis dolore nulla autem debitis hic optio.', 89.50, 61, 110.17, 11.93, 'Officiis cumque facere et quod at quo dolorum. Molestias nemo dolore provident officia. Sit dignissimos consequuntur rerum molestiae non.', NULL, NULL),
(46, 'Molestias error voluptatem fugiat sunt nisi maxime odio.', 30.67, 63, 184.86, 9.80, 'Quibusdam est eaque totam laudantium mollitia inventore aut. Autem quis eligendi sapiente officiis non fugit et. Omnis reprehenderit et minima aut saepe harum maiores.', NULL, NULL),
(47, 'Rem eos sint doloribus numquam voluptatum fugiat.', 98.15, 81, 59.34, 7.73, 'Corporis veniam ipsam et nulla eos. Doloribus aut et quia eos sunt magni. Minus provident fuga dolorem culpa sint exercitationem nam. Labore culpa culpa dolorum ut.', NULL, NULL),
(48, 'Qui minus provident id.', 92.12, 29, 96.50, 7.68, 'Molestiae molestiae et itaque voluptates quia itaque nesciunt. Non eligendi blanditiis necessitatibus suscipit accusantium blanditiis. Dolorem vitae vel velit ea. Voluptatem consectetur quisquam quod ducimus aut quas quidem.', NULL, NULL),
(49, 'Eos blanditiis omnis ut earum quam.', 87.05, 46, 80.51, 8.01, 'Aut ut iure est. Atque consequatur voluptatum dolor nemo saepe necessitatibus. Corporis error voluptatem quisquam dolorem unde non.', NULL, NULL),
(50, 'Soluta nihil repudiandae excepturi earum velit.', 55.27, 78, 76.17, 9.73, 'Itaque reiciendis corrupti eveniet quis cupiditate atque et. Quia quia et dolorem. Laboriosam fuga at sit repudiandae nostrum nulla quia molestiae.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `country`, `address`, `description`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mrs. Alyce Kuvalis V', 'dulce41@example.com', NULL, '$2y$10$AJQja8HDHWdCxbCgNu7i9.y5tMthg/judn2KTqXT6rGyta9WBb/u.', '1-434-720-3333', 'Czech Republic', '4700 Wiza Parkways\nLorenaburgh, DE 66849', 'Officia qui ullam qui. Vero eligendi omnis sed optio ut numquam. Qui magnam sequi eaque esse excepturi. Fugiat id et quo quasi velit et.', NULL, NULL, NULL),
(2, 'Jolie Padberg', 'ywaelchi@example.net', NULL, '$2y$10$YcVbhKTykmwWhC5Nql04WO1pfVmHjG8qYMLyEYEAw2hRtS6xwk2va', '1-279-965-5804', 'Bahamas', '497 Savanah Junctions\nMinniechester, MA 60915-7989', 'Sed vel nisi sapiente et. Aspernatur eum rem dolorem explicabo. Et in ullam cum nisi. Optio perferendis veniam fuga rerum dolorum soluta. Voluptatem sed dolor voluptatem dolor.', NULL, NULL, NULL),
(3, 'Krystal VonRueden', 'leopoldo44@example.net', NULL, '$2y$10$TPFrrWKX1mkaR12wBawcUuW1r7wZhcAm9gY6U5a1TOHJIu24nWsdK', '+1 (585) 972-9704', 'Armenia', '75763 Roselyn Curve\nSouth Mathildeborough, OH 72104-1995', 'Aut quo vitae consequuntur repellat sapiente excepturi. Quam iusto iste omnis nemo quia dolorem nesciunt. Et reiciendis placeat tempora. Qui voluptas et nesciunt eaque reiciendis consequuntur explicabo.', NULL, NULL, NULL),
(4, 'Piper Hackett', 'arely.davis@example.org', NULL, '$2y$10$G2AGSfEAi9nehLI73SAQNOEu8KMSMX5zjFyNSDbXScKogv1LE3T0q', '+1-720-837-2634', 'Bermuda', '188 Bechtelar Vista Suite 402\nEast Kaylinview, RI 04022-3590', 'Et id molestias ut in ex quia explicabo. Ad possimus aut facilis. Itaque pariatur natus provident laborum ducimus aut.', NULL, NULL, NULL),
(5, 'Prof. Blair Hessel', 'durgan.jose@example.org', NULL, '$2y$10$kLnK.D0LbVgCxm2KwoNBF.9qNvT0Xxfb73lnuwo5S4x28EnfOW1Ny', '660.812.0041', 'Cambodia', '626 Swift Shoal Suite 060\nThompsontown, UT 02902-6732', 'Aut aperiam quae quibusdam aut aut temporibus quasi. Repudiandae nesciunt corporis qui quod reprehenderit provident. Reiciendis nemo rerum non illum qui libero.', NULL, NULL, NULL),
(6, 'Prof. Nora Maggio', 'vicky49@example.net', NULL, '$2y$10$zoRZj9ULpeWN63lQpUemhesuRhvKDooepzCyY6vy01wDMJcgVjYl6', '(520) 789-7320', 'Albania', '34955 Cummerata Dam\nSchmidtmouth, MO 51663', 'Aut velit consequuntur quaerat nam quae. Aut qui et quis et. Recusandae provident pariatur officia officiis ab eaque pariatur. Eos neque vitae tempore tempore eaque molestias.', NULL, NULL, NULL),
(7, 'Belle Cassin', 'fahey.maurice@example.com', NULL, '$2y$10$kSpSCNV4pZX2zH/uyXpPXOW9/q66zHTKyOHyzJTM23F3N4IOn9L6O', '(828) 369-5715', 'Greece', '135 Miller Passage\nSouth Blaketown, OR 26273', 'Fugiat distinctio placeat sit omnis voluptatem unde et. Fuga tempore eos distinctio quis. Reiciendis delectus ipsum quod omnis necessitatibus error. Maxime alias perspiciatis sed sequi aut laborum optio.', NULL, NULL, NULL),
(8, 'Prof. Destin Hermann', 'schmidt.mia@example.com', NULL, '$2y$10$PJJFaD/ounHtKMJCdMGY/e3rxGLB3EgN1lnyKFZy3ZMDfDcsB9KJq', '351-968-3503', 'Nepal', '9689 Wisozk Coves Suite 067\nKingchester, ID 98240', 'Adipisci non laboriosam est qui nisi iste necessitatibus. Porro nobis in distinctio eum est voluptas. Perferendis explicabo laudantium maxime.', NULL, NULL, NULL),
(9, 'Ms. Mable Collins DVM', 'dimitri.heller@example.net', NULL, '$2y$10$e922UGpI/ST1XK3Jx3I0u.7jur/KInNNCWIWByqtIKhDUQc71/7qa', '636-829-1287', 'Jordan', '20097 Kamron Shores\nSouth Lucinda, SC 87888', 'Voluptatibus aut veniam quibusdam et architecto. Non sit vel sint. Porro molestiae quisquam qui dignissimos voluptatibus ipsam voluptatem. Qui ab et provident beatae omnis accusantium facilis.', NULL, NULL, NULL),
(10, 'Jan Kiehn V', 'wrosenbaum@example.com', NULL, '$2y$10$RAChcsIscEAATyZGyzCr6OSdZc95aNTugdkQpE9aB0IWYhm6YSRbe', '1-859-233-6252', 'Liberia', '292 O\'Keefe Lakes Suite 828\nAriellemouth, WA 34606-8371', 'Quod ut qui reiciendis. Nam veritatis est doloremque neque porro. Minima accusamus eligendi reprehenderit quidem praesentium temporibus facilis nobis.', NULL, NULL, NULL),
(11, 'Madaline Robel', 'zhagenes@example.org', NULL, '$2y$10$vInCMjl54tiy.7je4hz50OV/p1NU0LDMmpuV74igiXZZfcU4pwM.C', '810-312-5679', 'Bangladesh', '949 Legros Points Suite 657\nPort Matteo, WA 97523', 'Ipsa officia ut accusantium et pariatur sed distinctio. Vitae tempore consequatur architecto aut amet ea aut. Natus sed non dolorum et.', NULL, NULL, NULL),
(12, 'Branson Bradtke', 'neal93@example.net', NULL, '$2y$10$TeundUkdYLCJAgK9TrcoZexwjwX4LGN6ewjaM80Id4eiZ35TpNLvy', '+1-813-976-2722', 'Indonesia', '4254 Tito Vista\nEast Tristinfort, MA 01339', 'In exercitationem quibusdam vel non. Facilis id et dignissimos magni modi. Sed architecto autem error ad velit.', NULL, NULL, NULL),
(13, 'Miss Elta Schinner', 'conroy.laverna@example.org', NULL, '$2y$10$lKvhpP1i0v.Hykt0DzXXm.sW9EEwPCOIZs43JgeZClqXKnvItbYeC', '1-878-866-8318', 'Ethiopia', '66627 Eldora Skyway\nSouth Branson, TN 94363', 'Ratione quia deserunt hic sequi mollitia sapiente explicabo. Blanditiis voluptates impedit quaerat ratione sit. Voluptates quia voluptate et provident enim velit molestias. Excepturi qui possimus nulla nam reiciendis eos.', NULL, NULL, NULL),
(14, 'Curt Ritchie', 'miller23@example.net', NULL, '$2y$10$kfPLOFmyQLrcIoFquLI2PeCIw0Z0i3VCJrfFps6/oy5wo1H2NVEDO', '+1-620-271-3887', 'Samoa', '198 Ryleigh Divide Apt. 370\nNorth Jarodberg, KY 04388-1231', 'Nemo quia animi facilis incidunt voluptas quidem. Atque assumenda debitis sed facere.', NULL, NULL, NULL),
(15, 'Doug Towne', 'yrogahn@example.org', NULL, '$2y$10$gTSciLFAWmVfwxzFDrYp/uiszEQl/FdCdhcsSWXbCoUgwmFNCjiVK', '+1 (838) 271-6121', 'Cameroon', '177 Jonathon Burg\nShanonport, NE 21818', 'Amet asperiores corrupti sint nihil sit. Placeat ex aspernatur minus dolorem earum animi accusantium dolores. Quaerat ratione cumque sunt optio sequi ullam. Cupiditate ipsam explicabo quisquam sunt totam perspiciatis. Dolorum sed voluptatem provident aliquid libero reiciendis.', NULL, NULL, NULL),
(16, 'Eldon Turner', 'jacky74@example.net', NULL, '$2y$10$QMQQ3Fwo8fjcAbR/yjxJGOEYFOevJ6.zedkeGnx1FlA4KRZljKC4e', '404.351.0432', 'Korea', '32497 Esther Wells\nEast Elwyn, FL 49694-2313', 'Vel consequatur doloremque in aut. Perferendis fugiat quam saepe laborum. Voluptatem recusandae quae cupiditate magni dolores qui. Consequuntur molestiae quibusdam et sed et sapiente modi.', NULL, NULL, NULL),
(17, 'Betsy DuBuque', 'lou.crooks@example.com', NULL, '$2y$10$PM1P7zaLMp.90An52aH5eOQ5A4m0w8m5CuDtjGfJs47P80rual4tm', '+1 (458) 643-6367', 'Malaysia', '308 Powlowski Shoal\nWaelchihaven, GA 87669', 'Iure numquam quidem molestias rerum. Suscipit nesciunt id impedit in rem. Dicta eum eius blanditiis expedita fuga. Qui et quia est tenetur.', NULL, NULL, NULL),
(18, 'Llewellyn Senger MD', 'gilberto.schamberger@example.org', NULL, '$2y$10$MeTdHn4wAhM37LfYZqZmLe.jRMFs1KdX1h0KH6JnUZZPUArfAM6p.', '1-281-429-0173', 'Malawi', '1483 Hyatt Extensions\nEast Lynnstad, TN 51967', 'Vel sit maxime quis voluptatibus quo dolorum doloremque. Nulla aut veritatis tenetur aut. Eaque debitis amet nobis quo ab qui. Vel praesentium eos aperiam.', NULL, NULL, NULL),
(19, 'Maude Fadel', 'fadel.elfrieda@example.net', NULL, '$2y$10$WldVyGE6GZqx3TWvkhvQ6.8nk.Znkqrao9.sD2wZaLKgNY2TjNAPG', '629.410.8868', 'Bangladesh', '44823 Jany Causeway\nKileyhaven, CO 46998-8172', 'Velit temporibus ea enim iusto sed consectetur culpa perferendis. Molestias et sunt et et in dolor fugiat. Veniam libero neque amet omnis ea ex voluptate. Eaque ut non aut.', NULL, NULL, NULL),
(20, 'Braden Sanford', 'faye39@example.org', NULL, '$2y$10$HHlDl1Dgdcbs7Q/ZhsKnGeaKCzC3a4nlr9P1fQSME3zO3GN70ZyWW', '270.835.4120', 'Bahamas', '900 John Mountain\nGilbertburgh, NE 36708-8204', 'Occaecati consectetur cumque alias corrupti repellendus numquam. Delectus est et itaque at quas veniam. Vel maiores temporibus aut ipsam et. Expedita pariatur facilis vel fugit.', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
