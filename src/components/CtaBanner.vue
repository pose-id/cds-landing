<script setup>
</script>

<template>
  <section id="contact" class="cta">
    <div class="container">
      <div class="cta-inner reveal" v-reveal>
        <div class="cta-glow cta-glow--a" aria-hidden="true"></div>
        <div class="cta-glow cta-glow--b" aria-hidden="true"></div>

        <span class="eyebrow cta-eyebrow">Hubungi Kami</span>

        <h2 class="cta-title reveal" v-reveal data-delay="100">
          Siap Menskalakan Operasional EDC Anda?
        </h2>

        <p class="cta-sub reveal" v-reveal data-delay="200">
          Diskusikan kebutuhan Anda dengan tim CDS — kami siapkan proposal
          dan pilot dalam 14 hari kerja.
        </p>

        <div class="cta-actions reveal" v-reveal data-delay="300">
          <a class="btn btn-light" href="mailto:tim@cds.co.id">
            Hubungi Tim
            <svg class="arrow" viewBox="0 0 24 24" fill="none">
              <path d="M5 12h14M13 5l7 7-7 7" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
            </svg>
          </a>
          <a class="btn btn-outline" href="mailto:proposal@cds.co.id?subject=Permintaan%20Proposal">
            Minta Proposal
          </a>
        </div>

        <ul class="cta-meta reveal" v-reveal data-delay="400">
          <li>
            <span class="meta-dot"></span>
            Respons dalam 1 hari kerja
          </li>
          <li>
            <span class="meta-dot"></span>
            Pilot gratis untuk 50 terminal pertama
          </li>
          <li>
            <span class="meta-dot"></span>
            Tanpa komitmen jangka panjang
          </li>
        </ul>
      </div>
    </div>
  </section>
</template>

<style scoped>
.cta {
  padding: 96px 0;
}

.cta-inner {
  position: relative;
  background: linear-gradient(160deg, #0f3d2e 0%, #072619 100%);
  border-radius: var(--radius-xl);
  padding: 72px 64px;
  color: #faf7f0;
  overflow: hidden;
  text-align: center;
  box-shadow: var(--shadow-lg);
}

.cta-glow {
  position: absolute;
  border-radius: 50%;
  filter: blur(80px);
  pointer-events: none;
}

.cta-glow--a {
  width: 380px;
  height: 380px;
  background: rgba(20, 160, 107, 0.32);
  top: -120px;
  left: -100px;
}

.cta-glow--b {
  width: 320px;
  height: 320px;
  background: rgba(245, 182, 66, 0.28);
  bottom: -120px;
  right: -80px;
}

.cta-eyebrow {
  position: relative;
  background: rgba(245, 182, 66, 0.18);
  color: var(--color-amber-300);
  border: 1px solid rgba(245, 182, 66, 0.32);
}

.cta-eyebrow::before {
  background: var(--color-amber-500);
  box-shadow: 0 0 0 4px rgba(245, 182, 66, 0.22);
}

.cta-title {
  position: relative;
  font-family: var(--font-display);
  font-size: clamp(28px, 4.2vw, 48px);
  letter-spacing: -0.025em;
  line-height: 1.08;
  color: #faf7f0;
  margin-top: 24px;
  max-width: 720px;
  margin-left: auto;
  margin-right: auto;
}

.cta-sub {
  position: relative;
  margin: 20px auto 0;
  max-width: 560px;
  font-size: 17px;
  line-height: 1.6;
  color: rgba(250, 247, 240, 0.78);
}

.cta-actions {
  position: relative;
  display: flex;
  gap: 12px;
  justify-content: center;
  flex-wrap: wrap;
  margin-top: 36px;
}

.btn-light {
  background: #faf7f0;
  color: var(--color-emerald-800);
  box-shadow: 0 10px 24px rgba(7, 38, 25, 0.32);
}

.btn-light:hover {
  background: #ffffff;
  transform: translateY(-1px);
  box-shadow: 0 14px 30px rgba(7, 38, 25, 0.4);
}

.btn-outline {
  background: transparent;
  color: #faf7f0;
  border-color: rgba(250, 247, 240, 0.32);
}

.btn-outline:hover {
  background: rgba(250, 247, 240, 0.08);
  border-color: #faf7f0;
}

.cta-meta {
  position: relative;
  list-style: none;
  padding: 0;
  margin: 48px 0 0;
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
  gap: 24px;
  font-size: 13px;
  color: rgba(250, 247, 240, 0.7);
}

.cta-meta li {
  display: inline-flex;
  align-items: center;
  gap: 8px;
}

.meta-dot {
  width: 6px;
  height: 6px;
  border-radius: 999px;
  background: var(--color-amber-300);
  box-shadow: 0 0 0 4px rgba(252, 216, 136, 0.2);
}

@media (max-width: 720px) {
  .cta {
    padding: 64px 0;
  }
  .cta-inner {
    padding: 48px 28px;
  }
  .cta-actions {
    flex-direction: column;
    align-items: stretch;
  }
  .cta-actions .btn {
    justify-content: center;
  }
  .cta-meta {
    flex-direction: column;
    gap: 12px;
    align-items: center;
  }
}
</style>
