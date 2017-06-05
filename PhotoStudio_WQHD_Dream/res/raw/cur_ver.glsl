attribute vec2 a_Position;
uniform mat4 u_Matrix;
varying vec2 v_Position;

void main() {
	gl_Position = u_Matrix * vec4(a_Position, 0, 1);
	v_Position = gl_Position.xy;
}