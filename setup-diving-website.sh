#!/bin/bash

echo "🚀 Setting up Moumen Diving Website..."
echo "======================================="

# Create directory structure
echo "📁 Creating directories..."
mkdir -p resources/js/components
mkdir -p resources/js/pages
mkdir -p resources/js/router
mkdir -p resources/js/stores
mkdir -p resources/js/layouts
mkdir -p resources/js/utils
mkdir -p public/images

# Create Tailwind config
echo "🎨 Creating Tailwind config..."
cat > tailwind.config.js << 'EOF'
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./index.html",
    "./resources/**/*.blade.php",
    "./resources/**/*.js",
    "./resources/**/*.vue",
  ],
  theme: {
    extend: {
      colors: {
        'ocean-blue': '#006994',
        'deep-blue': '#004d6b',
        'coral': '#ff6b6b',
        'sand': '#f4e4c1',
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
  ],
}
EOF

# Create PostCSS config
echo "📦 Creating PostCSS config..."
cat > postcss.config.js << 'EOF'
module.exports = {
  plugins: {
    tailwindcss: {},
    autoprefixer: {},
  },
}
EOF

# Update vite.config.js
echo "⚙️  Updating Vite config..."
cat > vite.config.js << 'EOF'
import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';
import vue from '@vitejs/plugin-vue';

export default defineConfig({
    plugins: [
        laravel({
            input: ['resources/css/app.css', 'resources/js/app.js'],
            refresh: true,
        }),
        vue({
            template: {
                transformAssetUrls: {
                    base: null,
                    includeAbsolute: false,
                },
            },
        }),
    ],
    resolve: {
        alias: {
            '@': '/resources/js',
        },
    },
});
EOF

# Update CSS file
echo "🎨 Setting up styles..."
cat > resources/css/app.css << 'EOF'
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap');
@tailwind base;
@tailwind components;
@tailwind utilities;

@layer base {
    html {
        scroll-behavior: smooth;
    }
    body {
        @apply antialiased;
    }
}

@layer components {
    .btn-primary {
        @apply bg-ocean-blue text-white px-6 py-3 rounded-lg font-semibold hover:bg-deep-blue transition-colors duration-200 shadow-lg;
    }
    
    .btn-secondary {
        @apply bg-white text-ocean-blue px-6 py-3 rounded-lg font-semibold border-2 border-ocean-blue hover:bg-ocean-blue hover:text-white transition-all duration-200;
    }
}
EOF

# Create main app.js
echo "📝 Creating app.js..."
cat > resources/js/app.js << 'EOF'
import './bootstrap';
import '../css/app.css';

import { createApp } from 'vue';
import { createPinia } from 'pinia';
import router from './router';
import App from './App.vue';

const app = createApp(App);
const pinia = createPinia();

app.use(pinia);
app.use(router);
app.mount('#app');
EOF

# Create router
echo "🔀 Creating router..."
cat > resources/js/router/index.js << 'EOF'
import { createRouter, createWebHistory } from 'vue-router';

const routes = [
    {
        path: '/',
        name: 'home',
        component: () => import('@/pages/Home.vue')
    },
    {
        path: '/about',
        name: 'about',
        component: () => import('@/pages/About.vue')
    },
    {
        path: '/services',
        name: 'services',
        component: () => import('@/pages/Services.vue')
    },
    {
        path: '/gallery',
        name: 'gallery',
        component: () => import('@/pages/Gallery.vue')
    },
    {
        path: '/contact',
        name: 'contact',
        component: () => import('@/pages/Contact.vue')
    },
    {
        path: '/booking',
        name: 'booking',
        component: () => import('@/pages/Booking.vue')
    }
];

const router = createRouter({
    history: createWebHistory(),
    routes,
    scrollBehavior(to, from, savedPosition) {
        if (savedPosition) {
            return savedPosition;
        } else {
            return { top: 0 };
        }
    }
});

export default router;
EOF

# Create App.vue
echo "📱 Creating App.vue..."
cat > resources/js/App.vue << 'EOF'
<template>
  <div id="app">
    <Navbar />
    <router-view v-slot="{ Component }">
      <transition name="fade" mode="out-in">
        <component :is="Component" />
      </transition>
    </router-view>
    <Footer />
  </div>
</template>

<script setup>
import Navbar from '@/components/Navbar.vue';
import Footer from '@/components/Footer.vue';
</script>

<style>
.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.3s ease;
}

