<script setup>
import { ref, onMounted, onBeforeUnmount } from 'vue'

const stats = [
  {
    value: 100000,
    suffix: '+',
    label: 'Terminal EDC',
    sub: 'Dikelola secara nasional',
    decimals: 0,
    format: 'k',
  },
  {
    value: 65,
    suffix: '+',
    label: 'Kota',
    sub: 'Jangkauan operasional',
    decimals: 0,
    format: 'plain',
  },
  {
    value: 2003,
    suffix: '',
    label: 'Berdiri',
    sub: 'Pengalaman 22+ tahun',
    decimals: 0,
    format: 'year',
  },
  {
    value: 99.2,
    suffix: '%',
    label: 'SLA',
    sub: 'Tingkat ketersediaan',
    decimals: 1,
    format: 'plain',
  },
]

const counters = ref(stats.map(() => 0))
const sectionRef = ref(null)
let hasAnimated = false
let observer = null

function formatStat(stat, value) {
  if (stat.format === 'k') {
    const k = value / 1000
    return `${Math.floor(k)}K${stat.suffix}`
  }
  if (stat.format === 'year') {
    return `${Math.round(value)}${stat.suffix}`
  }
  if (stat.decimals > 0) {
    return `${value.toFixed(stat.decimals)}${stat.suffix}`
  }
  return `${Math.round(value)}${stat.suffix}`
}

function animate() {
  const duration = 1600
  const start = performance.now()
  function frame(now) {
    const t = Math.min(1, (now - start) / duration)
    const eased = 1 - Math.pow(1 - t, 3)
    counters.value = stats.map((s) => s.value * eased)
    if (t < 1) requestAnimationFrame(frame)
    else counters.value = stats.map((s) => s.value)
  }
  requestAnimationFrame(frame)
}

onMounted(() => {
  observer = new IntersectionObserver(
    (entries) => {
      for (const entry of entries) {
        if (entry.isIntersecting && !hasAnimated) {
          hasAnimated = true
          animate()
          observer.unobserve(entry.target)
        }
      }
    },
    { threshold: 0.4 }
  )
  if (sectionRef.value) observer.observe(sectionRef.value)
})

onBeforeUnmount(() => {
  if (observer) observer.disconnect()
})
</script>

<template>
  <section ref="sectionRef" class="trust">
    <div class="container">
      <ul class="grid">
        <li v-for="(s, i) in stats" :key="s.label" class="cell">
          <div class="value">
            {{ formatStat(s, counters[i]) }}
          </div>
          <div class="label">{{ s.label }}</div>
          <div class="sub">{{ s.sub }}</div>
        </li>
      </ul>
    </div>
  </section>
</template>

<style scoped>
.trust {
  padding: 56px 0 24px;
  background: linear-gradient(
    180deg,
    transparent,
    rgba(15, 61, 46, 0.04) 30%,
    rgba(15, 61, 46, 0.04) 70%,
    transparent
  );
}

.grid {
  list-style: none;
  margin: 0;
  padding: 0;
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 0;
  background: var(--color-surface);
  border: 1px solid var(--color-line);
  border-radius: var(--radius-lg);
  box-shadow: var(--shadow-md);
  overflow: hidden;
}

.cell {
  padding: 32px 28px;
  border-right: 1px solid var(--color-line);
  position: relative;
}

.cell:last-child {
  border-right: none;
}

.value {
  font-family: var(--font-display);
  font-size: clamp(32px, 3.6vw, 44px);
  font-weight: 700;
  color: var(--color-emerald-800);
  letter-spacing: -0.025em;
  line-height: 1;
  font-variant-numeric: tabular-nums;
}

.label {
  margin-top: 12px;
  font-size: 14px;
  font-weight: 600;
  color: var(--color-ink);
}

.sub {
  margin-top: 4px;
  font-size: 12px;
  color: var(--color-muted);
  letter-spacing: 0.02em;
}

@media (max-width: 880px) {
  .grid {
    grid-template-columns: repeat(2, 1fr);
  }
  .cell {
    border-right: 1px solid var(--color-line);
  }
  .cell:nth-child(2n) {
    border-right: none;
  }
  .cell:nth-child(-n + 2) {
    border-bottom: 1px solid var(--color-line);
  }
}

@media (max-width: 480px) {
  .cell {
    padding: 22px 18px;
  }
}
</style>
