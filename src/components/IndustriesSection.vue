<script setup>
const industries = [
  {
    name: 'Perbankan',
    desc: 'Bank skala nasional & BPR',
    tag: 'Klien utama: BCA',
    accent: 'emerald',
  },
  {
    name: 'Otomotif',
    desc: 'Dealer & showroom',
    tag: 'Imperial Putra Perdana',
    accent: 'amber',
  },
  {
    name: 'Manufaktur',
    desc: 'Pabrik & lini produksi',
    tag: 'Ecotech Desain Dinamika',
    accent: 'emerald',
  },
  {
    name: 'Ritel',
    desc: 'Toko modern & tradisional',
    tag: 'Jaringan nasional',
    accent: 'amber',
  },
  {
    name: 'F&B',
    desc: 'Kafe, restoran, & warung',
    tag: 'Kopi · Kafe · Resto',
    accent: 'emerald',
  },
  {
    name: 'Hospitality',
    desc: 'Hotel, resort, & penginapan',
    tag: 'Standar hospitality',
    accent: 'amber',
  },
]
</script>

<template>
  <section id="industries" class="industries">
    <div class="container">
      <header class="head">
        <div>
          <span class="eyebrow reveal" v-reveal>Industri</span>
          <h2 class="section-title reveal" v-reveal data-delay="100">
            Dipercaya berbagai industri di Indonesia.
          </h2>
        </div>
        <p class="section-lead reveal" v-reveal data-delay="200">
          Dari bank kategori KBMI 4 hingga jaringan manufaktur — CDS
          menyesuaikan protokol operasional dengan standar setiap sektor.
        </p>
      </header>

      <div class="layout">
        <!-- BCA Feature block -->
        <article class="feature reveal" v-reveal>
          <div class="feature-top">
            <span class="badge">
              <span class="badge-dot"></span>
              Klien utama
            </span>
            <span class="kbm">KBMI 4</span>
          </div>

          <h3 class="feature-title">
            Bank Central Asia
            <span class="feature-sub">(BCA)</span>
          </h3>

          <p class="feature-copy">
            Acquirer EDC terbesar di Indonesia. Sejak tahun 2018, CDS
            dipercaya mengelola lebih dari 100.000 unit terminal EDC di
            65+ kota untuk merchant BCA, termasuk edukasi QRIS Statis,
            aktivasi, dan maintenance berkala.
          </p>

          <ul class="feature-stats">
            <li>
              <span class="ft-num">100K+</span>
              <span class="ft-lbl">Terminal EDC aktif</span>
            </li>
            <li>
              <span class="ft-num">65+</span>
              <span class="ft-lbl">Kota jangkauan</span>
            </li>
            <li>
              <span class="ft-num">2018</span>
              <span class="ft-lbl">Mulai kolaborasi</span>
            </li>
          </ul>

          <div class="feature-foot">
            <div class="logo-row">
              <span class="logo-item">BCA</span>
              <span class="logo-item ghost">BPR Karyajatnika Sadaya</span>
            </div>
          </div>
        </article>

        <!-- Industries grid -->
        <div class="sectors">
          <a
            v-for="(ind, i) in industries"
            :key="ind.name"
            href="#contact"
            class="sector reveal"
            v-reveal
            :data-delay="100 + i * 80"
            :class="['accent-' + ind.accent]"
          >
            <div class="sector-icon">
              <svg viewBox="0 0 24 24" width="22" height="22" fill="none">
                <rect x="4" y="6" width="16" height="14" rx="2" stroke="currentColor" stroke-width="1.6"/>
                <path d="M4 10h16" stroke="currentColor" stroke-width="1.6"/>
                <circle cx="9" cy="14" r="1.4" fill="currentColor"/>
                <path d="M13 14h5" stroke="currentColor" stroke-width="1.6" stroke-linecap="round"/>
              </svg>
            </div>
            <div class="sector-text">
              <div class="sector-name">{{ ind.name }}</div>
              <div class="sector-desc">{{ ind.desc }}</div>
            </div>
            <span class="sector-tag">{{ ind.tag }}</span>
          </a>
        </div>
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
  margin-bottom: 48px;
}

.layout {
  display: grid;
  grid-template-columns: 1fr 1.4fr;
  gap: 24px;
}