.fade-enter-from,
.fade-leave-to {
  opacity: 0;
}
</style>
EOF

# Create Navbar component
echo "🧭 Creating Navbar..."
cat > resources/js/components/Navbar.vue << 'EOF'
<template>
  <nav class="bg-white shadow-lg sticky top-0 z-50">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <div class="flex justify-between items-center h-16">
        <!-- Logo -->
        <router-link to="/" class="flex items-center">
          <span class="text-2xl font-bold text-ocean-blue">🤿 Moumen Diving</span>
        </router-link>
        
        <!-- Desktop Navigation -->
        <div class="hidden md:flex items-center space-x-8">
          <router-link 
            v-for="link in navLinks" 
            :key="link.path"
            :to="link.path"
            class="text-gray-700 hover:text-ocean-blue transition-colors duration-200 font-medium"
            :class="{ 'text-ocean-blue font-semibold': $route.path === link.path }"
          >
            {{ link.name }}
          </router-link>
          <router-link to="/booking" class="btn-primary">
            Book Now
          </router-link>
        </div>
        
        <!-- Mobile menu button -->
        <button 
          @click="mobileMenuOpen = !mobileMenuOpen"
          class="md:hidden p-2 rounded-md hover:bg-gray-100"
        >
          <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path v-if="!mobileMenuOpen" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
            <path v-else stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
          </svg>
        </button>
      </div>
      
      <!-- Mobile Navigation -->
      <transition name="slide">
        <div v-if="mobileMenuOpen" class="md:hidden py-4 border-t">
          <router-link 
            v-for="link in navLinks" 
            :key="link.path"
            :to="link.path"
            @click="mobileMenuOpen = false"
            class="block py-2 text-gray-700 hover:text-ocean-blue transition-colors duration-200"
            :class="{ 'text-ocean-blue font-semibold': $route.path === link.path }"
          >
            {{ link.name }}
          </router-link>
          <router-link 
            to="/booking" 
            @click="mobileMenuOpen = false"
            class="btn-primary inline-block mt-4"
          >
            Book Now
          </router-link>
        </div>
      </transition>
    </div>
  </nav>
</template>

<script setup>
import { ref } from 'vue';

const mobileMenuOpen = ref(false);

const navLinks = [
  { name: 'Home', path: '/' },
  { name: 'About', path: '/about' },
  { name: 'Services', path: '/services' },
  { name: 'Gallery', path: '/gallery' },
  { name: 'Contact', path: '/contact' },
];
</script>

<style scoped>
.slide-enter-active,
.slide-leave-active {
  transition: all 0.3s ease;
}

.slide-enter-from,
.slide-leave-to {
  transform: translateY(-10px);
  opacity: 0;
}
</style>
EOF

# Create Footer component
echo "🦶 Creating Footer..."
cat > resources/js/components/Footer.vue << 'EOF'
<template>
  <footer class="bg-deep-blue text-white py-12">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <div class="grid md:grid-cols-4 gap-8">
        <!-- Company Info -->
        <div>
          <h3 class="text-xl font-bold mb-4">Moumen Diving</h3>
          <p class="text-gray-300">
            Your gateway to exploring the underwater wonders of the Red Sea.
          </p>
        </div>
        
        <!-- Quick Links -->
        <div>
          <h4 class="text-lg font-semibold mb-4">Quick Links</h4>
          <ul class="space-y-2">
            <li><router-link to="/about" class="text-gray-300 hover:text-white transition-colors">About Us</router-link></li>
            <li><router-link to="/services" class="text-gray-300 hover:text-white transition-colors">Services</router-link></li>
            <li><router-link to="/gallery" class="text-gray-300 hover:text-white transition-colors">Gallery</router-link></li>
            <li><router-link to="/contact" class="text-gray-300 hover:text-white transition-colors">Contact</router-link></li>
          </ul>
        </div>
        
        <!-- Contact Info -->
        <div>
          <h4 class="text-lg font-semibold mb-4">Contact Info</h4>
          <ul class="space-y-2 text-gray-300">
            <li>📍 Red Sea, Egypt</li>
            <li>📧 info@moumendiving.com</li>
            <li>📱 +20 123 456 7890</li>
          </ul>
        </div>
        
        <!-- Social Media -->
        <div>
          <h4 class="text-lg font-semibold mb-4">Follow Us</h4>
          <div class="flex space-x-4">
            <a href="#" class="text-gray-300 hover:text-white transition-colors">Facebook</a>
            <a href="#" class="text-gray-300 hover:text-white transition-colors">Instagram</a>
            <a href="#" class="text-gray-300 hover:text-white transition-colors">YouTube</a>
          </div>
        </div>
      </div>
      
      <div class="border-t border-gray-600 mt-8 pt-8 text-center text-gray-300">
        <p>&copy; 2024 Moumen Nabata Diving. All rights reserved.</p>
      </div>
    </div>
  </footer>
