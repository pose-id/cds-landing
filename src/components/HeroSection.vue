<script setup>
import { ref, onMounted } from 'vue'

const balance = ref(247500)
const targetBalance = 247500
const tickerItems = [
  { merchant: 'Kopi Mahaka', amount: 28500, time: '14:32' },
  { merchant: 'Toko Carolina', amount: 122000, time: '14:31' },
  { merchant: 'Indomaret Tebet', amount: 92000, time: '14:30' },
  { merchant: 'RM Sederhana', amount: 165000, time: '14:28' },
]
const ticker = ref([])

onMounted(() => {
  let i = 0
  ticker.value = [tickerItems[0]]
  setInterval(() => {
    i = (i + 1) % tickerItems.length
    ticker.value = [tickerItems[i], ...ticker.value].slice(0, 3)
    balance.value = targetBalance + Math.floor(Math.random() * 125000)
  }, 2200)
})
</script>

<template>
  <section id="top" class="hero">
    <div class="bg-grid"></div>

    <div class="hero-blob hero-blob--green"></div>
    <div class="hero-blob hero-blob--amber"></div>

    <div class="container hero-inner">
      <div class="hero-copy">
        <span class="eyebrow reveal" v-reveal>
          CDS · Catur Daya Sukses
        </span>

        <h1 class="hero-title reveal" v-reveal data-delay="100">
          Mengelola
          <span class="num">100.000+</span> Terminal EDC untuk
          <span class="hl">Bank Terbesar Indonesia.</span>
        </h1>

        <p class="hero-sub reveal" v-reveal data-delay="200">
          Sejak tahun 2018, tim lapangan CDS merawat jaringan EDC dan
          mengedukasi merchant QRIS Statis di lebih dari 65 kota. Andalkan
          teknisi bersertifikat, SLA terukur, dan dashboard monitoring
          real-time.
        </p>

        <div class="hero-ctas reveal" v-reveal data-delay="300">
          <a href="#services" class="btn btn-primary">
            Lihat Layanan
            <svg class="arrow" viewBox="0 0 24 24" fill="none">
              <path
                d="M5 12h14M13 5l7 7-7 7"
                stroke="currentColor"
                stroke-width="2"
                stroke-linecap="round"
                stroke-linejoin="round"
              />
            </svg>
          </a>
          <a href="#contact" class="btn btn-secondary">Hubungi Tim</a>
        </div>

        <ul class="hero-strip reveal" v-reveal data-delay="400">
          <li>
            <strong>22+</strong>
            <span>Tahun pengalaman</span>
          </li>
          <li>
            <strong>4 layanan</strong>
            <span>End-to-end EDC</span>
          </li>
          <li>
            <strong>BCA</strong>
            <span>Klien utama</span>
          </li>
        </ul>
      </div>

      <div class="hero-visual reveal" v-reveal data-delay="200">
        <div class="visual-frame">
          <!-- Floating status pill -->
          <div class="status-pill">
            <span class="dot"></span>
            Live · 100.412 terminal aktif
          </div>

          <!-- EDC terminal mockup -->
          <div class="terminal">
            <div class="terminal-head">
              <div class="brand-strip">
                <span class="dot-r"></span>
                <span class="dot-y"></span>
                <span class="dot-g"></span>
              </div>
              <span class="terminal-label">CDS EDC-210</span>
              <span class="signal">
                <span></span><span></span><span></span><span></span>
              </span>
            </div>

            <div class="terminal-screen">
              <div class="screen-top">
                <div class="screen-row">
                  <span class="screen-label">Saldo Merchant</span>
                  <span class="screen-time">{{ ticker[0]?.time ?? '14:32' }} WIB</span>
                </div>
                <div class="balance">
                  Rp
                  <span class="b-num">{{ balance.toLocaleString('id-ID') }}</span>
                </div>
                <div class="screen-meta">
                  <span>Trx #BCA-{{ 48201 }}</span>
                  <span class="ok">APPROVED</span>
                </div>
              </div>

              <div class="qris-chip" aria-hidden="true">
                <svg viewBox="0 0 96 96" width="96" height="96">
                  <rect width="96" height="96" rx="14" fill="#0F3D2E" />
                  <rect x="12" y="12" width="20" height="20" rx="3" fill="#FAF7F0" />
                  <rect x="64" y="12" width="20" height="20" rx="3" fill="#FAF7F0" />
                  <rect x="12" y="64" width="20" height="20" rx="3" fill="#FAF7F0" />
                  <rect x="16" y="16" width="12" height="12" rx="2" fill="#0F3D2E" />
                  <rect x="68" y="16" width="12" height="12" rx="2" fill="#0F3D2E" />
                  <rect x="16" y="68" width="12" height="12" rx="2" fill="#0F3D2E" />
                  <rect x="44" y="14" width="4" height="4" fill="#FAF7F0" />
                  <rect x="52" y="14" width="4" height="4" fill="#FAF7F0" />
                  <rect x="44" y="22" width="4" height="4" fill="#FAF7F0" />
                  <rect x="58" y="22" width="4" height="4" fill="#FAF7F0" />
                  <rect x="40" y="40" width="6" height="6" fill="#F5B642" />
                  <rect x="50" y="40" width="6" height="6" fill="#F5B642" />
                  <rect x="40" y="50" width="6" height="6" fill="#F5B642" />
                  <rect x="58" y="42" width="4" height="4" fill="#FAF7F0" />
                  <rect x="68" y="50" width="4" height="4" fill="#FAF7F0" />
                  <rect x="76" y="58" width="4" height="4" fill="#FAF7F0" />
                  <rect x="48" y="64" width="4" height="4" fill="#FAF7F0" />
                  <rect x="56" y="72" width="4" height="4" fill="#FAF7F0" />
                  <rect x="68" y="68" width="4" height="4" fill="#FAF7F0" />
                  <rect x="76" y="76" width="4" height="4" fill="#FAF7F0" />
                  <rect x="40" y="76" width="4" height="4" fill="#FAF7F0" />
                  <rect x="48" y="84" width="4" height="4" fill="#FAF7F0" />
                </svg>
              </div>

              <div class="keypad">
                <span></span><span></span><span></span>
                <span></span><span></span><span></span>
                <span></span><span></span><span></span>
              </div>
            </div>

            <div class="terminal-foot">
              <span class="foot-tag">QRIS Statis</span>
              <span class="foot-tag ghost">Contactless</span>
            </div>
          </div>

          <!-- Ticker / transaction feed -->
          <div class="feed">
            <div class="feed-head">
              <span class="feed-dot"></span>
              Transaksi langsung
            </div>
            <transition-group name="feed" tag="ul" class="feed-list">
              <li v-for="(t, idx) in ticker" :key="t.merchant + t.time" :class="{ new: idx === 0 }">
                <span class="feed-name">{{ t.merchant }}</span>
                <span class="feed-amt">Rp {{ t.amount.toLocaleString('id-ID') }}</span>
                <span class="feed-time">{{ t.time }}</span>
              </li>
            </transition-group>
          </div>

          <!-- Floating SLA badge -->
          <div class="sla-card">
            <svg viewBox="0 0 32 32" width="28" height="28" aria-hidden="true">
              <path
                d="M16 4l3 8 8 1-6 5 2 9-7-4-7 4 2-9-6-5 8-1z"
                fill="#F5B642"
              />
            </svg>
            <div>
              <div class="sla-num">99.2%</div>
              <div class="sla-lbl">SLA terpenuhi</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
