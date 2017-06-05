attribute vec2 a_Position;
attribute vec2 a_TextureCoordinate;
varying vec2 v_TextureCoordinate;
attribute vec2 a_ReferencePosition;
varying vec2 v_ReferencePosition;
void main() {
gl_Position = vec4(a_Position,0,1);
v_ReferencePosition = a_ReferencePosition;
v_TextureCoordinate = a_TextureCoordinate;
}