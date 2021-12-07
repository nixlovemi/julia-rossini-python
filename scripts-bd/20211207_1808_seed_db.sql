-- roles
    INSERT INTO public.roles VALUES (1, 'MASTER', true);
    INSERT INTO public.roles VALUES (2, 'OWNER', true);
    INSERT INTO public.roles VALUES (3, 'STAFF', true);
    INSERT INTO public.roles VALUES (4, 'CLIENT', true);

    SELECT pg_catalog.setval('public.roles_id_seq', 4, true);

-- user (senhas: Mudar123)
    INSERT INTO public.users VALUES (1, 'admin@gmail.com', 'Admin', 'Sys', '$2y$10$YHwlx161PCQV/VEDsBiIueVbJVzuCxFaoiTe77yYiJnMLbM71jPhq', NULL, NULL, 19, '98132-4148', true, true, '2021-12-02 15:07:20+00', 'https://tinyurl.com/wys4tmhr', 'Audratown', 'Exercitationem voluptatum aut vel a dolorem omnis. Est et sit minus distinctio sint. Consequuntur cumque excepturi tenetur nemo id.', 'https://linkedin.com/id', 'wEZHsl3uVfOTiY6e71GT971WcOesanimQDn3uF6KtNzhPZD1F2jILZNX4AXd', NULL);
    INSERT INTO public.users VALUES (2, 'flavio.shanahan@hotmail.com', 'Rosalinda', 'Willms', '$2y$10$Z0cR3HY.q4YAEyAhCUy9oOk/qogHKHsy3AD2gL/GtpE.8bL/NMez.', 91, '0601-3460', 31, '44488-1878', true, true, '2021-11-20 21:53:13+00', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSy2Vzf90CMXNaJzJ6kKGm-nGNhmYIhkDGEFV6SzvfcuEY5MlvGLFfPHFlOwxVTWuqFZm0&usqp=CAU', 'Lake Brandon', 'Voluptas eligendi aperiam hic ullam libero dolore. Culpa dolorum iste aliquid mollitia.', 'https://linkedin.com/recusandae', NULL, NULL);
    INSERT INTO public.users VALUES (3, 'rspinka@hotmail.com', 'Stanley', 'Eichmann', '$2y$10$vtRpaKJGR/9TN97sx19xoeW.AUHndNZpyq9muFzu/5.OudSKP8Qym', 26, '2718-7085', 12, '89329-1285', true, true, '2021-11-29 21:12:34+00', 'https://www.adobe.com/express/create/media_1bcd514348a568faed99e65f5249895e38b06c947.jpeg?width=2000&format=webply&optimize=medium', 'North Donna', 'Odio rerum molestiae officia qui harum eum. Vitae et ut repudiandae perferendis necessitatibus.', 'https://facebook.com/vero', NULL, NULL);
    INSERT INTO public.users VALUES (4, 'egreenholt@gmail.com', 'Emely', 'Frami', '$2y$10$di6LmYsxuKr.MvoKIrpIOeqiRIz0J9Ck9IdTwhaJq0Ewby6Dvj7dC', 44, '8759-5132', 83, '45402-5872', true, true, '2021-11-08 12:05:54+00', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPbpkF0b9eFan4Bx2zVo1w-nUFbWYi0woJRAnFHg_v9AXKciq5B0jr-bIWQuMEkhy8nZ8&usqp=CAU', 'New Joey', 'Laudantium et aliquid tenetur nulla sed officiis dolor. Aut eos vel ducimus illum. Et labore molestiae qui rem dolores ut distinctio. Quia omnis placeat placeat veniam nihil beatae.', 'https://linkedin.com/ad', NULL, NULL);
    INSERT INTO public.users VALUES (5, 'pkshlerin@hotmail.com', 'Chester', 'Larson', '$2y$10$riAn66B0V9K.mxeR9g85f.RPLXIdIO70TFzO1TQ4maWIyYvenWVTS', 3, '5372-4827', 97, '32043-5562', false, true, '2021-11-24 23:30:05+00', 'https://images.unsplash.com/photo-1532074205216-d0e1f4b87368?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d29tYW4lMjBwcm9maWxlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80', 'Kathlynchester', 'Et veniam consequatur cupiditate. Omnis molestiae consequuntur non doloribus iure. Commodi nesciunt unde tempora repellat. Temporibus recusandae saepe assumenda molestiae ut fuga.', 'https://linkedin.com/voluptatem', NULL, NULL);
    INSERT INTO public.users VALUES (6, 'wuckert.theron@hotmail.com', 'Adan', 'Ebert', '$2y$10$QPelcHEdNR9U2cp965ipZuKMmQGiCLmAUyj8WVNz2mLZDWffHH09a', 46, '7669-1849', 33, '20861-9131', true, true, '2021-10-25 06:50:10+00', 'https://www.adobe.com/express/create/media_1bcd514348a568faed99e65f5249895e38b06c947.jpeg?width=2000&format=webply&optimize=medium', 'East Henri', 'Saepe dolores voluptas animi perspiciatis velit. Culpa atque expedita minima recusandae. Dolorem sed quo velit sint occaecati.', 'https://facebook.com/non', NULL, NULL);
    INSERT INTO public.users VALUES (7, 'barrows.connie@gmail.com', 'Theodora', 'Maggio', '$2y$10$3E6znfDGHFr1IBIStN4lwugDHQEsrlAWg3cywpWfiApmvcOvF9uW.', 81, '9009-8326', 25, '74056-8783', false, true, '2021-11-30 05:54:14+00', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHmLARiP6160qzvwn4GFq4IjlJY549K6Rul5gKJMEgbvT52Hb_yiiTlcJ766qtOwitG7Q&usqp=CAU', 'Monserrattown', 'Odio facere cupiditate non nostrum. Deleniti voluptatum aut delectus harum eos autem rerum. Repudiandae unde iure accusantium laborum ullam. Consequatur et dolorum non.', 'https://facebook.com/exercitationem', NULL, NULL);
    INSERT INTO public.users VALUES (8, 'mariam57@gmail.com', 'Brook', 'Baumbach', '$2y$10$1BUIRtH8AME00pbNIeeWyO4L0pIGwcHqxSaiBtJ.4kdbXxDV2AsCy', 34, '4197-6103', 38, '24014-8756', true, true, '2021-11-24 06:11:00+00', 'https://images.pexels.com/photos/2078265/pexels-photo-2078265.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', 'East Gregoriobury', 'Et voluptas placeat tenetur ab omnis optio. Ullam et reprehenderit eum eligendi facilis quidem. Et error sit culpa ut accusantium est.', 'https://facebook.com/iure', NULL, NULL);
    INSERT INTO public.users VALUES (9, 'grunolfsson@hotmail.com', 'Ivah', 'Monahan', '$2y$10$7b8RJe9QD7fW6mBYqYU7N.Jzwxe79n93QMqnLVdPSz8md3TmmFUkC', 14, '8506-5287', 95, '24189-9164', false, true, '2021-11-07 05:39:47+00', 'https://tinyurl.com/wys4tmhr', 'Minamouth', 'Optio debitis odit aut occaecati. Laboriosam alias facilis quo. Et aut dolor magni nam aliquam vero. Ut et labore odit rerum.', 'https://linkedin.com/cum', NULL, NULL);
    INSERT INTO public.users VALUES (10, 'weber.katarina@gmail.com', 'Rafaela', 'Parker', '$2y$10$mWhdbbeGjMgVmmwf5PIUw.H7hqlXI5LXBhG6vmTu5M5miBgj2A7TW', 98, '2575-4382', 29, '42075-0460', true, true, '2021-11-07 08:13:13+00', 'https://www.adobe.com/express/create/media_1bcd514348a568faed99e65f5249895e38b06c947.jpeg?width=2000&format=webply&optimize=medium', 'East Watson', 'Et exercitationem autem ex veritatis quis beatae fugit maiores. Vel consequuntur est tenetur sed. Et tenetur esse error tenetur.', 'https://linkedin.com/assumenda', NULL, NULL);

    SELECT pg_catalog.setval('public.users_id_seq', 10, true);

-- user roles
    INSERT INTO public.user_roles(user_id, role_id) VALUES (1, 1); --master
    INSERT INTO public.user_roles(user_id, role_id) VALUES (2, 2); --owner
    INSERT INTO public.user_roles(user_id, role_id) VALUES (3, 2); --owner
    INSERT INTO public.user_roles(user_id, role_id) VALUES (4, 3); --staff
    INSERT INTO public.user_roles(user_id, role_id) VALUES (5, 3); --staff
    INSERT INTO public.user_roles(user_id, role_id) VALUES (6, 4); --client
    INSERT INTO public.user_roles(user_id, role_id) VALUES (7, 4); --client
    INSERT INTO public.user_roles(user_id, role_id) VALUES (8, 4); --client
    INSERT INTO public.user_roles(user_id, role_id) VALUES (9, 4); --client
    INSERT INTO public.user_roles(user_id, role_id) VALUES (10, 4); --client


-- domains
    INSERT INTO public.domains(owner_id, domain_name, created_at, active, bg_login_url) VALUES (2, 'julia-rossini', NOW(), true, 'bg-julia-rossini.jpg');
    INSERT INTO public.domains(owner_id, domain_name, created_at, active, bg_login_url) VALUES (3, 'joao-silva', NOW(), true, NULL);

-- domain staff
    INSERT INTO public.domain_staff(domain_id, user_id, created_at) VALUES (1, 4, NOW());
    INSERT INTO public.domain_staff(domain_id, user_id, created_at) VALUES (2, 5, NOW());

-- domain users
    INSERT INTO public.domain_users(user_id, domain_id, created_at) VALUES(6, 1, NOW());
    INSERT INTO public.domain_users(user_id, domain_id, created_at) VALUES(7, 1, NOW());
    INSERT INTO public.domain_users(user_id, domain_id, created_at) VALUES(8, 1, NOW());
    INSERT INTO public.domain_users(user_id, domain_id, created_at) VALUES(9, 2, NOW());
    INSERT INTO public.domain_users(user_id, domain_id, created_at) VALUES(10, 2, NOW());

-- domain support
    INSERT INTO public.domain_supports VALUES (1, 1, 6, 'consequatur eos vel', 'Quis dolores adipisci quidem sed. Perferendis voluptatem nostrum et quia vero nihil. Nobis iusto laborum dolorem eius ea est.', 'CLOSED', 3, NULL, '2021-11-17 18:32:04+00', '2021-10-25 10:38:07+00');
    INSERT INTO public.domain_supports VALUES (2, 1, 7, 'adipisci sunt sed', 'Corporis magni dolorem veritatis. Tenetur dolorem repellat sit et voluptas tenetur. Cum molestiae non ut sed occaecati delectus tempore qui.', 'OPEN', 4, NULL, '2021-11-28 23:03:20+00', '2021-11-11 17:24:19+00');
    INSERT INTO public.domain_supports VALUES (3, 1, 8, 'et id soluta', 'Non ut repellat porro autem exercitationem. Quis laborum aspernatur amet qui. Molestias quia explicabo vel aut sapiente et ut. At earum consequatur occaecati quia ut voluptatem et.', 'CLOSED', 5, NULL, '2021-11-25 00:13:10+00', '2021-11-22 05:47:14+00');
    INSERT INTO public.domain_supports VALUES (4, 1, 6, 'perferendis provident et', 'Autem voluptatem non est ipsam. Non animi voluptatem tempora et ipsum.', 'OPEN', 0, NULL, '2021-11-19 10:46:59+00', '2021-10-26 14:45:09+00');
    INSERT INTO public.domain_supports VALUES (5, 1, 7, 'atque animi cum', 'Illo maxime quos in dolorum facere rerum consectetur. Et voluptatum beatae labore quisquam dolor. In fugit veritatis molestias corporis commodi.', 'OPEN', 3, NULL, '2021-11-19 08:07:18+00', '2021-11-30 02:54:11+00');

    INSERT INTO public.domain_supports VALUES (6, 2, 9, 'maxime culpa repudiandae', 'Voluptatem reprehenderit illum quo beatae autem quo. Dolorem ut rerum laborum est perspiciatis. Est iusto voluptates dolores error atque.', 'CLOSED', 2, NULL, '2021-12-02 01:01:50+00', '2021-12-02 04:19:23+00');
    INSERT INTO public.domain_supports VALUES (7, 2, 10, 'et doloremque quas', 'Et quasi vitae in et rerum ex et quibusdam. Ut repellendus voluptatem soluta temporibus corporis. Porro voluptatem qui qui debitis. Rerum corporis quibusdam omnis non.', 'VIEWED', 1, NULL, '2021-11-19 04:26:05+00', '2021-11-29 07:36:19+00');
    INSERT INTO public.domain_supports VALUES (8, 2, 9, 'velit ipsam neque', 'Doloribus rerum nesciunt rerum dicta quisquam. Alias nostrum maiores et eum unde delectus non error. Voluptatem cumque voluptas quibusdam et eligendi alias autem.', 'VIEWED', 3, NULL, '2021-11-08 17:23:53+00', '2021-10-31 11:13:02+00');
    INSERT INTO public.domain_supports VALUES (9, 2, 10, 'exercitationem doloribus eligendi', 'Architecto recusandae libero doloribus ut incidunt deserunt optio alias. Vero ut assumenda rem illum quod quas et. Aliquid ducimus iure odio dolorem reprehenderit.', 'OPEN', 4, NULL, '2021-10-24 17:10:38+00', '2021-11-27 21:51:50+00');
    INSERT INTO public.domain_supports VALUES (10, 2, 9, 'qui nobis quo', 'Incidunt vitae vero commodi sapiente nihil eum qui rerum. Aut quo occaecati ea tempore soluta porro et voluptatem.', 'OPEN', 1, NULL, '2021-11-23 06:42:18+00', '2021-11-09 18:28:24+00');

    SELECT pg_catalog.setval('public.domain_supports_id_seq', 10, true);

-- domain support messages
    INSERT INTO public.domain_support_messages VALUES (1, 1, 3, '2021-12-02 13:17:20+00', 'Ipsum quisquam reprehenderit laudantium libero cupiditate vel sit beatae. Eaque nostrum autem qui et. Quia natus iste harum corrupti consequatur quod.', true);
    INSERT INTO public.domain_support_messages VALUES (2, 2, 5, '2021-12-02 22:34:42+00', 'Distinctio dicta molestias quo quia et. Ea ea labore molestiae illum consequuntur ut. Suscipit nobis qui doloribus blanditiis sunt. Totam ducimus omnis reprehenderit voluptatibus autem eos.', true);
    INSERT INTO public.domain_support_messages VALUES (3, 3, 10, '2021-11-04 09:03:28+00', 'Veniam quis ut et. Temporibus ipsum placeat voluptatem vero sit dolores doloribus nemo. Aperiam error mollitia nemo odio occaecati eum vel.', false);
    INSERT INTO public.domain_support_messages VALUES (4, 4, 6, '2021-10-28 03:21:19+00', 'Molestias eum molestias totam illo natus veniam animi vitae. Voluptas est sequi dolorem iste autem esse ipsa modi. Ut esse consectetur consequatur quis cupiditate sed sint et.', true);
    INSERT INTO public.domain_support_messages VALUES (5, 5, 7, '2021-11-23 09:47:58+00', 'Nihil exercitationem aliquid quisquam dignissimos. Optio soluta repellendus ratione veniam facilis in rerum. Maxime sed commodi dolor totam dolor.', false);
    INSERT INTO public.domain_support_messages VALUES (6, 1, 3, '2021-11-30 14:54:07+00', 'Autem fugiat praesentium nostrum consequuntur totam. Quis alias impedit praesentium aliquam. Vel eum expedita blanditiis voluptatem officia repellendus.', true);
    INSERT INTO public.domain_support_messages VALUES (7, 2, 4, '2021-11-03 12:44:55+00', 'Eveniet laborum eos provident dicta ex et. Accusamus molestiae quibusdam repellat in.', true);
    INSERT INTO public.domain_support_messages VALUES (8, 3, 3, '2021-10-23 21:30:10+00', 'Corrupti molestiae officiis voluptatem. Eius labore rerum optio asperiores. Ut itaque dolore perspiciatis est in facere est.', true);
    INSERT INTO public.domain_support_messages VALUES (9, 4, 10, '2021-10-25 19:53:12+00', 'Asperiores id ex illo voluptatem praesentium rerum voluptate nam. Placeat deleniti rerum dignissimos labore voluptas rerum. Error et cupiditate eos nulla itaque iusto qui.', true);
    INSERT INTO public.domain_support_messages VALUES (10, 5, 7, '2021-11-09 13:06:29+00', 'Aut similique et vero ullam. Veritatis velit inventore hic ipsa maxime rem sit. Consequatur cupiditate iusto voluptas consequuntur dolor repudiandae ea. Voluptas quod aut qui a et.', false);
    INSERT INTO public.domain_support_messages VALUES (11, 1, 5, '2021-11-11 10:48:27+00', 'Corporis dolore adipisci ad ut qui. Quis temporibus ut autem et. Error animi vero officiis. Minima sunt iste commodi.', false);
    INSERT INTO public.domain_support_messages VALUES (12, 2, 9, '2021-10-24 00:13:37+00', 'Et molestiae praesentium tenetur velit voluptatem accusamus aut. Earum fugiat impedit vel possimus debitis. Quod dicta et rerum in consequatur et soluta.', true);
    INSERT INTO public.domain_support_messages VALUES (13, 3, 9, '2021-11-26 04:20:55+00', 'Labore numquam tempora et natus asperiores. Est commodi magnam eius dolorem et.', false);
    INSERT INTO public.domain_support_messages VALUES (14, 4, 3, '2021-11-15 13:54:43+00', 'Quis mollitia sunt nulla ut. Quibusdam quibusdam ipsum dolore voluptatem autem quisquam aliquam. Tempore non tempora totam molestiae repellat. Blanditiis praesentium sed necessitatibus consectetur.', false);
    INSERT INTO public.domain_support_messages VALUES (15, 5, 9, '2021-11-27 21:51:11+00', 'Sequi non nisi quae reiciendis. Et vitae eligendi eligendi laudantium explicabo officia iusto.', true);

    INSERT INTO public.domain_support_messages VALUES (16, 6, 4, '2021-11-23 02:36:54+00', 'Facere nihil est veritatis aut accusamus quod omnis. Distinctio temporibus vel sed ut et est aut. Consequuntur est voluptatibus optio velit dicta.', true);
    INSERT INTO public.domain_support_messages VALUES (17, 7, 10, '2021-11-18 23:38:11+00', 'Quia non totam dignissimos et odit consequatur. Voluptatibus culpa consequatur nesciunt sunt quas non minima aut. Quae sed nobis dolor nisi quo veniam id. Esse qui quia et architecto non.', true);
    INSERT INTO public.domain_support_messages VALUES (18, 8, 5, '2021-12-05 04:17:59+00', 'Illo recusandae vero sit quia voluptate. Omnis fugiat ea tenetur. Aperiam eius repellat molestias consequatur eum nisi quia.', false);
    INSERT INTO public.domain_support_messages VALUES (19, 9, 10, '2021-10-30 13:03:25+00', 'Ex pariatur ipsa earum. Quia repudiandae et qui. Officiis dolor tempora asperiores placeat perspiciatis nobis. Qui ad impedit suscipit et minus blanditiis.', false);
    INSERT INTO public.domain_support_messages VALUES (20, 10, 4, '2021-11-17 08:34:28+00', 'Autem doloremque nemo maiores. Odio consectetur aliquid aut sit. Facilis reprehenderit aut exercitationem soluta.', true);
    INSERT INTO public.domain_support_messages VALUES (21, 6, 8, '2021-11-12 14:08:56+00', 'Vitae dolorem ullam quas doloribus placeat eos. Tempore debitis qui alias qui. Dolorem nam nihil et tempore est. Adipisci non dolore ab sapiente ex deserunt dolorem deserunt.', false);
    INSERT INTO public.domain_support_messages VALUES (22, 7, 7, '2021-11-15 00:46:24+00', 'Fugit adipisci velit commodi iusto eveniet. Saepe nulla adipisci libero velit. Alias corrupti ducimus qui cupiditate est odit placeat. Velit quos atque possimus assumenda.', true);
    INSERT INTO public.domain_support_messages VALUES (23, 8, 4, '2021-11-23 02:32:53+00', 'Aut quos adipisci inventore autem. Dicta placeat amet voluptas nihil. Id ex molestiae minima doloremque doloremque minima et. Illum eos omnis odio tempore nesciunt.', false);
    INSERT INTO public.domain_support_messages VALUES (24, 9, 3, '2021-11-15 23:56:13+00', 'Eos harum et enim est sit omnis. Ullam dignissimos iure qui voluptatum vitae sed itaque. Similique iure architecto iste dolorum tempora temporibus ipsa.', true);
    INSERT INTO public.domain_support_messages VALUES (25, 10, 5, '2021-11-01 20:53:51+00', 'Est et et eligendi excepturi. Aut dolore iusto fugiat et ut eius vero. Quos blanditiis beatae necessitatibus quibusdam impedit rerum.', true);
    INSERT INTO public.domain_support_messages VALUES (26, 6, 8, '2021-11-17 10:02:08+00', 'A molestiae expedita vel aut est ipsum. Est veniam non ducimus atque ad magnam et. Consectetur qui aut molestiae quis dolorem dolor fugit. Magnam sit quia natus nihil libero dolores qui.', false);
    INSERT INTO public.domain_support_messages VALUES (27, 7, 7, '2021-11-24 01:00:37+00', 'In qui illum aut ad deserunt quo ut. Minus iure distinctio distinctio eos maiores iure consequatur rerum. Et placeat explicabo excepturi nihil dignissimos non dolores. Et enim dicta laborum illum.', false);
    INSERT INTO public.domain_support_messages VALUES (28, 8, 6, '2021-11-10 12:15:13+00', 'Modi et sed quis aut dolorem cum dignissimos expedita. Eaque aliquam asperiores corrupti quibusdam quibusdam facere. Placeat quaerat fugiat voluptatem consequatur dolore.', false);
    INSERT INTO public.domain_support_messages VALUES (29, 9, 3, '2021-11-02 20:04:55+00', 'Enim rerum quasi ipsum ea saepe non. Dignissimos illo quo qui et. Quo distinctio quia corporis et mollitia. Est ex quaerat corporis.', false);
    INSERT INTO public.domain_support_messages VALUES (30, 10, 9, '2021-11-01 11:15:24+00', 'Rerum impedit eos veniam saepe occaecati. Dolor commodi quas odit et. Qui provident neque impedit harum eos. Et laboriosam aut nam vitae.', true);

    SELECT pg_catalog.setval('public.domain_support_messages_id_seq', 30, true);

-- courses
    INSERT INTO public.courses VALUES (1, 1, 2, '2021-11-11 14:03:23+00', 'aliquam porro eum', 'Voluptatibus error mollitia ipsam itaque deserunt non. Numquam officiis id distinctio natus. At non eum facilis expedita eius reiciendis nihil.', NULL, '2021-12-07 04:27:37+00', true, false);
    INSERT INTO public.courses VALUES (2, 1, 2, '2021-11-28 08:44:54+00', 'delectus itaque aut', 'Rerum laborum non et delectus totam. Doloribus culpa accusantium sapiente rerum rerum sint aut adipisci. Rerum voluptates incidunt ut.', NULL, '2021-12-29 08:13:05+00', false, false);
    INSERT INTO public.courses VALUES (3, 1, 2, '2021-12-03 08:51:12+00', 'pariatur eos sit', 'Voluptatem nam reiciendis iure sed ipsa cumque. Voluptas laborum et voluptate. Cupiditate aut quod culpa suscipit optio occaecati eum. Quasi qui possimus consequuntur temporibus ea.', NULL, '2021-11-30 11:18:17+00', true, true);
    INSERT INTO public.courses VALUES (4, 1, 2, '2021-11-02 01:44:06+00', 'dolore exercitationem illum', 'Deleniti quibusdam aspernatur assumenda tempore in laudantium quaerat. A voluptatem dicta commodi. Ea ipsum asperiores eos illum.', NULL, '2021-12-28 04:51:46+00', false, true);

    INSERT INTO public.courses VALUES (5, 2, 3, '2021-11-30 04:16:11+00', 'asperiores quia eius', 'Quae quasi qui minus omnis rem. Aliquam necessitatibus et inventore non. Mollitia ut optio eos ea adipisci et.', NULL, '2021-12-09 09:01:56+00', true, false);
    INSERT INTO public.courses VALUES (6, 2, 3, '2021-11-24 02:52:23+00', 'nisi similique cupiditate', 'Quia id suscipit praesentium quia quaerat. Non ex similique rem repellat vitae et et. Esse ipsum sed commodi quasi tenetur. Id et omnis sit officiis occaecati quis.', NULL, '2021-12-16 04:48:37+00', false, false);
    INSERT INTO public.courses VALUES (7, 2, 3, '2021-12-03 04:12:41+00', 'aliquid fugit non', 'Quis laborum dolorem dolorum vel. Iusto beatae atque ea dolor expedita. Et qui laborum tempora est aut.', NULL, '2021-12-12 07:38:41+00', true, true);
    INSERT INTO public.courses VALUES (8, 2, 3, '2021-11-29 09:07:23+00', 'provident cumque cupiditate', 'Facilis non voluptas et aut ipsa consequatur. Debitis ea eum in aut est doloremque. Ea optio ex voluptates ullam repellat fuga.', NULL, '2021-12-27 18:16:48+00', false, true);

    SELECT pg_catalog.setval('public.courses_id_seq', 8, true);

-- course modules
    INSERT INTO public.course_modules VALUES (1, 1, 'dolore perferendis qui', NULL);
    INSERT INTO public.course_modules VALUES (2, 1, 'eos earum alias', '2021-12-14 19:52:11+00');
    INSERT INTO public.course_modules VALUES (3, 2, 'iusto cupiditate deleniti', '2021-12-16 15:05:09+00');
    INSERT INTO public.course_modules VALUES (4, 2, 'voluptatum aperiam odio', '2021-12-13 22:29:02+00');
    INSERT INTO public.course_modules VALUES (5, 3, 'consectetur autem delectus', '2021-12-13 18:23:57+00');
    INSERT INTO public.course_modules VALUES (6, 3, 'repudiandae rerum excepturi', '2021-12-16 00:32:35+00');
    INSERT INTO public.course_modules VALUES (7, 4, 'id neque omnis', '2021-12-11 10:09:57+00');
    INSERT INTO public.course_modules VALUES (8, 4, 'eos atque delectus', '2021-12-11 13:23:54+00');

    INSERT INTO public.course_modules VALUES (9, 5, 'eveniet facere est', '2021-12-17 10:16:15+00');
    INSERT INTO public.course_modules VALUES (10, 5, 'dignissimos libero accusantium', '2021-12-09 22:42:17+00');
    INSERT INTO public.course_modules VALUES (11, 6, 'suscipit sequi possimus', '2021-12-11 00:44:27+00');
    INSERT INTO public.course_modules VALUES (12, 6, 'vel blanditiis minima', '2021-12-07 07:20:04+00');
    INSERT INTO public.course_modules VALUES (13, 7, 'omnis voluptas delectus', '2021-12-13 12:02:35+00');
    INSERT INTO public.course_modules VALUES (14, 7, 'molestiae dolorum eum', '2021-12-16 02:14:44+00');
    INSERT INTO public.course_modules VALUES (15, 8, 'consequatur temporibus natus', '2021-12-15 19:33:31+00');
    INSERT INTO public.course_modules VALUES (16, 8, 'commodi quod eum', '2021-12-09 05:53:03+00');

    SELECT pg_catalog.setval('public.course_modules_id_seq', 16, true);

-- course contents
    INSERT INTO public.course_contents VALUES (1, 1, 'et quibusdam omnis', 'Sapiente architecto itaque molestias ipsum eum aperiam. Tempora voluptatem consequatur error distinctio mollitia animi laboriosam minima. Iste et a consequuntur voluptatem.', 'https://yost.info/uploads/sunt.mp4', 10);
    INSERT INTO public.course_contents VALUES (2, 1, 'quae qui qui', 'Delectus modi optio ut rem. Consequatur neque explicabo aut quam ex sapiente. Ducimus error quos saepe autem magni totam. Ut et hic velit rerum.', 'https://stehr.com/uploads/est.mp4', 13);
    INSERT INTO public.course_contents VALUES (3, 2, 'quas corrupti aliquid', 'Nihil officiis corporis voluptatibus sed rerum ab sed dolor. Corrupti dolores minus et omnis et animi ut. Dicta reprehenderit expedita omnis reiciendis et incidunt ex.', 'https://kessler.com/uploads/in.mp4', 2);
    INSERT INTO public.course_contents VALUES (4, 2, 'vitae rerum qui', 'Consequatur id officiis molestias. Qui ipsa quis illum ut qui. Sed consequuntur aut consectetur a quas. Voluptatem inventore quam voluptates dolorem assumenda laborum.', 'https://johnson.net/uploads/rerum.mp4', 8);
    INSERT INTO public.course_contents VALUES (5, 3, 'labore occaecati aperiam', 'Vero occaecati impedit odit sed tempore. Libero recusandae qui amet repellendus ipsa. Enim hic dignissimos fugit fugit. Sunt omnis voluptas suscipit voluptas.', 'https://shanahan.com/uploads/iusto.mp4', 11);
    INSERT INTO public.course_contents VALUES (6, 3, 'ut nesciunt facere', 'Voluptates ea eum doloribus repellendus reprehenderit qui autem nam. Fugit dolores et officia esse. Explicabo maxime blanditiis accusamus sit ut.', 'https://jenkins.com/uploads/aut.mp4', 0);
    INSERT INTO public.course_contents VALUES (7, 4, 'in quia rem', 'Tenetur adipisci rerum consequatur esse eum. Est doloribus et sed. Reprehenderit sed pariatur ut numquam. Omnis ab alias est blanditiis.', 'https://waelchi.net/uploads/quo.mp4', 9);
    INSERT INTO public.course_contents VALUES (8, 4, 'expedita ullam dolorem', 'Nihil est debitis voluptatem dolor reprehenderit. Quis ut dolor eveniet. Deleniti illum molestiae soluta cum quae molestiae. At veniam non blanditiis rerum itaque.', 'https://corwin.com/uploads/facilis.mp4', 3);
    INSERT INTO public.course_contents VALUES (9, 5, 'asperiores quia quo', 'Perspiciatis ut asperiores quia sint non porro sunt. In est dignissimos minus voluptatem vel nobis deleniti incidunt.', 'https://goodwin.info/uploads/totam.mp4', 0);
    INSERT INTO public.course_contents VALUES (10, 5, 'et doloremque necessitatibus', 'Sint consequuntur qui delectus est nobis beatae. Rerum ea rerum voluptate deserunt numquam. Porro qui id impedit facilis. Quo consectetur in et rerum aut ut et.', 'https://blick.com/uploads/aperiam.mp4', 8);
    INSERT INTO public.course_contents VALUES (11, 6, 'voluptas praesentium sed', 'Officiis possimus explicabo est quas labore repellat sapiente. Voluptas eius aut pariatur nam unde pariatur. Corrupti omnis consequuntur aliquam rerum nulla.', 'https://ullrich.org/uploads/eos.mp4', 6);
    INSERT INTO public.course_contents VALUES (12, 6, 'et ut facilis', 'Unde veritatis facilis quo accusantium. Voluptates et numquam cumque commodi corporis est. Qui voluptates nihil nihil laboriosam esse.', 'https://wintheiser.org/uploads/dolores.mp4', 2);
    INSERT INTO public.course_contents VALUES (13, 7, 'rem eligendi dolores', 'Qui voluptatibus exercitationem at eveniet eum tempora quis. Numquam quam est corrupti earum exercitationem ullam.', 'https://skiles.com/uploads/nam.mp4', 9);
    INSERT INTO public.course_contents VALUES (14, 7, 'non debitis aut', 'Exercitationem dolor voluptas officia voluptate veniam iure. Rerum vitae adipisci vel natus. Sunt et ducimus excepturi vitae perspiciatis delectus sit. Et et inventore est et.', 'https://kerluke.info/uploads/et.mp4', 12);
    INSERT INTO public.course_contents VALUES (15, 8, 'nemo nam praesentium', 'Iure voluptas nisi ea quaerat. Dignissimos quo facere consequatur et in qui quo. Ex fugit excepturi consequatur veniam qui nobis qui. Corporis tempore rerum eos atque ut iusto porro earum.', 'https://mcdermott.com/uploads/quis.mp4', 4);
    INSERT INTO public.course_contents VALUES (16, 8, 'natus exercitationem autem', 'Aut aliquam non id quo quia qui. Non asperiores repellat qui id et earum iste. Maiores eum dicta et vel. Pariatur reprehenderit aut qui maxime vel quia dolore.', 'https://thompson.info/uploads/nulla.mp4', 9);
    INSERT INTO public.course_contents VALUES (17, 9, 'fugiat et et', 'Repellat reprehenderit excepturi architecto aut voluptas a. Dolorem commodi quia ut cumque aliquid saepe. Aliquam et fuga sunt sunt odit.', 'https://corkery.com/uploads/iste.mp4', 3);
    INSERT INTO public.course_contents VALUES (18, 9, 'est cupiditate qui', 'Distinctio saepe veritatis modi nemo sequi. Nihil et sed eaque assumenda molestiae. Facere et accusantium quam ut qui consequatur.', 'https://schmitt.biz/uploads/cum.mp4', 15);
    INSERT INTO public.course_contents VALUES (19, 10, 'ut culpa possimus', 'Sunt quia repellendus deserunt numquam. Aspernatur officia quia corporis nihil odit numquam tenetur. Quam iure aut et similique.', 'https://zboncak.com/uploads/dolor.mp4', 7);
    INSERT INTO public.course_contents VALUES (20, 10, 'culpa quidem numquam', 'Quis deserunt quia sunt ea. Voluptatem facilis quam labore similique sit qui dolorum. Ut est aut odit natus ipsa. Quis adipisci corrupti quo sint odit voluptas quia.', 'https://bayer.info/uploads/ut.mp4', 2);
    INSERT INTO public.course_contents VALUES (21, 11, 'doloremque molestiae aperiam', 'At sunt saepe corrupti sed reprehenderit. Labore omnis ullam repellendus fugiat. Iusto eum sit rerum delectus et minus.', 'https://pfeffer.com/uploads/dolorem.mp4', 14);
    INSERT INTO public.course_contents VALUES (22, 11, 'nulla quia magnam', 'Consequatur ad nemo est quis dolorem omnis quibusdam veritatis. Fuga placeat aut error architecto commodi inventore autem. Rerum aspernatur unde autem et et eius.', 'https://muller.org/uploads/tempora.mp4', 5);
    INSERT INTO public.course_contents VALUES (23, 12, 'aut voluptas eligendi', 'Quod delectus debitis pariatur quo perferendis. Est id debitis quos a accusamus. Autem nihil velit possimus vel. Labore ex totam officia dolore.', 'https://walker.com/uploads/voluptatem.mp4', 13);
    INSERT INTO public.course_contents VALUES (24, 12, 'omnis eligendi vitae', 'Voluptas voluptatem facere et et autem dolorum. Sed molestiae assumenda soluta. Qui ea rerum maxime consectetur voluptatem qui dolore. Debitis consequuntur qui exercitationem et.', 'https://brekke.com/uploads/repellat.mp4', 15);
    INSERT INTO public.course_contents VALUES (25, 13, 'voluptatum quam corrupti', 'Minima tempore est itaque possimus. Ea laborum id aut quo aspernatur voluptatum ullam. Laborum quod quasi molestiae aliquid ea nihil dolores. Unde ut quia dolores odio molestias.', 'https://halvorson.com/uploads/illo.mp4', 11);
    INSERT INTO public.course_contents VALUES (26, 13, 'enim veritatis eum', 'Nesciunt necessitatibus porro laudantium asperiores commodi qui natus. Porro aut nam id dolorem. Nesciunt qui deserunt qui repellat debitis est quidem.', 'https://bayer.com/uploads/et.mp4', 11);
    INSERT INTO public.course_contents VALUES (27, 14, 'sequi omnis perspiciatis', 'Numquam distinctio ullam aliquam optio perferendis eligendi alias. Aliquam est et dolorem nihil iure voluptatem sit. Animi aut quia minus similique et rerum.', 'https://osinski.com/uploads/aperiam.mp4', 9);
    INSERT INTO public.course_contents VALUES (28, 14, 'occaecati dolor odio', 'Omnis provident aut doloremque et. Quasi atque nostrum qui laudantium dicta mollitia. Laudantium et vitae quo quasi.', 'https://toy.com/uploads/ea.mp4', 10);
    INSERT INTO public.course_contents VALUES (29, 15, 'nihil non hic', 'Laboriosam sint rem sit non vel adipisci quam quod. Architecto hic sint aut aut laborum. Quia aliquam totam saepe pariatur atque. Corrupti et voluptates quia enim. Fugiat accusamus commodi ut maxime.', 'https://stroman.com/uploads/et.mp4', 8);
    INSERT INTO public.course_contents VALUES (30, 15, 'et magni expedita', 'Voluptate dolorum quod recusandae. Vero modi hic nam assumenda quos magnam facere. Consectetur soluta neque nihil. Nostrum iusto vel molestiae.', 'https://russel.com/uploads/in.mp4', 15);
    INSERT INTO public.course_contents VALUES (31, 16, 'deserunt qui voluptatem', 'Dicta optio sint recusandae non nemo. Accusantium et qui totam autem nulla eum. Asperiores sunt vel sint et. Qui modi consequatur perspiciatis ab. Quaerat error architecto cum iusto veniam rerum.', 'https://willms.com/uploads/incidunt.mp4', 2);
    INSERT INTO public.course_contents VALUES (32, 16, 'ducimus iusto tenetur', 'Ipsa maxime eos sint inventore ut. Ut ut labore rerum excepturi officia id. Pariatur dolorem ut dolorum dolor. Provident molestias reprehenderit esse velit cupiditate cupiditate eum.', 'https://legros.com/uploads/molestiae.mp4', 10);

    SELECT pg_catalog.setval('public.course_contents_id_seq', 32, true);

-- course content files
    INSERT INTO public.course_content_files VALUES (1, 1, 'voluptatem dolores assumenda', 'https://oconnell.com/uploads/totam.jpg');
    INSERT INTO public.course_content_files VALUES (2, 1, 'sed illum iure', 'https://west.biz/uploads/quidem.jpg');
    INSERT INTO public.course_content_files VALUES (3, 2, 'adipisci fugiat dicta', 'https://wolf.com/uploads/soluta.mp4');
    INSERT INTO public.course_content_files VALUES (4, 2, 'officiis est quibusdam', 'https://labadie.com/uploads/dolor.jpg');
    INSERT INTO public.course_content_files VALUES (5, 3, 'possimus recusandae sed', 'https://wintheiser.biz/uploads/eum.pdf');
    INSERT INTO public.course_content_files VALUES (6, 4, 'qui alias magni', 'https://hane.info/uploads/necessitatibus.mp4');
    INSERT INTO public.course_content_files VALUES (7, 5, 'consequuntur eos quia', 'https://lehner.com/uploads/quae.xls');
    INSERT INTO public.course_content_files VALUES (8, 6, 'ut ducimus rerum', 'https://runolfsdottir.net/uploads/sint.jpg');
    INSERT INTO public.course_content_files VALUES (9, 7, 'ut hic id', 'https://roob.com/uploads/rerum.xls');
    INSERT INTO public.course_content_files VALUES (10, 8, 'magni officiis est', 'https://satterfield.com/uploads/voluptatibus.mp4');
    INSERT INTO public.course_content_files VALUES (11, 9, 'reprehenderit quaerat ipsum', 'https://jenkins.net/uploads/velit.pdf');
    INSERT INTO public.course_content_files VALUES (12, 10, 'voluptas voluptatum libero', 'https://huels.com/uploads/error.xls');
    INSERT INTO public.course_content_files VALUES (13, 11, 'nobis sed sed', 'https://ullrich.net/uploads/id.jpg');
    INSERT INTO public.course_content_files VALUES (14, 12, 'enim est consequuntur', 'https://jakubowski.biz/uploads/saepe.mp4');
    INSERT INTO public.course_content_files VALUES (15, 13, 'facere reprehenderit quaerat', 'https://torp.com/uploads/et.mp4');
    INSERT INTO public.course_content_files VALUES (16, 14, 'quod exercitationem et', 'https://jones.info/uploads/asperiores.xls');
    INSERT INTO public.course_content_files VALUES (17, 15, 'qui quis dolorem', 'https://gibson.net/uploads/iste.xls');
    INSERT INTO public.course_content_files VALUES (18, 16, 'excepturi et rerum', 'https://rodriguez.org/uploads/eius.xls');
    INSERT INTO public.course_content_files VALUES (19, 17, 'et eos et', 'https://towne.biz/uploads/impedit.jpg');
    INSERT INTO public.course_content_files VALUES (20, 18, 'rerum eligendi quia', 'https://braun.com/uploads/sit.xls');

    SELECT pg_catalog.setval('public.course_content_files_id_seq', 20, true);

-- course students
    INSERT INTO public.course_students(course_id, student_id, invite_email_sent, active) VALUES (1, 6, false, true);
    INSERT INTO public.course_students(course_id, student_id, invite_email_sent, active) VALUES (1, 7, false, true);

    INSERT INTO public.course_students(course_id, student_id, invite_email_sent, active) VALUES (2, 8, false, true);

    INSERT INTO public.course_students(course_id, student_id, invite_email_sent, active) VALUES (3, 6, true, true);
    INSERT INTO public.course_students(course_id, student_id, invite_email_sent, active) VALUES (3, 7, false, true);
    INSERT INTO public.course_students(course_id, student_id, invite_email_sent, active) VALUES (3, 8, false, false);

    INSERT INTO public.course_students(course_id, student_id, invite_email_sent, active) VALUES (4, 6, false, true);
    INSERT INTO public.course_students(course_id, student_id, invite_email_sent, active) VALUES (4, 7, false, true);

    INSERT INTO public.course_students(course_id, student_id, invite_email_sent, active) VALUES (5, 9, false, true);

    INSERT INTO public.course_students(course_id, student_id, invite_email_sent, active) VALUES (6, 10, false, true);

    INSERT INTO public.course_students(course_id, student_id, invite_email_sent, active) VALUES (7, 9, true, true);
    INSERT INTO public.course_students(course_id, student_id, invite_email_sent, active) VALUES (7, 10, false, false);

    INSERT INTO public.course_students(course_id, student_id, invite_email_sent, active) VALUES (8, 9, false, true);
    INSERT INTO public.course_students(course_id, student_id, invite_email_sent, active) VALUES (8, 10, false, true);


-- course content done
    INSERT INTO public.course_content_dones(course_content_id, course_student_id, "date", rating) VALUES (2, 1, NOW(), 4.5);
    INSERT INTO public.course_content_dones(course_content_id, course_student_id, "date", rating) VALUES (1, 2, NOW(), 4.5);
    INSERT INTO public.course_content_dones(course_content_id, course_student_id, "date", rating) VALUES (8, 7, NOW(), 4.5);


-- notifications
    INSERT INTO public.notifications VALUES (1, 6, '2021-11-28 00:29:25+00', 'Sit tempore sequi id qui quaerat fugiat. Consequatur quis in earum aut et quam et voluptates. Voluptas eius adipisci facilis voluptatem dolores. Dolor necessitatibus omnis quia a voluptatibus atque.', true);
    INSERT INTO public.notifications VALUES (2, 7, '2021-12-04 15:06:49+00', 'Dolorem et suscipit eos reiciendis veritatis perspiciatis. Officiis dolor voluptas ea eveniet omnis. Omnis rerum quos ut aut.', false);
    INSERT INTO public.notifications VALUES (3, 8, '2021-11-29 04:52:48+00', 'In sint dolor velit voluptatem eos nemo eos quidem. Et necessitatibus repellat sit dolore. Id architecto illo et aut est.', false);
    INSERT INTO public.notifications VALUES (4, 9, '2021-11-29 09:13:20+00', 'Est neque numquam aliquid consequatur. Atque velit quidem tempora qui ratione quibusdam qui. Earum sed corporis et nihil.', false);
    INSERT INTO public.notifications VALUES (5, 10, '2021-11-27 20:09:57+00', 'At et aliquid libero maxime praesentium. Ad cum recusandae et id quas et. Hic alias nihil sunt maxime. Quo quasi sed omnis fugit ducimus est. Repellat dignissimos saepe soluta nihil.', false);
    INSERT INTO public.notifications VALUES (6, 6, '2021-12-05 03:33:09+00', 'Culpa ullam dolorem reprehenderit et. Magni accusantium placeat laudantium.', true);
    INSERT INTO public.notifications VALUES (7, 7, '2021-11-29 21:12:56+00', 'Minima et voluptatem corrupti in et quibusdam. Hic est velit quidem autem qui. Omnis quia rerum dolor praesentium.', true);
    INSERT INTO public.notifications VALUES (8, 8, '2021-11-30 03:51:21+00', 'Saepe quia omnis ex nesciunt maxime tempora. Dolorem autem quia laborum quidem alias voluptatum. Voluptatibus officiis deserunt dolores minus. Animi excepturi amet qui quidem atque.', false);
    INSERT INTO public.notifications VALUES (9, 9, '2021-12-03 13:14:59+00', 'Quam id voluptas dolorem minima iste ad voluptates. Doloribus qui voluptate minus illo eveniet optio veniam. Aliquam tenetur temporibus nostrum commodi nesciunt quis.', false);
    INSERT INTO public.notifications VALUES (10, 10, '2021-12-02 19:57:35+00', 'Perferendis quo reiciendis et ullam veritatis ut. Expedita velit distinctio animi occaecati. Voluptas explicabo vel odio et. Porro reprehenderit provident aut sequi.', false);
    INSERT INTO public.notifications VALUES (11, 6, '2021-12-05 13:31:54+00', 'Aspernatur ab occaecati quae et. Quia et reiciendis voluptates nisi porro. Nobis et voluptates similique et quaerat laboriosam. Cum asperiores doloribus distinctio cupiditate autem provident porro.', true);
    INSERT INTO public.notifications VALUES (12, 7, '2021-12-02 14:51:14+00', 'Ea illo et hic unde cupiditate ipsa. Vero iste delectus sed neque. Optio sequi ut repudiandae cupiditate et.', false);
    INSERT INTO public.notifications VALUES (13, 8, '2021-12-03 23:42:59+00', 'Alias aut soluta est non. Nam dolorem dignissimos in quos unde aut. Perspiciatis molestias expedita numquam quibusdam expedita quos.', false);
    INSERT INTO public.notifications VALUES (14, 9, '2021-12-03 12:21:33+00', 'Fugit odit consequatur voluptatum. Porro commodi minima beatae quis suscipit cumque consequatur. Ut laudantium dolorem et ut mollitia dolores et.', false);
    INSERT INTO public.notifications VALUES (15, 10, '2021-12-05 15:04:40+00', 'Neque voluptatem officia sint ea consequatur et. Facilis iure ut voluptate. Voluptatem et voluptates quae ullam error. Aliquam ut totam ut amet unde et.', false);
    INSERT INTO public.notifications VALUES (16, 6, '2021-11-28 06:19:19+00', 'Qui est at sed sunt cupiditate amet aut nihil. Repudiandae aut voluptates similique consequatur. Blanditiis incidunt dolorem autem laborum et consequatur.', false);
    INSERT INTO public.notifications VALUES (17, 7, '2021-12-05 07:59:30+00', 'Reiciendis unde rerum qui quo. Vitae adipisci ut at quae amet esse. Illo repellendus et reiciendis dolore ex ut dolorem.', true);
    INSERT INTO public.notifications VALUES (18, 8, '2021-12-06 08:31:25+00', 'Natus provident soluta sed quas earum. Eaque et sapiente labore est nam. Recusandae explicabo culpa eaque qui ut nihil.', false);
    INSERT INTO public.notifications VALUES (19, 9, '2021-12-01 14:59:44+00', 'Ut aspernatur voluptatem incidunt asperiores omnis tempore aut. Eius dolor ut sed incidunt. Quasi quisquam accusamus rerum atque.', true);
    INSERT INTO public.notifications VALUES (20, 10, '2021-12-04 03:38:29+00', 'Pariatur et nobis consequatur sed ipsam dolores ea in. Quis sint est et quia dolore numquam.', true);
    INSERT INTO public.notifications VALUES (21, 6, '2021-12-01 18:45:25+00', 'Animi dolore ut asperiores commodi aut aliquam. Repellendus voluptatem odio est molestias aut consectetur modi. Fuga rerum doloremque in ipsum assumenda.', false);
    INSERT INTO public.notifications VALUES (22, 7, '2021-12-01 08:24:59+00', 'Ea adipisci sunt in ipsum eum eaque ad. Est ut nobis magnam ut itaque ut labore. Aut autem et enim sit.', false);
    INSERT INTO public.notifications VALUES (23, 8, '2021-12-02 23:27:04+00', 'Veritatis assumenda suscipit eveniet ut beatae autem vel. Ut tenetur sed quibusdam consectetur. Ipsum architecto error quis qui impedit aperiam.', true);
    INSERT INTO public.notifications VALUES (24, 9, '2021-11-29 09:32:39+00', 'Illo dolorem maiores debitis optio eos soluta. Minima et ea dolorum quibusdam asperiores voluptas. Maiores quaerat harum et beatae impedit ut.', false);
    INSERT INTO public.notifications VALUES (25, 10, '2021-12-03 22:06:56+00', 'Quia vel est nostrum perferendis. Labore similique enim iusto ut excepturi. Voluptas blanditiis voluptatibus cumque.', true);
    INSERT INTO public.notifications VALUES (26, 6, '2021-12-02 22:40:46+00', 'Expedita voluptate saepe aliquid quis et eum aut. Delectus dicta quibusdam ut accusamus. Praesentium sit perferendis quam est.', false);
    INSERT INTO public.notifications VALUES (27, 7, '2021-11-28 13:53:06+00', 'Rem impedit cum labore omnis veritatis omnis molestias dolor. Fugiat et ea ab doloribus eos et. Sint sapiente veniam hic officiis. Ducimus ut nemo ut et voluptatem.', true);
    INSERT INTO public.notifications VALUES (28, 8, '2021-12-06 12:10:25+00', 'Est fuga et nemo harum ipsa repellat officia porro. Neque quisquam sit corrupti aspernatur aliquam maiores quo. Doloremque hic enim culpa impedit. Labore et aut odit qui odit enim itaque amet.', false);
    INSERT INTO public.notifications VALUES (29, 9, '2021-11-28 13:41:01+00', 'Odit quaerat non et fugit et qui velit. Reprehenderit hic aut minus quasi sed non. Illum omnis pariatur reiciendis ducimus et sequi. Aut ut voluptas fugiat sunt placeat.', false);
    INSERT INTO public.notifications VALUES (30, 10, '2021-12-02 12:09:26+00', 'Voluptatem aut nihil maiores quaerat qui non voluptatem voluptatum. Atque dolores dicta in.', true);
    INSERT INTO public.notifications VALUES (31, 6, '2021-12-04 09:22:43+00', 'Non cum labore ut deserunt. Repellat voluptas odit sapiente facere tempora neque tempora. Iusto tempora libero hic repudiandae dolor in ea. Doloribus labore ex cumque incidunt voluptatibus unde.', false);
    INSERT INTO public.notifications VALUES (32, 7, '2021-12-06 03:27:16+00', 'Voluptatem officia laudantium repellendus et sunt placeat laudantium et. Saepe nisi dolorem ea ex.', true);
    INSERT INTO public.notifications VALUES (33, 8, '2021-11-28 05:52:36+00', 'Veniam reprehenderit quaerat cum atque. Odit dolorem dicta omnis eius voluptas. Dignissimos beatae aut et maxime sunt quia optio. Minus temporibus eius magnam.', false);
    INSERT INTO public.notifications VALUES (34, 9, '2021-12-02 15:45:59+00', 'Ullam repudiandae molestias exercitationem deserunt. Quae porro ullam harum est. Odio quod aspernatur possimus quaerat nostrum quia fugit.', false);
    INSERT INTO public.notifications VALUES (35, 10, '2021-11-29 12:04:27+00', 'Distinctio qui minus ipsam et repellendus accusantium ut libero. Consequatur exercitationem facere facilis. Excepturi fugit pariatur et quo.', true);
    INSERT INTO public.notifications VALUES (36, 6, '2021-11-28 18:40:09+00', 'Modi minima nisi ut. Ipsum dignissimos accusamus dolorem repudiandae. Porro ratione culpa maiores et. Officiis distinctio beatae at cumque dolore omnis.', true);
    INSERT INTO public.notifications VALUES (37, 7, '2021-11-29 03:40:58+00', 'Aliquam sint provident qui sit totam. Eius aliquid et vero cumque alias ut. Ut qui et cumque nemo dolorem ut voluptatem in. Vel ducimus aut qui facilis esse aut.', true);
    INSERT INTO public.notifications VALUES (38, 8, '2021-12-01 15:15:30+00', 'Ut amet aliquid et nostrum eius consequuntur. Consequuntur expedita ex cupiditate. Ipsa non fugiat et voluptatibus incidunt sunt. Ab aspernatur dolorem occaecati in adipisci.', true);
    INSERT INTO public.notifications VALUES (39, 9, '2021-11-30 11:49:34+00', 'Error voluptatem accusantium nulla aut deleniti ex facilis. Ad nam rerum sunt. Aspernatur magnam magni nihil minus dignissimos. Repellendus doloremque fuga sint dolor quidem ab.', true);
    INSERT INTO public.notifications VALUES (40, 10, '2021-12-03 08:30:54+00', 'Officiis aut excepturi aut velit architecto repellat. Enim eum eveniet occaecati. Dolorem et totam saepe perspiciatis earum nihil.', false);

    SELECT pg_catalog.setval('public.notifications_id_seq', 40, true);


-- timelines
    -- ???