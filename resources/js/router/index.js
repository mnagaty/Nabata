import { createRouter, createWebHistory } from 'vue-router';

const routes = [
    { path: '/', name: 'home', component: () => import('@/pages/Home.vue') },
    { path: '/about', name: 'about', component: () => import('@/pages/About.vue') },
    { path: '/services', name: 'services', component: () => import('@/pages/Services.vue') },
    { path: '/gallery', name: 'gallery', component: () => import('@/pages/Gallery.vue') },
    { path: '/contact', name: 'contact', component: () => import('@/pages/Contact.vue') },
    { path: '/booking', name: 'booking', component: () => import('@/pages/Booking.vue') }
];

export default createRouter({
    history: createWebHistory(),
    routes
});
