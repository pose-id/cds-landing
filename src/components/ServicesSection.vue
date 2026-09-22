<script setup>
const services = [
  {
    title: 'Instalasi & Penarikan',
    copy: 'Pemasangan terminal baru dan penarikan unit lama dengan standar bank, plus dokumentasi merchant & aktivasi QRIS Statis.',
    bullets: ['Standar BCA-grade', 'Foto & geotag', 'Aktivasi QRIS'],
    icon: 'install',
  },
  {
    title: 'Maintenance',
    copy: 'Perawatan preventif dan tindakan proaktif untuk menjaga terminal tetap online, termasuk penggantian suku cadang.',
    bullets: ['Preventif berkala', 'Tindak proaktif', 'Sparepart resmi'],
    icon: 'maintenance',
  },
  {
    title: 'Asset & Project',
    copy: 'Logistik armada, relokasi terminal, dan dukungan proyek khusus untuk ekspansi merchant atau event peluncuran.',
    bullets: ['Logistik armada', 'Relokasi unit', 'Project khusus'],
    icon: 'asset',
  },
  {
    title: 'Quality Control',
    copy: 'Audit rutin, pelaporan kondisi, dan verifikasi SLA lintas kota dengan standar operasional yang terdokumentasi.',
    bullets: ['Audit merchant', 'Laporan SLA', 'Verifikasi kondisi'],
    icon: 'qc',
  },
]
</script>

<template>
  <section id="services" class="services">
    <div class="container">
      <header class="head">
        <div>
          <span class="eyebrow reveal" v-reveal>Layanan</span>
          <h2 class="section-title reveal" v-reveal data-delay="100">
            Empat pilar layanan untuk operasional EDC tanpa hambatan.
          </h2>
        </div>
        <p class="section-lead reveal" v-reveal data-delay="200">
          Dari instalasi pertama hingga audit tahunan, tim CDS mengelola
          setiap siklus hidup terminal EDC dengan protokol yang konsisten
          di 65+ kota.
        </p>
      </header>

      <div class="grid">
        <article
          v-for="(s, i) in services"
          :key="s.title"
          class="card reveal"
          v-reveal
          :data-delay="100 + i * 100"
        >
          <div class="icon" :data-icon="s.icon">
            <svg v-if="s.icon === 'install'" viewBox="0 0 32 32" fill="none">
              <rect x="6" y="4" width="20" height="24" rx="3" stroke="currentColor" stroke-width="1.6"/>
              <path d="M11 10h10M11 14h10M11 18h6" stroke="currentColor" stroke-width="1.6" stroke-linecap="round"/>
              <circle cx="22" cy="22" r="5" fill="#F5B642"/>
              <path d="M22 19v6M19 22h6" stroke="#0F3D2E" stroke-width="1.6" stroke-linecap="round"/>
            </svg>
            <svg v-else-if="s.icon === 'maintenance'" viewBox="0 0 32 32" fill="none">
              <path d="M19 5l8 8-9 9-8-8z" stroke="currentColor" stroke-width="1.6" stroke-linejoin="round"/>
              <path d="M13 11l8 8" stroke="currentColor" stroke-width="1.6" stroke-linecap="round"/>
              <path d="M5 27l7-7" stroke="#F5B642" stroke-width="2.4" stroke-linecap="round"/>
              <circle cx="22" cy="10" r="1.4" fill="currentColor"/>
            </svg>
            <svg v-else-if="s.icon === 'asset'" viewBox="0 0 32 32" fill="none">
              <path d="M4 22h24l-3-9H7z" stroke="currentColor" stroke-width="1.6" stroke-linejoin="round"/>
              <circle cx="10" cy="22" r="2" fill="#F5B642"/>
              <circle cx="22" cy="22" r="2" fill="#F5B642"/>
              <path d="M11 13V8h10v5" stroke="currentColor" stroke-width="1.6" stroke-linejoin="round"/>
              <path d="M14 11h4" stroke="currentColor" stroke-width="1.6" stroke-linecap="round"/>
            </svg>
            <svg v-else viewBox="0 0 32 32" fill="none">
              <path d="M16 4l11 5v8c0 7-5 11-11 11S5 24 5 17V9z" stroke="currentColor" stroke-width="1.6" stroke-linejoin="round"/>
              <path d="M11 16l4 4 7-8" stroke="#F5B642" stroke-width="2.4" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>
          </div>

          <h3 class="title">{{ s.title }}</h3>
          <p class="copy">{{ s.copy }}</p>

          <ul class="bullets">
            <li v-for="b in s.bullets" :key="b">
              <span class="check" aria-hidden="true">
                <svg viewBox="0 0 12 12" width="12" height="12">
                  <path d="M2 6.5l2.5 2.5L10 3" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
              </span>
              {{ b }}
            </li>
          </ul>

          <a class="more" href="#contact">
            Diskusikan kebutuhan
            <svg viewBox="0 0 16 16" width="14" height="14" aria-hidden="true">
              <path d="M3 8h10M9 4l4 4-4 4" stroke="currentColor" stroke-width="1.6" fill="none" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>
          </a>
        </article>
      </div>
    </div>
  </section>
