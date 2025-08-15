  <template>
    <nav class="bg-white shadow-lg sticky top-0 z-50">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between items-center h-16">
          <!-- Logo -->
          <router-link to="/" class="flex items-center">
            <span class="text-2xl font-bold text-blue-600"> Moumen Nabata</span>
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
    { name: 'Contact', path: '/contact' },
  ];
  </script>