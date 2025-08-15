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
