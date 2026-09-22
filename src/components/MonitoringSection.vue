<script setup>
const features = [
  'Status real-time setiap terminal EDC',
  'Dashboard SLA per kota & bank',
  'Alert & dispatch otomatis ke teknisi',
  'Laporan harian transaksi & downtime',
  'Integrasi API bank & switcher',
]

const kpis = [
  { label: 'Total EDC', value: '102.450', delta: '+1.240 bulan ini', tone: 'ink' },
  { label: 'Online', value: '99.820', delta: '97,4% aktif', tone: 'emerald' },
  { label: 'Offline', value: '2.630', delta: 'Sedang ditangani', tone: 'amber' },
  { label: 'Avg Response', value: '18 mnt', delta: 'SLA < 30 mnt', tone: 'ink' },
]

const bars = [
  { city: 'Jakarta', uptime: 97, status: 'online' },
  { city: 'Surabaya', uptime: 96, status: 'online' },
  { city: 'Bandung', uptime: 98, status: 'online' },
  { city: 'Medan', uptime: 92, status: 'watch' },
  { city: 'Semarang', uptime: 88, status: 'watch' },
  { city: 'Makassar', uptime: 94, status: 'online' },
  { city: 'Denpasar', uptime: 99, status: 'online' },
]

const activity = [
  { time: '14:42', text: 'Auto-dispatch teknisi ke Toko Carolina — Surabaya', tone: 'amber' },
  { time: '14:38', text: 'Batch update firmware 412 terminal BCA selesai', tone: 'emerald' },
  { time: '14:31', text: 'SLA harian BCA tercapai 99,6% — 65 kota', tone: 'emerald' },
  { time: '14:24', text: 'Alert 18 terminal offline di cluster Medan', tone: 'ink' },
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
        <!-- Left: feature list -->
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

        <!-- Right: dashboard mockup -->
        <div class="dashboard reveal" v-reveal data-delay="200">

          <!-- Floating accent -->
          <div class="float-tag" aria-hidden="true">
            <span class="ft-dot"></span>
            SLA · 99,2%
          </div>
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
  grid-template-columns: 0.9fr 1.1fr;
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

/* ----- Dashboard mockup ----- */
.dashboard {
  position: relative;
}

.dash-top {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding-bottom: 16px;
  border-bottom: 1px solid var(--color-line);
}

.dash-brand {
  display: flex;
  align-items: center;
  gap: 12px;
}

.dash-title {
  font-family: var(--font-display);
  font-size: 15px;
  font-weight: 700;
  color: var(--color-ink);
  letter-spacing: -0.01em;
}

.dash-sub {
  font-size: 11px;
  color: var(--color-muted);
  letter-spacing: 0.04em;
  margin-top: 2px;
}

.dash-status {
  display: inline-flex;
  align-items: center;
  gap: 6px;
  padding: 5px 10px;
  border-radius: 999px;
  background: rgba(20, 160, 107, 0.12);
  color: var(--color-emerald-800);
  font-size: 11px;
  font-weight: 600;
  letter-spacing: 0.06em;
  text-transform: uppercase;
}

.dash-dot {
  width: 6px;
  height: 6px;
  border-radius: 999px;
  background: var(--color-emerald-500);
  box-shadow: 0 0 0 4px rgba(20, 160, 107, 0.22);
  animation: pulse 1.6s ease-in-out infinite;
}

@keyframes pulse {
  0%, 100% { opacity: 1; }
  50% { opacity: 0.45; }
}

/* KPI tiles */
.kpis {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 12px;
}

.kpi {
  padding: 16px 18px;
  background: var(--color-bg);
  border: 1px solid var(--color-line);
  border-radius: var(--radius-md);
  display: flex;
  flex-direction: column;
  gap: 4px;
  position: relative;
  overflow: hidden;
}

.kpi::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  height: 3px;
  background: var(--color-line-strong);
}

.kpi[data-tone='emerald']::before {
  background: var(--color-emerald-500);
}

.kpi[data-tone='amber']::before {
  background: var(--color-amber-500);
}

.kpi-label {
  font-size: 11px;
  font-weight: 600;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  color: var(--color-muted);
}

.kpi-value {
  font-family: var(--font-display);
  font-size: 26px;
  font-weight: 700;
  color: var(--color-emerald-800);
  letter-spacing: -0.02em;
  font-variant-numeric: tabular-nums;
  margin-top: 2px;
}

.kpi[data-tone='amber'] .kpi-value {
  color: var(--color-emerald-900);
}

.kpi-delta {
  font-size: 11px;
  color: var(--color-ink-soft);
  margin-top: 2px;
}

