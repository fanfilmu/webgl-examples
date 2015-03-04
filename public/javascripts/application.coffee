window.gl = null

start = ->
  canvas = $("#main-canvas")

  window.gl = initWebGL(canvas)

initWebGL = (canvas) ->
  gl = null

  try
    gl = canvas[0].getContext "2d"
  catch e

  if !gl
    gl = null;

  return gl;

drawCircle = (x, y, r, startAngle = 0, endAngle = Math.PI * 2, anticlockwise = false) ->
  gl.beginPath()
  gl.arc x, y, r, startAngle, endAngle, anticlockwise
  gl.closePath()
  gl.stroke()

drawScene = ->
  gl.strokeStyle = "#000"
  gl.lineWidth = 5
  gl.fillStyle = "#f0ed24"

  drawCircle 600, 337, 300
  gl.fill()

  gl.lineWidth = 8
  gl.fillStyle = "#000"

  drawCircle 600, 337, 255, 0, Math.PI

  drawCircle 500, 210, 40
  gl.fill()

  drawCircle 700, 210, 40
  gl.fill()

$(document).ready ->
  start()
  drawScene()
