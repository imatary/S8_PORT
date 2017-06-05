precision mediump float;
varying vec2 v_TextureCoordinate;
uniform sampler2D u_Sampler;
uniform float roundedness;
varying vec2 v_ReferencePosition;
uniform float maxX;
uniform float maxY;
float tmpx;
float tmpy;
void main() { 

gl_FragColor = texture2D(u_Sampler, v_TextureCoordinate);
tmpx = abs(v_ReferencePosition.x);
tmpy = abs(v_ReferencePosition.y);
if(tmpx > maxX - roundedness && tmpy > maxY - roundedness) {
	tmpx -= maxX - roundedness;
	tmpy -= maxY - roundedness;
	if(tmpx * tmpx + tmpy * tmpy  > roundedness * roundedness) {
		gl_FragColor = vec4(0,0,0,0);
	}
}

}