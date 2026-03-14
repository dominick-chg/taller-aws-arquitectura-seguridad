document.addEventListener('DOMContentLoaded', () => {
    const actionBtn = document.getElementById('action-btn');
    const techDetails = document.getElementById('tech-details');

    if (actionBtn && techDetails) {
        actionBtn.addEventListener('click', () => {
            if (techDetails.classList.contains('hidden')) {
                techDetails.classList.remove('hidden');
                actionBtn.textContent = 'Ocultar Detalles';
            } else {
                techDetails.classList.add('hidden');
                actionBtn.textContent = 'Ver Detalles Técnicos';
            }
        });
    }
});
