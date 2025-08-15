<template>
  <div class="overflow-x-hidden">
    <!-- =============================================
         PROGRESS BAR SECTION
         ============================================= -->
    <div class="fixed top-0 left-0 w-full h-1 bg-gray-200/20 z-50">
      <div class="h-full bg-gradient-to-r from-orange-500 to-red-500 transition-all duration-300" 
           :style="`width: ${scrollProgress}%`"></div>
    </div>

    <!-- =============================================
         HERO SECTION
         ============================================= -->
         <section class="relative min-h-screen flex items-center justify-center hero-bg pt-16">
        <!-- Animated Background Elements -->
        <div class="absolute inset-0 overflow-hidden">
            <!-- Background overlay for better text readability -->
            <div class="absolute inset-0 bg-gradient-to-b from-black/20 via-transparent to-black/30"></div>
            
            <div class="absolute bg-white/10 rounded-full blur-xl floating-element"
                 style="width: 150px; height: 150px; left: 10%; top: 20%; animation-delay: 0s;"></div>
            <div class="absolute bg-white/10 rounded-full blur-xl floating-element"
                 style="width: 200px; height: 200px; left: 80%; top: 15%; animation-delay: 1s;"></div>
            <div class="absolute bg-white/10 rounded-full blur-xl floating-element"
                 style="width: 120px; height: 120px; left: 60%; top: 70%; animation-delay: 2s;"></div>
            <div class="absolute bg-white/10 rounded-full blur-xl floating-element"
                 style="width: 180px; height: 180px; left: 20%; top: 60%; animation-delay: 3s;"></div>
            <div class="absolute bg-white/10 rounded-full blur-xl floating-element"
                 style="width: 140px; height: 140px; left: 70%; top: 40%; animation-delay: 4s;"></div>
            <div class="absolute bg-white/10 rounded-full blur-xl floating-element"
                 style="width: 160px; height: 160px; left: 30%; top: 80%; animation-delay: 5s;"></div>
            <div class="absolute bg-white/10 rounded-full blur-xl floating-element"
                 style="width: 110px; height: 110px; left: 85%; top: 60%; animation-delay: 2.5s;"></div>
            <div class="absolute bg-white/10 rounded-full blur-xl floating-element"
                 style="width: 190px; height: 190px; left: 5%; top: 40%; animation-delay: 4.5s;"></div>
        </div>
        
        <div class="relative z-10 text-center text-white px-4 max-w-6xl mx-auto text-overlay-enhancement">
            <!-- Elite Badge -->
            <div class="inline-flex items-center gap-3 glass-effect px-6 py-3 rounded-full mb-8 
                        shadow-2xl hover:scale-105 transition-transform cursor-pointer animate-pulse-ring">
                <span class="text-2xl" role="img" aria-label="Trophy">🏆</span>
                <span class="font-semibold bg-gradient-to-r from-yellow-300 to-orange-300 bg-clip-text text-transparent">
                    Elite Technical Diving Instructor & Evaluator
                </span>
            </div>
            
            <!-- Main Title -->
            <h1 class="hero-title text-6xl md:text-8xl font-black mb-6 tracking-tight">
                <span class="gradient-text">MOUMEN NABATA</span>
            </h1>
            
            <!-- Subtitle -->
            <p class="text-xl md:text-2xl mb-12 max-w-4xl mx-auto leading-relaxed animate-fade-in">
                Mastering the depths through <span class="text-orange-300 font-bold">24+ years</span> of expert diving education, 
                technical instruction, and world-class training in the pristine waters of the 
                <span class="text-cyan-300 font-bold">Red Sea, Egypt</span>.
            </p>
            
            <!-- Statistics Cards -->
            <div class="grid md:grid-cols-3 gap-8 mb-12 max-w-4xl mx-auto">
                <div class="glass-effect rounded-2xl p-6 card-hover" tabindex="0" role="button">
                    <div class="stats-counter bg-gradient-to-r from-orange-400 to-red-400 bg-clip-text text-transparent mb-2" id="divers-counter">
                        {{ animatedCounters.divers }}+
                    </div>
                    <div class="text-sm uppercase tracking-wider opacity-90">Divers Trained</div>
                </div>
                <div class="glass-effect rounded-2xl p-6 card-hover" tabindex="0" role="button">
                    <div class="stats-counter bg-gradient-to-r from-orange-400 to-red-400 bg-clip-text text-transparent mb-2" id="professionals-counter">
                        {{ animatedCounters.professionals }}+
                    </div>
                    <div class="text-sm uppercase tracking-wider opacity-90">Professionals Certified</div>
                </div>
                <div class="glass-effect rounded-2xl p-6 card-hover" tabindex="0" role="button">
                    <div class="stats-counter bg-gradient-to-r from-orange-400 to-red-400 bg-clip-text text-transparent mb-2" id="years-counter">
                        {{ animatedCounters.years }}
                    </div>
                    <div class="text-sm uppercase tracking-wider opacity-90">Years Experience</div>
                </div>
            </div>
            
            <!-- CTA Buttons -->
            <div class="flex flex-wrap justify-center gap-6 mb-12">
                <a href="/services" 
                   class="cta-button px-8 py-4 rounded-2xl font-bold text-white shadow-lg no-underline"
                   style="text-decoration: none;">
                    <span class="flex items-center gap-3">
                        <span class="text-2xl" role="img" aria-label="Target">🎯</span>
                        Explore Programs
                        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24" aria-hidden="true">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6"></path>
                        </svg>
                    </span>
                </a>
                
                <a href="/contact" 
                   class="glass-effect px-8 py-4 rounded-2xl font-bold text-white border border-white/30 
                          hover:bg-white/20 transition-all duration-300 hover:scale-105 no-underline"
                   style="text-decoration: none;">
                    <span class="flex items-center gap-3">
                        <span class="text-2xl" role="img" aria-label="Chat">💬</span>
                        Start Journey
                    </span>
                </a>
            </div>
            
            <!-- Social Links -->
            <div class="flex justify-center gap-6 mb-12" role="list">
                <a href="#" target="_blank" 
                   class="social-icon w-14 h-14 rounded-full flex items-center justify-center text-2xl shadow-lg"
                   style="background: linear-gradient(135deg, #1877f2, #42a5f5);"
                   role="listitem" aria-label="Facebook">
                    <span>📘</span>
                </a>
                <a href="#" target="_blank" 
                   class="social-icon w-14 h-14 rounded-full flex items-center justify-center text-2xl shadow-lg"
                   style="background: linear-gradient(135deg, #e4405f, #fd1d1d);"
                   role="listitem" aria-label="Instagram">
                    <span>📷</span>
                </a>
                <a href="#" target="_blank" 
                   class="social-icon w-14 h-14 rounded-full flex items-center justify-center text-2xl shadow-lg"
                   style="background: linear-gradient(135deg, #ff0000, #cc0000);"
                   role="listitem" aria-label="YouTube">
                    <span>📺</span>
                </a>
                <a href="#" target="_blank" 
                   class="social-icon w-14 h-14 rounded-full flex items-center justify-center text-2xl shadow-lg"
                   style="background: linear-gradient(135deg, #0077b5, #005582);"
                   role="listitem" aria-label="LinkedIn">
                    <span>💼</span>
                </a>
            </div>
            
            <!-- Agency Logos -->
            <div class="flex justify-center items-center gap-8 mb-8 flex-wrap">
                <div class="agency-logo h-12 flex items-center justify-center px-4 py-2 glass-effect rounded-lg">
                    <span class="text-white font-bold text-sm">PADI</span>
                </div>
                <div class="agency-logo h-12 flex items-center justify-center px-4 py-2 glass-effect rounded-lg">
                    <span class="text-white font-bold text-sm">SSI</span>
                </div>
                <div class="agency-logo h-12 flex items-center justify-center px-4 py-2 glass-effect rounded-lg">
                    <span class="text-white font-bold text-sm">NAUI</span>
                </div>
                <div class="agency-logo h-12 flex items-center justify-center px-4 py-2 glass-effect rounded-lg">
                    <span class="text-white font-bold text-sm">TDI</span>
                </div>
            </div>
            
            <!-- Scroll Indicator -->
            <div class="scroll-indicator" role="button" tabindex="0" aria-label="Scroll down" @click="scrollToSection('about')">
                <svg class="w-6 h-6 text-white/60 mx-auto" fill="none" stroke="currentColor" viewBox="0 0 24 24" aria-hidden="true">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 14l-7 7m0 0l-7-7m7 7V3"></path>
                </svg>
            </div>
        </div>
    </section>

    
    <!-- =============================================
         ABOUT SECTION
         ============================================= -->
    <section id="about" class="py-24 bg-gray-50">
      <div class="max-w-7xl mx-auto px-4">
        <!-- Section Header -->
        <div class="text-center mb-16 appear-on-scroll">
          <span class="text-sm font-bold text-orange-500 uppercase tracking-wider">About Me</span>
          <h2 class="text-5xl md:text-6xl font-black mt-2 mb-6 gradient-text">
            Journey to Excellence
          </h2>
          <div class="w-24 h-1 bg-gradient-to-r from-orange-500 to-red-500 mx-auto mb-6"></div>
          <p class="text-xl text-gray-600 max-w-3xl mx-auto">
            With over 24 years of expertise spanning from freediving to technical instruction, 
            I've dedicated my career to developing world-class divers and diving professionals.
          </p>
        </div>
        
        <div class="grid lg:grid-cols-2 gap-16 items-center">
          <!-- Profile Image -->
          <div class="appear-on-scroll">
            <div class="relative group">
              <div class="absolute -inset-4 bg-gradient-to-r from-blue-600 to-cyan-600 rounded-3xl opacity-20 
                          group-hover:opacity-30 blur-2xl transition-opacity duration-500"></div>
              <div class="relative rounded-3xl overflow-hidden shadow-2xl card-hover">
                <img src="https://i.postimg.cc/qqyP5f70/Whats-App-Image-2025-08-06-at-19-36-16.jpg" 
                     alt="Moumen Nabata - Elite Technical Diving Instructor" 
                     class="w-full h-[700px] object-cover">
                <div class="absolute inset-0 bg-gradient-to-t from-blue-900/60 via-transparent to-transparent"></div>
                <div class="absolute bottom-6 left-6 text-white">
                  <p class="text-sm font-bold text-orange-400">FOUNDER</p>
                  <p class="text-2xl font-bold">Freedom Divers Safaga</p>
                </div>
              </div>
            </div>
          </div>
          
          <!-- About Content -->
          <div class="appear-on-scroll">
            <h3 class="text-4xl font-bold mb-8 text-gray-900">My Evolution in Diving</h3>
            
            <!-- Career Timeline -->
            <div class="space-y-6 mb-8">
              <div v-for="(item, index) in timeline" :key="index" 
                   class="flex gap-4 appear-on-scroll"
                   :style="`animation-delay: ${index * 0.1}s`">
                <div class="relative">
                  <div class="w-12 h-12 rounded-full bg-gradient-to-r from-blue-600 to-cyan-600 
                              flex items-center justify-center text-white font-bold text-sm
                              hover:scale-110 transition-transform">
                    {{ item.year }}
                  </div>
                  <div v-if="index < timeline.length - 1" 
                       class="absolute top-12 left-1/2 transform -translate-x-1/2 w-0.5 h-16 bg-gray-300"></div>
                </div>
                <div class="flex-1 pb-8">
                  <h4 class="font-bold text-lg text-gray-900 hover:text-blue-600 transition-colors">
                    {{ item.title }}
                  </h4>
                  <p class="text-gray-600">{{ item.description }}</p>
                </div>
              </div>
            </div>
            
            <!-- Skills Grid -->
            <div class="grid grid-cols-2 gap-4 mb-8">
              <div v-for="skill in skills" :key="skill.name" 
                   class="bg-white rounded-xl p-4 border border-gray-200 hover:border-blue-300 
                          hover:shadow-lg transition-all duration-300 card-hover">
                <div class="flex items-center gap-3">
                  <div class="feature-icon w-10 h-10 rounded-lg flex items-center justify-center text-white text-lg">
                    {{ skill.icon }}
                  </div>
                  <div>
                    <p class="font-bold text-gray-900">{{ skill.name }}</p>
                    <p class="text-sm text-gray-600">{{ skill.value }}</p>
                  </div>
                </div>
              </div>
            </div>
            
            <!-- Contact CTA -->
            <div class="text-center">
              <button 
                @click="handleContactClick"
                class="bg-gradient-to-r from-orange-500 to-orange-600 hover:from-orange-600 hover:to-red-600
                       px-8 py-4 rounded-xl font-bold text-white shadow-lg hover:shadow-xl
                       hover:-translate-y-1 transition-all duration-300 
                       inline-flex items-center gap-3 no-underline">
                <span class="text-xl">🤝</span>
                Let's Connect
                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
                </svg>
              </button>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- =============================================
         PHILOSOPHY SECTION
         ============================================= -->
    <section id="philosophy" class="py-24 hero-bg text-white">
      <div class="max-w-7xl mx-auto px-4">
        <!-- Section Header -->
        <div class="text-center mb-16 appear-on-scroll">
          <span class="text-sm font-bold text-orange-300 uppercase tracking-wider">My Philosophy</span>
          <h2 class="text-5xl md:text-6xl font-black mt-2 mb-6">Teaching Excellence</h2>
          <div class="w-24 h-1 bg-gradient-to-r from-orange-500 to-red-500 mx-auto"></div>
        </div>
        
        <!-- Philosophy Quote -->
        <div class="glass-effect rounded-3xl p-12 mb-16 max-w-5xl mx-auto card-hover appear-on-scroll">
          <div class="relative">
            <div class="absolute -top-8 -left-8 text-8xl text-orange-400/20 font-serif">"</div>
            <p class="text-2xl md:text-3xl italic leading-relaxed mb-8 relative z-10">
              To achieve real mastery, I believe that an instructor's role goes beyond simply sharing information. 
              My philosophy is centered on transferring skill through 
              <span class="text-orange-300 font-bold not-italic">calm</span>, 
              <span class="text-cyan-300 font-bold not-italic">focused</span>, and 
              <span class="text-yellow-300 font-bold not-italic">repetitive</span> training.
            </p>
            <div class="flex items-center gap-4">
              <div class="w-16 h-0.5 bg-gradient-to-r from-orange-500 to-red-500"></div>
              <span class="text-lg font-bold text-orange-300">Moumen Nabata</span>
            </div>
          </div>
        </div>
        
        <!-- Philosophy Cards -->
        <div class="grid md:grid-cols-2 gap-8">
          <div class="glass-effect rounded-2xl p-8 card-hover appear-on-scroll">
            <div class="text-5xl mb-6 floating-element">🎯</div>
            <h3 class="text-3xl font-bold mb-4 text-orange-300">Journey to Excellence</h3>
            <p class="text-lg leading-relaxed opacity-90">
              Technical diving isn't just about going deeper or staying longer. It's about developing 
              a mindset of precision, safety, and continuous learning. Every diver I train becomes part 
              of an elite community that pushes the boundaries of underwater exploration.
            </p>
          </div>
          
          <div class="glass-effect rounded-2xl p-8 card-hover appear-on-scroll">
            <div class="text-5xl mb-6 floating-element" style="animation-delay: 1s">👨‍🏫</div>
            <h3 class="text-3xl font-bold mb-4 text-cyan-300">Instructor Development</h3>
            <p class="text-lg leading-relaxed opacity-90">
              As an Instructor Trainer and Evaluator, I shape the next generation of diving professionals. 
              My approach combines rigorous technical standards with personalized mentoring, ensuring 
              each student develops true skill, responsibility, and dedication.
            </p>
          </div>
        </div>
      </div>
    </section>
    
    <!-- =============================================
         TRAINING PROGRAMS SECTION
         ============================================= -->
    <section id="programs" class="py-24 bg-white">
      <div class="max-w-7xl mx-auto px-4">
        <!-- Section Header -->
        <div class="text-center mb-16 appear-on-scroll">
          <span class="text-sm font-bold text-orange-500 uppercase tracking-wider">Training Programs</span>
          <h2 class="text-5xl md:text-6xl font-black mt-2 mb-6 gradient-text">
            World-Class Training
          </h2>
          <div class="w-24 h-1 bg-gradient-to-r from-orange-500 to-red-500 mx-auto mb-6"></div>
          <p class="text-xl text-gray-600 max-w-3xl mx-auto">
            Comprehensive diving education from recreational through advanced technical levels, 
            with specialized instruction across multiple internationally recognized agencies.
          </p>
        </div>
        
        <!-- Program Filter Tabs -->
        <div class="flex flex-wrap justify-center gap-4 mb-12 appear-on-scroll">
          <button v-for="filter in programFilters" :key="filter.id"
                  @click="activeFilter = filter.id"
                  class="px-6 py-3 rounded-full font-bold transition-all duration-300"
                  :class="activeFilter === filter.id 
                      ? 'bg-gradient-to-r from-blue-600 to-cyan-600 text-white shadow-lg scale-105' 
                      : 'bg-gray-100 text-gray-600 hover:bg-gray-200 hover:scale-105'">
            {{ filter.name }}
          </button>
        </div>
        
        <!-- Programs Grid -->
        <div class="grid lg:grid-cols-3 gap-8">
          <div v-for="(program, index) in filteredPrograms" :key="program.id"
               class="program-card rounded-2xl overflow-hidden shadow-lg appear-on-scroll"
               :style="`animation-delay: ${index * 0.1}s`">
            
            <!-- Card Header -->
            <div class="relative p-6 bg-gradient-to-br from-blue-800 to-cyan-700 text-white">
              <span v-if="program.popular" 
                    class="absolute -top-3 -right-3 bg-gradient-to-r from-orange-500 to-red-500 
                           px-4 py-2 rounded-full text-sm font-bold shadow-lg animate-pulse">
              </span>
              
              <!-- Agency Logo -->
              <div class="flex items-center justify-between mb-4">
                <div class="text-4xl floating-element">
                  {{ program.icon }}
                </div>
                <img v-if="program.logo" 
                     :src="program.logo" 
                     :alt="program.title + ' Logo'"
                     class="h-8 object-contain opacity-90 hover:opacity-100 transition-opacity"
                     @error="handleImageError">
              </div>
              
              <h3 class="text-2xl font-bold mb-1">{{ program.title }}</h3>
              <p class="text-blue-100">{{ program.subtitle }}</p>
            </div>
            
            <!-- Card Body -->
            <div class="p-6">
              <p class="text-gray-700 mb-6 leading-relaxed">{{ program.description }}</p>
              
              <!-- Features List -->
              <ul class="space-y-3 mb-6">
                <li v-for="(feature, fIndex) in program.features.slice(0, showAllFeatures[program.id] ? undefined : 4)" 
                    :key="fIndex"
                    class="flex items-start gap-3">
                  <div class="feature-icon w-6 h-6 rounded-full flex items-center justify-center text-white text-xs font-bold flex-shrink-0">
                    ✓
                  </div>
                  <span class="text-gray-700 text-sm">
                    <strong>{{ feature.title }}:</strong> {{ feature.text }}
                  </span>
                </li>
              </ul>
              
              <!-- Show More Button -->
              <button v-if="program.features.length > 4"
                      @click="toggleFeatures(program.id)"
                      class="w-full mb-4 py-2 text-blue-600 font-bold hover:text-blue-700 transition-colors">
                {{ showAllFeatures[program.id] ? '− Show Less' : `+ Show ${program.features.length - 4} More` }}
              </button>
              
              <!-- CTA Button -->
              <router-link :to="program.popular ? '/contact' : '/services'"
                           class="w-full py-4 rounded-xl font-bold transition-all duration-300 block text-center no-underline"
                           :class="program.popular 
                               ? 'cta-button text-white' 
                               : 'border-2 border-blue-600 text-blue-600 hover:bg-blue-600 hover:text-white'">
                <span class="flex items-center justify-center gap-2">
                  {{ program.ctaIcon }}
                  {{ program.ctaText }}
                </span>
              </router-link>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- =============================================
         CERTIFICATIONS SECTION
         ============================================= -->
    <section id="certifications" class="py-24 bg-gray-50">
      <div class="max-w-7xl mx-auto px-4">
        <!-- Section Header -->
        <div class="text-center mb-16 appear-on-scroll">
          <span class="text-sm font-bold text-orange-500 uppercase tracking-wider">Credentials</span>
          <h2 class="text-5xl md:text-6xl font-black mt-2 mb-6 gradient-text">
            Professional Certifications
          </h2>
          <div class="w-24 h-1 bg-gradient-to-r from-orange-500 to-red-500 mx-auto mb-6"></div>
          <p class="text-xl text-gray-600 max-w-3xl mx-auto">
            Instructor trainer and evaluator with the highest level certifications across 
            the diving industry's leading organizations.
          </p>
        </div>
        
        <!-- Certification Cards -->
        <div class="grid md:grid-cols-3 gap-8">
          <div v-for="cert in certifications" :key="cert.id"
               class="certification-badge bg-white rounded-2xl p-8 shadow-lg card-hover appear-on-scroll text-center">
            <img :src="cert.logo" :alt="cert.agency + ' Logo'" 
                 class="h-16 object-contain mx-auto mb-4 agency-logo">
            <h3 class="text-2xl font-bold mb-2 text-gray-900">{{ cert.agency }}</h3>
            <p class="text-lg font-semibold text-blue-600 mb-4">{{ cert.level }}</p>
            <h4 class="text-xl font-bold mb-4 text-gray-700">{{ cert.title }}</h4>
            <p class="text-gray-600 mb-6">{{ cert.description }}</p>
            <div class="space-y-2">
              <div v-for="auth in cert.authorities" :key="auth" 
                   class="flex items-center gap-2 text-gray-700 text-sm">
                <span class="text-orange-500 font-bold">✓</span>
                {{ auth }}
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- =============================================
         CONTACT SECTION
         ============================================= -->
    <section id="contact" class="py-24 hero-bg text-white">
      <div class="max-w-7xl mx-auto px-4">
        <!-- Section Header -->
        <div class="text-center mb-16 appear-on-scroll">
          <span class="text-sm font-bold text-orange-300 uppercase tracking-wider">Get Started</span>
          <h2 class="text-5xl md:text-6xl font-black mt-2 mb-6">Begin Your Journey</h2>
          <div class="w-24 h-1 bg-gradient-to-r from-orange-500 to-red-500 mx-auto mb-6"></div>
          <p class="text-xl opacity-90 max-w-3xl mx-auto">
            Ready to push your diving boundaries? Let's discuss your goals and create 
            a personalized training path.
          </p>
        </div>
        
        <div class="grid lg:grid-cols-2 gap-12">
          <!-- Contact Form -->
          <div class="contact-form rounded-3xl p-8 shadow-2xl text-gray-800 appear-on-scroll">
            <h3 class="text-3xl font-bold mb-8 gradient-text">Send Your Inquiry</h3>
            
            <!-- Success Message -->
            <div v-if="formSubmitted" class="mb-6 p-4 bg-green-100 border border-green-400 text-green-700 rounded-xl animate-scale-in">
              <p class="font-bold">✅ Thank you for your inquiry!</p>
              <p>We'll respond within 24 hours.</p>
            </div>
            
            <form @submit.prevent="submitForm" class="space-y-6">
              <!-- Name Input -->
              <div>
                <label class="block text-gray-700 font-bold mb-2">
                  Full Name <span class="text-red-500">*</span>
                </label>
                <div class="relative">
                  <input type="text" v-model="form.name" required 
                         class="form-input w-full px-4 py-3 pl-12 rounded-xl"
                         placeholder="Enter your full name">
                  <span class="absolute left-4 top-3.5 text-gray-400">👤</span>
                </div>
              </div>
              
              <!-- Email Input -->
              <div>
                <label class="block text-gray-700 font-bold mb-2">
                  Email Address <span class="text-red-500">*</span>
                </label>
                <div class="relative">
                  <input type="email" v-model="form.email" required 
                         class="form-input w-full px-4 py-3 pl-12 rounded-xl"
                         placeholder="your.email@example.com">
                  <span class="absolute left-4 top-3.5 text-gray-400">📧</span>
                </div>
              </div>
              
              <!-- Interest Selection -->
              <div>
                <label class="block text-gray-700 font-bold mb-2">Training Interest</label>
                <div class="grid grid-cols-2 gap-3">
                  <button v-for="interest in interests" :key="interest.value"
                          type="button"
                          @click="form.interest = interest.value"
                          class="p-3 border-2 rounded-xl transition-all duration-300 text-sm font-semibold"
                          :class="form.interest === interest.value 
                              ? 'border-blue-500 bg-blue-50 text-blue-700 shadow-lg scale-105' 
                              : 'border-gray-200 hover:border-gray-300 hover:shadow-md'">
                    <span class="block text-2xl mb-1">{{ interest.icon }}</span>
                    {{ interest.label }}
                  </button>
                </div>
              </div>
              
              <!-- Message Textarea -->
              <div>
                <label class="block text-gray-700 font-bold mb-2">
                  Tell Me About Your Goals <span class="text-red-500">*</span>
                </label>
                <textarea v-model="form.message" required rows="5"
                          class="form-input w-full px-4 py-3 rounded-xl resize-none"
                          placeholder="Share your diving experience, current certification level, training goals..."></textarea>
              </div>
              
              <!-- Submit Button -->
              <button type="submit" :disabled="isSubmitting"
                      class="cta-button w-full py-4 rounded-xl font-bold text-white disabled:opacity-50">
                <span v-if="!isSubmitting" class="flex items-center justify-center gap-2">
                  📨 Send Inquiry
                </span>
                <span v-else class="flex items-center justify-center gap-2">
                  <svg class="animate-spin h-5 w-5" viewBox="0 0 24 24">
                    <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4" fill="none"></circle>
                    <path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
                  </svg>
                  Sending...
                </span>
              </button>
            </form>
          </div>
          
          <!-- Contact Information -->
          <div class="space-y-6 appear-on-scroll">
            <div v-for="(info, index) in contactInfo" :key="info.title"
                 class="glass-effect rounded-2xl p-6 card-hover"
                 :style="`animation-delay: ${index * 0.1}s`">
              <div class="flex items-start gap-4">
                <div class="feature-icon w-14 h-14 rounded-2xl flex items-center justify-center text-2xl flex-shrink-0">
                  {{ info.icon }}
                </div>
                <div class="flex-1">
                  <h4 class="text-xl font-bold mb-2">{{ info.title }}</h4>
                  <a v-if="info.link" :href="info.link" target="_blank"
                     class="text-white/90 hover:text-orange-300 transition-colors">
                    {{ info.value }}
                  </a>
                  <p v-else class="text-white/90">{{ info.value }}</p>
                  <p class="text-sm text-white/60 mt-1">{{ info.subtitle }}</p>
                </div>
              </div>
            </div>
            
            <!-- Quick Chat Widget -->
            <div class="bg-gradient-to-r from-orange-500 to-red-500 rounded-2xl p-6 text-white shadow-2xl card-hover">
              <h4 class="text-xl font-bold mb-3">💬 Quick Response</h4>
              <p class="mb-4">Available for immediate questions via WhatsApp</p>
              <a href="https://wa.me/201234567890" target="_blank"
                 class="inline-flex items-center gap-2 bg-white text-orange-600 px-6 py-3 rounded-xl 
                        font-bold hover:scale-105 transition-transform">
                Start Chat Now
                <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                  <path d="M.057 24l1.687-6.163c-1.041-1.804-1.588-3.849-1.587-5.946.003-6.556 5.338-11.891 11.893-11.891 3.181.001 6.167 1.24 8.413 3.488 2.245 2.248 3.481 5.236 3.48 8.414-.003 6.557-5.338 11.892-11.893 11.892-1.99-.001-3.951-.5-5.688-1.448l-6.305 1.654zm6.597-3.807c1.676.995 3.276 1.591 5.392 1.592 5.448 0 9.886-4.434 9.889-9.885.002-5.462-4.415-9.89-9.881-9.892-5.452 0-9.887 4.434-9.889 9.884-.001 2.225.651 3.891 1.746 5.634l-.999 3.648 3.742-.981zm11.387-5.464c-.074-.124-.272-.198-.57-.347-.297-.149-1.758-.868-2.031-.967-.272-.099-.47-.149-.669.149-.198.297-.768.967-.941 1.165-.173.198-.347.223-.644.074-.297-.149-1.255-.462-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.297-.347.446-.521.151-.172.2-.296.3-.495.099-.198.05-.372-.025-.521-.075-.148-.669-1.611-.916-2.206-.242-.579-.487-.501-.669-.51l-.57-.01c-.198 0-.52.074-.792.372s-1.04 1.016-1.04 2.479 1.065 2.876 1.213 3.074c.149.198 2.095 3.2 5.076 4.487.709.306 1.263.489 1.694.626.712.226 1.36.194 1.872.118.571-.085 1.758-.719 2.006-1.413.248-.695.248-1.29.173-1.414z"/>
                </svg>
              </a>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- =============================================
         FLOATING ACTION BUTTON
         ============================================= -->
    <div class="fixed bottom-8 right-8 z-50">
      <button @click="showQuickContact = !showQuickContact"
              class="w-16 h-16 bg-gradient-to-r from-orange-500 to-red-500 rounded-full shadow-2xl
                     flex items-center justify-center text-white text-2xl animate-pulse-ring">
        💬
      </button>
      
      <!-- Quick Contact Menu -->
      <transition name="scale-fade">
        <div v-if="showQuickContact" 
             class="absolute bottom-20 right-0 bg-white rounded-2xl shadow-2xl p-4 w-64">
          <h4 class="font-bold text-gray-900 mb-3">Quick Contact</h4>
          <div class="space-y-2">
            <a v-for="contact in quickContacts" :key="contact.name"
               :href="contact.link" target="_blank"
               class="flex items-center gap-3 p-3 hover:bg-gray-100 rounded-xl transition-colors">
              <span class="text-xl" :class="contact.color">{{ contact.icon }}</span>
              <span class="text-gray-700">{{ contact.name }}</span>
            </a>
          </div>
        </div>
      </transition>
    </div>
  </div>
