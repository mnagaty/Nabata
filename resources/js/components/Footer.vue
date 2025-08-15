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