.feature {
  position: relative;
  background: linear-gradient(160deg, #0f3d2e 0%, #072619 100%);
  border-radius: var(--radius-xl);
  padding: 36px 32px;
  color: #faf7f0;
  overflow: hidden;
  box-shadow: var(--shadow-lg);
}

.feature::before {
  content: '';
  position: absolute;
  top: -120px;
  right: -80px;
  width: 320px;
  height: 320px;
  border-radius: 50%;
  background: radial-gradient(
    circle,
    rgba(245, 182, 66, 0.25),
    transparent 70%
  );
}

.feature::after {
  content: '';
  position: absolute;
  bottom: -80px;
  left: -60px;
  width: 220px;
  height: 220px;
  border-radius: 50%;
  background: radial-gradient(
    circle,
    rgba(20, 160, 107, 0.25),
    transparent 70%
  );
}

.feature-top {
  position: relative;
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 24px;
}

.badge {
  display: inline-flex;
  align-items: center;
  gap: 8px;
  padding: 6px 12px;
  border-radius: 999px;
  background: rgba(245, 182, 66, 0.18);
  border: 1px solid rgba(245, 182, 66, 0.32);
  font-size: 11px;
  font-weight: 600;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  color: var(--color-amber-300);
}

.badge-dot {
  width: 6px;
  height: 6px;
  border-radius: 999px;
  background: var(--color-amber-500);
  box-shadow: 0 0 0 4px rgba(245, 182, 66, 0.22);
}

.kbm {
  font-size: 11px;
  font-weight: 600;
  letter-spacing: 0.12em;
  padding: 6px 12px;
  border-radius: 999px;
  background: rgba(250, 247, 240, 0.08);
  border: 1px solid rgba(250, 247, 240, 0.18);
}

.feature-title {
  position: relative;
  font-family: var(--font-display);
  font-size: clamp(28px, 3.4vw, 36px);
  line-height: 1.1;
  color: #faf7f0;
  letter-spacing: -0.02em;
}

.feature-sub {
  display: block;
  margin-top: 4px;
  font-size: 16px;
  color: var(--color-amber-300);
  font-weight: 500;
}

.feature-copy {
  position: relative;
  margin-top: 16px;
  font-size: 15px;
  line-height: 1.6;
  color: rgba(250, 247, 240, 0.78);
}

.feature-stats {
  position: relative;
  list-style: none;
  padding: 24px 0 0;
  margin: 24px 0 0;
  border-top: 1px solid rgba(250, 247, 240, 0.12);
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 16px;
}

.feature-stats li {
  display: flex;
  flex-direction: column;
  gap: 4px;
}

.ft-num {
  font-family: var(--font-display);
  font-size: 22px;
  font-weight: 700;
  color: var(--color-amber-300);
  letter-spacing: -0.02em;
}

.ft-lbl {
  font-size: 11px;
  letter-spacing: 0.04em;
  color: rgba(250, 247, 240, 0.6);
}

.feature-foot {
  position: relative;
  margin-top: 28px;
}

.logo-row {
  display: flex;
  flex-wrap: wrap;
  gap: 8px;
}

.logo-item {
  padding: 6px 12px;
  background: rgba(250, 247, 240, 0.06);
  border: 1px solid rgba(250, 247, 240, 0.16);
  border-radius: 8px;
  font-size: 12px;
  font-weight: 600;
  letter-spacing: 0.02em;
}

.logo-item.ghost {
  background: transparent;
  color: rgba(250, 247, 240, 0.6);
  border-color: rgba(250, 247, 240, 0.18);
}

/* Sectors */
.sectors {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 16px;
}

.sector {
  display: flex;
  align-items: flex-start;
  gap: 14px;
  padding: 20px;
  background: var(--color-surface);
  border: 1px solid var(--color-line);
  border-radius: var(--radius-md);
  transition: transform 0.25s var(--ease-out),
    border-color 0.25s var(--ease-out),
    box-shadow 0.25s var(--ease-out);
  position: relative;
}

.sector:hover {
  transform: translateY(-3px);
  border-color: var(--color-emerald-500);
  box-shadow: var(--shadow-md);
}

.sector-icon {
  width: 44px;
  height: 44px;
  border-radius: 12px;
  background: rgba(20, 160, 107, 0.1);
  color: var(--color-emerald-800);
  display: inline-flex;
  align-items: center;
  justify-content: center;
  flex: 0 0 44px;
}

.sector.accent-amber .sector-icon {
  background: rgba(245, 182, 66, 0.16);
  color: var(--color-emerald-900);
}

.sector-text {
  flex: 1;
  min-width: 0;
}

.sector-name {
  font-weight: 600;
  font-size: 15px;
  color: var(--color-ink);
}

.sector-desc {
  font-size: 13px;
  color: var(--color-muted);
  margin-top: 2px;
}

.sector-tag {
  position: absolute;
  top: 16px;
  right: 16px;
  font-size: 10px;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  padding: 3px 8px;
  border-radius: 999px;
  background: rgba(15, 61, 46, 0.06);
  color: var(--color-ink-soft);
}

@media (max-width: 980px) {
  .head {
    grid-template-columns: 1fr;
    gap: 16px;
  }
  .layout {
    grid-template-columns: 1fr;
  }
  .sectors {
    grid-template-columns: repeat(2, 1fr);
  }
}

@media (max-width: 600px) {
  .sectors {
    grid-template-columns: 1fr;
  }
  .feature-stats {
    grid-template-columns: repeat(3, 1fr);
    gap: 8px;
  }
  .ft-num {
    font-size: 18px;
  }
}
</style>