</template>

<!-- =============================================
     SCRIPT SECTION
     ============================================= -->
<script>
export default {
  name: 'Home',
  data() {
    return {
      // ===============================
      // STATE VARIABLES
      // ===============================
      scrollProgress: 0,
      showQuickContact: false,
      activeFilter: 'all',
      showAllFeatures: {},
      formSubmitted: false,
      isSubmitting: false,
      
      // ===============================
      // ANIMATED COUNTERS
      // ===============================
      animatedCounters: {
        divers: 0,
        professionals: 0,
        years: 0
      },
      
      // ===============================
      // CONTACT FORM DATA
      // ===============================
      form: {
        name: '',
        email: '',
        interest: '',
        message: ''
      },
      
      // ===============================
      // SOCIAL MEDIA LINKS
      // ===============================
      enhancedSocials: [
        { 
          name: 'YouTube', 
          icon: '▶', 
          url: 'https://youtube.com/@moumennabata', 
          bgClass: 'bg-red-600 hover:bg-red-700' 
        },
        { 
          name: 'Instagram', 
          icon: '📷', 
          url: 'https://instagram.com/moumennabata', 
          bgClass: 'bg-gradient-to-br from-purple-600 to-pink-500 hover:from-purple-700 hover:to-pink-600' 
        },
        { 
          name: 'Facebook', 
          icon: '📘', 
          url: 'https://facebook.com/moumennabata', 
          bgClass: 'bg-blue-600 hover:bg-blue-700' 
        },
        { 
          name: 'WhatsApp', 
          icon: '💬', 
          url: 'https://wa.me/201224369878', 
          bgClass: 'bg-green-500 hover:bg-green-600' 
        }
      ],
      
      // ===============================
      // DIVING AGENCY LOGOS
      // ===============================
      agencies: [
        { 
          name: 'SDI', 
          logo: 'https://portal.tdisdi.com/images/logos/sdi-combo-logo.png' 
        },
        { 
          name: 'TDI', 
          logo: 'https://portal.tdisdi.com/images/logos/tdi-combo-logo.png' 
        },
        { 
          name: 'ERDI', 
          logo: 'https://portal.tdisdi.com/images/logos/erdi-combo-logo.png' 
        },
        { 
          name: 'SSI', 
          logo: 'https://my.divessi.com/assets/corporate/ssi-logo.png' 
        }
      ],
      
      // ===============================
      // CAREER TIMELINE
      // ===============================
      timeline: [
        { year: '2000', title: 'Freediving Journey Begins', description: 'Started my underwater adventure with freediving' },
        { year: '2006', title: 'PADI Instructor', description: 'Became certified PADI instructor, teaching worldwide' },
        { year: '2015', title: 'Technical Evolution', description: 'Advanced to TDI/SDI technical instructor trainer' },
        { year: '2020', title: 'Freedom Divers Safaga', description: 'Founded premier Red Sea training center' },
        { year: '2024', title: 'Elite Instructor Trainer', description: 'SDI / TDI evaluator and course director' }
      ],
      
      // ===============================
      // SKILLS & EXPERTISE
      // ===============================
      skills: [
        { name: 'Languages', value: 'EN • DE • AR', icon: '🌍' },
        { name: 'Agencies', value: 'SDI • TDI • SSI', icon: '🏆' },
        { name: 'Location', value: 'Red Sea, Egypt', icon: '📍' },
        { name: 'Experience', value: '24+ Years', icon: '⏱' }
      ],
      
      // ===============================
      // PROGRAM FILTERS
      // ===============================
      programFilters: [
        { id: 'all', name: 'All Programs' },
        { id: 'professional', name: 'Professional' },
        { id: 'technical', name: 'Technical' },
        { id: 'specialty', name: 'Specialty' }
      ],
      
      // ===============================
      // TRAINING PROGRAMS
      // ===============================
      programs: [
        {
          id: 'sdi-idc',
          category: 'professional',
          popular: true,
          logo: 'https://portal.tdisdi.com/images/logos/sdi-combo-logo.png',
          title: 'SDI Instructor Development',
          subtitle: 'Complete Professional Package',
          description: 'Everything you need to launch your diving career at the highest level.',
          features: [
            { title: '5 Specialty Instructors', text: 'Computer Nitrox, Deep, Navigation, Night, Boat' },
            { title: 'FRTI Certifications', text: 'First Aid, CPR, AED, O₂ Administration' },
            { title: 'Career Ready', text: 'Start teaching immediately after certification' },
            { title: 'Business Training', text: 'Marketing and center management skills' },
            { title: 'Insurance Included', text: 'Professional liability coverage' },
            { title: 'Job Placement', text: 'Network connections worldwide' }
          ],
          ctaIcon: '🚀',
          ctaText: 'Start Journey'
        },
        {
          id: 'tdi-tech',
          category: 'technical',
          logo: 'https://portal.tdisdi.com/images/logos/tdi-combo-logo.png',
          title: 'TDI Technical Diving',
          subtitle: 'Advanced Technical Training',
          description: 'Complete technical diving progression from foundation through trimix.',
          features: [
            { title: 'Foundation', text: 'Intro to Tech, Nitrox, Advanced Nitrox' },
            { title: 'Decompression', text: 'Deco Procedures, Helitrox, Extended Range' },
            { title: 'Advanced', text: 'Trimix Diver, Advanced Trimix (100m+)' },
            { title: 'Rebreather', text: 'CCR Air Diluent & Helitrox Decompression' },
            { title: 'Cave Diving', text: 'Cavern, Intro to Cave, Full Cave' },
            { title: 'Wreck Penetration', text: 'Advanced wreck penetration techniques' }
          ],
          ctaIcon: '⚙️',
          ctaText: 'Explore Technical'
        },
        {
          id: 'tdi-instructor',
          category: 'professional',
          logo: 'https://portal.tdisdi.com/images/logos/tdi-combo-logo.png',
          title: 'TDI Instructor Training',
          subtitle: 'Technical Instruction Excellence',
          description: 'Professional technical diving instructor training program.',
          features: [
            { title: 'Foundation Level', text: 'Intro to Tech & Nitrox Instructor' },
            { title: 'Decompression Level', text: 'Deco Procedures & Advanced Nitrox' },
            { title: 'Advanced Level', text: 'Trimix & Advanced Trimix Instructor' },
            { title: 'Rebreather Level', text: 'CCR Instructor ratings available' }
          ],
          ctaIcon: '👨‍🏫',
          ctaText: 'Become Instructor'
        },
        {
          id: 'frti',
          category: 'professional',
          logo: 'https://portal.tdisdi.com/images/logos/erdi-combo-logo.png',
          title: 'FRTI Instructor Courses',
          subtitle: 'ILCOR & OSHA Compliant',
          description: 'Emergency care instructor certifications.',
          features: [
            { title: 'Adult & Child Care', text: 'Complete instructor certification' },
            { title: 'Oxygen Admin', text: 'Emergency O₂ instructor training' },
            { title: 'Bloodborne Pathogens', text: 'Safety protocols instructor' },
            { title: 'Compliance', text: 'ILCOR and OSHA standards met' }
          ],
          ctaIcon: '🏥',
          ctaText: 'Learn More'
        },
        {
          id: 'sdi-specialty',
          category: 'specialty',
          logo: 'https://portal.tdisdi.com/images/logos/sdi-combo-logo.png',
          title: 'SDI Specialty Courses',
          subtitle: 'Expand Your Skills',
          description: 'Comprehensive specialty training to enhance your diving.',
          features: [
            { title: 'Deep Diver', text: 'Safe deep diving techniques' },
            { title: 'Night/Limited Vis', text: 'Low visibility navigation' },
            { title: 'Navigation', text: 'Master underwater navigation' },
            { title: 'Computer Nitrox', text: 'Extended bottom times' },
            { title: 'Advanced Buoyancy', text: 'Perfect positioning control' },
            { title: 'Dry Suit', text: 'Master dry suit techniques' },
            { title: 'Solo Diver', text: 'Independent diving skills' },
            { title: 'Wreck Diver', text: 'Non-penetration exploration' },
            { title: 'Drift Diver', text: 'Current diving mastery' }
          ],
          ctaIcon: '🎯',
          ctaText: 'Choose Specialty'
        },
        {
          id: 'ssi-xr',
          category: 'technical',
          logo: 'https://my.divessi.com/assets/corporate/ssi-logo.png',
          title: 'SSI XR Programs',
          subtitle: 'Extended Range Excellence',
          description: 'Complete SSI Extended Range progression.',
          features: [
            { title: 'Foundations', text: 'XR Foundations & Nitrox' },
            { title: 'Extended Range', text: '45M to 60M technical diving' },
            { title: 'Advanced Gas', text: 'Hypoxic Trimix for depth' },
            { title: 'Specialties', text: 'XR Sidemount & Wreck' },
            { title: 'CCR Complete', text: 'Full rebreather program' }
          ],
          ctaIcon: '🌊',
          ctaText: 'Explore XR'
        }
      ],
      
      // ===============================
      // PROFESSIONAL CERTIFICATIONS
      // ===============================
      certifications: [
        {
          id: 'sdi',
          logo: 'https://portal.tdisdi.com/images/logos/sdi-combo-logo.png',
          agency: '',
          level: 'Course Director Trainer',
          title: 'Instructor Trainer & Evaluator',
          description: 'Authorized to conduct complete IDC programs and evaluate new instructors.',
          authorities: [
            'Conduct IDC programs',
            'Evaluate instructor candidates',
            'Issue instructor certifications',
            'Train specialty instructors'
          ]
        },
        {
          id: 'tdi',
          logo: 'https://portal.tdisdi.com/images/logos/tdi-combo-logo.png',
          agency: '',
          level: 'Instructor Trainer',
          title: 'Technical Evaluator',
          description: 'Highest level TDI certification for technical diving instruction.',
          authorities: [
            'Train technical instructors',
            'Evaluate technical programs',
            'Advanced trimix instruction',
            'CCR instructor training'
          ]
        },
        {
          id: 'ssi',
          logo: 'https://my.divessi.com/assets/corporate/ssi-logo.png',
          agency: '',
          level: 'XR Instructor',
          title: 'Extended Range Specialist',
          description: 'SSI XR Instructor for extended range and technical programs.',
          authorities: [
            'Extended range training',
            'Technical specialties',
            'XR program development',
            'Advanced gas procedures'
          ]
        }
      ],
      
      // ===============================
      // TRAINING INTERESTS
      // ===============================
      interests: [
        { value: 'sdi-instructor', label: 'SDI IDC', icon: '🎓' },
        { value: 'tdi-technical', label: 'TDI Tech', icon: '⚙️' },
        { value: 'recreational', label: 'Recreational', icon: '🐠' },
        { value: 'specialty', label: 'Specialty', icon: '🎯' },
        { value: 'rebreather', label: 'Rebreather', icon: '🔄' },
        { value: 'professional', label: 'Professional', icon: '👨‍🏫' }
      ],
      
      // ===============================
      // CONTACT INFORMATION
      // ===============================
      contactInfo: [
        {
          icon: '📧',
          title: 'Email',
          value: 'moumen@moumen-nabata.com',
          subtitle: 'Professional inquiries & bookings',
          link: 'mailto:moumen@moumen-nabata.com'
        },
        {
          icon: '📱',
          title: 'WhatsApp',
          value: '+20 123-456-7890',
          subtitle: 'Quick questions & support',
          link: 'https://wa.me/201234567890'
        },
        {
          icon: '📍',
          title: 'Training Location',
          value: 'Freedom Divers Safaga, Red Sea, Egypt',
          subtitle: 'World-class training facility'
        },
        {
          icon: '🕐',
          title: 'Response Time',
          value: 'Within 24 hours',
          subtitle: 'Personal response guaranteed'
        }
      ],
      
      // ===============================
      // QUICK CONTACT OPTIONS
      // ===============================
      quickContacts: [
        { name: 'WhatsApp', icon: '💬', link: 'https://wa.me/201234567890', color: 'text-green-500' },
        { name: 'Email', icon: '📧', link: 'mailto:moumen@moumen-nabata.com', color: 'text-blue-500' },
        { name: 'Call', icon: '📞', link: 'tel:+201234567890', color: 'text-orange-500' }
      ]
    };
  },
  
  // ===============================
  // COMPUTED PROPERTIES
  // ===============================
  computed: {
    filteredPrograms() {
      if (this.activeFilter === 'all') {
        return this.programs;
      }
      return this.programs.filter(p => p.category === this.activeFilter);
    }
  },
  
  // ===============================
  // LIFECYCLE HOOKS
  // ===============================
  mounted() {
    // Scroll event listeners
    window.addEventListener('scroll', this.handleScroll);
    
    // Intersection Observer for animations
    this.setupScrollAnimations();
    
    // Animate counters
    this.animateCounters();
    
    // Load hero background image
    this.loadHeroImage();
  },
  
  beforeUnmount() {
    window.removeEventListener('scroll', this.handleScroll);
  },
  
  // ===============================
  // METHODS
  // ===============================
  methods: {
    // ===============================
    // SCROLL HANDLING
    // ===============================
    handleScroll() {
      const scrollHeight = document.documentElement.scrollHeight - window.innerHeight;
      const scrolled = (window.scrollY / scrollHeight) * 100;
      this.scrollProgress = Math.min(scrolled, 100);
    },
    
    setupScrollAnimations() {
      const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
          if (entry.isIntersecting) {
            entry.target.classList.add('visible');
          }
        });
      }, { threshold: 0.1 });
      
      document.querySelectorAll('.appear-on-scroll').forEach(el => {
        observer.observe(el);
      });
    },
    
    scrollToSection(sectionId) {
      const element = document.getElementById(sectionId);
      if (element) {
        element.scrollIntoView({ behavior: 'smooth' });
      }
    },
    
    // ===============================
    // IMAGE LOADING
    // ===============================
    loadHeroImage() {
      const img = new Image();
      img.crossOrigin = 'anonymous';
      
      img.onload = () => {
        console.log('Hero background image loaded successfully');
        document.body.classList.add('hero-section-loaded');
      };
      
      img.onerror = () => {
        console.warn('Hero background image failed to load, using fallback');
      };
      
      img.src = 'https://shearwater.com/cdn/shop/files/scrubber_5x4_v2.jpg?v=1753213817&width=900';
    },
    
    // ===============================
    // ANIMATION METHODS
    // ===============================
    animateCounters() {
      const targets = { divers: 2500, professionals: 150, years: 24 };
      
      Object.keys(targets).forEach(key => {
        const target = targets[key];
        const increment = Math.ceil(target / 100);
        const interval = setInterval(() => {
          if (this.animatedCounters[key] < target) {
            this.animatedCounters[key] = Math.min(this.animatedCounters[key] + increment, target);
          } else {
            clearInterval(interval);
          }
        }, 50);
      });
    },
    
    // ===============================
    // PROGRAM INTERACTION
    // ===============================
    toggleFeatures(programId) {
      this.showAllFeatures = {
        ...this.showAllFeatures,
        [programId]: !this.showAllFeatures[programId]
      };
    },
    
    selectProgram(program) {
      this.form.interest = program.id;
      this.scrollToSection('contact');
    },
    
    // ===============================
    // FORM HANDLING
    // ===============================
    async submitForm() {
      this.isSubmitting = true;
      
      // Simulate API call
      await new Promise(resolve => setTimeout(resolve, 2000));
      
      console.log('Form submitted:', this.form);
      
      this.formSubmitted = true;
      this.isSubmitting = false;
      
      // Reset form
      this.form = {
        name: '',
        email: '',
        interest: '',
        message: ''
      };
      
      // Hide success message after 5 seconds
      setTimeout(() => {
        this.formSubmitted = false;
      }, 5000);
    },
    
    // ===============================
    // UTILITY METHODS
    // ===============================
    handleContactClick() {
      this.scrollToSection('contact');
    },
    
    handleImageError(event) {
      // Fallback for broken images
      event.target.style.display = 'none';
      console.log('Image failed to load:', event.target.src);
    }
  }
};
</script>

