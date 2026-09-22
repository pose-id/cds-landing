<script setup>
import { ref, onMounted, onBeforeUnmount } from 'vue'

const open = ref(false)
const scrolled = ref(false)

const links = [
  { href: '#services', label: 'Layanan' },
  { href: '#industries', label: 'Industri' },
  { href: '#technology', label: 'Teknologi' },
  { href: '#about', label: 'Tentang' },
  { href: '#contact', label: 'Kontak' },
]

function onScroll() {
  scrolled.value = window.scrollY > 12
}

function close() {
  open.value = false
}

onMounted(() => {
  window.addEventListener('scroll', onScroll, { passive: true })
  onScroll()
})

onBeforeUnmount(() => {
  window.removeEventListener('scroll', onScroll)
})
</script>

<template>
  <header class="nav" :class="{ 'is-scrolled': scrolled, 'is-open': open }">
    <div class="container nav-inner">
      <a href="#top" class="brand" aria-label="CDS — Catur Daya Sukses">
        <span class="brand-mark" aria-hidden="true">
          <svg viewBox="0 0 32 32" width="32" height="32">
            <defs>
              <linearGradient id="navmark" x1="0" y1="0" x2="1" y2="1">
                <stop offset="0%" stop-color="#14A06B" />
                <stop offset="100%" stop-color="#0F3D2E" />
              </linearGradient>
            </defs>
            <rect width="32" height="32" rx="9" fill="url(#navmark)" />
            <path d="M16 5 L26 16 L16 27 L6 16 Z" fill="#FAF7F0" />
            <path d="M16 11 L21 16 L16 21 L11 16 Z" fill="#F5B642" />
          </svg>
        </span>
        <span class="brand-text">
          <span class="brand-name">CDS</span>
          <span class="brand-tag">Catur Daya Sukses</span>
        </span>
      </a>

      <nav class="nav-links" aria-label="Navigasi utama">
        <a v-for="l in links" :key="l.href" :href="l.href">{{ l.label }}</a>
      </nav>

      <a class="btn btn-amber nav-cta" href="#contact">Mitra Kami</a>

      <button
        class="hamburger"
        :aria-expanded="open"
        aria-controls="mobile-menu"
        aria-label="Buka menu"
        @click="open = !open"
      >
        <span :class="{ open: open }"></span>
        <span :class="{ open: open }"></span>
        <span :class="{ open: open }"></span>
      </button>
    </div>

    <div id="mobile-menu" class="mobile-menu" :class="{ open: open }">
      <a
        v-for="l in links"
        :key="l.href"
        :href="l.href"
        @click="close"
      >
        {{ l.label }}
      </a>
      <a class="btn btn-amber mobile-cta" href="#contact" @click="close">
        Mitra Kami
      </a>
    </div>
  </header>
</template>

<style scoped>
.nav {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  z-index: 50;
  padding: 18px 0;
  transition: background 0.25s var(--ease-out),
    border-color 0.25s var(--ease-out),
    box-shadow 0.25s var(--ease-out);
  border-bottom: 1px solid transparent;
}

.nav.is-scrolled {
  background: rgba(250, 247, 240, 0.78);
  backdrop-filter: saturate(140%) blur(14px);
  -webkit-backdrop-filter: saturate(140%) blur(14px);
  border-bottom-color: var(--color-line);
  box-shadow: 0 4px 24px rgba(7, 38, 25, 0.04);
}

.nav-inner {
  display: flex;
  align-items: center;
  gap: 24px;
}

.brand {
  display: inline-flex;
  align-items: center;
  gap: 12px;
}

.brand-mark {
  display: inline-flex;
  filter: drop-shadow(0 4px 12px rgba(15, 61, 46, 0.18));
}

.brand-text {
  display: flex;
  flex-direction: column;
  line-height: 1;
}

.brand-name {
  font-family: var(--font-display);
  font-size: 20px;
  font-weight: 700;
  letter-spacing: 0.02em;
  color: var(--color-ink);
}

.brand-tag {
  margin-top: 4px;
  font-size: 10px;
  font-weight: 500;
  letter-spacing: 0.18em;
  text-transform: uppercase;
  color: var(--color-muted);
}

.nav-links {
  display: flex;
  gap: 32px;
  margin-left: auto;
}

.nav-links a {
  font-size: 14px;
  font-weight: 500;
  color: var(--color-ink-soft);
  transition: color 0.18s var(--ease-out);
  position: relative;
}

.nav-links a:hover {
  color: var(--color-emerald-800);
}

.nav-cta {
  margin-left: 8px;
  padding: 10px 18px;
  font-size: 14px;
}

.hamburger {
  display: none;
  margin-left: auto;
  width: 40px;
  height: 40px;
  border: 1px solid var(--color-line-strong);
  border-radius: 12px;
  background: transparent;
  position: relative;
}

.hamburger span {
  position: absolute;
  left: 10px;
  right: 10px;
  height: 2px;
  background: var(--color-ink);
  border-radius: 2px;
  transition: transform 0.25s var(--ease-out), opacity 0.2s var(--ease-out);
}

.hamburger span:nth-child(1) {
  top: 13px;
}
.hamburger span:nth-child(2) {
  top: 19px;
}
.hamburger span:nth-child(3) {
  top: 25px;
}

.hamburger span.open:nth-child(1) {
  transform: translateY(6px) rotate(45deg);
}
.hamburger span.open:nth-child(2) {
  opacity: 0;
}
.hamburger span.open:nth-child(3) {
  transform: translateY(-6px) rotate(-45deg);
}

.mobile-menu {
  display: none;
  position: absolute;
  left: 0;
  right: 0;
  top: 100%;
  margin-top: 12px;
  padding: 16px 20px 20px;
  background: var(--color-bg);
  border: 1px solid var(--color-line);
  border-radius: var(--radius-lg);
  box-shadow: var(--shadow-lg);
  flex-direction: column;
  gap: 8px;
}

.mobile-menu a {
  padding: 12px 14px;
  border-radius: 12px;
  font-weight: 500;
  color: var(--color-ink);
}

.mobile-menu a:hover {
  background: rgba(15, 61, 46, 0.05);
}

.mobile-cta {
  margin-top: 8px;
  justify-content: center;
}

@media (max-width: 880px) {
  .nav-links,
  .nav-cta {
    display: none;
  }
  .hamburger {
    display: block;
  }
  .mobile-menu {
    display: flex;
    max-height: 0;
    opacity: 0;
    pointer-events: none;
    overflow: hidden;
    transition: max-height 0.3s var(--ease-out), opacity 0.2s var(--ease-out);
    margin-left: 20px;
    margin-right: 20px;
  }
  .mobile-menu.open {
    max-height: 520px;
    opacity: 1;
    pointer-events: auto;
  }
}
</style>
