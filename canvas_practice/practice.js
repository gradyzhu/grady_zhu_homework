document.addEventListener("DOMContentLoaded", function(){
  const canvas = document.getElementById('canvas');
  canvas.width = 300;
  canvas.height = 150;

  const ctx = canvas.getContext("2d");
  ctx.fillStyle = "red";
  ctx.fillRect(100, 100, 400, 300);
});
