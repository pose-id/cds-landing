<script setup>
const features = [
  'Status real-time setiap terminal EDC',
  'Dashboard SLA per kota & bank',
  'Alert & dispatch otomatis ke teknisi',
  'Laporan harian transaksi & downtime',
  'Integrasi API bank & switcher',
]
</script>

<template>
  <section id="technology" class="monitoring">
    <div class="container">
      <header class="head">
        <div>
          <span class="eyebrow reveal" v-reveal>Teknologi</span>
          <h2 class="section-title reveal" v-reveal data-delay="100">
            Pantau Setiap Terminal. Dalam Hitungan Detik.
          </h2>
        </div>
        <p class="section-lead reveal" v-reveal data-delay="200">
          Aplikasi monitoring EDC yang dikembangkan tim IT internal CDS —
          status real-time, SLA terukur, alert otomatis.
        </p>
      </header>

      <div class="layout">
        <div class="copy">
          <p class="lede reveal" v-reveal>
            Lebih dari sekadar dasbor. Tim IT CDS membangun tooling
            internal yang mengonsolidasi sinyal dari acquirer, switcher,
            dan armada teknisi menjadi satu sumber kebenaran operasional.
          </p>

          <ul class="features">
            <li
              v-for="(f, i) in features"
              :key="f"
              class="pill reveal"
              v-reveal
              :data-delay="100 + i * 80"
            >
              <span class="pill-dot" aria-hidden="true">
                <svg viewBox="0 0 12 12" width="10" height="10">
                  <path d="M2 6.5l2.5 2.5L10 3" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" />
                </svg>
              </span>
              {{ f }}
            </li>
          </ul>

          <a class="btn btn-secondary reveal" v-reveal data-delay="500" href="#contact">
            Lihat demo langsung
            <svg class="arrow" viewBox="0 0 24 24" fill="none">
              <path d="M5 12h14M13 5l7 7-7 7" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
            </svg>
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
  margin-bottom: 56px;
}

.layout {
  display: grid;
  grid-template-columns: 1fr;
  gap: 56px;
  align-items: start;
}

/* ----- Left column ----- */
.copy {
  display: flex;
  flex-direction: column;
  gap: 24px;
}

.lede {
  font-size: 17px;
  line-height: 1.6;
  color: var(--color-ink-soft);
  max-width: 480px;
}

.features {
  list-style: none;
  padding: 0;
  margin: 0;
  display: flex;
  flex-direction: column;
  gap: 12px;
}

.pill {
  display: inline-flex;
  align-items: center;
  gap: 12px;
  padding: 14px 18px;
  background: var(--color-surface);
  border: 1px solid var(--color-line);
  border-radius: 999px;
  font-size: 14.5px;
  font-weight: 500;
  color: var(--color-ink);
  transition: border-color 0.2s var(--ease-out),
    transform 0.2s var(--ease-out);
  width: fit-content;
  max-width: 100%;
}

.pill:hover {
  border-color: var(--color-emerald-500);
  transform: translateX(2px);
}

.pill-dot {
  width: 22px;
  height: 22px;
  border-radius: 999px;
  background: var(--color-emerald-800);
  color: var(--color-amber-300);
  display: inline-flex;
  align-items: center;
  justify-content: center;
  flex: 0 0 22px;
}

@media (max-width: 980px) {
  .head {
    grid-template-columns: 1fr;
    gap: 16px;
  }
}
</style>