/* Chart */
.chart {
  display: flex;
  flex-direction: column;
  gap: 14px;
}

.chart-head {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.chart-title {
  font-size: 13px;
  font-weight: 600;
  color: var(--color-ink);
}

.chart-legend {
  display: inline-flex;
  align-items: center;
  gap: 8px;
  font-size: 11px;
  color: var(--color-muted);
}

.lg {
  display: inline-block;
  width: 10px;
  height: 10px;
  border-radius: 3px;
  margin-right: 2px;
  vertical-align: middle;
}

.lg-online { background: var(--color-emerald-500); }
.lg-watch { background: var(--color-amber-500); }

.bars {
  list-style: none;
  padding: 0;
  margin: 0;
  display: flex;
  flex-direction: column;
  gap: 10px;
}

.bar {
  display: grid;
  grid-template-columns: 90px 1fr 48px;
  align-items: center;
  gap: 12px;
  font-size: 12.5px;
}

.bar-name {
  color: var(--color-ink-soft);
  font-weight: 500;
}

.bar-track {
  position: relative;
  height: 8px;
  background: rgba(15, 61, 46, 0.06);
  border-radius: 999px;
  overflow: hidden;
}

.bar-fill {
  display: block;
  height: 100%;
  width: 0;
  border-radius: 999px;
  background: linear-gradient(90deg, var(--color-emerald-500), var(--color-emerald-700));
  animation: fill var(--d, 600ms) var(--ease-out) forwards;
}

.bar[data-status='watch'] .bar-fill {
  background: linear-gradient(90deg, var(--color-amber-300), var(--color-amber-500));
}

@keyframes fill {
  from { width: 0; }
  to { width: var(--w); }
}

.bar-num {
  text-align: right;
  font-family: var(--font-display);
  font-weight: 600;
  color: var(--color-emerald-800);
  font-variant-numeric: tabular-nums;
  font-size: 12.5px;
}

/* Activity */
.activity {
  border-top: 1px solid var(--color-line);
  padding-top: 16px;
}

.activity-head {
  display: inline-flex;
  align-items: center;
  gap: 8px;
  font-size: 11px;
  font-weight: 600;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  color: var(--color-ink-soft);
  margin-bottom: 10px;
}

.act-dot {
  width: 6px;
  height: 6px;
  border-radius: 999px;
  background: var(--color-amber-500);
  box-shadow: 0 0 0 4px rgba(245, 182, 66, 0.22);
}

.activity-list {
  list-style: none;
  padding: 0;
  margin: 0;
  display: flex;
  flex-direction: column;
  gap: 8px;
}

.act-row {
  display: grid;
  grid-template-columns: 56px 1fr;
  gap: 12px;
  padding: 10px 12px;
  background: var(--color-bg);
  border-radius: 12px;
  border: 1px solid var(--color-line);
  font-size: 13px;
  align-items: center;
}

.act-time {
  font-family: var(--font-display);
  font-weight: 600;
  font-variant-numeric: tabular-nums;
  font-size: 12px;
  color: var(--color-emerald-800);
}

.act-text {
  color: var(--color-ink-soft);
}

.act-row[data-tone='amber'] .act-text::before {
  content: '';
  display: inline-block;
  width: 6px;
  height: 6px;
  border-radius: 999px;
  background: var(--color-amber-500);
  margin-right: 8px;
  vertical-align: middle;
}

/* Float tag */
.float-tag {
  position: absolute;
  top: -16px;
  right: 24px;
  display: inline-flex;
  align-items: center;
  gap: 8px;
  padding: 10px 14px;
  background: var(--color-emerald-800);
  color: #faf7f0;
  border-radius: 999px;
  font-size: 12px;
  font-weight: 600;
  letter-spacing: 0.04em;
  box-shadow: var(--shadow-md);
}

.ft-dot {
  width: 8px;
  height: 8px;
  border-radius: 999px;
  background: var(--color-amber-300);
  box-shadow: 0 0 0 4px rgba(252, 216, 136, 0.28);
}

@media (max-width: 980px) {
  .head {
    grid-template-columns: 1fr;
    gap: 16px;
  }
  .layout {
    grid-template-columns: 1fr;
    gap: 40px;
  }
  .kpi-value {
    font-size: 22px;
  }
  .float-tag {
    top: -12px;
    right: 16px;
  }
}

@media (max-width: 560px) {
  .bar {
    grid-template-columns: 72px 1fr 40px;
    gap: 8px;
  }
  .act-row {
    grid-template-columns: 48px 1fr;
  }
}
</style>
