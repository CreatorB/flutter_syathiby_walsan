importScripts("https://www.gstatic.com/firebasejs/9.22.0/firebase-app-compat.js");
importScripts("https://www.gstatic.com/firebasejs/9.22.0/firebase-messaging-compat.js");

firebase.initializeApp({
    apiKey: "AIzaSyCQF6-D46wjIkwPb4IW3aUsPg6Ggovb2lU",
    appId: "1:859044680272:web:3385a8eff140200d43f755",
    messagingSenderId: "859044680272",
    projectId: "rabbaniiapps",
    authDomain: "rabbaniiapps.firebaseapp.com",
    storageBucket: "rabbaniiapps.appspot.com",
    measurementId: "G-0Q5XCW176E"
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
