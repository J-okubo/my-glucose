document.addEventListener('turbo:load', function() {
    document.getElementById('hamburger-menu').addEventListener('click', function() {
        const sidebar = document.getElementById('sidebar');
        if (sidebar.style.right === '0px') {
            sidebar.style.right = '-250px';  // サイドバーを隠す
        } else {
            sidebar.style.right = '0px';  // サイドバーを表示
        }
    });
});
