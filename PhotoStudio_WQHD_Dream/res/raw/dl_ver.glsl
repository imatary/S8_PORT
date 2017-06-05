attribute vec2 a_Position;
attribute vec2 a_TextureCoordinate;
varying vec2 v_TextureCoordinates;
void main() {
gl_Position = vec4(a_Position,0,1);
v_TextureCoordinates = a_TextureCoordinate;
}