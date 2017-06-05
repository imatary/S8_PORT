precision highp float;
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
float alpha, beta, gamma, epsilon;
float result;
float delta = 0.005;
if(tmpx > maxX - roundedness && tmpy > maxY - roundedness ) {
	tmpx -= maxX - roundedness;
	tmpy -= maxY - roundedness;
	if(tmpx * tmpx + tmpy * tmpy  < roundedness * roundedness  && tmpx * tmpx + tmpy * tmpy  > (roundedness - selBorder) * (roundedness - selBorder)) {
		alpha = 1.0 - smoothstep((roundedness - selBorder) * (roundedness - selBorder),(roundedness - selBorder + delta) * (roundedness - selBorder + delta),(tmpx * tmpx + tmpy * tmpy));
		beta = smoothstep((roundedness - delta) * (roundedness - delta),(roundedness) * (roundedness),(tmpx * tmpx + tmpy * tmpy));
		gl_FragColor = mix(selColor, vec4(vec3(selColor),0.0),(alpha + beta));
	}
}
else if( tmpx > maxX - selBorder || tmpy > maxY - selBorder) {
alpha = 1.0 - smoothstep((maxX - selBorder),(maxX - selBorder + delta),tmpx);
beta = smoothstep((maxX - delta),maxX,tmpx);
gamma = 1.0 - smoothstep((maxY - selBorder),(maxY - selBorder + delta) ,tmpy);
epsilon = smoothstep((maxY - delta),maxY,tmpy);
if(tmpx > maxX - selBorder && tmpy > maxY - selBorder){
	if(roundedness > 0.0)
		gl_FragColor = mix(selColor, vec4(vec3(selColor),0.0),(beta + epsilon));
	else
	 	gl_FragColor = selColor;
}
else if(tmpx > maxX - selBorder) {
	gl_FragColor = mix(selColor, vec4(vec3(selColor),0.0),(alpha));
}
else {
	gl_FragColor = mix(selColor, vec4(vec3(selColor),0.0),(gamma));
}
}
}