</template>

<script setup>
// Footer logic if needed
</script>
EOF

# Create Home page
echo "🏠 Creating Home page..."
cat > resources/js/pages/Home.vue << 'EOF'
<template>
  <div>
    <!-- Hero Section -->
    <section class="relative h-screen flex items-center justify-center bg-gradient-to-b from-blue-900 to-ocean-blue">
      <div class="absolute inset-0 bg-black opacity-30"></div>
      <div class="relative text-center text-white px-4 z-10">
        <h1 class="text-5xl md:text-7xl font-bold mb-6 animate-fade-in">
          Explore the Red Sea
        </h1>
        <p class="text-xl md:text-2xl mb-8 max-w-2xl mx-auto animate-fade-in-delay">
          Professional diving services with PADI certified instructors. 
          Discover the underwater wonders with Moumen Nabata Diving.
        </p>
        <div class="space-x-4 animate-fade-in-delay-2">
          <router-link to="/services" class="btn-primary inline-block">
            Our Services
          </router-link>
          <router-link to="/booking" class="btn-secondary inline-block">
            Book a Dive
          </router-link>
        </div>
      </div>
    </section>
    
    <!-- Features Section -->
    <section class="py-20 bg-gray-50">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <h2 class="text-4xl font-bold text-center mb-12 text-gray-800">Why Choose Us</h2>
        <div class="grid md:grid-cols-3 gap-8">
          <div class="text-center bg-white p-8 rounded-lg shadow-lg hover:shadow-xl transition-shadow">
            <div class="w-20 h-20 bg-ocean-blue rounded-full flex items-center justify-center mx-auto mb-4">
              <span class="text-white text-3xl">🤿</span>
            </div>
            <h3 class="text-xl font-semibold mb-2">Expert Instructors</h3>
            <p class="text-gray-600">PADI certified professionals with years of experience</p>
          </div>
          <div class="text-center bg-white p-8 rounded-lg shadow-lg hover:shadow-xl transition-shadow">
            <div class="w-20 h-20 bg-ocean-blue rounded-full flex items-center justify-center mx-auto mb-4">
              <span class="text-white text-3xl">🏆</span>
            </div>
            <h3 class="text-xl font-semibold mb-2">Top Equipment</h3>
            <p class="text-gray-600">Modern, well-maintained diving gear for your safety</p>
          </div>
          <div class="text-center bg-white p-8 rounded-lg shadow-lg hover:shadow-xl transition-shadow">
            <div class="w-20 h-20 bg-ocean-blue rounded-full flex items-center justify-center mx-auto mb-4">
              <span class="text-white text-3xl">🐠</span>
            </div>
            <h3 class="text-xl font-semibold mb-2">Best Locations</h3>
            <p class="text-gray-600">Access to the most beautiful dive sites in the Red Sea</p>
          </div>
        </div>
      </div>
    </section>

    <!-- CTA Section -->
    <section class="py-20 bg-ocean-blue text-white">
      <div class="max-w-4xl mx-auto text-center px-4">
        <h2 class="text-4xl font-bold mb-6">Ready to Dive?</h2>
        <p class="text-xl mb-8">Join us for an unforgettable underwater adventure</p>
        <router-link to="/booking" class="btn-secondary inline-block text-lg">
          Book Your Experience Now
        </router-link>
      </div>
    </section>
  </div>
</template>

<script setup>
// Component logic
</script>

