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

<body>
  <div class="w-screen h-screen flex flex-col justify-center items-center dark:bg-black">
    <div class="cursor-poiter absolute top-5 right-5">
      <span class="material-symbols-outlined p-5 cursor-pointer dark:text-white" id="btnBlack">
        brightness_6
      </span>
    </div>
    <div class="border-2 border-gray-400 w-[400px] h-[475px] rounded-2xl py-8 px-10">
      <div>
        <div class="flex font-bold items-center">
          <img src="/public/download-removebg-preview.png" alt="" class="w-[30px] h-[30px]">
          <h1 class="dark:text-white">devchallenges</h1>
        </div>
        <h3 class="flex text-xl font-bold mt-6 dark:text-white">Login</h3>
        <form action="../handle_db/get_user.php" method="post">
          <div class="flex items-center border-2 border-gray-400 p-1 rounded-xl my-4">
            <label for="email">
              <span class="material-symbols-outlined text-gray-600 p-1">
                mail
              </span>
            </label>
            <input class="outline-none w-full focus:bg-black  dark:bg-black dark:text-white" type="email" name="email" id="email" placeholder="Email" required>
          </div>
          <div class="flex items-center border-2 border-gray-400 p-1 rounded-xl my-4">
            <label for="password">
              <span class="material-symbols-outlined text-gray-600 p-1">
                lock
              </span>
            </label>
            <input class="outline-none w-full dark:bg-black dark:text-white" type="password" name="password" id="password" placeholder="Password" required>
          </div>
          <button type="submit" class="w-full bg-blue-600 active:bg-white text-white active:text-blue-600 border-2 border-blue-600 p-2 rounded-xl">Login</button>
        </form>
        <div class="flex justify-center items-center flex-col m-6">
          <p class="text-sm text-gray-600">or continue with these social profile</p>
          <div class="flex justify-evenly w-full my-4">
            <a href="#" class="w-[40px] h-[40px] border-gray-400 border-2 rounded-full flex justify-center items-center"><i class="fa-brands fa-google" style="color: #525252;"></i></a>
            <a href="#" class="w-[40px] h-[40px] border-gray-400 border-2 rounded-full flex justify-center items-center">
              <p><i class="fa-brands fa-facebook" style="color: #525252;"></i></p>
            </a>
            <a href="#" class="w-[40px] h-[40px] border-gray-400 border-2 rounded-full flex justify-center items-center"><i class="fa-brands fa-twitter" style="color: #525252;"></i></a>
            <a href="#" class="w-[40px] h-[40px] border-gray-400 border-2 rounded-full flex justify-center items-center"><i class="fa-brands fa-github" style="color: #525252;"></i></a>
          </div>
          <p class="text-sm text-gray-600">Don’t have an account yet?<a href="../index.php" class="text-blue-600">Register</a></p>
        </div>
      </div>
    </div>
  </div>
</body>

</html>