<!-- =============================================
     STYLES SECTION
     ============================================= -->
<style scoped>
/* ===============================
   HERO BACKGROUND WITH BLUE OCEAN THEME
   =============================== */
.hero-bg {
  position: relative;
  background-image: 
    linear-gradient(135deg, rgba(0, 119, 190, 0.4) 0%, rgba(0, 150, 199, 0.3) 25%, rgba(0, 174, 239, 0.2) 50%, rgba(0, 119, 190, 0.3) 75%, rgba(15, 76, 129, 0.4) 100%),
    url('https://shearwater.com/cdn/shop/files/scrubber_5x4_v2.jpg?v=1753213817&width=900');
  background-size: 400% 400%, cover;
  background-position: center center, center center;
  background-repeat: no-repeat, no-repeat;
  background-attachment: fixed;
  animation: gradientShift 20s ease infinite;
}

@media (max-width: 768px) {
  .hero-bg {
    background-attachment: scroll;
  }
}

.hero-bg::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-image: url('https://shearwater.com/cdn/shop/files/scrubber_5x4_v2.jpg?v=1753213817&width=900');
  background-size: cover;
  background-position: center center;
  background-repeat: no-repeat;
  z-index: -2;
  opacity: 0;
  transition: opacity 0.5s ease-in-out;
}

