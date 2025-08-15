#!/bin/bash

echo "📝 Creating Vue component files..."

# Create Navbar component
cat > resources/js/components/Navbar.vue << 'EOF'
<template>
  <nav class="bg-white shadow-lg sticky top-0 z-50">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <div class="flex justify-between items-center h-16">
        <!-- Logo -->
        <router-link to="/" class="flex items-center">
          <span class="text-2xl font-bold text-blue-600">🤿 Moumen Diving</span>
        </router-link>
        
        <!-- Desktop Navigation -->
        <div class="hidden md:flex items-center space-x-8">
          <router-link 
            v-for="link in navLinks" 
            :key="link.path"
            :to="link.path"
            class="text-gray-700 hover:text-blue-600 transition-colors duration-200 font-medium"
            :class="{ 'text-blue-600 font-semibold': $route.path === link.path }"
          >
            {{ link.name }}
          </router-link>
          <router-link to="/booking" class="bg-blue-600 text-white px-6 py-2 rounded-lg hover:bg-blue-700 transition-colors">
            Book Now
          </router-link>
        </div>
        
        <!-- Mobile menu button -->
        <button 
          @click="mobileMenuOpen = !mobileMenuOpen"
          class="md:hidden p-2"
        >
          <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path v-if="!mobileMenuOpen" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
            <path v-else stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
          </svg>
        </button>
      </div>
      
      <!-- Mobile Navigation -->
      <div v-if="mobileMenuOpen" class="md:hidden py-4 border-t">
        <router-link 
          v-for="link in navLinks" 
          :key="link.path"
          :to="link.path"
          @click="mobileMenuOpen = false"
          class="block py-2 text-gray-700 hover:text-blue-600 transition-colors"
        >
          {{ link.name }}
        </router-link>
        <router-link 
          to="/booking" 
          @click="mobileMenuOpen = false"
          class="bg-blue-600 text-white px-6 py-2 rounded-lg inline-block mt-4"
        >
          Book Now
        </router-link>
      </div>
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
EOF

# Create Footer component
cat > resources/js/components/Footer.vue << 'EOF'
<template>
  <footer class="bg-gray-800 text-white py-12">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <div class="grid md:grid-cols-4 gap-8">
        <div>
          <h3 class="text-xl font-bold mb-4">Moumen Diving</h3>
          <p class="text-gray-300">Your gateway to exploring the underwater wonders of the Red Sea.</p>
        </div>
        <div>
          <h4 class="text-lg font-semibold mb-4">Quick Links</h4>
          <ul class="space-y-2">
            <li><router-link to="/about" class="text-gray-300 hover:text-white">About Us</router-link></li>
            <li><router-link to="/services" class="text-gray-300 hover:text-white">Services</router-link></li>
            <li><router-link to="/gallery" class="text-gray-300 hover:text-white">Gallery</router-link></li>
            <li><router-link to="/contact" class="text-gray-300 hover:text-white">Contact</router-link></li>
          </ul>
        </div>
        <div>
          <h4 class="text-lg font-semibold mb-4">Contact Info</h4>
          <ul class="space-y-2 text-gray-300">
            <li>📍 Red Sea, Egypt</li>
            <li>📧 info@moumendiving.com</li>
            <li>📱 +20 123 456 7890</li>
          </ul>
        </div>
        <div>
          <h4 class="text-lg font-semibold mb-4">Follow Us</h4>
          <div class="flex space-x-4">
            <a href="#" class="text-gray-300 hover:text-white">Facebook</a>
            <a href="#" class="text-gray-300 hover:text-white">Instagram</a>
          </div>
        </div>
      </div>
      <div class="border-t border-gray-600 mt-8 pt-8 text-center text-gray-300">
        <p>&copy; 2024 Moumen Nabata Diving. All rights reserved.</p>
      </div>
    </div>
  </footer>
</template>
EOF

