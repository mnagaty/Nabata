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
            <p>📍 El Cornish street
 Safaga-Red Sea Egypt 
84722</p>
            <p>moumen@freedom-divers.de</p>
            <p>📱 +20 01224369878</p>
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