:deep(.hero-section-loaded) .hero-bg::before {
  opacity: 1;
}

.hero-bg::after {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  /* Beautiful ocean blues and teals - perfect for diving theme */
  background: linear-gradient(135deg, rgba(0, 119, 190, 0.4) 0%, rgba(0, 150, 199, 0.3) 25%, rgba(0, 174, 239, 0.2) 50%, rgba(0, 119, 190, 0.3) 75%, rgba(15, 76, 129, 0.4) 100%);
  background-size: 400% 400%;
  animation: gradientShift 20s ease infinite;
  z-index: -1;
}

@keyframes gradientShift {
  0% { background-position: 0% 50%; }
  50% { background-position: 100% 50%; }
  100% { background-position: 0% 50%; }
}

/* ===============================
   ENHANCED TEXT READABILITY
   =============================== */
.text-overlay-enhancement {
  text-shadow: 0 2px 4px rgba(0, 0, 0, 0.6), 0 4px 8px rgba(0, 0, 0, 0.4), 0 8px 16px rgba(0, 0, 0, 0.2);
}

.hero-title {
  font-size: clamp(3rem, 8vw, 6rem);
  line-height: 0.9;
  text-shadow: 0 4px 30px rgba(0, 0, 0, 0.8), 0 2px 10px rgba(0, 0, 0, 0.6);
  animation: titleReveal 1.2s cubic-bezier(0.25, 0.46, 0.45, 0.94) forwards;
  opacity: 0;
  transform: translateY(50px);
}

