-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 03 月 28 日 23:38
-- 伺服器版本： 5.5.68-MariaDB
-- PHP 版本： 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `api`
--

-- --------------------------------------------------------

--
-- 資料表結構 `bcomment`
--

CREATE TABLE `bcomment` (
  `id` varchar(10) NOT NULL,
  `author` varchar(60) NOT NULL,
  `comment` varchar(1500) NOT NULL,
  `blogId` varchar(10) NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `blog`
--

CREATE TABLE `blog` (
  `id` varchar(10) NOT NULL,
  `title` varchar(60) NOT NULL,
  `ops` varchar(1500) NOT NULL,
  `blogtype` varchar(10) NOT NULL,
  `isPrivate` tinyint(1) NOT NULL DEFAULT '0',
  `updatedBy` varchar(10) NOT NULL,
  `updated` datetime NOT NULL,
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `btype`
--

CREATE TABLE `btype` (
  `id` varchar(10) NOT NULL,
  `title` varchar(60) NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `loginStatus`
--

CREATE TABLE `loginStatus` (
  `id` varchar(10) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `userId` varchar(10) NOT NULL,
  `token` varchar(150) NOT NULL,
  `device` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `loginStatus`
--

INSERT INTO `loginStatus` (`id`, `isActive`, `userId`, `token`, `device`) VALUES
('TCV28fhj97', 0, 'U6yKwpqiFv', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6Imh3d', 'mac'),
('TmE3hPZtbq', 0, 'U6yKwpqiFv', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6Imh3d', 'mac'),
('TObpnK3dXY', 0, 'U6yKwpqiFv', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6Imh3d', 'mac'),
('ToXsi7gAhD', 1, 'U6yKwpqiFv', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6Imh3dC5od2FuZ0BnbWFpbC5jb20iLCJpYXQiOjE2NDE4MjI2NDl9.mdb9dvE366NWchsYV2h5LoGHZwjXdTd40--0VmWLcBE', 'mac'),
('TQ8jQfJfPz', 0, 'U6yKwpqiFv', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6Imh3dC5od2FuZ0BnbWFpbC5jb20iLCJpYXQiOjE2NDE3Mzc1NzB9.n-ZissHgLIVUb50BHSnNG5GOOcA9Vekq4ySvaPKz4pg', 'mac'),
('TQTs86z585', 0, 'U6yKwpqiFv', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6Imh3d', 'mac'),
('TRu7NNAeLc', 0, 'U6yKwpqiFv', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6Imh3d', 'mac'),
('TutRUMLKC0', 0, 'U6yKwpqiFv', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6Imh3dC5od2FuZ0BnbWFpbC5jb20iLCJpYXQiOjE2NDE1NzA4NjR9.BKivb0n8_9OUh69WkgpmlYvZq59Unfc25gniueh2fV4', 'mac'),
('TzsGVDm31o', 0, 'U6yKwpqiFv', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6Imh3d', 'mac');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` varchar(10) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `kname` varchar(30) NOT NULL,
  `account` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `avatar` blob,
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `lname`, `fname`, `kname`, `account`, `password`, `status`, `avatar`, `isDeleted`, `created`) VALUES
('U6yKwpqiFv', 'Hwang', 'Hsin', 'Ted', 'hwt.hwang@gmail.com', 'U2FsdGVkX18cy83V0klCOrOJogjaL1XodNJjwP0r2tw=', NULL, 0x89504e470d0a1a0a0000000d49484452000000fa000000fa080600000088ec5a3d000000097048597300000ec300000ec301c76fa8640000200049444154789ced9d07781347fac6174825a45dee422024b94bafa473c9fd2f81e4c225dca51ca4510281d0d213aa81103a845e4287d85463836ddc7befbdabd8922dd95697dc3bb6c9fb7f6624d9b22d9b12babedff3bccfeecece8e7647fbee3733bb5a09822080447540e78070add7c165df0112d5019d0302199d4e02ba10d039205044a793802e04740e08d474a793802e04a03aa093804e023a07e0007570d97780447540e7807091ebe0d65b6f0589ea80ce815bafe93a10faf7ef0f12d5019d03fdafe93a101e7df45190a80ee81c78f49aae03e191471e0189ea80ce8147aee93a20a35f015f0289eae0918b6df4cbdda420511dd039f02835dd29da51b4a373e0913f1ed11f7ffc7190a80ee81c78fc9aae830b7b7b6d407ff4bfd54657c06d855bae807d20511df4bfdcb7d7e8a92c7a2a8bce01c111eaa073429f3e7dceaba03e421f087f1720bc2b40f8af00e175017dafeb7b6ee5f4e9833e3d967f7efb79cbf5e75731e7540fe7596724aa03e192d5419fbe78faf9d73072f8ab6c81270e7cf0093cf7e893b8ff4f43d0ffa61bd1afdff51d06b8ae1ffaf5edd3c97cd6e95dfbef82f329671c6e3a8c07fd1f84709d80dbfadf8507efbf170f3cf2385efff708dc77c760bc3e7c04fe76ff5f3068d0a31835f21dfce5ce5b3a99e5865b6ec5d0179ec6cd37b00b451fdc70dd75e6cfe9db07fdfaf6c3cd37de60ce77d38dedebec69f0803ef8f8b17eb8bb7f47daf5d79b8fe5c6ebcc9f377cf853b8ae5f5ff411fae1ce3beec08dfc33cd79073ef808863ef684f9b3ae337fe6a0218371fb2dac8c3ee8d34740df1b6ee2e90f3efd329eb87ff0b95f24485407c225a883f11fbe86592b1663e1f7d3b160de744c9b3a153366fc80ffbc3202e3de9804a71f2663fad49998f4d964fc3c6f0e3efee4538c9bf00156ae5a88871fbc8f17c2ccc7a6c3760e43417d0172ab7231da7b8cd9004386e283b75ec77fc74ec48f9bd762f1a445d8b47e359e7d62085e7dee7dbcfbea3b98b3640196ce73c2a4b19f60d2375f61c1e2e55838f77b4c9e3c16933e9e88a9e33ec3f469b3f0d3ec6f31edaba9f864f42778e8c147f0c1dbffc5add79b3fdb9efe3544c0e42705dc79b339cfe0214fe1abc93f62da271fe1d3c95331fee34fb074e95758b46c095e7de929fcdfcb1fe3bb49e371db6db7e16ff70fc1a32ffc1d739d5663ecf8f73076e2048c1d3705ab5639e1b9876ec7fbe3c761f21733317eec87f870e24cfcf0cd1c8c18fa68a70b1f89ea40b852eae0f5571fc4887fff03afbdf22a3e7a7f24fef17f6f62ccbb63f0d890fbf1fca3c3f0c68867f0eccb2f60cc27e33063ec387c3bef672c9a3f0d1fbc3b027fbaf3364b04b314b65dc0e8d2d198ab9f0bc15d8070bd8001fdefc6bbeffc07c387bf8e7b9f780c235e7d031f8e198d679e7c007f7d6028de79f32dbc3ae2758c787d0446be35126f8d1c8eb7468ec288378663d47ffe8d991f7f876f3fff0caf8d7807efbdf32f3cf3e2b3f8e71b6fe3d1bf3d84375f7b030f3f30047f7df041dc7e4bff4ed174e0a07b31f5f5bfe2b357eec39fee3647dabbeffe1b5e78ec25bc37ea1dbc33ea7dbcfbcedb183d6624fe3dea1dfce39fafe08b4f67e193512371c76db770b3de35e85e0c1dfa32fef3feeb786bd4db1831fcdf1833f603fc6de01d78fac5e7f1f717dfc1e8f7dec69ba33ec4e851efe285a79fc2030fdc873befb8fdf27fb124aa03a1531d9c5b85dcf7f8931872cf9f3b4c65db4c7d5280304c80f09200e15901423fcbba3eddfbea7dfbf5ebdcccb55e2cbae8d69befc26d37dfd8e3fef4bbee3aaebe7dfb9af7c552de80010370ff030f60d0bd4370d34d379db1397deb9d7fc6830fdd6fd9973ebde6efdbd7b6bb60ddff3ee8d3b72f6eb8e106f4ebd78fef0f89eaa0ef155207177cd4bdaf451451a80ee81c10ae9c3ae837f02f38175d3f6820aebfe7ee6ee97deffe33fa0cbc0b7deeb168e05de87b16e5dd30e86edc34f89e1e75f3e041b8b97d79206e193208b7de3f1803ee1b8c01f7dbc8b2dc7fc83d78f2d9a1f8fbb06178f9e597dbf5d24b2ff52a9667d8b06167cc47a23a78e92aac03a1dfb409f8a3ea3b7d02fa4c9f0061faf84eea3b6d7cafdbf5993a1e777c3705f7cdff0af7cefdf28c1a3c77269e5a360bcfaf9e8b6757cfeea6e7d7ccc5234bbf419a520ec6a99616b4b5b591a80ee0e8752008dca07f54e321cc98d05dbd6dc3d64f1b8f5bbf9f82c14e5fe19e795f62d0bc2f71cf7cfb1a34ff4b0c9c3f138fad9885e77e998ba16b66e3d9357330d446cfff32170f2ffb1699650a6ef4d3bfffcea704e1e8085da3f025d38cf110a68dc380efa66090d39718387726ee619ad7b306ce9b81c796ff88e7d6ccc5504b141f6a2316d11f5efa0d324a8bf8c1b5b6b5e1f7df7f27511dc0d1ebe08f47f4f6c86d35304bb39def21ba5b23fa77533078fe57dce42ca20f9a6b4796f47be6cdc013cb67998dce22fa6a73247fd6221ed1b9d18bb9d1db4e9fbeccd75182b83210ec36b9cf24ab893b45689b75ed1780ae51bc4b53df62f47b6d8c6e8ede5f7612373a9f27a313c4a533fa1f554f46ef49f3d8d49ed167b74ff9601c457482b8428ccea3bdd5e8e3f8601c37ba4de4ee492cda73a3f3c1b88e267b47d37d1e1f8ca3a63b415c4ea3b7f7cf2dcdfba9e330e0dbc9dcc403e7cc38a3ee9e330d8f2dfd01cfae9a83a1ab6661e8aa3978c646cfad9e8b879690d109e28a313abfef3e652c06cffb122faf5b88e756cfc7f3abe7e3b9353debd9d5733162eb12bcb36b25febd7305de66dab5bc5da376afc4eb5b7f429ea6841f1c0dc6118419a1efcccf7039d46fe644085f8cc3838bbfc3bf76aec0886dcbf0466ffa751937f9fff6adc5d8831bf1c9810df8d465133e3dd0a1710737e3fd7dbf40a253f1833b4da3ee04c11184c91fe3b269c2683ec0f6caa6457879fd02fc7dfd42ae613de8e5754ef8f7f6e5787fef6abcbb6715dedbb3ba933ed8bb066f6d5f0a91b6941f1c45748230233cbdcc099743cf2c5f802717cfc3dbdb56638aeb4e7c7e68073e3fdcbb261dda8e6f8fefc3ec932e9875d2a57d6ad51cef03f8fac45e149974fce04eff4ef7d109821bbda9a5059753cdad2d38d5da7af66a6b454b2f62ebad8fbeb22782088200846bb512c8e404d181c0a2dfe5d4c57ab697416627886b20a293b109e2ec102ef7ef64cf57adadaddd22b76d342708a20341abd5e26a934ea7e35383c180a6a626bbd19d20880e04b55a8dab552a950a1a8d06cdcdcdfc60c8e404611f8199e55c545656764ef9cf56bd199a9999c93a6fbb8eed4f4545053f188ae804611fa1b8b8183da9a8a8a8937acb6b6f5b7b65c82d53994c86c2c2c24e2a2828689f4a2412bb128bc57c3d2b9b999cc96834f28321a313847d046692de65b0a8238df58d7b97de2203f47a3d745c3a73df5aa7e5519919542e974322ed30707e7e3ef2f2f2909b9b8b8c8c0c24262622212101f14cf1f15c2c8dad2f2d2de5170c323a419c19c1c7db07e7a4933ef03ee90d9f6ef2e961de9be7ef2a6bfa494f2f78797ab54fb93c2ccb1e9ef03ce1094febf484077c7d7d919696c69beb0a85024aa592223a419c01c1332d109757413dcaab9342e011e88d63475d11171787caca4a94949470b353d39d207a4770cf0bc295ace3f9c17063f392103847bac3f5a82b6fc233a3b3684e46278833231ccaf0c195aa83e9def82dc513cea95ed897ea81352776c0ddcd8df7d9abaac8e80471b60873dcd6e2a2cadda21ed6cf75efae79eeeb31d76d2d7e3eb905db620ee3d798235813b60f0b0eace5fd7466746bd39d457593c9c40f8646dd09c23ec2470ba7e1726af482a936fa0263164ec5ffe64fc1074ba662fabe455813b207eb427fc31c8ff598e7bc1a27bd4eb61b9d8dbc33b3979797f38321a313847d847871262ebe322cea9c9620c944b65c64a37ce4164b109f9f861f7e5b8eb9c7d761a9ff0e2c0bd88919879662becb2f7ce43fc126a293d109e2cc081b92437039b4363108bb32a2edee54635323967a6dc53caf8d5870720b9cbc3661d2fe05703ab8167ebebefc5e7a456505457482384b84f961c771c9157e1cb343ddb022d6172d6d6daccdcd5ffb647d99636d7d2d7ef6dc8c6f5d576296fb1a7ce7ba0a9fed75c2a2c31b10e01f60367a85d9e84cf4082c41f48eb028d213975a3f457ac229fc047e890f40abc5dcb6fdeb9aba5aac09dc85e511bbb03a6a2f667bacc3677b9cf0f3d1cd080e0a46724a72bbd1e959778238330233dda5d6e2282f2c88e8d9e8d5b535d814ee8c5f338e6167963b16fa6dc5a4bd0bb0d4752b428243909292c28d6e7dd69df5d7bb9641104407c2dc30775c0efd18720ccb637cd07abaad7b44b7187d6bda516ccf70c322ffad98bc6f2196b96de3464f4d4de5e6662667bf6023a31344ef08274469f01033a59b655d16d9a4fd6175fe0c4f713a8e8b52e15f98ddfe4ae6ae46df1cee826de9aed899e98e2501db3165ff4f58eebe0da121a1484b4feb64f4aaaaaa6e651004d181a0a83641566180ac5c0f994987a2aa72145799505c536e4ebb482a2cd7a1b8d268f73550cce85b225cf06bba2b76651ec7b2a05df8c27931561edf8188f07064676773a35b5f3c41462788de1192a47938eaeb89e0d464b88505202c33155925721c703f8ae0f4447825254254ae47be5e857c83fa82486450234faf82d4a4edd1e85b230e627ba61b76679fc0cad03d98e6fc33567bec44544424ff396b757535373a7ba5149bef5a0641101d08e119a938e2e58ae0e4649c080b845f5c24e27333b06dc7af084e4bc089f858e41af5101bd4101b35174cccec2caaf764f46d9187b023c31d7bb33cb036ca19d35d96e217cf5d88898e86482c425d5d1d373afb8d7b4d4d4db7320882e840c854ca1099938978a908e199a948914b90a35341a45522592642407202f20c5a880c9736a2ff1a7918bb324f606fb617d6c71cc4cc43cbb1f6e41ec4c7c5f31755d4d7d7f3fe397bb1456d6d6db7320882e84090551a505c6d42519511c5d5e5905719212bd7a1b05c0f79a5110ade57372f9fbfd8f69dcb2838431f7d7bd411eccaf2c2fe1c6f6c8a3d84af0eadc406ef7d484a4ce2af926a6868687f132c8bee5dcb2008a203c1d058077d432d0c8db5ed5396669635adeea2c8d4546fdfe87535d819ed8abdd9de70cef1c196f823f8eec81a6cf271466a4a2affc55a6363236fb6b3974e90d109a27704757d352e8754f5d5d036d4f460f45aec8a76c5fe6c6fb8e4f8605ba22b7e38b6165bfc0f20233d031aad16a74e9de24667bf5c63cdf8ae651004d181a069a8c1e51033bbaeb1b687a63b33fa31fc96e303975c3fec4c398ed9c737625bc061e464e7f07e397b2e9e4dd913722cba772d8320882b3da2d7d662778c1b9c737d7120d70f7bd3bc30cf632bb6071d8558246a7f471c9bb27be85dffad852088ce087ad60fbfe4aae3d1dcd8531fbdb6167b62dde192e78f8379fed89f7e120bbc7ec5ae1037c80a0adbdf28c3a239bb876efb4f2d647482e88e505a5d818bad92ea72bb69eadaca1efbe8fb624fe0405e000ee505c239d3078b4eeec0deb0e3502a94fcb7e80c16cdd9ad35d65fa7ff5e23889e11d8fdec4b2df6945daebe0c52a396ff47ba3da3ef8ff3c0a1fc401cce0bc2816c3f2cf6d985fd919ed06a34ed0fc8b068ce46dc5b5a5ac8e804d10bc2857cdaed823d1957570be7384f1ccd0f826b7e300ee70460a9df1e38479f84d1606c7f4086199ddd4fb7fe853235dd09e22a33ba4bbc175cc52170cd0fc13151085604eec781581f545654a2ce723b8d457636e2cefe2f9d8c4e105761d3fd40c249b84942b9c98f4bc2b126c40587e3fd505b53c3a338cf5753c347dcd9ad36323a41f48c505a53818baeeaee69e6c1b8aa1e23fac1046fb84bc2e12e0ac5094938d6851dc4d18400d4d7d5a1a1d16c74d6846723ee647482b8226fafd5f67e7badae1687127c705c1289e3a270784822b021e2088e2505a1b1a1b13da2db1b71a7db6b0471b53c3053578bc389be38218dc20971043ca551d81c750c6ec9a1686e6ae2fd7296d73ae26ebb3d199d20ae964760b9d1fdb8c13d2451f02a88c6f6d813f0480d474bf329fe6cbb3da3db4e0982e840505da111fd48923f3c0b62e1298d8177411c76279c84475a045a4e9de24d76abd1d9ad35dbedc9e804d11dc174aa01c6a68bf333d4f3ff996a2d8e2605c0ab300e5ed258f81426606f920f4ea647a2b5a585df3f670370f68c4e104477843c75090a4cd617435c3ab1cfecf1c51375b5389614086fabd16509d89fe207efac686ef4f28a727eefbcabd16da7044174201cf6f3455251112426ed057d01e41f7a95545d2ddc9283e053188f930571f09525c2393500ded931686d69e56f95e9c9e804417447f08c0845925c0e69858e1bf04a7932ce3d39087eb244f816c62340968883e941f0cd89e5119dbd428a199c8c4e106787109a128fa8fc7c1454eab9f944cc84175956a317f460f45a66f49460f8cb93e0579888c0a264b866872120371e6dadadfca590cce86cf49d223a419c198137d7f52a6e3c36151b9809cdcb229b74be6c99b75d3e1f892d4d78d64fefc9e8c75342115094027f5932828ad2e0961b89c0dc44de7457a955fcb61a199d20cee1e5907ce4bdb901e5a71aa1abafe1f326a6538d7c5aded2c85f12a96ba8e5f3a6e67a9e4fd7707ed2b329fb9cc6ba1e8d7e22350c0145a908e0464f857b5e1482f293cd465791d109e25c1094157a6417cb212a2d4286bc10fa530d10ab8a20522991535c00519912a9e27c28aaaba0a92b47aa2417598a62681b6bffd80333ccec3d3c30c38cee911a86a0e23404ca531152940e8ffc18848852f823afcce8d4742788b34748172563f7c12348c8172324211c2535b5888e0a867f4a32e2b2b3101613098f8040880d0628f44a9cf0f5426042024a6b9961cfef61194dbde5c9b886de8c1ece8d1ec48c5e9c0e4f512c4245a9fc472ceccf15c9e80471f60831693170f3f7874f78307c622291252f404078084252e2e119ec8f38b108fee121c82953416152232e271309994928aca882b6d16cd8f3d5998c1e5c9c8ee0a234842ad2e12d8947b8240da79a4fa1b4b494fae804710e08aaba6aa8ebaaa0aaade43f272dd096a18c19b1b6d29cc67e565a5b015d531d4aaa4d50d596234f2143597d0d7f84f58f34dfd9afd87a32ba675a04429599082dce40b822137e0549889466f0df9f97949470a3d3ed3582383b84ce0365b53034d90eb4d55a06cf6aa1b5446026e3a9069e477bd6aab69b66e821a2d7588c1e56928db0e24c441467c1bf3019d18559fc5977d67427a313c4d92374bdf5d5dbadb3f6a7dbfee0ed35ebe714f4f2649c575a04c29559082fce44a4220b81b214c4ca72f80333741f9d20ae9177c679a54522b2241b118a2c442ab311244f439c3c072da7cc46a7fbe804710d18fd645a24a294398854e620aa240f214599882fcaa7db6b04711e0897e2472cf664fd51cbe95e8c1e5d928b28652ea24bf210569c8dc462117fc30cdd5e238873439055e8713125ef29ad5c0f452f3f53f54e8f424ca90831ca3cc494e4234291836485980fc6d1033304711e8fc05e2ef5f6e20966f4d8323137796ca908918a5ca428a5bc6f4e7d7482b8465e0ee99d1ecd8dce4c1ec78caecc456a69218fe834ea4e10d7c8cb217d32a211af92988d5e264674493ed24a0bf923b0d4742788ab20a2b71bbda177a3279449105f2ae6868f291123bd54c69f8ca3c13882b806227a6d5d1d82b2137924b78de8599a221ed1e9597782383784536d6db8a83acda6ad36f31d6a39ddf9cf11ad4667cfb087e6249b47ddd9605c493eefa367eb8af9ed35a5e559777af104419c1d022e05e7f8e24666606674eb601c137b6886199d35dd150a057f70867ed442106787d035a25e0c9dee651d8bccccb44cac59cede20c3dedb1e6263f4385ba33736a2b8b8d8aed1e94db004711922babdfeb7ed3cfb1306f6d7c7555555fc15ceecedae1ab51a91490908cc4e46825acafbe7f1ec7e7aa908393a05ffdfb5a222735f9d223a415c25466766656637994c30ea0d884c4e80475c04124b0ada47ddd99445f65c66f48606c864b276a3d39f2c12c43935dd3bff7f997df594a7e76dcf6474f63f6acce8951515884a4984575c24d254c548d72ada4d6e36ba981b9dfd6572616121efabb36dc9e80471a5f4d14f9fc6e9df4f77ebb3b7b699ff84a1beae0e3169c93c92a7ab8b91ad2f439aa61889aa42ae245521e2cb0a90a72b4143bdd9e8ac096f35babd8b0b4110977ad4fd0c23ec31e9a9f08c8d40baaa1859fa3264e94a79444f541722512d43925a86785501f2f4a53c7f414101373a6b09b04139323a41f48ea0d51bc065d0db88a519cdd34ee976f258d59ed76891251f2fdbd845e6cfd41b4d8865268f8f44ba5ac12379a6b6a4c3e865e6686e1bd1590b405a50c09bf0cce8acafce5a0c14d109a26704ffe404f8a7c4c32f25a65d6cd93f25017e29b19dd2cd8a855f32cb6fce639535af79db78cbb2396f471e9b795646723cc2723390616372abd133b44aa4a8645ca92a1992ca0a91cf8c5e5b0ba954ca8dce6ec3b1be3a333a839aee04611f215dc706be2ea2ce507e864ec1fbe369ea22a4693a2b552de74a53cb91ac9241a42fe5fd72abd1d96d39d68467ffacca20a313847d04ab99ae6431d327ab3b8c2e9148da8ddef531581a8c23886bd0e8f6eea51304d119a16b73f94a54bab608291a39c486b24e46afacac6c1f796790d109c23e02ef1f5fe14ad72890a22e8258af6a373a6bb2575454f0a8ce46de19647482b08f90a951e24a579646c947e6a57a75fb601c337a7979398fea6ce49d41462708fb08d65b5a57b2b2b42548d728213574363a7b3e9e898dbc33c8e804611f21dba0c295ae1c830a598632fe870fb53535ed7d74a3d1c87ff5c64ccf20a313847d84842209e2e562fb2aeabc1c271771d9a6b1ed6dc5d365a21ecb4a909bf3c4c95859ddd3e3651659e7f93a31620af391515c889aeace46d7e9747ce49d41462708fb0819a23c644944c82d9472b1f94cb118196211d83a5bb1f579b202e414889129cee779597a7a7e2e57e73c12648844c89488bb9493cbb7637998b224f9c8969acb635373ba947f86ed3e054685c33f34988fb25b8d6efd0d3b6bce33c8e804611f41add34151568aecfc3c64e664a3b8b484ab44a3e6cfa46b8c06680c7aa8f53ae4e4e7213d2b1392c2022855655094964063d4c350590e5355257426237245f93c8fb8b000655a2d640a05b42623df9e95a3351a20571623232b937f1e2b47a62846895a85c2e222646467212b37877f06fb3c561ecbc3ca8c888aea6474bd5ecfdff1ced218647482b08f50545a82b8c4041c3a7a049ede5e48cd48475a5626a44532a464a421263696a715979560df6ffbb1dff937f8fafb2139230d5e3edec8cacf45424a32a2e3e3109f9c88adbf6ec3a29f7ec2d163aefc0292909a0ca5ba0c699919c8ccce82daa847645c0c7eddfe2b8e1c73456864048e7b9c8097f749c4272562c5ca1558b870215c8f1dc3dcf9f3b078c9cffc829092918e90f030fe7cbbadd1d93bde591a838c4e10f611a4457244c7c5c2dbd707c1a121484d4fe7a6ca2f9020252d05692929484c4e82442e83f301179e2f303010e19111888a89865856c08d9e68d1962d5bb076ed5ab81c7041518992af93ca0b111b1b8db0b05088e58588888986cb8103f00ff0475878388e9f38010f2f2f44444762eebcb99833772e8eba1ec5ecd9b3e1e4e4c48d1e979488a090106e6aebb3eeac7fce5efdcceea533c8e804611f8145eed4cc0c8446842326211e79621112535390233637c1139293909e9d89fc0229c2a323919c9a8ab8847804858620203888476199b21872a582e761e53063b28b80482ae10615cb0a919593cd23ba445e88a4b414c4c4c52229250551313108090b43687838c222c27974f7f1f5e59fcbca4e484a825466be38f80706b6477436d2cefae725252564748238034240483082c24279133a38221c8161a1f00f0e82bf253dd0a280d0109e87cdb37c6151915c2111e196fc41080c0d4158741482c2c31012190156365b171816029fc000f80505f27282c3c37819acfc90c8708446459a151981c8d81844c5c5f2f9108b58b9ce870ff1d6041b78138bc5ed46572a95fca11906457482b08f50545c0c26795111175f56586459674de37958de62735ef3b2cd36d6722c53dbf4628502454c7c7b4b19369fcb242b2a42a15c0e995c6e596f295f510c49811406a3b13da2b38764d8401c7bc73b199d207a47b0bcd9d122cb9f2dd8517bb43c07fddec3f65de7bbee434f2f996c6d69e1fd726674f68b353610c7def1ce9e796750442708fb086c20eb4a108bd4b6cb2c4adb8a999935d7d98b215914672f9b6003716c9e8c4e10bd23b05b5456b1687926b17e71579ded76b6d39ecad46834ed62cb6cbfd81370ec072c2c7aa7a7a7f37ebaf58f1cd8601c5bc7a0884e10f611626262c0141b1b8bb8b8382e36cfc4d2a3a3a37b9475dbaeea9ac7366fd7b4aee5583fdbba3ff1f1f148484840626222525252f8d370ec8d32ec022097cbf95f2893d109a277041611995833b8abaceb7a936d3e3602ced4358fbd347be558c5cccbfadf4cd6e86efdf10a33396bcab37f6b61f9587e323a41f48e60fd83c32b4dec65126cca8ccd64fd9b64d69c67266706671702323a419c1981f57b2f8758ff9a35bdadb25d66f3b679d9801b9b5ad7d9467c323a419c1941a154c29ecea6d97e26b126bbd5a4d666bd358d4d756cb04dabe3ffa0cacc6b1d8063eada7467f7ccad519cc96a76323a419cf37d74a6d3ecdf0fd172019adeec154fd677bb31a332635aa71abd0e22a502c95211ffc71696373737176e6e6e080f0fe723ebac5fce9e82cbcfcfe7b7d5d8db64d845828c4e10e78690a8d62259a3039ba668f5c8d019906530a2ed02bf3699bd1c8219b4840d9e190c08ce4845744e36223333b0d7c71b25a52a3ec2eeeaea0a5f5f5f6e6a963f242404fefefefcb61abbd7cefae7d6a86e8de8f4a31682e81de1f903ae7862ff21fce3c871bc78d00d8377ece3cbd54de637ab5afff9f48fc80a332f33ba4ead416072123c62a3e1979480f95bb62127570489440c77f7e3080f0be3119d35ff23232311111181acac2c68b43a8844e26ecd777a392441f48ee02b2b8253743c0ee48af06d58146edcf02b86ecdc8f2a1ba39f2b5dff0bddbacc7e5a6abe255682acec1cacdcb5075f2f5f8dadbb9d21124b5050580889b400526901647236385784fc7c317272f320164bf9366c304ead369b9c45f3aebf45a73f702088ee081ffb04e0a583ae78fbf8490cd8bc03fd376dc73ddbf79eb7d1ed99dc368d35b35914562a1510e789909a948afcfc3cde0fcfcb334fadf31dcb223e6526b7de72df78e8000014ae494441546b677d7d6672dbb26da704417420fcd7c31b1f78f9e27d2f5ffcc7c31b376fdc8e7b769cbfd1bb62cf88aca9cd1e7ae1ef65af324fcf56acf9dfd39f3650442708fb088fee3d8087f6b8e089fd07f17568246edbb21303ff4044ef4a5723da5b77ae7dfdb3299b20880e84e5f149b869e3afb861c3368cf50dc4ed17d8e83d45dd0b256b99b65382203a236469f51876e81837faa48060dcb975c70537ba950b6d726aaa13c4d921c497a9f1ca61375cb77e2b3ef289c04d9bf6e19eed7b2e8ad10982b83c089b5333f0c8de03b86ec30eac8c3988e7f72dc7ed5b9d51dd6cfee342323a415cfd08a34e78e2c68dce98ee3911fe392bb039ec6dbc766005f40d6d3c03199d20ae7e8438a502f7ec74c7bae037b12ae60016f87f8ccf3dbe43a9f9efccc8e804710d2004c8e4b86bdb6f7878d72a04e72dc32c9ff1b8fb220dc61104717910447a231ed9eb8ceb36ecc2189f485cb7c1d96274eaa313c4b58230252004b76cda817eeb3663825f20eedcba1d77ff4aa3ee04712d21fcc7c307ec79f7f17e419813198bbbb6edc65f773b53d39d20ae2184679c8fe0c9fd87f1f46f47f0c4fec3b87fd76f78eab7c3a8b679969c2088ab1be1f62dbb71fb965d5cf76cdfcffbe70fed7569373a0dc611c4d58f2029af8055d2f24a48cb2b50585189b6d3a779068ae80471f523f4b6924c4e10d706c2a9b6569c6ab5a8ad43ad6d6d57ade8d76c04710e11fd6a865a2304d181b0253c189bc202b13134106c7e636800d606f9625d480036840660635810368707615db03fd606fbf37c2c7d4b5810368404f0f4f52101d8c497cdf3eb82fdf04b901f36d894b9d9f2396b83fd2ce504605d883f2f6b7d881fd604f9627d8825ddf239d6294b6365b3edd9beb032b7f069676d8d08e6dba82bcd7fa34c038904614610c67f00e1eb29b863d697103e7d177f9e3b0baf6efa058f2efc0a377d3d1d77fd381dc2c40ff1c4928518b971256eff611a063bcdc6e005df62c0f75fe0de795fe3ceb933f1e739dfe1c1857370c3979f63e082eff1c0821f70fdf471103efb0803e77f0f61d2680893c762d0fcef70f79c19b8feaba9f8fbda95b87ffeb7b8e19b697864f16cdcf0e524f49ff515febae87b08d3c6e3ee79dfe1fa6f26e3ae595fe3919f1762c8fc1f217cfe1184cf4643f86c4c774dfa08c247a3102515f3836b3d6dfe610e41383ac22d33c6e22f0b6763e8cac510267f8257376dc50ccfe398b07703c61e70c6e81d1b70ebf75f6386873b7e0af0c4eb9bd7e11397fdf860ef66fcfd97e598ed1780092e9b317cdd3a8cd9b9158f2d71c207cebf6155d0093c3eff6b08d327e1958dab31e0cb09b8e5fbaff1e6a6f57875ed523cb97c097e38e18eb7b7acc54bebd7e23bb72318b6e6673cbb6629dedfb3118f2e9e8f8f5c7660e2d17d18b1713d261d76c3983d7b30e09b2fd067fa04f49b39b19bd84546f8fc63c4c90af8c159ef1c1084a3230893c7e0ae053fe289e50b79447c69fd467c7ad005e37fdb8461eb56e3dddddbf1f29a45f8e4e0013805b8e385653fe39d7d5b3162eb7abcb36d1b660704e2ab63bb3172db067cbc7f3b9e5bb918fffc750bbe3ce68c8799d1a77e8697d6adc04d33c6e3a66f67e05fdbb7e09f6b97e291a58b30f1c06f786fc7463cbb7a353edcb509f72df801ffdcb40ed38eeec6d34b9660aabb33feebb21d6fae5b86b7766cc6c8ad1bd1ffeb2f204c1d0b61fa041ef56dd577c66710268e416ca1941f5c2b199d20388230e513dc36fb2b0c59f00384299fe26f8be660e8ca457866a9131e5e3c0fcfadfc094f2f9d8f477f9e8767562cc2134be6e3a9654e787c89139e59b610cfad5884e757fd84877f9a8dc797ccc3d0158bf0d4b2f93cdf9079df40983a010f2f998feba68dc3dd73bfe5f99f59be104f2d9d8f27963ae1a9650bf8f2937cdb9ff0ec8a457861d5625ef6d0150bf1e4b20578fce739f8dba259787a99136efcea73b3b199d1bba8abd129a213841921415e88787901e2650560f3d1056244484488908a2cf3f988948a79bf97a5b3f94889085152362fe2ebc325f93c6f471eb65e8ce802092f9335a5d934a640d2be9e976329c39a3f5292cfd7b3f2cc658b2c9f652e8ba559f7b3273193573736f083a39177823043b7d708c2011058f3f65a133d3043100e12d10982e8808c4e100e00199d201c00323a4138006474827000c8e804e10090d109c20120a31384034046270807808c4e100e00199d201c00323a4138006474827000c8e804e10090d109c20120a31384034046270807808c4e100e00199d201c00323a4138006474827000c8e804e10090d109c20120a31384034046270807808c4e100e00199d201c00323a4138006474827000c8e804e10090d109c20120a31384034046270807808c4e100e00199d201c00323a4138006474827000c8e804e10090d109c20120a31384034046270807808c4e100e00199d201c00323a4138006474827000c8e804e10090d109c20120a31384034046270807808c4e100e00199d201c00323a4138006474827000c8e804e10090d109c20120a31384034046270807808c4e100e00199d201c00323a4138006474827000c8e804e10090d109c20120a31384034046270807808c4e100e00199d201c00323a4138006474827000c8e804e10090d109c20120a313840320fcfefbef20511dd039f0fb355d0714d109c201109a9b9bd1d4d40c36ed3adf55bde5b32e373635a3a1a919f54d4d7cfe4c655897ed7daeed7aeb322bd39a6ebb6dd7bc5659f7a7a997fdae6f6aeca486a626bbc7caca686c6c424317f5b4efe669139a1b1bf9b4ebfef676ac3dadebadbe7adaaea5a5056d6d6d1d6a6d452b4b6b6ded9c7e09c5f6c9deb1f45437677bace7b24df319cef1decab17b7ef4f01d9ecb777bb6fb7dae9e15caca3450a934282b5383cd9bc5e6d536e966959676cc5bd75bf3a8d8fa320d742a35aa351a54abb5d0a9b4285575cedf69dbf6791554652aa854b6656a3a6d53526a2edfa4d342add24059da3d6f477e737a69991a1ab506d53a0d345dca5659b6d1aa75a8d156a24e57857a5d359f5669cbbb1dbb755b935e8f2a93119526232a0c062e8d5a6bf7f8ca4a5528d3e8a0325540a533f0e5cee576def79eeab6f372f7edbbe6b5cdcfbe33a3b11cf5f50da8abab476d6d2dead905aaed34ea9b4fa1aeb696a75f6cd5d7dbce37a0bcbcc2fe796499b777acddd7753dfe8ef3d85edda93a6dd7bd5c7bdf434fdf45e7cfb13d57edef67f76d3ae7efbc5f9dcbe89cbfebb9d0fdfcb777ac8256ab875aad8546a3eb34b5ca603041a73340af37f269d7f5d66d546a2d4c1a0db24af470966ae05258848c52050c6a035fd7751bb55a07b5d604b5c60495a612659a2aa834e576f741a5d2a2c268406db91191d9252851e9d0505ddee33eebb53a94b16df47a48152ab864a85058aa8356d3791ff45a03c40a39766507604b962fd66578616396375cf3227945a9ed1c6b7092088743d27134241d27a2b2713c320b527929745a731db4e75569a061062f2844494404547922684c9550ab356075ceeab26bddb3347b75ccd2bad75f47dd5be75979d6326dd73153353434a2beae1e0dad6da8d5eb519e928c6a85020d6d6ddc840d0dd60b415d277376a8c1225bd3dae635af67691df35db76d68ffac8a8a4a731ddb391edb63b277be9d8dceb50c4d97cf35a79dffe79fcde75a3fb3a7f3f8421eab505cace42792bd4a67274d6a6a3a0a0a64c8c9c9454e4e1e94cad26e85315399b41ac42a4c782dc28881c152dc1b9b81f7a5c790a84d85416d4299da5a3e339009eaa24c2803fe8792d0093015f9a2a22404a6d244a8d57a1e216d4daed7681197558c37d72640f8d41bf77eeb8f7dfe99d0b008d9f5a0d55a88146a54ea75c82f52e1a15f22216c93616a422d4c1a35ca2cf9584ba35a5f89ed59fe105c47e3ce935f6058d822dcec3911b7794c46823c0f468d1165fceaa8e54696ca4bf0f6824378cbe9109e9fb9132f7ebd0b33b707e160702aaa4c267ef5e4fb51a686da588ed28870948c7f1fba0f5f8772cc08288fbb73b32b8a15282c9443a128e1755f5aaae2752a9717f3f49292b24e5f1c4bb75e04ac62175ef6fdb06dad69ac3cf67df20bafe5fb64d37253051a98c95b5a51999186b249a3f93e958c190e83b7171a5ada505b5383e6e653686b3bcd9bd56c9e777d1a9bd0d8d8d86e54d60561cbac49d8dadacaf3b5b4b4f20b09536b6b1b9fb2edcc4dd1a62e8667466fecd1e824ed45a90361f5ea35fca4e95ae92cdc97975762d3a6cd58b97215366edc8455ab56233f5fdc2d3f3343b95e8771de251056e6e1e5bdd978232c03afe66dc42ad572e83b45750d541a13f4259940dea780e83d40f63150f0014ec9d7f075fc62c0f2a9b4306ab54895a9f1a17326567a6461bb7f2eb678a4e3f3bd7170492942a55ecf3fdf7ac1a9d2ebf075b002ef79c8f1c4fa180cdf1a853181060c0fac45854ed3be1fcce8b5ba2aac49f7c03f227e4679732d1fb490d7eaf05cf07c8416a6a3425b6e31ba067a9d1ef9050a8cfc712746feb8032367edc4f06fb661d8cc8d381c9ccc8dceba162a4b97456ad063c1faa9489d31035bf6e621e7a0131a7dde42854985e09008ac5fbf01bebe7e484e4ec5e1c347111797806ddb7ec537df7c8ba8a8685ef7ccb02c3d2020885f6c99d885804d65b222a4a767222c2c9c9b9d2db37c797922de54b74676dedd3095a3a9be01c653cd58b4ed1b244f9d8c6d7bf2907160319abddf446b9309f10929c8cece465a5a3a442231743a1db45a1dcacbcb51595985fcfc7c64656543abd5a2baba9aaf63177fd6dd2a2a2a4675750d6a6a6a20954a111e1e0e894482caca4a180c467e316086b7b6067a8be824edc531ba93d3021e316c9b7cd6138419fad831777e3206040462e7ce5d904a0b3a195d6513495fdd2d87f0430af6f9e4c2a538112fa67d815dca0d30b0e6b94d442f539b50a14a8726e347b804b960bb9f1bfc437f419d64b5b929af52b7976dd26a9120d76158a0094bd34dd0575523a2a201ef899ab1bda002555a0d4a551d2d8b4a831ebb2325109c12212ccd4086b4048b92aaf17fde55a8d29bf3588d5ea7afc2b25437789425c3d45c83a25a1d7cd5e9f8387e3302a529a8d495f396083b569d560fa94c89e7262cc1470b76e3c589cbf0c1ac6db877d42cecf608474d65251f1360fbacd71820522af0f0e1cf30f7980fdede0cb847c602e261a8d24be076dc07b367cf86878727626262b167cf3ec4c6c663c3864d1833e643242626232f2f1fd9d9b9f0f30bc09123aed8bd7b0f76ecd889ddbbf762d7aeddd8be7d07f6eedd875f7e5987850b1721393905dede3efc2220911470e35b233b337a73631374d59578dc7532661f3b81515b80c3e12980f865b4d6c911199d846ddbb662c3868dd8bd7b370e1d3a84ad5bb7e2f0e123fc02101b1bcb0dbc78f1cf707139002727276cdebc19870e1dc6debd7bf9e7070505c3c5c5859f276cba6bd72e444747c36864dd3e7d7bf7c05122baea0a3a3e61cf9ebd30b1bea49d88ced2d909b662c54afee5050606432a2db413d1b5a836e830c95d09614a34867d7d143bc3e3b03ce418925884d1d9e6d7a0445d8146752c7cfce6e1831dc1d87d7c15466ff7863e7301b45a53a78b08337aa25c8b878eeb70d37e3506ed57e23e6f03ee0daac2e62c3daa74daf6e6388bbe95060366bba76153500e267816e1e6d59978fa900eaf9dace111ddd6e8b5fa2a2c4f73c72f521ffc37662dfe2f7c09fee4f505fe72723a22649928d79abb1ce6886e80b8b0188fbdff3d5e183b1f0fbffb2d9eff782e46ffb01edb8ef8a3b6aa8a1bddbcdf1a6ef6f7fc96e1ee435330dafd10e4711f02b9e3a0d1a8219114223e2e814767b158ca8dcde6fdfd03e1ee7e9c7797ac175e914882e8e858646666f3089e9191c52f00478f1e83abeb31e4e6e6233e3e91e767e59823b2849b9da5998d5e81fa8606b4349ec2d8d075b8ebc044bcef7608a2988f81fc4f50575b0553391b3f5043a92c41666616a2a2a278a496c964c8cccce469ec022c164b505050889c9c1cc86472fe7db20b095b5758588862de2d91412c16432e97f3edd9602b2b9b19fc4219fd8ff49dd5175097623f2ec46708ccb4bd15c4fa8bac19c9e68b8a1476bf1cde8fd66a915fa4c1bf7649208c3d8e01ffdb8f2f5606235fcafaa12cb2d8e457eb61d214232d3b11a1c9c9a82ef683675c3a54c5a99df645a5d6f1a67b9a5c8b37bcd478c54d85170f97e24567259e39588add691a5432a3db94cdc446c66b4c0654e87498e426c1802da558115f01a3b6c3e8ccc095ba0a1cca09c7801393f0a79353718bc724dcee35054ff8fc888c22090c5ad6e5e888e8f2e2120c9fbc00f70c9f8807df998e87474dc753ef7f0df78068545a4691d9004e4999061ab50199f202fcebe42a4cf5998853b933a152a441a92ae7c7a5d19950a26279b52855eba02cd340ab2f87a9a206a52a1d5fc7d2545a03f4c64a9edf2a9da1027922298a14657c9e6da72c356fcfd6ab3406a8347abe3deb4e184d15a8aaad477d5d1394461dde0bdc8049be9fa355f4256a8c79a8ac6b410d1b546b684663730b6aeb1b5153d780c6e6563434b5f0f49aba46d4d637a1e9542bcfd3d4d2c6a7750d4d3c3fcbd3d0dc8286a6537ccab7e5cbe6ed99aa6aeaf97eb0b2cd1796cb6f54f535723138a3d1cf7455b51dd8e96d8759343568cd8356f16235e2738aa1d16a61d4ebed8cbab3beac1e7a7d058cfa7294696a60d21ba1b68cbadbbb90c84b34909568202f65f35a1428d82d360d3796bdfcac39cfba136c9f728bcc7d7d7bc75656aa46923c1ff14579482aca479c3c17d9c505d0a9bb8ca2b3c1498d0e92c26264e44a9095274566ae59ac7eac03886c9b2a830e8de55ab4561a71baaa02cda652345556a0a1b2024d155a3494ebd060d2a2b15cd7a10a735abd516393a64743b916f5262d5fc7e6addb9eaa36a289adb7a4b3fcf5268d79bd454d153a54e8b4a8afae04d00c9c6e04d002e077a0ad06401b80d3e6f4d34de6695b8379fe77cbb2557cb90968b32c5ba75dd5757d9b9d32d08ce6daeaf6c1cbf389ec5752b35873918d7c218e55b8901fc40cc64779f53a7e7fd97a01e8a922f87d733eaf360fa859fae6f6c46e8d31e9ac53adf9f647affb63d9776676db16455795eb4cbc996e954163ff76166fb9e8f4301a8c30eacd32b01691653d3b06a34e0bb7e432ccf55660919f020b7dd9b4148b7c15f8c98fcd2b2f8c58b9bc6cf3f24f5dd62ff65762ce49253c52cb1091afc3e2601d5685ebb0224c8be5615aac0c37f0f995611aac0cd3d991b687f42e0aef25ddce3ab60f3f87e8e095a93de3f7722518467396b7e9ae84a8dddbb1fe3f4319a2328cacda5a0000000049454e44ae426082, 0, '2022-01-06 21:11:27');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `bcomment`
--
ALTER TABLE `bcomment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogId` (`blogId`);

--
-- 資料表索引 `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogtype` (`blogtype`);

--
-- 資料表索引 `btype`
--
ALTER TABLE `btype`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `loginStatus`
--
ALTER TABLE `loginStatus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `bcomment`
--
ALTER TABLE `bcomment`
  ADD CONSTRAINT `blogId` FOREIGN KEY (`blogId`) REFERENCES `blog` (`id`);

--
-- 資料表的限制式 `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blogtype` FOREIGN KEY (`blogtype`) REFERENCES `btype` (`id`);

--
-- 資料表的限制式 `loginStatus`
--
ALTER TABLE `loginStatus`
  ADD CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;