document.getElementById('hamburger-menu').addEventListener('click', function() {
   const sidebar = document.getElementById('sidebar');
   if (sidebar.style.right === '0px') {
       sidebar.style.right = '-250px';  // サイドバーを表示
   } else {
       sidebar.style.right = '0px'; // サイドバーを隠す
   }
});