# Create Home page
cat > resources/js/pages/Home.vue << 'EOF'
<template>
  <div>
    <!-- Hero Section -->
    <section class="relative h-screen flex items-center justify-center bg-gradient-to-b from-blue-900 to-blue-600">
      <div class="text-center text-white px-4">
        <h1 class="text-5xl md:text-7xl font-bold mb-6">Explore the Red Sea</h1>
        <p class="text-xl md:text-2xl mb-8 max-w-2xl mx-auto">
          Professional diving services with PADI certified instructors. 
          Discover the underwater wonders with Moumen Nabata Diving.
        </p>
        <div class="space-x-4">
          <router-link to="/services" class="bg-white text-blue-600 px-8 py-3 rounded-lg font-semibold hover:bg-gray-100 transition-colors inline-block">
            Our Services
          </router-link>
          <router-link to="/booking" class="bg-blue-500 text-white px-8 py-3 rounded-lg font-semibold hover:bg-blue-400 transition-colors inline-block">
            Book a Dive
          </router-link>
        </div>
      </div>
    </section>
    
    <!-- Features Section -->
    <section class="py-20 bg-gray-50">
      <div class="max-w-7xl mx-auto px-4">
        <h2 class="text-4xl font-bold text-center mb-12">Why Choose Us</h2>
        <div class="grid md:grid-cols-3 gap-8">
          <div class="text-center bg-white p-8 rounded-lg shadow-lg">
            <div class="w-20 h-20 bg-blue-600 rounded-full flex items-center justify-center mx-auto mb-4">
              <span class="text-white text-3xl">🤿</span>
            </div>
            <h3 class="text-xl font-semibold mb-2">Expert Instructors</h3>
            <p class="text-gray-600">PADI certified professionals with years of experience</p>
          </div>
          <div class="text-center bg-white p-8 rounded-lg shadow-lg">
            <div class="w-20 h-20 bg-blue-600 rounded-full flex items-center justify-center mx-auto mb-4">
              <span class="text-white text-3xl">🏆</span>
            </div>
            <h3 class="text-xl font-semibold mb-2">Top Equipment</h3>
            <p class="text-gray-600">Modern, well-maintained diving gear for your safety</p>
          </div>
          <div class="text-center bg-white p-8 rounded-lg shadow-lg">
            <div class="w-20 h-20 bg-blue-600 rounded-full flex items-center justify-center mx-auto mb-4">
              <span class="text-white text-3xl">🐠</span>
            </div>
            <h3 class="text-xl font-semibold mb-2">Best Locations</h3>
            <p class="text-gray-600">Access to the most beautiful dive sites in the Red Sea</p>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>
EOF

# Create About page
cat > resources/js/pages/About.vue << 'EOF'
<template>
  <div class="min-h-screen py-20 bg-gray-50">
    <div class="max-w-7xl mx-auto px-4">
      <h1 class="text-4xl font-bold mb-8 text-center">About Moumen Diving</h1>
      <div class="bg-white rounded-lg shadow-lg p-8">
        <p class="text-lg text-gray-600 mb-4">
          Welcome to Moumen Diving, your premier diving center in the Red Sea. 
          With over 15 years of experience, we've been introducing divers to the 
          magnificent underwater world of Egypt's coastline.
        </p>
        <p class="text-lg text-gray-600">
          Our team of PADI certified instructors is dedicated to providing safe, 
          enjoyable, and unforgettable diving experiences for divers of all levels.
        </p>
      </div>
    </div>
  </div>
</template>
EOF

# Create Services page
cat > resources/js/pages/Services.vue << 'EOF'
<template>
  <div class="min-h-screen py-20 bg-gray-50">
    <div class="max-w-7xl mx-auto px-4">
      <h1 class="text-4xl font-bold mb-12 text-center">Our Services</h1>
      <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
        <div class="bg-white rounded-lg shadow-lg p-6">
          <h3 class="text-xl font-semibold mb-3 text-blue-600">Discover Scuba Diving</h3>
          <p class="text-gray-600">Perfect for beginners - try diving with our certified instructors</p>
        </div>
        <div class="bg-white rounded-lg shadow-lg p-6">
          <h3 class="text-xl font-semibold mb-3 text-blue-600">PADI Open Water Course</h3>
          <p class="text-gray-600">Get your diving certification and explore the underwater world</p>
        </div>
        <div class="bg-white rounded-lg shadow-lg p-6">
          <h3 class="text-xl font-semibold mb-3 text-blue-600">Advanced Diving</h3>
          <p class="text-gray-600">Take your skills to the next level with advanced courses</p>
        </div>
        <div class="bg-white rounded-lg shadow-lg p-6">
          <h3 class="text-xl font-semibold mb-3 text-blue-600">Daily Dive Trips</h3>
          <p class="text-gray-600">Join our daily boat trips to the best dive sites</p>
        </div>
        <div class="bg-white rounded-lg shadow-lg p-6">
          <h3 class="text-xl font-semibold mb-3 text-blue-600">Night Diving</h3>
          <p class="text-gray-600">Experience the magic of the Red Sea after dark</p>
        </div>
        <div class="bg-white rounded-lg shadow-lg p-6">
          <h3 class="text-xl font-semibold mb-3 text-blue-600">Equipment Rental</h3>
          <p class="text-gray-600">High-quality diving equipment available for rent</p>
        </div>
      </div>
    </div>
  </div>
