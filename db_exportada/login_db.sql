-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18/09/2023 às 16:13
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `login_db`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `psswrd` varchar(100) DEFAULT NULL,
  `bio` varchar(100) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `photo` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `name`, `email`, `psswrd`, `bio`, `phone`, `photo`) VALUES
(1, 'Admin', 'admin@admin', '$2y$10$YrIqosHpd9TRFbLi0a34ZeIy5uhnIO70MzsPWTfF/rRYOAPHuhvZi', NULL, NULL, NULL),
(2, 'Test', 'test@test', '$2y$10$MSTHAFSWSYt9K.ggKbqt9OHY6m2OSmxsXZ50oXOB65I6.sp4EZX66', NULL, NULL, NULL),
(6, 'Mestre Kami', 'roshi@dbz', '$2y$10$rrf9qVxiT8NUrYkTJylzYOwHAIyB2bfrVRU5uHHgki/beAAOv5yUa', 'vamos encontrar as esferas do dragão...', 2147483647, 0xffd8ffe000104a46494600010100000100010000ffdb0084000906071313121513131315161517181b18171817181d181a1a1a1a181a1a1d18181a1b1f28201a1e251b1a1a22312225292b2e2e2e191f3338332d37282d2e2b010a0a0a0e0d0e1b10101b30261f252d2d352f322d2d2d2d2b2d352d2f2f2b2d2d352d2d2d2d2d2f2d302d2d2d2d352e2d2d2d2d2d2f2d2d2d2d2d2d2d2d2e2d2dffc000110800e100e103012200021101031101ffc4001b00000105010100000000000000000000000500020304060107ffc4004c1000020004030406050a03050703050000010200031121041231054151610613227181f032425291a1142333627282b1c1d1e1435392157393b2f1075463a2c3d2d324b3c2163494a3a4ffc4001a010002030101000000000000000000000003040002050106ffc4003a11000201020304060a01020701000000000102000311042131124151f00513618191a11422325271b1c1d1e1f115426233348292a2c2d223ffda000c03010002110311003f00eb010271b82cb71e8fe1173676d3137b3308133d57360c78393a31dcf6afad725a2d1520904529620ebcc1afe11980b5269b6452c7d2cb51e23f133f4bc397ba0acfd9d9d292c0eb16b403f88bad3edad6dc5798ed081c21c470c2e279ead41e8b6cb44c23b78e1f3e4c2ac5a0676f04f634dbb4bbf6bb4bf6941b72aad7bcaa881958eca9a5195858a90c3bc1a8f888ab2ed0b42d1aa693871ba1bc64acc840d751e100f34689981a32fa2c2abc870ef1423bd4c04c5cbcae4535b8f1fdea217c3b5aea66a74ad30c16b2e879122ac772f9f3a4373738ec3531a748821b2357b6e1f8c0a6c52e608b5773a2229763dcaa2b06b656cac7124a6066d08a0331d24ef06e19b37c37c52a0ba98de12eb555ce80cb53cd25cd3f57f1b7e6233c4c6a276c1da45597e4f27b43fde01de0fb34ddf18cf63365e32482676126a81eb2159a2ff609314a02cb62478c3f481eb6aed26624358ed222938856ae520d351bc778371e3122c1a66916924b96490bc4d20f2cbd00b7e4389e0053581bb2d2a4b70b0ef3e7e31731d3724a3c5ce51ddab9f7517efc2b5bd770b36f036a1876ac77e9cfc60bc76233b923d1164e4a3f33a9e6c620ac3872868f7c340585a62b316249d4c548e184638b68939179d7486b79a43a26c2e1f39a0d2d53c2384802e65d119d82a8b931b85c3163c00d4fe420e200ab416b4408a1400341e7c62da665608a2b38f2a89751f1994bd345d4dec1177350f64f4987c3a6112e7363cdbe1fb3175133f94ffd061456ea97fdf13ffca5ff00ba144eac76f849e987fb7fdff899b5306b66ed20e024d20100049874a0140b339706dd4a1b7a2117fd3c98954f9ac3ac81858cf3d46b3d26da439cd2cc94549041041f11bf769c6ddf15f68c813017b0982edea899c48dc1f88dfa8de073666343012e610081496e6c00dc8e4eef65b7687b342b6a749d558537106def84fd6a4d37ef4f1d4bfbbe5f899c2be7484045ac5e14a1e2a743f91e715c9b43aa411713ced4a6d4d8ab0cc46d691d99087e10a3b2909ec89d50d2ceeedafc038f751b9056e31cdab2aa03534b1eef3f8c509134a3ab8bd083dfc478e9dd07b11285d6bd9dcdc41bab788a1f1856a8d870d36b047afc3bd03a8d39f8ccecd981416268079f2234fd1de844dc40133145e44a37594b69ae38bb7f0c1f6476b8d227ff00677d1deb5863a70aa293f26422d6b75e41d7785f7ef063d1eb04ab57672588d2a20667594f65eca91864c9879492d778514279b1d58f3358bb0a108549beb0f15638c2a287436be8794748851c9261fa4db025312ae9726a9356d316fb9b7f306b5a6869183c6e1e6497093684359260145623d523d57fabcc47b16dc4aa569a1f3f81fda3298fc2a4e94d2a62555853b86a08e041a107d1fac7486a954cb396a948545ce02c0ca2a806f37e753fb5220dba68c82b5001a01c2a416aefccc1c8faa138da5d9aee931b0f35875a8014636ceac68b3457d91566e69c088198bc4077245868a38281451e0a00e71ca68439265b1f554524a49a73cf7c8949f3f9c7638a6384c313223c931180443d79c3e461cb9a0f7fe7109005ccb22963b2a339dc2e1cb9a0f13c3f78332646501547ee7f330fc2c80a02a8af85493f998b04850d460b94e59937509ff0e57b734dea469b88bb049dcd4361a4f414692609369b363cf8713f8910465255080e2a5deb69401a1a1dcff5bd5a802ac7b21f1d8f017aa935597a33508333953555faba9d5b72aada38ecc3ab419250d177923d673bcdec05854d35248d220f4e901acccc4e31aa12077f6f6760f9ef8daf7f9f1851db7910a0d12bce2887a1bf9e10c0dc61eb127248a20b6ccda20812e69a00288e6bd9fa8dc5381d57bac041d2108ab2861632f4aab526da539cd2e2256a8ebde35f71eebd4728058ac3643cb71f3be2e60b688a09734f640a2bd2a52f5a1a5d93952a2b6dea6fe270deab0b588a1a820e8ca46a0ee22151b545b3d26db0a78fa771938e7c3e533a0c7624c4c828d43e07cef8613e7486c1045c4c2746462ac33119c3f08238056c4bc9c10af6dce761eae1c76a60a8d3d907fe21e5035b58dcff00b2cd9dd99d8b3abb7532f94b9668c47da999abf6162b5080b730d862c1ee26ee54b0aa154055500281600014000dd410e531476bed5958697d64d240242aa8059dd8e888a2ecc780fc0180d2fa518826a366cfc9afd24aeb32eb5eaf358f2cd0984622f1b9a39f30a8aaa339e0a547f99808ab80daa935de5e5797365d0b4b7003056ad1c1525594d08cca48a820d0da1db3369ca9ea5a59ad281948a3a1a572ba1a15343bf51715d629748e4ba9958a9485de4139954559e43da62281a91459806a4caa0d62019d8c91b35b1e4f57d5e1c296159c2637a15ed1128ad43915a2e62054768c3f11b7734c693869267cc4396610c125cb34ae5798756d2aaa0915069037a45d3094987cd85759d3e680b8755209677f44d396be1063636cf4c1e1965971965a96993188199aed326b93c4926a78c5c8b0b9124a98c998974026ca952ef5aa4e336b41e8de5250deb5be9018136f1f3a79f677c49b536d62a7df0985f99bfcece6eabacd3d04ca5c29dc4815d452c48ec1639d984b988d2a6804e53da56d2bd5b8b3509f44d1c6a4d2917552043211683fa61857ea9710a086955ad35696fd975e6286bbf436178cf0606f6a6e8df62651992ccb6232b2b29ee6143dfae96ef37af9b6cb042646a565b321fba69410743758a62d346974c35408ed2dc23b2a516200178b136892a96361ac9244a2cd940efe438c1dc2e1e94451535b7127f588f0784a5154549d789b73d07e110ed1c7800ca94410452638f5beaa1f62dafad7ddaa8c4d56b0d26e5354c0d3db7cdcf3fb9362b682a1c8a4b5e8ee84034de929b75742fbf416bb09c7628cc2090155451107a2a380f1d4ea4eb113431cda19540ba4c8ab5deab5d8c6184563a4c26f3a45a0a729cc7c63b0ca0e1e7df0a24922487830c2083420d78189038a69a44908b4781ee872c7174ef871d624e4e0f3e7be08ecdda21475730fcdd6aac2e509de2972a778f117a8231a100238ca1858c253a8d4d8329ce68a7e1aa32b014201041a820e8ca6e08e63f580b88c3321be9b8c59d9bb47ab191816966f4dea7da42743c4687be8413c4c9565d73230aab0d0f315d186f06e0eb0b0daa27b26b9eaf1ebc2a0f3fc7ca66e6b5016e02bee8f5be85617aac061537f54ac7ed38eb1bfe6631e41b5e5b0475b925481bea48207c63dc66cc4912aac4e49497a0a9a28a5801524d2800b92408bd737516df11a2852e1b594b1b2a44b9a715897414025ca2f6080d090809bcc7602e0548540058d5c9b715866595892bb8fc9e60f1cac0311e10dd9fb2eb33e533c669dea0371214fa92c681bdb7176237000017b77a4b38cc6c3e065acc98a075935ebd54b24542f6412eda58585454c042ed1b7ea1a1dc24c9335bae9742c06463428e3439262300c0e868c2a2a0ef8bc23cfe4edac42ba3e2565f5d4ec4c915cb3e5addf0eea4573d0b3cba58b0a0a6621b7e8c0d08208d41e2388ef8e3a159252c3ec7c3cb9ad39244a59ad5ccea8a18d75ed015befe3106dc593d869e599430c9240cc264db95ec0159ac2950a7b2b97311d90ca56301d23c74c998b32e4cc286850cd500b4a940d2675448eccc9b3419753a0c3540d22c80b1d649a2c44ac66237cbc30d7211d74da505331560886b5b0ce3eb467b6c6cdc4e1c75d3298994a7331452b365d9aaf4a9130004d40cb627b26f11cbd83864b196a0926acc0972d5deec0b16adea4e6e71a3e8be20f6e43cc3332f6a5b354b643628cc6ecc8dbcdf2bcbad4d49bfb398d3e12e4328812532b28657054ad4117041d0d7877db800630b8c5cb8bc52d3d756feb4049f1378d78c0ae1317370c2a253833b0e2be8dfe765ad2e284ab516868f4b806331b5650f974e0a2b5597c3d9a776eddcf9c1d2c2ff094afeb53ca45265b31ca06b0730184a0cab734a926da0a9249b0006f36b54c2c0e0a9614ad2a4936006a49d028de629ed1da20832e5d7257b4d4a1987777283a0dfa9bd02ae49aa6c3486a6a9824db7cdce83873f811fb43680a19728f64fa6f4a67e42b7095f16d4ee006561b58ed619550a2c26555aad518b31ce74c3184389b4369e7c88ec1c63690d7891962c4bc0b35e941c4f9bee8e160333094e9bd43641732ad4f0f8985047fb2cfb5f01fac281f5c9c635fc7627ddf31f79667e1c3d730bf1df14a66cc22e87372363124adbadfc44498388025bf2ed28ca7ef29317b0b899332b95f237b3368a0f74c072ff505806cd5a7a69344d6c1e2bdbc9bc3cf4f180a68a1a1143cc4732906ff001d7c63478ac2b01f388403ed2d8f7136f111c5a150aebd628b28268ca3824cd40e4c18701171881bc45ea74530cd0dc73cfd266cb5e1ea209e236429bca983ec4da237831391bde09e11426e1de5b15756561a8614307570da4cda949e99b30910317b66e38ca24105a5b7a4bffc949d186e3e06d68a27cda3aad1d20116328acca769758731d870c6450e6579f2155b8833e58614dc402415ddee277fd246a1c354565fca50ccb56ca931a5ff00fd024d39911e55809cc2761d431ca71587246e244e5a1efbeb1ec1b6a43bc975974eb2ce809a02e8c1d413b812a013ce16650961349ab9afeb919ef823a5bb75a50ea30ea66626686545552d948ca333d01a28cea4934a02388825d1dd8eb85c3a495b91776deeed7673cc9fc86e81dd10d95315a7e27108cb3e74c6a2b10d924ad1513b2c54121431a1e15ad2349147200d913904eded88b88420765ea08616399685581dcc080436b6e116361e0de4c8496ec1996b70b900058908ab5345552140a9b288bd1d115da36b4ede704569181968ceea8159c9666de4dab73a0b682d5bef8b51cac567254da5831314fb4058fe51906c7f50d2e781643dbd07ccb10ae7b96d32d6f9bb137077131a8093b857e118c5986d635bfbff005ff9b941699845cc5a52e916d6ebf1382eab2e4692d3d8b0a90be89008b11db23b5d9a8143580c924b63f1745351d527ff00af31a93f12740380831b3f672ca677066316040cc45117333e440058066636ab5ef411949d8a6ebf1601215a68cc34cd95682a75a72d3437b183eced2951c3eb20abd47ae45ed086d5c7023aa966a9abb7b6c34a7145ddc75f6728b1dd082c7208aa14584ccab51aa3166d4c41a1475013602fc845dc36cd27d2341c05cfe8238ceabacb51c3d4ac7d417f94a3c22dc8c039b9ec8e62fee82d85c16e4424efa0a9a712770e7a42993a527a73013ecca1d61feaa84f731ee85cd666c904d35e8fa3445f10fddce720918445dd53c4de2f1c39a6734453a3390a0f757d2f0ac0d9bb6c0fa29614fb4e7ac6f004041c6e09e70327ce6762cec598eac4d4fbcc41419b3732cfd254e90d9a0b0f75f27fde13fa277fe38519da8e27df0a2fe8eb16fe56bf6784a88bba1f28c4657f789242d20f33a5bc1e39e5de5bb2f1a358f78d0f71829276ca9fa59743edca014f8cb3d83f772c03f08701156456d442d2af5291ba1b4d2c932e67d1cc563ecb7cdbdf751bb2c792b13116330ac4047ceb97d1435196bc14e9e148cf9ee8bf83da936580aad551ea380c9e0ac3b3deb43ce0268119a98f8e920e366ba0239e7746cec032dc5c72fcc473646cb7c4e2530ead92a19e63d012a8b40728362c4b2815ad2b5bc1295b52537a4af28f153d62fb988651e2d13e0671978aeb64b4b77f92cf54a5699cbc854ce080c06661a8d2b48b2bd4d184ab51c337af49bb8f3f7963a57d0b95869227c89d384c47428aec262bb860cbb815355ad4100004d2d4829b4fa72d94995244ba6af88228385165b76bc5974811b4b1739997098d9b9f2849cb890814c876cd2d4cf96b44694d9985a840a934a665cc6d8cdd6223001943e61a80eac1180a8dc730af3dd58814b583670abd5ad3662331ba1f99d2ac64cbacd7a1f6552527c434d1f181137a418a26bd6cff000c54d03dc053e113a265974de14fbe03bca20d3cf9f358ea58c40e31ce800ee1f5bcd36cfe9de265d3ac6aa8d7ad01969fde26565fb4e0c6f76374964cfa29225cd3fc3623b5ce5b50671dd7e20478e0af9f3e78c5cd972bac459140c5a6196aac2a297994a700b5f7447a4a63587a82b5c36440bdc7dbed3d836b6db9387b4c7edee96bda98ddcbb87d63402b73188da3fed0a6b36590113514c8674cf1208952db912fdf19ada723a94992822cb39901eaecacb3182e61400e9517b8ca775098767501efb2d079a5bf0d22ab4d40bcee21d685ad993e10a4fe90634825e76269c3ff004cbcb4458a52f6f4d5d666240a7ac925c52e69d842c443f68139401c6a7c3f72207cb5b8f3e7cda089622f68b0c6b8dc3c26a367748def412a752d504a3036a06535069deb02763747f158ac44fc865a55bac766ab650e4e550052a405e2229c998166973a2cb727ec8cbf9d3cea43a28b2b14ed59ef98b063255dd02aad02920101cdc13a819a9ccf735b911dba56a20dac49d3746e3f654ec3ce322680cf955d592b9195aa2a2b7043020d780e30f95b377b1f01fac1ae9581226e0c3b3b8ea678d7b441794ca2ad5b0d2a4b1a40899b6d87d14b44fac7e71fdec328ef0a0c0c9a8decc128c2d2cea024f0dd2fa61022e63965a1d19cd2bdc2ecff007418af336a4a5f455a61e2dd85d38292cdfd4b01a74f6762cc5998ea58927de4c308bc71682ead9cad5e92aac3653d51d92ded0da33268a33513508a32a0fba2c4f3353a5e2a1b422375238cb5dde6f0702da4cf2493731a5a1e1e236178e31893924ebf9fc7f68510e6f36fd63b1249121f3e7ce90f06e22e7f641f6872b1fc2b0e95b29ab765f8fe903eb938c74e03103fa3e52aac3d45b71f3f08b2366b8e07c7c78438601f80f788ef589c60ce0eb8fe83e12a42262c1d9f32b603de3f58efc8667b3f11fac4eb178ce7a2d7f70f81950c1ce834e518f921a873acc55afb4144c1ddf46483c840a18199ecfc7f78470d3d19264a5a4c94c264ba914a8dc6fa11507be216522d712d4e8550c0943e066df6fe15c2ed49a4f6bb2258b1a838694aba9b0eb0b0e66b5a88f3f495333cb137d20cf289a9a365a1ce09d43196f7a5cd63d5e5bcbda18579928e469b28cb60e2a65cc5a950e38a393de083c23ceb6de066b62d525cb98c6682e650a6792f2cd58dcd188624fd6cc68482b15a4d7054f3946b66ea54ef92cff45bec9f0b409c67a67945c958a6a3074355b31404d3934bfa446df42bbf5314b1152e688e6bf51bbf85bc622020ccf387aa0d8a98c963515ddf0f3e1ca0c742e5e6c5c94f5899b3003c165f5675af3dd028c92a3e72ab98d020ed4d7faa8abbcf1a93dda8d3746b64bc9c660e7bf65ddde57563d1972fe4d34aa123d605413b8134e062ec7231ca345a9025f227741fd339644d61af624f13e8621b31b927461e1481d815edf1a54fe91a7e9fecfed34e504f565c4c50684ca98017a735a06b7024d632b869b948726a847d20072907527d835d41dfbcc706699498b4670186efdc278dfa330210dc79f3f8c5cc663e4952166a136b06049dd600c5497259bd152052ece0a20e649a57b854776b12982067124a4ee6c018d690cf2e684bbbfcd2de82a41761fd207ba8636780c029c5e01e5d0028e00a0bcb0a8c05f857e26b5bc64765babcf952d6a2585cd2ddaab99bac5679a2d42322cc5bdae41b1b7a47476424b952716e424993843949b515f239d6f65441adea7844a84a89abb2117646e1fb99eff693880d8d9683f8724961bab31c53e0863344c589c93674c993e6210f39b3107d5502889f75683be3870533d93f088195401788d5a3559b253e0642042260860b6666273b14005a803d78fac29ba2daec594359e7b821f75c8f26386aa0df22e0ab9cf64c064c2275836db2647f327784b4fce6427d9b22e334ff0015417fea31ceb925ce02b70f23f699f7845a2f0d98e752bef27f28ebecc71bd69e31deb538cafa0e23dc307759c8f9f18504bfb35fda4f7fed0a275a9c64f41c47b8618eae56bd7781420fb8123e30fc3c95634518863f564a1f77cefe519dfedcc4ff00bc4c1dcc57fcb488a6e326cc03ac9b31c707666fc4c0461cef8fb74b1dc0f88ffccd71c08176eb547fc449694ef2d3a83f78e2a481fc65ff00164fe4ed18e496295b79ee87d22c30eb00dd2958e90f1da587bda778643f9c73fb5640d25cd3f7d57e1d598071c222fd4270813d2388f7bc8435fdaf23f953bfc55ffc50bfb6657f21cf7ceafe12c404517ac3a27529c270e3f107fae68fa31d255918ca15c92310555bb59b24ef45265682cc2886d6a21d018d6f4844b918bc2e31c655ede1e6b8b2a89a06467e033a85cdf5c57411e6298133819610be6b65035e51af3d22c6a49f93cec3489cd932f593268a30b8a4e94149cc458dc03adb48abaa83977e70b47acab9d89336db436361e79066c996ec05031519c0e01c7687818107a0983aff001c0f646226d3e2d5f8c67f626dd992a624ac1234fc3754b33aa993075927339432a5cc3ec9561d5bd4d56c40a577d85c56697d63a34aa0ab0994056973988256838834e70260e9be5c311a40d330d81d9b2da7096b2c90466f4e6bd14b150ee4b1eca926a680024d0562e4997f2859188697d5b82b302b1ed052a68af4166a39ecdc024de323b4b66e2369ce9ee99170bd4993879af521aa559de5a0d43b0cb9cdb2804660488d126d4c64b693f29938709326094cd2a6bb10ccad9580696b62c02d2a4f68474ae5ae73978ee91e10fd22804d0589a0b71b1e35b8b5ed19ad9dd1dc3e233349eb24cc05bac961f29a8765cc14828ca595866a56d434228349d259ee6649912ca82e492c4134015cd941058d54686c0926c2f9ac61c4605f09326cbaa24e7eb67a0a2f553cf6d66266632c215461462292ee54d8de9df66d7ce136c8b5b59d99d0c9a0d3aec552fa75274e6b2b4f8f28ae7a292450cd13a6dedd6b12b5e19000b7e0457947a3e21f2a16ae835fce3ce36fed399326c992a1a5cb98cc85fd720216392c400694ce4f1cbe8e6129bb31970e586664670f33118c618655212475066134596ecc19ca8a768aa15b0a5c804d0989ba61b6133cbc14b05e461b289a2b4cee8004979a87d0b331a7a5946a0c3a4f48e4499025ecf0ad3d8514016922a4979b5d0d49a2b5d8d4e849395ea4a8b83724d5b5249a96277924924f38201739eef1f8c5f10cca2e3c7742ff00daf2bf90fe13857dc65110bfb524dbe6a6ff008ca3fe8c07a08e473a94e101e9f88f7e1a1b5a57f2a6ff008ca7fe97e90f4da720fab3878ab7fdb00d75eee51c63e7cf289d4270961d21881fd5f2871b6a61f84e1e09f866868da387ff008dfe1a1dfbfe704017bc28e7509c277f92c4fbde43ed0e7f69e1f8cfff000d0ffd589171787373388e4659afc095ff009a3390a744f474961d27891bfc84d07cbb0dfcc9dfe10ffc91d8cce5e42144f4749dfe5313c7c84680388b79ac4f286e8aca6f13cb3ba0d33e4a1ad730e4686b0841a24e4750184c7be25918566d05399b0fd62f4ad9aa3d224f2d0777181b55558e51c0d6ab98161c4e506cb526c2fdd05b66e0d145664bccdb816ec81f582d0b1fbc22e3cb4923e708976b20157237512d4ef62a3998a5336ed2d25427d63477f79145fba01fac607b4f53416119eab0d863eb9da6e034e79b42f366b2afce3ac996459699330e48a3338e64117d605cedb2abf429f7e6804fdd97745f1cfe101ddcb1249249d4935249de49bc5bd9d813309a1caa3d263a015e3f0a730054d2bd1495736ce0df1b5ab1d8a790ecfa9863fd9de2c263e797603ac90d31989a0aa4c52e49dc28f53dd58d5e0308d8d231389cdd457361f0c6ca541ecce9ebebbb5032a1b2822c5aa463f656cc18ac5a61e52d244852710c2c5d5c5a4b1dfd6102aba055d6b527d5a2955f3b8d4cb6c15f54ce93033a49b31b11876972d82cc05264a63a2cc96eb3109e599403c8982711ce9c114b358015f3f080a937ca48136749c4cdc42cec44a59225ab2e459826666229504014400b9bdea45a0f30b50e9c3f280fd19db1f28948c4f69d438ad8956b8a8bd0d0e95f7680c98b3def6325e03c6c8f92a16963ff004c2ed2c0fa2a7af2c6e4f693402e29707ce7a4db66b895c8467972a6321a8fa59f9514f13950e6e34dc291ec51e41b5fa32981c7e7c83a89b98c8047cd866a8692d42329009cba5430a5d48835171993acbadcfaa255d978c321722aa325bb2cbc00028c28c0d381f7c15978e90e2e4ca277383313c1956be057c4c52c660050bcaa951e9a9a674ae81b8a9d030b1e46a00a8b944a99c596bd7c39d9be5e5cf261f9fb2d581642a577b4b60c07da02ebe2040b9d8071a768723f91fcab10e1f10e8d99599585811506faff00a41491b5a5b5a6a946f6a5d329e6659229f74d382ee8a95a89ec9bc2ad5c356caaaec9e2ba7840cf637b728613e6b1a67c2875cc29313da5b81c9ad543c980303266cd53756a7c7f788310346ca59fa31edb5488610603e75f7c386912e2304ea34a8e22fefe1101220c181cc4cea94da99b30b19c686cd63584d68e318eca4ed0f1f3ef850ca9e07ddfbc2893b212fc7ba913c9049a0049a6e8bd2b65a81da258f0161fac14c161cb76512b6a90a377134d3bcc2ed88034ce6bd1e89a845ea1d91e7f683a46cf63e91a0e1a9f85a08e0b022b4452cdba83331ee17f8429f8b932acc4cc61eacb65ca3ed4db8fe90dc09103715b5e6382a08443ea4bec823eb1a967fbc4f845766a54d7212e6b60f0b9531b4dc7f3f686e7b24bfa46be9910867fbd7ca83bc93f54c0e9bb71f49404a1f56efde66115afd9ca394071e690907fad60a94556235f1d5ab6a6c38092b3dc935a9d6bbcf13c61010ca418c060805132683427b082999cf2ae8a37b1b0e66d04660045a9d32e6c24583d9c18679872cb0695d4b1a5951779a7c2e682f0527cda4b621724a94a5f2d6c0007b4c69da73a5789a017bf550b9ccc5465074b24b4df4d481c49a96277920467fa4db4834998a8292d5188f698e5233bd3bec3703c4925617aad6dd35ec983517f68e83ea7edfb9ea3d05d95f27c1cbcdf4b37e7a71de664c01883f64517eec682b1161d68aa38281ee021cee00a92077c018dcde027664c0a2a7881e24803e26303d3fe9015ac9424b316445452ccec258b2d01f5a62926de86fd0cdd2be932832d7b5f4add5aa5734c6966800a581eb6ddaecf64d6b0ee8bf46271579d8965eb9eb9420b20249ca2a2b42c4935a8351ae504b34d020da695d667ba15b732cb665a34c95211329b1250cc5037022e97b7a66b7bc7a2f4731c66ca398d591dd1ab7ae57201b0de29b8479574b3614f9339b118653da53d68001209352c558f6831a1a5fb4b5eed0742fa4a1a5625d41a962d96b5605a58351ad6ae1c2937396f782d6a61976849db3d23cf181fb7b66262643c97028c3dc771077106841dc403ba39b2f6a2cda2fad96a69bff4e34fd20888473532dacf26c124c02ac489d299a533802ec29a8b8a3a956ca6c4352286d2cb981542848ed2ea95aff0cd6b94eb4371c4c15e919386c7cc2055664b97d62e6b395cca4f26ca1286e41e22b56e270e93103035535cad4a1046a185c061bc7711620c317eacdf71f285655c5a951938ff0097e79d3400da7930c65e313e264943423f7ee8849860107313219190ecb0b18f913590e646646dc558a9f78a41291b6c9b4e41307b4288fef00ab7de5279c086309a38ca1b596a755e99ba1b4d24a797329d54c04fb0f447f0a9caddcad5e510e23062a43cba36f046561dfbe33fbaf17e46d79b2c05244c41a2ccab003ea9f493ee90200d87b66866a52e94b8d9aea08e77474ed987d43e07f5114a6c865346047e1efd20e49da321f7994783f6909e4ea2a3b8ad39c4b8894569985430b10432b0e4c2aa7c22bd6d44f68437a1e17139d16b1e1f83331510a0df529c17dc23b16f491c253f867f78453f68c9960dfad7ae8095960dc5dbd27ee5a0e0c60662b6a4d9828cf44d44b5eca0e1d91626fa9a9e2606826bc7cee8783582a5255d26757c555ac7d73970dd25cb0e51be18a7cfef13016e7048b4edbba3a13cfc23801efe1bf741ac3e1c49a55434f3708455658f6a6713c17bab6b3559ad094e9973cf24c8b098459595e62e67615495a123db73eaafc4eef69484896ced99882e45cd95555786e4403dd11c8c392c4fa4ed52cc48a9d49249b0038e8008a1b571e08eae59ec6acda7584711a841b86bbcee0aae755ac349b3ea60e98661eb6e1c3b4f6f6f709cda7b483525cbfa306a49b1723d63c00dca74ad4dcd00f9323ae9b224ee993a5cb6fb25c66d7ead622317b624e098ac33b689341f12ac83fe661e30d81b22c263f58d52a6d39cccf62c5e302cc952ea2ae5c907d8442491dcc5078c64ba47b7eacc43012a5066278f577615d455ca0a6bd961be2beceda4b327e2679d165b006b60264f3298d7436c22f15b1bd2b195d9b8cf9462b08b9009530a2b8a7a6cd9e6390695c8b369c8b2126c2034e90199dd1b266aba1db20cf4f95ce460421592ade95aed30853677700daf45515d6bbf5d39456c2cdab4c400012d8200381952dc5b77a440ee8b70bd472c65c083f1fb312676a9471704575d7778dc5ef1e55b6f61cec3ce389c2104b12cf2eb622b5245c66437a85d37701ec8231bb5e7a219a48f44deb9750779361c016a72b5e0b87a841b4a9995e856de96ef2c28659a92541ae9f3668686a4d0e6ad0db947a76cdda4b36b4df3264b5b11f4472b54e9e9037de291e3785989271ad36e13e53315c9f543164a9ad2c26006a6e35d446e3a3d890b22412482b8e986e69f48f3d0825a95f4b4d74b52905ae80e62555afa4ccf49f1bd74f49a54866c34a6614a50b17a8e5707f78afb3f1a65936cc8d4ccb5a57eb29dcc2f43de0d8910ddb840c54ca58004014ddf29c4d3e148ab4ac10816b456a315a971a887f1787575170cad75616e5f748d0a9fc08a82c54864343a6e3c79c5bd998dc84ab54cb63da02e4102cea0ef1f1151c08258b915195a841155617041d194d34f8d883bc42d7344db74d50a98f4be95079f3e5337410a25c4e18a350e9b8f1f3c2210b5ac320822e263ba323156162227a4349ad6f1c626115d787911d958d3ca2c60f1d3251251a80d332901d1a9c55aa09037d2a2fa4557bf9f8c35cfbe2117d658120dc435ff00d4133f9387ff000cff00df1d8037e3f130a29d5a7086f49adef9f18fcb1d5309a1a83be917809286d7cf9d627935760aa0b31a00146624eea01ac565158b38396c4d1095b11506c148a1ad37106846f8e136179d442cc140b985e41128e59795e7e8666a92b884dccc3dbd01d2a6862de1247aab7626e77b1de493e26bfbc4384c3528aa0927de49d2c3f08836a6d10aa654b35fe64c5350c3d853ecf13eb1b682ea6755ac349ba153054f6df36dc3873bcc76d4da0a41952c8cba3b8f5c835a2fd407fa880780025bdf11a35a3b58695428b098956ab5562ec738edde6b0c7aea29504116add4822a378a811daf9f3f8c49213310bc4ffafc22d7b672aa096006b096cbda2c30b895b99c24a8069425bacc4996c2b6b99abbed422f488b6805c3cd92c86a30fd4b002f4596549035ae6405bbdcc7768492664a032acb7f9a98c7455eb654cbd2e7b32d8003da8ab8bc467767d2a6b43b86e1e02de11446dab347b163a93b17b9cbe5f99e9e98eeae6e2486aabcfc2321ad4659c24492472214c689881a9023c5b65ed76939d5df34bc92ca06f50c89fd7aaadefabd2ba05502b4023d1f6fed4ca26aea7ac92a34d1ca5f5e277d35d6015291b81cee915c11710c633682ca640c7d20ddf6a52c2fca30db5b16592b4bb4f96a6fb9e7a5686bc1b75454d79459da18b779b26ba962379a8eadb5f1a1f5795600748263fc9a6323657f950ca6c685194d6fc0af0ad8d40bd094a9ecc84c05318179840b19b36d4ddd6bf0b53baa20af4676b0954c39ca293a5bcabe5ecb4e52c8388562c69a51bde1e4a6550bb80e3af79e31361e5cc67412db2b66ae6a024515aebf5856a37660a6f410636df15a4d7a9f19776d4a266cd9c0d55a6320e5d593d9d2be93337de8a0d483e92011d50a05601179115c9f1ecfdf15d233ecb4b1d47e503a7536c436370e693f3cf263b345ed9bb48a761ef289ad352a4d3b69f98ad08e7420706bda3b58b9008b18aa3b230653989a3c5480450905580218568468194fbc5f4a107788038bc394246a371f3be0becbc50299750a2b3147a4a05075d2c56fb83aefb1de32c988923d134208041175237329e1c0c2809a4d6dd374a263e9df471cf87cbe79b6686668b18ec314e60e9fbc5563bbf086c1045c4c3a94da9b1561622729ef86bf9f3e75851c76fccc76563f372f84762975fddef10a24ecb6d3290a5a888dfc6fe7c60de1365aaad66d73b2f6658b650459e67c085f5ac6c2e6acc17584a545ea9b2895e5ecc7214d32871515d72dbb54e07771a1e10630f86000551536b52a4936f13090103524daec6a4d0017275b0a787288769e3faa065a544d350ed4f4011428bf58ef3bab4d6b450b355361a4dd4a54b014f6db363cd845b4f1fd5832e5905b498e370df2d4fbf31df5a0b0258315b784310f28ee686d1028b09835ab3d672ed1a47743a90a9e7f687288b414766b5e096ca93ab9ee1f9fe5ee8199770df68d0e1645950725bd85ed534f7c0310d65b719a7d17476eaed9d17e72b6da994544afd76f1b28efa663dce2039df1363278698ec3d126838e5d16bce80440dca0a8bb2a044b1157adaacfc4fea29d24302ac2a0c1ff0096bccc234e77ab2cb90cc694edc89c15eb63ec0d4703004188c4e6497885a812a64a706a48cb319542b1dd42c88bc6ade06fac945b3b4ddcfcc315870784e6bfd5ea87134b39d6be15a8c74dc719ca805722bcc9b5208cef35ddaa0124e5546ca0deb5823d29c6157905055a64a9eaa4528bd6753db36dd43614e06b7a8b0a00a0d00a0a6e11c02c212b3d85a261df0a5b95208d54d47220d46bac26f8f386011229349332b8a814471503802340795c578ac0fdaca582cd3ab12b33edaeadf78156fbd489b64cdcd28aef436fb0dfa3ff009c738972024a6e9800e41c5721e55a95e1da1c0426bffcdc89e82a818ac32d4dfa1fbf8f9130098697874d96412378f3588e1c980458d8c9a54e6460e868c0d41e1bbddc8d8f310730d8d96e848144ad662804f52c7f889bcc963aaeaa4f1bbe700dfee8ee1b12d2dc3aea3507420d8ab01a822d14740c21e8566a4d713478a93eab0ae9bea083420823506c4116b88058dc194b8f44effc8c14978e935540c44b6a95cc0e690c49aa31d1e5926b6d33540073299a748a5558722351dfc083a8235a8a42a0b523d93748a58fa7c1c73e06664f7c433c8e3e7c98bbb430850d40ec9d39723fac0e7e3fbc38ac185c4c1ab49e9395719c7e711d86678ec5a0e1ec060ba9356159f4f448aacaadc1706cce45c21b0b16b515aea8bd6b5b924935249d493bcf1310d0016e67f3249de49df0b1f8ef93d853ae22a37f55c091fccde01f47537a533c96aad613d405a582a5b4daf390fa9fc0936d0da1d476154f5dc4dbaaadc5a9f4841adfd1b6ff0044025eb53f89888354d6f7beb526bac2530e22041613cee22bbd77da6fd4969ba1c05b588f3c704c3178bc9e105b8864b735a44c22492f6cd9152588b0fc4fedf8c10c43e596e4fb3417a5dbb3ef0093f77be3985959500d09b9ef3e6914f6c4decaaf1258f70141f8b7c213bedd59e8767d1b02789fafd8415be3a4c363abee87279e8e58bdb21412e080465a53bd962831823b1854bf80f7d4fe503abec18d6045f109f19061b67cc0ad9d81129024aa1d5158518f3a353ee8e5119f3e7741e9abf3732dea9fc0f9ff0048cdb357cfef1ca4e5c5cc2748d25a75acb13bf911c262327c88ea982c465dd973c2cc5cc68a6cc7700c2998f2068de106a7c9b329b6a39820fc287e223360f9fd20fe1a7f592d1f534c8dbeeb4a1e7d92a7beb0b6217461363a2aa8bb516d0f27ca53da80b013b7925667db5b13e3556fbe0718124c680202e50fa338535fe22fa34e6412a07122014f52ac5786ff00c0c12935c5a2b8ca051afdc7e87bc79de348f3fac46624cd11bd7cff00ac16251417d958ecc0497207f2d98d00ff0086c7d93b89d0f23501abe7ce91caf9fd62aca1858c2d1aad49c3aeb34988954255c107420db9508300768ecf29da5a95f88efe5a7e705765638cca496356169677903f8678d3d5fe9bd5409dafdc61305a8b4f456a5d2146fa11e47ed32b907110a0f7c8a5fb03e3fac2837a4af099ff00c356e23cfed08e1be953fbc4ff00308cde33e9a67f78ff00e630a14570dbe17a6754effa4824eff3be1edaf8c2850d4c389b7c7778850a249254dfe7745b97aaf78850a21d2757da134537f380fb6bd25feec7fee4c8ec28470fedcf47d2dfe0778fac1b275f3ce16ff3ce3b0a1e9e6a7667ebf9414d8dfc4ef5ff00e70a140eb7b063980ff309f1841fe8e6fd93f8346606a3c614281e1fd98c74b7f8ddd1afe7dc218fa1effd6142862664965ef829b13e8e67da4fc1e1428156f60c77a3bfccaf7fc8cb18df57edcbfc4450e91fd3b79f59a14280d0dddf1ee92d5ffd3ff69417588e6ebe10a1437312346908c2851248a5ebe3f988d8749fff00ba9dfde1fc442850ae2774dae85f6dbe105c2850a149e8a7ffd9);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;