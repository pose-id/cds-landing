<script setup>
const stats = [
  {
    value: '2.400+',
    label: 'Teknisi Tersertifikasi',
    sub: 'Onboarding terpusat & berkala',
  },
  {
    value: '65+',
    label: 'Kota Layanan',
    sub: 'Dari Sabang sampai Merauke',
  },
  {
    value: '24/7',
    label: 'Helpdesk',
    sub: 'Respons dalam 30 menit pertama',
  },
  {
    value: '99,2%',
    label: 'SLA',
    sub: 'Tingkat ketersediaan nasional',
  },
]
</script>

<template>
  <section id="fieldops" class="fieldops">
    <div class="container">
      <header class="head">
        <div>
          <span class="eyebrow reveal" v-reveal>Operasional Lapangan</span>
          <h2 class="section-title reveal" v-reveal data-delay="100">
            Tim Lapangan Selindo. Skala Nasional.
          </h2>
        </div>
        <p class="section-lead reveal" v-reveal data-delay="200">
          Manajemen SDM lapangan bersertifikat — onboarding, tooling, dan
          distribusi jadwal terpusat dari satu platform.
        </p>
      </header>

      <ul class="stats">
        <li
          v-for="(s, i) in stats"
          :key="s.label"
          class="stat reveal"
          v-reveal
          :data-delay="100 + i * 100"
        >
          <div class="stat-value">{{ s.value }}</div>
          <div class="stat-label">{{ s.label }}</div>
          <div class="stat-sub">{{ s.sub }}</div>
        </li>
      </ul>

      <div class="content">
        <article class="block reveal" v-reveal>
          <div class="block-tag">
            <span class="tag-dot"></span>
            Model SDM
          </div>
          <h3 class="block-title">
            Workforce terdistribusi dengan satu pusat komando.
          </h3>
          <p class="block-copy">
            Setiap teknisi CDS direkrut melalui proses sertifikasi
            berjenjang — meliputi protokol keselamatan merchant, prosedur
            aktivasi QRIS, dan disiplin dokumentasi. Penugasan harian
            didistribusikan otomatis dari platform internal kami,
            mempertimbangkan jarak, beban kerja, dan tingkat kompleksitas
            pekerjaan.
          </p>
          <ul class="block-list">
            <li>
              <span class="check" aria-hidden="true">
                <svg viewBox="0 0 12 12" width="10" height="10">
                  <path d="M2 6.5l2.5 2.5L10 3" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" />
                </svg>
              </span>
              Onboarding 14 hari dengan ujian komprehensif
            </li>
            <li>
              <span class="check" aria-hidden="true">
                <svg viewBox="0 0 12 12" width="10" height="10">
                  <path d="M2 6.5l2.5 2.5L10 3" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" />
                </svg>
              </span>
              Aplikasi mobile untuk absensi, tiket, dan laporan foto
            </li>
            <li>
              <span class="check" aria-hidden="true">
                <svg viewBox="0 0 12 12" width="10" height="10">
                  <path d="M2 6.5l2.5 2.5L10 3" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" />
                </svg>
              </span>
              Rotasi wilayah berkala untuk mencegah kelelahan
            </li>
          </ul>
        </article>

        <article class="block block-alt reveal" v-reveal data-delay="100">
          <div class="block-tag tag-amber">
            <span class="tag-dot"></span>
            Quality Audit
          </div>
          <h3 class="block-title">
            Audit lapangan yang terukur, bukan sekadar checklist.
          </h3>
          <p class="block-copy">
            Tim quality control CDS melakukan audit mingguan ke merchant
            untuk memastikan terminal berfungsi optimal, signage QRIS
            terlihat jelas, dan edukasi penggunaan disampaikan dengan
            benar. Temuan diaudit kembali dalam 72 jam dengan dokumentasi
            foto, geotag, dan tanda tangan digital.
          </p>
          <div class="audit-grid">
            <div class="audit-cell">
              <span class="audit-num">72 jam</span>
              <span class="audit-lbl">SLA remediasi temuan</span>
            </div>
            <div class="audit-cell">
              <span class="audit-num">100%</span>
              <span class="audit-lbl">Dokumentasi digital</span>
            </div>
            <div class="audit-cell">
              <span class="audit-num">3×</span>
              <span class="audit-lbl">Frekuensi audit merchant</span>
            </div>
            <div class="audit-cell">
              <span class="audit-num">A+</span>
              <span class="audit-lbl">Skor audit internal 2025</span>
            </div>
          </div>
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
  margin-bottom: 48px;
}

.stats {
  list-style: none;
  margin: 0 0 64px;
  padding: 0;
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 16px;
}