</template>
EOF

# Create Gallery page
cat > resources/js/pages/Gallery.vue << 'EOF'
<template>
  <div class="min-h-screen py-20 bg-gray-50">
    <div class="max-w-7xl mx-auto px-4">
      <h1 class="text-4xl font-bold mb-12 text-center">Gallery</h1>
      <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
        <div v-for="i in 6" :key="i" class="bg-white rounded-lg shadow-lg overflow-hidden">
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

# Create Contact page
cat > resources/js/pages/Contact.vue << 'EOF'
<template>
  <div class="min-h-screen py-20 bg-gray-50">
    <div class="max-w-7xl mx-auto px-4">
      <h1 class="text-4xl font-bold mb-12 text-center">Contact Us</h1>
      <div class="grid md:grid-cols-2 gap-12">
        <div class="bg-white rounded-lg shadow-lg p-8">
          <h2 class="text-2xl font-semibold mb-6">Get in Touch</h2>
          <form @submit.prevent="handleSubmit" class="space-y-4">
            <div>
              <label class="block text-gray-700 mb-2">Name</label>
              <input type="text" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:border-blue-500">
            </div>
            <div>
              <label class="block text-gray-700 mb-2">Email</label>
              <input type="email" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:border-blue-500">
            </div>
            <div>
              <label class="block text-gray-700 mb-2">Message</label>
              <textarea rows="4" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:border-blue-500"></textarea>
            </div>
            <button type="submit" class="bg-blue-600 text-white px-6 py-2 rounded-lg hover:bg-blue-700 w-full">Send Message</button>
          </form>
        </div>
        <div class="bg-white rounded-lg shadow-lg p-8">
          <h2 class="text-2xl font-semibold mb-6">Contact Information</h2>
          <div class="space-y-4">
            <p>📍 Marina Boulevard, Hurghada, Red Sea, Egypt</p>
            <p>📧 info@moumendiving.com</p>
            <p>📱 +20 123 456 7890</p>
            <p>⏰ Daily: 8:00 AM - 6:00 PM</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
const handleSubmit = () => {
  alert('Thank you for your message!');
};
</script>
EOF

# Create Booking page
cat > resources/js/pages/Booking.vue << 'EOF'
<template>
  <div class="min-h-screen py-20 bg-gray-50">
    <div class="max-w-4xl mx-auto px-4">
      <h1 class="text-4xl font-bold mb-12 text-center">Book Your Dive</h1>
      <div class="bg-white rounded-lg shadow-lg p-8">
        <form @submit.prevent="handleBooking" class="space-y-6">
          <div class="grid md:grid-cols-2 gap-6">
            <div>
              <label class="block text-gray-700 mb-2">First Name</label>
              <input type="text" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:border-blue-500">
            </div>
            <div>
              <label class="block text-gray-700 mb-2">Last Name</label>
              <input type="text" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:border-blue-500">
            </div>
          </div>
          <div>
            <label class="block text-gray-700 mb-2">Email</label>
            <input type="email" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:border-blue-500">
          </div>
          <div>
            <label class="block text-gray-700 mb-2">Service</label>
            <select class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:border-blue-500">
              <option>Discover Scuba Diving</option>
              <option>PADI Open Water Course</option>
              <option>Advanced Diving</option>
              <option>Daily Dive Trip</option>
              <option>Night Diving</option>
            </select>
          </div>
          <div>
            <label class="block text-gray-700 mb-2">Preferred Date</label>
            <input type="date" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:border-blue-500">
          </div>
          <button type="submit" class="bg-blue-600 text-white px-6 py-3 rounded-lg hover:bg-blue-700 w-full">Submit Booking</button>
        </form>
      </div>
    </div>
  </div>
</template>

<script setup>
const handleBooking = () => {
  alert('Booking request submitted!');
};
</script>
EOF

echo "✅ Vue component files created successfully!"
