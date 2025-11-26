const { ref } = Vue

// Customize language for dialog menus and carousels here

const load = Vue.createApp({
  setup () {
    return {
      CarouselText1: "Vous pouvez ajouter/supprimer des objets, des véhicules, des emplois et des gangs via le dossier partagé.",
      CarouselSubText1: "Photo prise par: Markyoo#8068",
      CarouselText2: "L'ajout de données supplémentaires concernant le joueur peut être réalisé en modifiant le fichier qb-core player.lua",
      CarouselSubText2: "Photo prise par: ihyajb#9723",
      CarouselText3: "Tous les réglages spécifiques au serveur peuvent être effectués dans les fichiers config.lua tout au long de la compilation.",
      CarouselSubText3: "Photo prise par: FLAPZ[INACTIV]#9925",
      CarouselText4: "Pour obtenir de l'aide supplémentaire, rejoignez notre communauté sur discord.gg/qbcore",
      CarouselSubText4: "Photo prise par: Robinerino#1312",

      DownloadTitle: "Téléchargement du serveur QBCore",
      DownloadDesc: "Veuillez patienter pendant que nous téléchargeons toutes les ressources nécessaires pour jouer sur le serveur QBCore. \n\nUne fois le téléchargement terminé, vous serez redirigé vers le serveur et cet écran disparaîtra. Veuillez ne pas quitter la session ni éteindre votre ordinateur. ",

      SettingsTitle: "Paramètres",
      AudioTrackDesc1: "Lorsque cette option est désactivée, la lecture de la piste audio en cours sera interrompue.",
      AutoPlayDesc2: "Lorsque le carrousel est désactivé, les images cesseront de défiler et resteront sur la dernière image affichée.",
      PlayVideoDesc3: "Lorsque cette fonction est désactivée, la vidéo s'arrêtera de jouer et restera en pause.",

      KeybindTitle: "Touche par défaut",
      Keybind1: "Ouvrir l'inventaire",
      Keybind2: "Proximité Voix",
      Keybind3: "Téléphone",
      Keybind4: "Ceinture de sécurité",
      Keybind5: "Menu Target",
      Keybind6: "Menu Radial",
      Keybind7: "Ouvrir menu",
      Keybind8: "Parler à la radio",
      Keybind9: "Liste de joueurs",
      Keybind10: "Verrou véhicule",
      Keybind11: "Allumer moteur",
      Keybind12: "Emo pointer",
      Keybind13: "Slot personnalisé",
      Keybind14: "Mains en l'air",
      Keybind15: "Utiliser Item",
      Keybind16: "Cruise Control",

      firstap: ref(true),
      secondap: ref(true),
      thirdap: ref(true),
      firstslide: ref(1),
      secondslide: ref('1'),
      thirdslide: ref('5'),
      audioplay: ref(true),
      playvideo: ref(true),
      download: ref(true),
      settings: ref(false),
    }
  }
})

load.use(Quasar, { config: {} })
load.mount('#loading-main')

var audio = document.getElementById("audio");
audio.volume = 0.05;

function audiotoggle() {
    var audio = document.getElementById("audio");
    if (audio.paused) {
        audio.play();
    } else {
        audio.pause();
    }
}

function videotoggle() {
    var video = document.getElementById("video");
    if (video.paused) {
        video.play();
    } else {
        video.pause();
    }
}

let count = 0;
let thisCount = 0;

const handlers = {
    startInitFunctionOrder(data) {
        count = data.count;
    },

    initFunctionInvoking(data) {
        document.querySelector(".thingy").style.left = "0%";
        document.querySelector(".thingy").style.width = (data.idx / count) * 100 + "%";
    },

    startDataFileEntries(data) {
        count = data.count;
    },

    performMapLoadFunction(data) {
        ++thisCount;

        document.querySelector(".thingy").style.left = "0%";
        document.querySelector(".thingy").style.width = (thisCount / count) * 100 + "%";
    },
};

window.addEventListener("message", function (e) {
    (handlers[e.data.eventName] || function () {})(e.data);
});
