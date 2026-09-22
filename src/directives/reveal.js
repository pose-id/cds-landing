// Reveal directive — toggles `.is-visible` when the element scrolls into view.
// Single shared IntersectionObserver to keep things light.
const observers = new WeakMap()

function ensureObserver(el) {
  let io = observers.get(document.documentElement)
  if (!io) {
    io = new IntersectionObserver(
      (entries) => {
        for (const entry of entries) {
          if (entry.isIntersecting) {
            entry.target.classList.add('is-visible')
            io.unobserve(entry.target)
          }
        }
      },
      {
        rootMargin: '0px 0px -10% 0px',
        threshold: 0.12,
      }
    )
    observers.set(document.documentElement, io)
  }
  return io
}

function applyDelay(el) {
  const delay = el.dataset.delay
  if (delay) el.style.transitionDelay = `${delay}ms`
}

export default {
  mounted(el) {
    el.classList.add('reveal')
    applyDelay(el)
    ensureObserver(el).observe(el)
  },
  unmounted(el) {
    const io = observers.get(document.documentElement)
    if (io) io.unobserve(el)
  },
}
