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
        <script src="../../js/main.js" defer></script>
    </head>

    <body class="dark:bg-black">
        <div class="w-full h-screen ">
            <nav class="w-full h-[55px] shadow-xl  dark:shadow-slate-900 flex items-center justify-between">
                <div class="flex font-bold items-center mx-3">
                    <img src="/public/download-removebg-preview.png" alt="" class="w-[30px] h-[30px] ">
                    <h1 class="dark:text-white">devchallenges</h1>
                </div>
                <div class="flex font-bold items-center mx-3 cursor-pointer" id="dropMenu">
                    <img src="/public/download-removebg-preview.png" alt="" class="w-[30px] h-[30px] rounded-xl shadow-md dark:shadow-slate-900">
                    <p class="mx-2 dark:text-white">
                        <?php
                        if (isset($_SESSION['user']['nome'])) {
                            echo $_SESSION['user']['nome'];
                        } else {
                            echo $_SESSION['user']['nome'] = 'Nome User';
                        }
                        ?>
                    </p>
                    <span class="material-symbols-outlined dark:text-white">
                        expand_more
                    </span>
                </div>
            </nav>
            <section class="flex flex-col justify-center items-center ">
                <div class="cursor-poiter absolute top-16 left-5">
                    <span class="material-symbols-outlined p-5 cursor-pointer dark:text-white" id="btnBlack">
                        brightness_6
                    </span>
                </div>
                <div class="cursor-poiter absolute top-14 right-3 hidden" id="menuLat">
                    <div class="border border-gray-300 w-[150px] h-[150px] bg-white dark:bg-black rounded-xl">
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
                <div class="flex flex-col justify-center items-center my-8">
                    <h1 class="text-3xl font-semibold my-2 dark:text-white">Personal info</h1>
                    <p class="dark:text-white">Basic info, like your name and photo</p>
                </div>
                <div class="border border-gray-400 w-[800px] rounded-2xl">
                    <div class="flex justify-between items-center px-10 py-5 border-b border-gray-400">
                        <div>
                            <h2 class="text-2xl font-semibold dark:text-white">Profile</h2>
                            <p class="text-gray-600 dark:text-white">Some info may be visible to other people</p>
                        </div>
                        <div>
                            <div>
                                <a href="../views/user_edit.php" class="border border-gray-400 rounded-lg px-6 py-1 text-gray-400">
                                    Edit
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="flex items-center px-10 py-6 border-b border-gray-400">
                        <div class="w-[100px] mr-36">
                            <P class="text-gray-400">PHOTO</P>
                        </div>
                        <div>
                            <img src="/public/download-removebg-preview.png" alt="" class="w-[70px] h-[70px] bg-black rounded-xl shadow-md dark:shadow-slate-900">
                        </div>
                    </div>
                    <div class="flex items-center px-10 py-6  border-b border-gray-400">
                        <div class="w-[100px] mr-36">
                            <P class="text-gray-400">NAME</P>
                        </div>
                        <div>
                            <p class="dark:text-white"><?= $_SESSION['user']['nome'] ?></p>
                        </div>
                    </div>
                    <div class="flex items-center px-10 py-6  border-b border-gray-400">
                        <div class="w-[100px] mr-36">
                            <P class="text-gray-400">BIO</P>
                        </div>
                        <div>
                            <p class="dark:text-white">
                                <?php
                                if (isset($_SESSION['user']['bio'])) {
                                    echo $_SESSION['user']['bio'];
                                } else {
                                    echo $_SESSION['user']['bio'] = 'ADD your bio';
                                }
                                ?>
                            </p>
                        </div>
                    </div>
                    <div class="flex items-center px-10 py-6  border-b border-gray-400">
                        <div class="w-[100px] mr-36">
                            <P class="text-gray-400">PHONE</P>
                        </div>
                        <div>
                            <p class="dark:text-white">
                            <?php
                                if (isset($_SESSION['user']['phone'])) {
                                    echo $_SESSION['user']['phone'];
                                } else {
                                    echo $_SESSION['user']['phone'] = 'ADD your number';
                                }
                                ?>
                            </p>
                        </div>
                    </div>
                    <div class="flex items-center px-10 py-6  border-b border-gray-400">
                        <div class="w-[100px] mr-36">
                            <P class="text-gray-400">EMAIL</P>
                        </div>
                        <div>
                            <p class="dark:text-white">
                            <?= $_SESSION['user']['email'] ?></p>
                        </div>
                    </div>
                    <div class="flex items-center px-10 py-6  ">
                        <div class="w-[100px] mr-36">
                            <P class="text-gray-400">PASSWORD</P>
                        </div>
                        <p class="dark:text-white">*************</p>
                    </div>
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