precision highp float;
precision mediump sampler2D;
varying vec2 vUv;
uniform sampler2D uTexture;
void main() {
  vec3 color = texture2D(uTexture, vUv).rgb * 0.1;
  color = min(color, 0.4);
  color = vec3(1.0) - color;
  color *= vec3(0.95, 0.9, 0.9);
  gl_FragColor = vec4(color, 1.0);
}