.stat {
  padding: 28px 24px;
  background: var(--color-surface);
  border: 1px solid var(--color-line);
  border-radius: var(--radius-lg);
  display: flex;
  flex-direction: column;
  gap: 6px;
  position: relative;
  overflow: hidden;
  transition: transform 0.25s var(--ease-out),
    border-color 0.25s var(--ease-out),
    box-shadow 0.25s var(--ease-out);
}

.stat::after {
  content: '';
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  height: 3px;
  background: linear-gradient(90deg, var(--color-emerald-800), var(--color-emerald-500));
  transform: scaleX(0);
  transform-origin: left;
  transition: transform 0.3s var(--ease-out);
}

.stat:hover {
  transform: translateY(-3px);
  border-color: rgba(20, 160, 107, 0.32);
  box-shadow: var(--shadow-md);
}

.stat:hover::after {
  transform: scaleX(1);
}

.stat-value {
  font-family: var(--font-display);
  font-size: clamp(30px, 3.6vw, 40px);
  font-weight: 700;
  color: var(--color-emerald-800);
  letter-spacing: -0.025em;
  line-height: 1;
  font-variant-numeric: tabular-nums;
}

.stat-label {
  font-size: 14px;
  font-weight: 600;
  color: var(--color-ink);
  margin-top: 8px;
}

.stat-sub {
  font-size: 12px;
  color: var(--color-muted);
  letter-spacing: 0.02em;
}

/* ----- Two-column content ----- */
.content {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 24px;
}

.block {
  position: relative;
  padding: 36px 32px;
  background: var(--color-bg-alt);
  border: 1px solid var(--color-line);
  border-radius: var(--radius-xl);
  display: flex;
  flex-direction: column;
  gap: 16px;
}

.block-alt {
  background: linear-gradient(160deg, #0f3d2e 0%, #072619 100%);
  color: #faf7f0;
  border-color: transparent;
}

.block-alt .block-title,
.block-alt .block-copy,
.block-alt .block-tag {
  color: #faf7f0;
}

.block-alt .block-copy {
  color: rgba(250, 247, 240, 0.78);
}

.block-tag {
  display: inline-flex;
  align-items: center;
  gap: 8px;
  padding: 6px 12px;
  border-radius: 999px;
  background: rgba(20, 160, 107, 0.12);
  color: var(--color-emerald-800);
  font-size: 11px;
  font-weight: 600;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  width: fit-content;
}

.block-tag.tag-amber {
  background: rgba(245, 182, 66, 0.18);
  color: var(--color-amber-300);
  border: 1px solid rgba(245, 182, 66, 0.32);
}

.tag-dot {
  width: 6px;
  height: 6px;
  border-radius: 999px;
  background: currentColor;
  box-shadow: 0 0 0 4px rgba(20, 160, 107, 0.18);
}

.block-title {
  font-family: var(--font-display);
  font-size: clamp(22px, 2.2vw, 28px);
  letter-spacing: -0.02em;
  line-height: 1.2;
}

.block-copy {
  font-size: 15px;
  line-height: 1.6;
  color: var(--color-ink-soft);
}

.block-list {
  list-style: none;
  padding: 0;
  margin: 4px 0 0;
  display: flex;
  flex-direction: column;
  gap: 10px;
}

.block-list li {
  display: flex;
  align-items: center;
  gap: 10px;
  font-size: 14px;
  color: var(--color-ink-soft);
}

.check {
  width: 20px;
  height: 20px;
  border-radius: 999px;
  background: var(--color-emerald-800);
  color: var(--color-amber-300);
  display: inline-flex;
  align-items: center;
  justify-content: center;
  flex: 0 0 20px;
}

.block-alt .check {
  background: rgba(245, 182, 66, 0.18);
  color: var(--color-amber-300);
  border: 1px solid rgba(245, 182, 66, 0.32);
}

.audit-grid {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 12px;
  margin-top: 8px;
}

.audit-cell {
  padding: 14px 16px;
  background: rgba(250, 247, 240, 0.06);
  border: 1px solid rgba(250, 247, 240, 0.12);
  border-radius: var(--radius-md);
  display: flex;
  flex-direction: column;
  gap: 4px;
}

.audit-num {
  font-family: var(--font-display);
  font-size: 20px;
  font-weight: 700;
  color: var(--color-amber-300);
  letter-spacing: -0.02em;
}

.audit-lbl {
  font-size: 11px;
  color: rgba(250, 247, 240, 0.6);
  letter-spacing: 0.04em;
}

@media (max-width: 980px) {
  .head {
    grid-template-columns: 1fr;
    gap: 16px;
  }
  .stats {
    grid-template-columns: repeat(2, 1fr);
    margin-bottom: 40px;
  }
  .content {
    grid-template-columns: 1fr;
  }
  .block {
    padding: 28px 24px;
  }
}

@media (max-width: 520px) {
  .stats {
    grid-template-columns: 1fr;
  }
  .audit-grid {
    grid-template-columns: 1fr;
  }
}
</style>
