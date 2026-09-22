<script setup>
import SiteNav from './components/SiteNav.vue'
import HeroSection from './components/HeroSection.vue'
import TrustStrip from './components/TrustStrip.vue'
import ServicesSection from './components/ServicesSection.vue'
import IndustriesSection from './components/IndustriesSection.vue'
import MonitoringSection from './components/MonitoringSection.vue'
import FieldOpsSection from './components/FieldOpsSection.vue'
import CtaBanner from './components/CtaBanner.vue'
import SiteFooter from './components/SiteFooter.vue'
</script>

<template>
  <SiteNav />
  <main>
    <HeroSection />
    <TrustStrip />
    <ServicesSection />
    <IndustriesSection />
    <MonitoringSection />
    <FieldOpsSection />
    <CtaBanner />
  </main>
  <SiteFooter />
</template>
