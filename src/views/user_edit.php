<?php
session_start();

if ($_SESSION['user']) { ?>
    <!doctype html>
    <html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="/dist/output.css" rel="stylesheet">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,1,0" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <script src="/js/main.js" defer></script>
    </head>

    <body class="dark:bg-black">
        <div class="w-full h-screen">
            <nav class="w-full h-[55px] shadow-xl dark:shadow-slate-900 flex items-center justify-between">
                <div class="flex font-bold items-center mx-3">
                    <img src="/public/download-removebg-preview.png" alt="" class="w-[30px] h-[30px] ">
                    <h1 class="dark:text-white">devchallenges</h1>
                </div>
                <div class="flex font-bold items-center mx-3 cursor-pointer" id="dropMenu">
                <?php
                    if (isset($_SESSION['user']['photo'])) {
                        $photo = base64_encode($_SESSION['user']['photo']);
                        echo '<img src="data:image/jpg;base64,' . $photo . '" alt="" class="w-[30px] h-[30px] rounded-xl shadow-md dark:shadow-slate-900">';
                    } else {
                        echo '<img src="/public/download-removebg-preview.png" alt="" class="w-[30px] h-[30px] rounded-xl shadow-md dark:shadow-slate-900">';
                    }
                    ?>
                    <p class="mx-2 dark:text-white">
                        <?php
                        if (isset($_SESSION['user']['name'])) {
                            echo $_SESSION['user']['name'];
                        } else {
                            echo $_SESSION['user']['name'] = 'Nome User';
                        }
                        ?>
                    </p>
                    <span class="material-symbols-outlined dark:text-white">
                        expand_more
                    </span>
                </div>
            </nav>
            <section class="flex flex-col justify-center items-center">
                <div class="cursor-poiter absolute top-16 left-5">
                    <span class="material-symbols-outlined p-5 cursor-pointer dark:text-white" id="btnBlack">
                        brightness_6
                    </span>
                </div>
                <div class="cursor-poiter absolute top-14 right-3 hidden" id="menuLat">
                    <div class="border border-gray-300 w-[150px] h-[150px] dark:bg-black bg-white rounded-xl">
                        <div class="my-5">
                            <div class="flex items-center my-4">
                                <span class="material-symbols-outlined mx-4 text-gray-600">
                                    account_circle
                                </span>
                                <a href="#" class="text-gray-600">My Profile</a>
                            </div>
                            <div class="flex items-center my-4">
                                <span class="material-symbols-outlined mx-4 text-gray-600">
                                    groups
                                </span>
                                <a href="#" class="text-gray-600">Group Chat</a>
                            </div>
                        </div>
                        <div class="flex items-center border-t border-gray-300 py-2">
                            <span class="material-symbols-outlined mx-4 text-red-600">
                                move_item
                            </span>
                            <a href="/src/handle_db/logout.php" class="text-red-600">Logout</a>
                        </div>
                    </div>
                </div>
                <div class="my-6 w-[800px] ">
                    <a href="../views/user.php" class="text-blue-400 font-semibold text-lg">&lt; Back</a>
                </div>
                <div class="border border-gray-400 w-[800px] rounded-2xl">
                    <div class="flex justify-start items-center px-10 py-5">
                        <div>
                            <h2 class="text-3xl font-semibold dark:text-white">Change Info</h2>
                            <p class="text-gray-400 ">Changes will be reflected to every services</p>
                        </div>
                    </div>
                    <form action="/src/handle_db/update_user.php" method="post" enctype="multipart/form-data">
                        <div class="px-10 py-5">

                            <label for="file" class="flex items-center">
                                <input type="file" name="img" id="file" hidden onchange="previewImage(this)">
                                <?php
                    if (isset($_SESSION['user']['photo'])) {
                        $photo = base64_encode($_SESSION['user']['photo']);
                        echo '<img src="data:image/jpg;base64,' . $photo . '" id="imagePreview" alt="" class="w-[70px] h-[70px] bg-black rounded-xl shadow-md cursor-pointer opacity-40 dark:shadow-slate-900">';
                    } else {
                        echo '<img src="/public/download-removebg-preview.png" alt="" id="imagePreview" class="w-[70px] h-[70px] bg-black rounded-xl shadow-md cursor-pointer opacity-40 dark:shadow-slate-900">';
                    }
                    ?>
                                
                                <span class="material-symbols-outlined text-gray-600 relative -left-[46px] cursor-pointer">
                                    photo_camera
                                </span>
                                <h1 class="px-10 text-gray-500 cursor-pointer">CHANGE PHOTO</h1>
                            </label>
                            <div class="flex flex-col my-4">
                                <label for="" class="text-sm font-semibold text-gray-600">Name</label>
                                <input class="border border-gray-400 w-[400px] rounded-xl py-2 px-4 dark:bg-black dark:text-white" name="name" type="text" placeholder="Enter your Name..." value="<?= $_SESSION['user']['name'] ?>">
                            </div>
                            <div class="flex flex-col my-4">
                                <label for="" class="text-sm font-semibold text-gray-600">Bio</label>
                                <input class="border border-gray-400 w-[400px] h-[75px] rounded-xl py-2 px-4 dark:bg-black dark:text-white" type="text" name="bio" placeholder="Enter your Bio..." value="<?= $_SESSION['user']['bio'] ?>">
                            </div>
                            <div class="flex flex-col my-4">
                                <label for="" class="text-sm font-semibold text-gray-600">PHONE</label>
                                <input class="border border-gray-400 w-[400px] rounded-xl py-2 px-4 dark:bg-black dark:text-white" type="text" placeholder="Enter your Phone..." name="phone" value="<?= $_SESSION['user']['phone'] ?>">
                            </div>
                            <div class="flex flex-col my-4">
                                <label for="" class="text-sm font-semibold text-gray-600">Email</label>
                                <input class="border border-gray-400 w-[400px] rounded-xl py-2 px-4 dark:bg-black dark:text-white" type="email" placeholder="Enter your Email..." name="email" value="<?= $_SESSION['user']['email'] ?>">
                            </div>
                            <div class="flex flex-col my-4">
                                <label for="" class="text-sm font-semibold text-gray-600">Password</label>
                                <input class="border border-gray-400 w-[400px] rounded-xl py-2 px-4 dark:bg-black dark:text-white" type="text" placeholder="Enter your new Password..." name="password" value="">
                            </div>
                            <input type="text" name="id" value="<?= $_SESSION['user']['id_usuario'] ?>" hidden>
                            <button class="bg-blue-600 active:bg-white active:text-blue-600 py-2 px-6 text-white rounded-xl">Save</button>
                        </div>
                    </form>
                </div>
            </section>
            <footer class="h-[100px]">

            </footer>
        </div>
    </body>

    </html>
<?php } else {
    session_destroy();
    header('location: /src/index.php');
}
?>