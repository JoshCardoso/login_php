const drop = document.getElementById('dropMenu');
const menuLat = document.getElementById('menuLat');
const btnBlack= document.getElementById('btnBlack');

btnBlack.addEventListener('click',()=>{
    const isDark =localStorage.getItem("darkMode");
    console.log(isDark);
    if (isDark === "true"){
        localStorage.setItem("darkMode", false);
        setDarkMode();
    }else{
        localStorage.setItem("darkMode", true);
        setDarkMode();
    };
});

function setDarkMode(){
    const isDark = localStorage.getItem("darkMode");

    if(isDark === "true"){
        document.documentElement.classList.add("dark");
    }
    if(isDark === "false"){
        document.documentElement.classList.remove("dark");
    }
}

window.addEventListener("load",setDarkMode)

drop.addEventListener('click',()=>{
    menuLat.classList.toggle('hidden'),
    menuLat.classList.toggle('flex');
});

