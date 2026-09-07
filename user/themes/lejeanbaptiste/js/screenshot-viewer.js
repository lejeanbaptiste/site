(function () {
  const viewer = document.querySelector('[data-screenshot-viewer]');
  if (!viewer) return;

  const image = viewer.querySelector('[data-screenshot-viewer-image]');
  const caption = viewer.querySelector('[data-screenshot-viewer-caption]');
  const closeButton = viewer.querySelector('[data-screenshot-close]');
  let previousFocus = null;

  function closeViewer() {
    viewer.hidden = true;
    document.body.classList.remove('screenshot-viewer-open');
    image.removeAttribute('src');
    if (previousFocus) previousFocus.focus();
  }

  function openViewer(link) {
    const thumbnail = link.querySelector('img');
    image.src = link.href;
    image.alt = thumbnail ? thumbnail.alt : '';
    caption.textContent = link.closest('figure')?.querySelector('figcaption')?.textContent.trim() || '';
    previousFocus = document.activeElement;
    viewer.hidden = false;
    document.body.classList.add('screenshot-viewer-open');
    closeButton.focus();
  }

  document.querySelectorAll('.guide-screenshot-thumb a, .product-shot__frame').forEach((link) => {
    link.addEventListener('click', (event) => {
      event.preventDefault();
      openViewer(link);
    });
  });

  closeButton.addEventListener('click', closeViewer);
  viewer.addEventListener('click', (event) => {
    if (event.target === viewer) closeViewer();
  });
  document.addEventListener('keydown', (event) => {
    if (event.key === 'Escape' && !viewer.hidden) closeViewer();
  });
})();
