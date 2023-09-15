const drop = document.getElementById('dropMenu');
const menuLat = document.getElementById('menuLat');
const btnBlack= document.getElementById('btnBlack');

btnBlack.addEventListener('click',()=>{
    const isDark =localStorage.getItem("darkMode");
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

function previewImage(input) {
    const imagePreview = document.getElementById('imagePreview');
    if (input.files && input.files[0]) {
        const reader = new FileReader();
        reader.onload = function (e) {
            imagePreview.src = e.target.result;
        };
        reader.readAsDataURL(input.files[0]);
    } 
}

window.addEventListener("load",setDarkMode)

drop.addEventListener('click',()=>{
    menuLat.classList.toggle('hidden'),
    menuLat.classList.toggle('flex');
});

