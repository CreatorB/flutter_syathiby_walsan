importScripts("https://www.gstatic.com/firebasejs/9.22.0/firebase-app-compat.js");
importScripts("https://www.gstatic.com/firebasejs/9.22.0/firebase-messaging-compat.js");

// Service worker Firebase untuk aplikasi WALSAN (walsan.syathiby.id).
// Project: syathiby-1345121 (10 Nov 2026). Sebelumnya `rabbaniiapps` --
// token dari project itu ditolak FCM karena service account pondok hanya
// punya akses ke `syathiby-1345121`.
firebase.initializeApp({
    apiKey: "AIzaSyCPx66WcwnjqYRUJzTrXUf7BPh_6FH49Us",
    appId: "1:921923279470:web:8ee40d75d98b362eb8247f",
    messagingSenderId: "921923279470",
    projectId: "syathiby-1345121",
    authDomain: "syathiby-1345121.firebaseapp.com",
    storageBucket: "syathiby-1345121.firebasestorage.app"
});

const messaging = firebase.messaging();

messaging.onBackgroundMessage(function (payload) {
    console.log('[firebase-messaging-sw.js] Received background message ', payload);
    const notificationTitle = payload.notification.title;
    const notificationOptions = {
        body: payload.notification.body,
        icon: '/icons/Icon-192.png'
    };

    return self.registration.showNotification(notificationTitle,
        notificationOptions);
});
