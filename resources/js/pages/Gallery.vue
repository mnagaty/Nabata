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
