precision mediump float;
uniform float roundedness;
varying vec2 v_ReferencePosition;
uniform float maxX;
uniform float maxY;
uniform float selBorder;
uniform vec4 selColor;
float tmpx;
float tmpy;
void main() { 
tmpx = abs(v_ReferencePosition.x);
tmpy = abs(v_ReferencePosition.y);
if(tmpx > maxX - roundedness && tmpy > maxY - roundedness ) {
	tmpx -= maxX - roundedness;
	tmpy -= maxY - roundedness;
	if(tmpx * tmpx + tmpy * tmpy  < roundedness * roundedness  && tmpx * tmpx + tmpy * tmpy  > (roundedness - selBorder) * (roundedness - selBorder)) {
		gl_FragColor = selColor;
	}
}
else if(tmpx > maxX - selBorder || tmpy > maxY - selBorder) {
gl_FragColor = selColor;
}
}