@keyframes titleReveal {
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

.gradient-text {
  background: linear-gradient(135deg, #fbbf24, #f59e0b, #d97706, #92400e);
  background-size: 200% 200%;
  -webkit-background-clip: text;
  background-clip: text;
  -webkit-text-fill-color: transparent;
  animation: textShimmer 4s ease-in-out infinite;
  filter: drop-shadow(0 2px 4px rgba(0, 0, 0, 0.6));
}

@keyframes textShimmer {
  0%, 100% { background-position: 0% 50%; }
  50% { background-position: 100% 50%; }
}

/* ===============================
   ENHANCED GLASS EFFECTS
   =============================== */
.glass-effect {
  background: rgba(0, 20, 40, 0.3);
  backdrop-filter: blur(20px);
  border: 1px solid rgba(255, 255, 255, 0.25);
  transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
  box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
}

.glass-effect:hover {
  background: rgba(0, 30, 60, 0.4);
  border-color: rgba(255, 255, 255, 0.4);
  transform: translateY(-8px);
  box-shadow: 0 25px 50px rgba(0, 0, 0, 0.4);
}

/* ===============================
   FLOATING ELEMENTS
   =============================== */
.floating-element {
  background: rgba(255, 255, 255, 0.08) !important;
  border: 1px solid rgba(255, 255, 255, 0.1);
  animation: float 8s ease-in-out infinite;
}

@keyframes float {
  0%, 100% { transform: translateY(0px) rotate(0deg); }
  33% { transform: translateY(-30px) rotate(120deg); }
  66% { transform: translateY(-60px) rotate(240deg); }
}

/* ===============================
   ANIMATIONS
   =============================== */
.animate-pulse-ring {
  animation: pulseRing 3s cubic-bezier(0.4, 0, 0.6, 1) infinite;
}

@keyframes pulseRing {
  0% {
    box-shadow: 0 0 0 0 rgba(255, 255, 255, 0.4);
  }
  70% {
    box-shadow: 0 0 0 20px rgba(255, 255, 255, 0);
  }
  100% {
    box-shadow: 0 0 0 0 rgba(255, 255, 255, 0);
  }
}

.animate-fade-in {
  animation: fadeInUp 1s ease-out 0.3s forwards;
  opacity: 0;
  transform: translateY(30px);
}

@keyframes fadeInUp {
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

.stats-counter {
  font-size: 2.5rem;
  font-weight: 900;
}

.card-hover {
  transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
  cursor: pointer;
}

.card-hover:hover {
  transform: translateY(-12px) scale(1.05);
}

/* ===============================
   BUTTONS
   =============================== */
.cta-button {
  background: linear-gradient(135deg, #ea580c, #dc2626, #b91c1c);
  background-size: 200% 200%;
  transition: all 0.4s ease;
  position: relative;
  overflow: hidden;
  text-decoration: none;
  color: white;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  border: none;
  cursor: pointer;
}

.cta-button::before {
  content: '';
  position: absolute;
  top: 0;
  left: -100%;
  width: 100%;
  height: 100%;
  background: linear-gradient(90deg, transparent, rgba(255,255,255,0.3), transparent);
  transition: left 0.6s;
}

.cta-button:hover {
  background-position: 100% 0;
  transform: translateY(-4px);
  box-shadow: 0 15px 40px rgba(0, 0, 0, 0.3);
}

.cta-button:hover::before {
  left: 100%;
}

/* ===============================
   SOCIAL ICONS
   =============================== */
.social-icon {
  transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
  position: relative;
  overflow: hidden;
  text-decoration: none;
  color: white;
}

.social-icon::before {
  content: '';
  position: absolute;
  top: 50%;
  left: 50%;
  width: 0;
  height: 0;
  background: rgba(255, 255, 255, 0.2);
  border-radius: 50%;
  transform: translate(-50%, -50%);
  transition: all 0.4s ease;
}

.social-icon:hover {
  transform: translateY(-6px) scale(1.15);
}

.social-icon:hover::before {
  width: 100%;
  height: 100%;
}

/* ===============================
   AGENCY LOGOS
   =============================== */
.agency-logo {
  transition: all 0.4s ease;
  filter: brightness(0.8) contrast(1.2);
}

.agency-logo:hover {
  filter: brightness(1.1) contrast(1.3);
  transform: scale(1.1);
}

/* ===============================
   SCROLL INDICATOR
   =============================== */
.scroll-indicator {
  animation: bounce 2s infinite;
  cursor: pointer;
}

@keyframes bounce {
  0%, 20%, 50%, 80%, 100% {
    transform: translateY(0);
  }
  40% {
    transform: translateY(-10px);
  }
  60% {
    transform: translateY(-5px);
  }
}

/* ===============================
   GENERAL STYLES
   =============================== */
.feature-icon {
  background: linear-gradient(135deg, #f59e0b, #f97316);
  transition: all 0.3s ease;
}

.feature-icon:hover {
  background: linear-gradient(135deg, #f97316, #dc2626);
  transform: rotate(12deg) scale(1.1);
}

.contact-form {
  background: linear-gradient(145deg, #ffffff 0%, #f8fafc 100%);
}

.form-input {
  transition: all 0.3s ease;
  border: 2px solid #e2e8f0;
}

.form-input:focus {
  border-color: #3b82f6;
  box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
  transform: translateY(-2px);
  outline: none;
}

/* ===============================
   SCROLL ANIMATIONS
   =============================== */
.appear-on-scroll {
  opacity: 0;
  transform: translateY(50px);
  transition: all 0.8s ease;
}

.appear-on-scroll.visible {
  opacity: 1;
  transform: translateY(0);
}

/* ===============================
   PROGRAM CARDS
   =============================== */
.program-card {
  background: linear-gradient(145deg, #ffffff 0%, #f8fafc 100%);
  border: 1px solid #e2e8f0;
  transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
}

.program-card:hover {
  border-color: #3b82f6;
  box-shadow: 0 20px 40px -8px rgba(59, 130, 246, 0.2);
  transform: translateY(-5px);
}

.certification-badge {
  position: relative;
  overflow: hidden;
}

.certification-badge::before {
  content: '';
  position: absolute;
  top: 0;
  left: -100%;
  width: 100%;
  height: 100%;
  background: linear-gradient(90deg, transparent, rgba(255,255,255,0.3), transparent);
  transition: left 0.5s;
}

.certification-badge:hover::before {
  left: 100%;
}

/* ===============================
   TRANSITIONS
   =============================== */
.scale-fade-enter-active {
  transition: all 0.3s ease-out;
}

.scale-fade-leave-active {
  transition: all 0.2s ease-in;
}

.scale-fade-enter-from {
  transform: scale(0.9);
  opacity: 0;
}

.scale-fade-leave-to {
  transform: scale(0.9);
  opacity: 0;
}

/* ===============================
   RESPONSIVE DESIGN
   =============================== */
@media (max-width: 768px) {
  .stats-counter { 
    font-size: 2rem; 
  }
  
  .hero-title { 
    font-size: clamp(2rem, 8vw, 3rem); 
  }
  
  .floating-element {
    animation: none;
  }
  
  .card-hover:hover {
    transform: none;
  }
}

@media (max-width: 640px) {
  .glass-effect {
    backdrop-filter: blur(5px);
  }
}

/* ===============================
   ACCESSIBILITY
   =============================== */
@media (prefers-reduced-motion: reduce) {
  * {
    animation-duration: 0.01ms !important;
    animation-iteration-count: 1 !important;
    transition-duration: 0.01ms !important;
  }
  
  .floating-element,
  .animate-pulse-ring,
  .scroll-indicator {
    animation: none;
  }
}

/* ===============================
   UTILITY CLASSES
   =============================== */
.animate-scale-in {
  animation: scaleIn 0.5s ease-out;
}

@keyframes scaleIn {
  from { opacity: 0; transform: scale(0.9); }
  to { opacity: 1; transform: scale(1); }
}

.no-underline {
  text-decoration: none;
}

/* ===============================
   FOCUS STATES
   =============================== */
.focus-visible:focus {
  outline: 2px solid #3b82f6;
  outline-offset: 2px;
}
</style>
.text-overlay-enhancement {