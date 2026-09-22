<script setup>
const layanan = [
  { href: '#services', label: 'Instalasi & Penarikan' },
  { href: '#services', label: 'Maintenance' },
  { href: '#services', label: 'Asset & Project' },
  { href: '#services', label: 'Quality Control' },
]

const industri = [
  { href: '#industries', label: 'Perbankan' },
  { href: '#industries', label: 'Otomotif' },
  { href: '#industries', label: 'Manufaktur' },
  { href: '#industries', label: 'Ritel' },
  { href: '#industries', label: 'F&B' },
]

const perusahaan = [
  { href: '#about', label: 'Tentang' },
  { href: '#contact', label: 'Karir' },
  { href: '#contact', label: 'Berita' },
  { href: '#contact', label: 'Kontak' },
]
</script>

<template>
  <footer class="footer">
    <div class="container">
      <div class="grid">
        <!-- Brand column -->
        <div class="brand">
          <a href="#top" class="brand-mark" aria-label="CDS — Catur Daya Sukses">
            <svg viewBox="0 0 32 32" width="36" height="36">
              <defs>
                <linearGradient id="footmark" x1="0" y1="0" x2="1" y2="1">
                  <stop offset="0%" stop-color="#14A06B" />
                  <stop offset="100%" stop-color="#0F3D2E" />
                </linearGradient>
              </defs>
              <rect width="32" height="32" rx="9" fill="url(#footmark)" />
              <path d="M16 5 L26 16 L16 27 L6 16 Z" fill="#FAF7F0" />
              <path d="M16 11 L21 16 L16 21 L11 16 Z" fill="#F5B642" />
            </svg>
            <div class="brand-text">
              <span class="brand-name">CDS</span>
              <span class="brand-tag">Catur Daya Sukses</span>
            </div>
          </a>

          <p class="brand-desc">
            Mitra operasional lapangan EDC & QRIS tepercaya untuk
            institusi finansial dan korporasi Indonesia sejak 2003.
          </p>

          <div class="social" aria-label="Media sosial">
            <a href="#contact" aria-label="LinkedIn" class="social-link">
              <svg viewBox="0 0 24 24" width="16" height="16" fill="currentColor">
                <path d="M4.98 3.5a2.5 2.5 0 1 1 0 5 2.5 2.5 0 0 1 0-5zM3 9h4v12H3zM10 9h3.8v1.7h.05c.53-1 1.83-2.05 3.77-2.05 4.03 0 4.78 2.65 4.78 6.1V21h-4v-5.4c0-1.3-.02-2.97-1.81-2.97-1.81 0-2.09 1.4-2.09 2.86V21h-4z" />
              </svg>
            </a>
            <a href="#contact" aria-label="Instagram" class="social-link">
              <svg viewBox="0 0 24 24" width="16" height="16" fill="none" stroke="currentColor" stroke-width="1.6">
                <rect x="3" y="3" width="18" height="18" rx="5" />
                <circle cx="12" cy="12" r="4" />
                <circle cx="17.5" cy="6.5" r="1" fill="currentColor" stroke="none" />
              </svg>
            </a>
            <a href="#contact" aria-label="WhatsApp" class="social-link">
              <svg viewBox="0 0 24 24" width="16" height="16" fill="currentColor">
                <path d="M20.5 3.5A11 11 0 0 0 3.6 17.4L2 22l4.7-1.5A11 11 0 1 0 20.5 3.5zm-8.5 18a9.4 9.4 0 0 1-4.8-1.3l-.3-.2-2.8.9.9-2.7-.2-.3A9.4 9.4 0 1 1 12 21.5zm5.2-6.7c-.3-.2-1.7-.9-2-1s-.5-.2-.7.2-.8 1-1 1.2-.4.2-.7 0a7.7 7.7 0 0 1-2.3-1.4 8.6 8.6 0 0 1-1.6-2c-.2-.3 0-.5.1-.6l.5-.6c.2-.2.2-.4.3-.6s0-.4 0-.6-.7-1.7-1-2.3-.5-.5-.7-.5h-.6a1.2 1.2 0 0 0-.9.4 3.6 3.6 0 0 0-1.1 2.7 6.2 6.2 0 0 0 1.3 3.3 14 14 0 0 0 5.4 4.7c.8.4 1.4.6 1.8.7a4.2 4.2 0 0 0 2 .1 3.4 3.4 0 0 0 2.2-1.5 2.7 2.7 0 0 0 .2-1.5c-.1-.1-.3-.2-.6-.4z" />
              </svg>
            </a>
            <a href="#contact" aria-label="Email" class="social-link">
              <svg viewBox="0 0 24 24" width="16" height="16" fill="none" stroke="currentColor" stroke-width="1.6">
                <rect x="3" y="5" width="18" height="14" rx="2" />
                <path d="M3 7l9 6 9-6" stroke-linecap="round" stroke-linejoin="round" />
              </svg>
            </a>
          </div>
        </div>

        <!-- Link columns -->
        <nav class="col" aria-label="Layanan">
          <h4 class="col-title">Layanan</h4>
          <ul>
            <li v-for="l in layanan" :key="l.label">
              <a :href="l.href">{{ l.label }}</a>
            </li>
          </ul>
        </nav>

        <nav class="col" aria-label="Industri">
          <h4 class="col-title">Industri</h4>
          <ul>
            <li v-for="i in industri" :key="i.label">
              <a :href="i.href">{{ i.label }}</a>
            </li>
          </ul>
        </nav>

        <nav class="col" aria-label="Perusahaan">
          <h4 class="col-title">Perusahaan</h4>
          <ul>
            <li v-for="p in perusahaan" :key="p.label">
              <a :href="p.href">{{ p.label }}</a>
            </li>
          </ul>
        </nav>
      </div>

      <div class="bottom">
        <div class="bottom-left">
          © 2026 PT Catur Daya Sukses. Didirikan 2003. Semua hak dilindungi.
        </div>
        <div class="bottom-right">
          <a href="#contact">Privasi</a>
          <span class="sep" aria-hidden="true">·</span>
          <a href="#contact">Syarat Layanan</a>
          <span class="sep" aria-hidden="true">·</span>
          <a href="#contact">SLA</a>
        </div>
      </div>
    </div>
  </footer>