<style scoped>
@keyframes fadeIn {
  from {
    opacity: 0;
    transform: translateY(20px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

.animate-fade-in {
  animation: fadeIn 1s ease-out;
}

.animate-fade-in-delay {
  animation: fadeIn 1s ease-out 0.3s both;
}

.animate-fade-in-delay-2 {
  animation: fadeIn 1s ease-out 0.6s both;
}
</style>
EOF

# Create other pages
echo "📄 Creating other pages..."

# About page
cat > resources/js/pages/About.vue << 'EOF'
<template>
  <div class="min-h-screen py-20 bg-gray-50">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <h1 class="text-4xl font-bold mb-8 text-center text-gray-800">About Moumen Diving</h1>
      <div class="bg-white rounded-lg shadow-lg p-8">
        <p class="text-lg text-gray-600 leading-relaxed mb-6">
          Welcome to Moumen Diving, your premier diving center in the Red Sea. 
          With over 15 years of experience, we've been introducing divers to the 
          magnificent underwater world of Egypt's coastline.
        </p>
        <p class="text-lg text-gray-600 leading-relaxed">
          Our team of PADI certified instructors is dedicated to providing safe, 
          enjoyable, and unforgettable diving experiences for divers of all levels.
        </p>
      </div>
    </div>
  </div>
</template>
EOF

# Services page
cat > resources/js/pages/Services.vue << 'EOF'
<template>
  <div class="min-h-screen py-20 bg-gray-50">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <h1 class="text-4xl font-bold mb-12 text-center text-gray-800">Our Services</h1>
      <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
        <div class="bg-white rounded-lg shadow-lg p-6 hover:shadow-xl transition-shadow">
          <h3 class="text-xl font-semibold mb-3 text-ocean-blue">Discover Scuba Diving</h3>
          <p class="text-gray-600">Perfect for beginners - try diving with our certified instructors</p>
        </div>
        <div class="bg-white rounded-lg shadow-lg p-6 hover:shadow-xl transition-shadow">
          <h3 class="text-xl font-semibold mb-3 text-ocean-blue">PADI Open Water Course</h3>
          <p class="text-gray-600">Get your diving certification and explore the underwater world</p>
        </div>
        <div class="bg-white rounded-lg shadow-lg p-6 hover:shadow-xl transition-shadow">
          <h3 class="text-xl font-semibold mb-3 text-ocean-blue">Advanced Diving</h3>
          <p class="text-gray-600">Take your skills to the next level with advanced courses</p>
        </div>
        <div class="bg-white rounded-lg shadow-lg p-6 hover:shadow-xl transition-shadow">
          <h3 class="text-xl font-semibold mb-3 text-ocean-blue">Daily Dive Trips</h3>
          <p class="text-gray-600">Join our daily boat trips to the best dive sites</p>
        </div>
        <div class="bg-white rounded-lg shadow-lg p-6 hover:shadow-xl transition-shadow">
          <h3 class="text-xl font-semibold mb-3 text-ocean-blue">Night Diving</h3>
          <p class="text-gray-600">Experience the magic of the Red Sea after dark</p>
        </div>
        <div class="bg-white rounded-lg shadow-lg p-6 hover:shadow-xl transition-shadow">
          <h3 class="text-xl font-semibold mb-3 text-ocean-blue">Equipment Rental</h3>
          <p class="text-gray-600">High-quality diving equipment available for rent</p>
        </div>
      </div>
    </div>
  </div>
</template>
EOF

# Gallery page
cat > resources/js/pages/Gallery.vue << 'EOF'
<template>
  <div class="min-h-screen py-20 bg-gray-50">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <h1 class="text-4xl font-bold mb-12 text-center text-gray-800">Gallery</h1>
      <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
        <div v-for="i in 6" :key="i" class="bg-white rounded-lg shadow-lg overflow-hidden hover:shadow-xl transition-shadow">
          <div class="h-64 bg-gradient-to-br from-blue-400 to-blue-600 flex items-center justify-center">
            <span class="text-white text-6xl">🐠</span>
          </div>
          <div class="p-4">
            <p class="text-gray-600">Underwater photo {{ i }}</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
EOF

# Contact page
cat > resources/js/pages/Contact.vue << 'EOF'
<template>
  <div class="min-h-screen py-20 bg-gray-50">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <h1 class="text-4xl font-bold mb-12 text-center text-gray-800">Contact Us</h1>
      <div class="grid md:grid-cols-2 gap-12">
        <div class="bg-white rounded-lg shadow-lg p-8">
          <h2 class="text-2xl font-semibold mb-6">Get in Touch</h2>
          <form @submit.prevent="handleSubmit" class="space-y-4">
            <div>
              <label class="block text-gray-700 mb-2">Name</label>
              <input type="text" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:border-ocean-blue">
            </div>
            <div>
              <label class="block text-gray-700 mb-2">Email</label>
              <input type="email" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:border-ocean-blue">
            </div>
            <div>
              <label class="block text-gray-700 mb-2">Message</label>
              <textarea rows="4" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:border-ocean-blue"></textarea>
            </div>
            <button type="submit" class="btn-primary w-full">Send Message</button>
          </form>
        </div>
        <div class="bg-white rounded-lg shadow-lg p-8">
          <h2 class="text-2xl font-semibold mb-6">Contact Information</h2>
          <div class="space-y-4">
            <p class="flex items-start">
              <span class="mr-3">📍</span>
              <span>Marina Boulevard, Hurghada<br>Red Sea, Egypt</span>
            </p>
            <p class="flex items-center">
              <span class="mr-3">📧</span>
              info@moumendiving.com
            </p>
            <p class="flex items-center">
              <span class="mr-3">📱</span>
              +20 123 456 7890
            </p>
            <p class="flex items-center">
              <span class="mr-3">⏰</span>
              Daily: 8:00 AM - 6:00 PM
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
const handleSubmit = () => {
  alert('Thank you for your message! We will get back to you soon.');
};
</script>
EOF

# Booking page
cat > resources/js/pages/Booking.vue << 'EOF'
<template>
  <div class="min-h-screen py-20 bg-gray-50">
    <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
      <h1 class="text-4xl font-bold mb-12 text-center text-gray-800">Book Your Dive</h1>
      <div class="bg-white rounded-lg shadow-lg p-8">
        <form @submit.prevent="handleBooking" class="space-y-6">
          <div class="grid md:grid-cols-2 gap-6">
            <div>
              <label class="block text-gray-700 mb-2">First Name</label>
              <input type="text" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:border-ocean-blue">
            </div>
            <div>
              <label class="block text-gray-700 mb-2">Last Name</label>
              <input type="text" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:border-ocean-blue">
            </div>
          </div>
          <div>
            <label class="block text-gray-700 mb-2">Email</label>
            <input type="email" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:border-ocean-blue">
          </div>
          <div>
            <label class="block text-gray-700 mb-2">Phone</label>
            <input type="tel" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:border-ocean-blue">
          </div>
          <div>
            <label class="block text-gray-700 mb-2">Service</label>
            <select class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:border-ocean-blue">
              <option>Discover Scuba Diving</option>
              <option>PADI Open Water Course</option>
              <option>Advanced Diving</option>
              <option>Daily Dive Trip</option>
              <option>Night Diving</option>
            </select>
          </div>
          <div>
            <label class="block text-gray-700 mb-2">Preferred Date</label>
            <input type="date" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:border-ocean-blue">
          </div>
          <div>
            <label class="block text-gray-700 mb-2">Additional Notes</label>
            <textarea rows="3" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:border-ocean-blue"></textarea>
          </div>
          <button type="submit" class="btn-primary w-full">Submit Booking Request</button>
        </form>
      </div>
    </div>
  </div>
</template>

<script setup>
const handleBooking = () => {
  alert('Thank you for your booking request! We will contact you soon to confirm.');
};
</script>
EOF

# Update blade template
echo "🔧 Updating blade template..."
cat > resources/views/welcome.blade.php << 'EOF'
<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    
    <title>Moumen Nabata Diving - Explore the Red Sea</title>
    
    <meta name="description" content="Professional diving services in the Red Sea. PADI certified instructors, diving courses, and unforgettable underwater experiences.">
    
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="/favicon.ico">
    
    <!-- Scripts -->
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>
<body class="antialiased">
    <div id="app"></div>
</body>
</html>
EOF

# Update routes
echo "🛣️  Updating routes..."
cat > routes/web.php << 'EOF'
<?php

use Illuminate\Support\Facades\Route;

// Catch all routes and let Vue Router handle them
Route::get('/{any}', function () {
    return view('welcome');
})->where('any', '.*');
EOF

echo "✅ Setup complete!"
echo ""
echo "Next steps:"
echo "1. Run: npm run build"
echo "2. In terminal 1: php artisan serve"
echo "3. In terminal 2: npm run dev"
echo "4. Visit: http://localhost:8000"
echo ""
echo "🤿 Happy diving!"