</template>

<style scoped>
.head {
  display: grid;
  grid-template-columns: 1.2fr 1fr;
  gap: 48px;
  align-items: end;
  margin-bottom: 56px;
}

.grid {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 20px;
}

.card {
  background: var(--color-surface);
  border: 1px solid var(--color-line);
  border-radius: var(--radius-lg);
  padding: 28px;
  display: flex;
  flex-direction: column;
  gap: 16px;
  transition: transform 0.25s var(--ease-out),
    border-color 0.25s var(--ease-out),
    box-shadow 0.25s var(--ease-out);
  position: relative;
  overflow: hidden;
}

.card::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  height: 4px;
  background: linear-gradient(90deg, var(--color-emerald-800), var(--color-emerald-500));
  opacity: 0;
  transition: opacity 0.25s var(--ease-out);
}

.card:hover {
  transform: translateY(-4px);
  border-color: rgba(20, 160, 107, 0.32);
  box-shadow: var(--shadow-md);
}

.card:hover::before {
  opacity: 1;
}

.icon {
  width: 48px;
  height: 48px;
  border-radius: 14px;
  background: linear-gradient(
    135deg,
    rgba(20, 160, 107, 0.12),
    rgba(245, 182, 66, 0.12)
  );
  display: inline-flex;
  align-items: center;
  justify-content: center;
  color: var(--color-emerald-800);
}

.icon svg {
  width: 28px;
  height: 28px;
}

.title {
  font-family: var(--font-display);
  font-size: 20px;
  letter-spacing: -0.01em;
}

.copy {
  font-size: 14.5px;
  color: var(--color-ink-soft);
  line-height: 1.55;
}

.bullets {
  list-style: none;
  padding: 0;
  margin: 0;
  display: flex;
  flex-direction: column;
  gap: 8px;
}

.bullets li {
  display: flex;
  align-items: center;
  gap: 8px;
  font-size: 13.5px;
  color: var(--color-ink-soft);
}

.check {
  width: 18px;
  height: 18px;
  border-radius: 999px;
  background: var(--color-emerald-800);
  color: var(--color-amber-300);
  display: inline-flex;
  align-items: center;
  justify-content: center;
  flex: 0 0 18px;
}

.more {
  margin-top: auto;
  display: inline-flex;
  align-items: center;
  gap: 6px;
  font-size: 13.5px;
  font-weight: 600;
  color: var(--color-emerald-800);
  padding-top: 4px;
}

.more svg {
  transition: transform 0.2s var(--ease-out);
}

.more:hover svg {
  transform: translateX(3px);
}

@media (max-width: 1100px) {
  .grid {
    grid-template-columns: repeat(2, 1fr);
  }
}

@media (max-width: 720px) {
  .head {
    grid-template-columns: 1fr;
    gap: 16px;
  }
  .grid {
    grid-template-columns: 1fr;
  }
}
</style>