</template>

<style scoped>
.footer {
  background: linear-gradient(180deg, var(--color-bg), var(--color-bg-alt));
  border-top: 1px solid var(--color-line);
  padding: 72px 0 28px;
  color: var(--color-ink-soft);
}

.grid {
  display: grid;
  grid-template-columns: 1.4fr 1fr 1fr 1fr;
  gap: 40px;
  padding-bottom: 48px;
  border-bottom: 1px solid var(--color-line);
}

/* ----- Brand column ----- */
.brand-mark {
  display: inline-flex;
  align-items: center;
  gap: 12px;
  margin-bottom: 16px;
}

.brand-text {
  display: flex;
  flex-direction: column;
  line-height: 1;
}

.brand-name {
  font-family: var(--font-display);
  font-size: 22px;
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

.brand-desc {
  font-size: 14px;
  line-height: 1.6;
  color: var(--color-ink-soft);
  max-width: 360px;
}

.social {
  display: flex;
  gap: 8px;
  margin-top: 24px;
}

.social-link {
  width: 36px;
  height: 36px;
  border-radius: 10px;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  background: var(--color-surface);
  border: 1px solid var(--color-line);
  color: var(--color-emerald-800);
  transition: transform 0.2s var(--ease-out),
    border-color 0.2s var(--ease-out),
    color 0.2s var(--ease-out);
}

.social-link:hover {
  transform: translateY(-2px);
  border-color: var(--color-emerald-500);
  color: var(--color-emerald-500);
}

/* ----- Link columns ----- */
.col-title {
  font-family: var(--font-display);
  font-size: 13px;
  font-weight: 600;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  color: var(--color-ink);
  margin-bottom: 16px;
}

.col ul {
  list-style: none;
  padding: 0;
  margin: 0;
  display: flex;
  flex-direction: column;
  gap: 10px;
}

.col a {
  font-size: 14px;
  color: var(--color-ink-soft);
  transition: color 0.18s var(--ease-out);
}

.col a:hover {
  color: var(--color-emerald-800);
}

/* ----- Bottom strip ----- */
.bottom {
  padding-top: 24px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  gap: 16px;
  font-size: 12.5px;
  color: var(--color-muted);
  flex-wrap: wrap;
}

.bottom a {
  color: var(--color-ink-soft);
  transition: color 0.18s var(--ease-out);
}

.bottom a:hover {
  color: var(--color-emerald-800);
}

.sep {
  margin: 0 8px;
  color: var(--color-line-strong);
}

@media (max-width: 880px) {
  .grid {
    grid-template-columns: 1fr 1fr;
    gap: 32px;
  }
  .brand {
    grid-column: 1 / -1;
  }
}

@media (max-width: 520px) {
  .footer {
    padding: 56px 0 24px;
  }
  .grid {
    grid-template-columns: 1fr;
    gap: 28px;
  }
  .bottom {
    flex-direction: column;
    align-items: flex-start;
  }
}
</style>