.hero {
  position: relative;
  padding: 160px 0 96px;
  overflow: hidden;
  background: radial-gradient(
      ellipse 80% 60% at 80% 10%,
      rgba(245, 182, 66, 0.16),
      transparent 60%
    ),
    radial-gradient(
      ellipse 60% 50% at 10% 90%,
      rgba(20, 160, 107, 0.12),
      transparent 60%
    ),
    var(--color-bg);
}

.hero-blob {
  position: absolute;
  border-radius: 50%;
  filter: blur(80px);
  z-index: 0;
}

.hero-blob--green {
  width: 480px;
  height: 480px;
  background: rgba(20, 160, 107, 0.18);
  top: -120px;
  right: -100px;
}

.hero-blob--amber {
  width: 360px;
  height: 360px;
  background: rgba(245, 182, 66, 0.2);
  bottom: -100px;
  left: -80px;
}

.hero-inner {
  position: relative;
  z-index: 1;
  display: grid;
  grid-template-columns: 1.05fr 1fr;
  gap: 64px;
  align-items: center;
}

.hero-title {
  font-size: clamp(34px, 5.4vw, 64px);
  line-height: 1.04;
  letter-spacing: -0.025em;
  margin-top: 22px;
}

.hero-title .num {
  font-family: var(--font-display);
  font-variant-numeric: tabular-nums;
  background: linear-gradient(180deg, #14563f 0%, #0f3d2e 100%);
  -webkit-background-clip: text;
  background-clip: text;
  color: transparent;
  position: relative;
  padding: 0 6px;
}

.hero-title .hl {
  position: relative;
  display: inline-block;
}

.hero-title .hl::after {
  content: '';
  position: absolute;
  left: 0;
  right: 0;
  bottom: 6px;
  height: 12px;
  background: var(--color-amber-300);
  border-radius: 4px;
  opacity: 0.6;
  z-index: -1;
}

.hero-sub {
  margin-top: 22px;
  max-width: 540px;
  font-size: 17px;
  line-height: 1.6;
  color: var(--color-ink-soft);
}

.hero-ctas {
  display: flex;
  gap: 12px;
  margin-top: 32px;
  flex-wrap: wrap;
}

.hero-strip {
  display: flex;
  gap: 28px;
  margin: 48px 0 0;
  padding: 0;
  list-style: none;
}

.hero-strip li {
  display: flex;
  flex-direction: column;
}

.hero-strip strong {
  font-family: var(--font-display);
  font-size: 22px;
  color: var(--color-emerald-800);
  letter-spacing: -0.02em;
}

.hero-strip span {
  font-size: 12px;
  color: var(--color-muted);
  margin-top: 2px;
  letter-spacing: 0.04em;
}

/* ----- Hero visual ----- */
.hero-visual {
  position: relative;
}

.visual-frame {
  position: relative;
  height: 540px;
}

.status-pill {
  position: absolute;
  top: 24px;
  right: -8px;
  display: inline-flex;
  align-items: center;
  gap: 8px;
  background: var(--color-surface);
  border: 1px solid var(--color-line);
  border-radius: 999px;
  padding: 8px 14px;
  font-size: 12px;
  font-weight: 600;
  color: var(--color-emerald-800);
  box-shadow: var(--shadow-md);
  z-index: 3;
}

.status-pill .dot {
  width: 8px;
  height: 8px;
  border-radius: 999px;
  background: var(--color-emerald-500);
  box-shadow: 0 0 0 4px rgba(20, 160, 107, 0.22);
  animation: pulse 1.6s ease-in-out infinite;
}

@keyframes pulse {
  0%, 100% { opacity: 1; }
  50% { opacity: 0.45; }
}

.terminal {
  position: absolute;
  top: 40px;
  left: 0;
  width: 320px;
  height: 460px;
  background: linear-gradient(180deg, #0f3d2e, #072619);
  border-radius: 36px;
  padding: 18px;
  box-shadow: 0 30px 60px rgba(7, 38, 25, 0.32),
    inset 0 1px 0 rgba(255, 255, 255, 0.1);
  color: #faf7f0;
  z-index: 2;
}

.terminal::after {
  content: '';
  position: absolute;
  inset: 4px;
  border-radius: 32px;
  pointer-events: none;
  background: linear-gradient(
    135deg,
    rgba(255, 255, 255, 0.05),
    transparent 40%
  );
}

.terminal-head {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-bottom: 14px;
}

.brand-strip {
  display: inline-flex;
  gap: 4px;
}

.brand-strip span {
  width: 6px;
  height: 6px;
  border-radius: 999px;
}

.dot-r { background: #ff6b5c; }
.dot-y { background: #f5b642; }
.dot-g { background: #14a06b; }

.terminal-label {
  font-size: 11px;
  letter-spacing: 0.16em;
  text-transform: uppercase;
  color: rgba(250, 247, 240, 0.7);
  font-weight: 500;
}

.signal {
  display: inline-flex;
  align-items: flex-end;
  gap: 2px;
  height: 12px;
}

.signal span {
  width: 3px;
  background: var(--color-emerald-300);
  border-radius: 1px;
}

.signal span:nth-child(1) { height: 4px; }
.signal span:nth-child(2) { height: 7px; }
.signal span:nth-child(3) { height: 10px; }
.signal span:nth-child(4) { height: 12px; background: #faf7f0; }

.terminal-screen {
  background: linear-gradient(180deg, #f3eee0, #faf7f0);
  border-radius: 22px;
  padding: 18px;
  height: 320px;
  color: var(--color-ink);
  display: flex;
  flex-direction: column;
  gap: 14px;
}

.screen-top {
  flex: 1;
}

.screen-row {
  display: flex;
  justify-content: space-between;
  align-items: center;
  font-size: 11px;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  color: var(--color-muted);
}

.screen-time {
  font-variant-numeric: tabular-nums;
}

.balance {
  margin-top: 8px;
  font-family: var(--font-display);
  font-size: 26px;
  font-weight: 700;
  color: var(--color-emerald-800);
  letter-spacing: -0.02em;
}

.balance .b-num {
  font-variant-numeric: tabular-nums;
}

.screen-meta {
  margin-top: 6px;
  display: flex;
  justify-content: space-between;
  font-size: 11px;
  color: var(--color-ink-soft);
}

.screen-meta .ok {
  color: var(--color-emerald-500);
  font-weight: 600;
  letter-spacing: 0.08em;
}

.qris-chip {
  display: flex;
  justify-content: center;
  padding: 6px 0;
}

.keypad {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 6px;
  margin-top: auto;
}

.keypad span {
  height: 14px;
  background: rgba(15, 61, 46, 0.08);
  border-radius: 4px;
}

.terminal-foot {
  display: flex;
  justify-content: center;
  gap: 8px;
  margin-top: 16px;
}

.foot-tag {
  font-size: 10px;
  letter-spacing: 0.16em;
  text-transform: uppercase;
  padding: 6px 12px;
  border-radius: 999px;
  background: rgba(245, 182, 66, 0.16);
  color: var(--color-amber-300);
  border: 1px solid rgba(245, 182, 66, 0.28);
}

.foot-tag.ghost {
  background: rgba(250, 247, 240, 0.06);
  color: rgba(250, 247, 240, 0.7);
  border-color: rgba(250, 247, 240, 0.18);
}

/* ----- Feed ----- */
.feed {
  position: absolute;
  bottom: 24px;
  right: 0;
  width: 280px;
  background: var(--color-surface);
  border: 1px solid var(--color-line);
  border-radius: var(--radius-lg);
  padding: 16px;
  box-shadow: var(--shadow-lg);
  z-index: 3;
}

.feed-head {
  display: flex;
  align-items: center;
  gap: 8px;
  font-size: 12px;
  font-weight: 600;
  color: var(--color-ink-soft);
  text-transform: uppercase;
  letter-spacing: 0.08em;
  margin-bottom: 12px;
}

.feed-dot {
  width: 8px;
  height: 8px;
  border-radius: 999px;
  background: var(--color-emerald-500);
  box-shadow: 0 0 0 4px rgba(20, 160, 107, 0.2);
  animation: pulse 1.6s ease-in-out infinite;
}

.feed-list {
  list-style: none;
  padding: 0;
  margin: 0;
  display: flex;
  flex-direction: column;
  gap: 8px;
  position: relative;
  min-height: 120px;
}

.feed-list li {
  display: grid;
  grid-template-columns: 1fr auto;
  grid-template-rows: auto auto;
  column-gap: 12px;
  padding: 10px 12px;
  background: var(--color-bg);
  border-radius: 12px;
  font-size: 13px;
  border: 1px solid var(--color-line);
}

.feed-list li.new {
  background: linear-gradient(
    135deg,
    rgba(20, 160, 107, 0.08),
    rgba(245, 182, 66, 0.06)
  );
  border-color: rgba(20, 160, 107, 0.25);
}

.feed-name {
  font-weight: 600;
  color: var(--color-ink);
}

.feed-amt {
  font-variant-numeric: tabular-nums;
  font-weight: 600;
  color: var(--color-emerald-800);
  text-align: right;
}

.feed-time {
  grid-column: 1 / -1;
  font-size: 11px;
  color: var(--color-muted);
  margin-top: 2px;
}

.feed-enter-active,
.feed-leave-active {
  transition: opacity 0.45s var(--ease-out), transform 0.45s var(--ease-out);
}
.feed-enter-from {
  opacity: 0;
  transform: translateY(-8px);
}
.feed-leave-to {
  opacity: 0;
  transform: translateY(8px);
}
.feed-leave-active {
  position: absolute;
  width: 100%;
}

/* ----- SLA card ----- */
.sla-card {
  position: absolute;
  top: 280px;
  right: -12px;
  display: flex;
  align-items: center;
  gap: 10px;
  padding: 12px 16px;
  background: var(--color-surface);
  border: 1px solid var(--color-line);
  border-radius: var(--radius-md);
  box-shadow: var(--shadow-md);
  z-index: 3;
}

.sla-num {
  font-family: var(--font-display);
  font-size: 18px;
  font-weight: 700;
  color: var(--color-emerald-800);
  line-height: 1;
}

.sla-lbl {
  font-size: 11px;
  color: var(--color-muted);
  margin-top: 2px;
  letter-spacing: 0.04em;
}

@media (max-width: 980px) {
  .hero-inner {
    grid-template-columns: 1fr;
    gap: 48px;
  }
  .hero {
    padding: 130px 0 80px;
  }
  .visual-frame {
    height: 600px;
    max-width: 520px;
    margin: 0 auto;
    width: 100%;
  }
  .terminal {
    left: 50%;
    transform: translateX(-50%);
  }
  .feed {
    right: auto;
    left: 50%;
    transform: translateX(-50%);
    bottom: 0;
    width: 90%;
    max-width: 360px;
  }
  .status-pill {
    right: 20px;
  }
  .sla-card {
    right: 20px;
    top: auto;
    bottom: 280px;
  }
}

@media (max-width: 480px) {
  .hero-strip {
    flex-wrap: wrap;
    gap: 16px 24px;
  }
  .terminal {
    width: 280px;
    height: 420px;
  }
}
</style>
