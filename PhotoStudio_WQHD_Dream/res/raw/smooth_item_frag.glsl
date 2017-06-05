precision mediump float;
varying vec2 v_TextureCoordinate;
uniform sampler2D u_Sampler;
uniform float roundedness;
varying vec2 v_ReferencePosition;
uniform float maxX;
uniform float maxY;
float tmpx;
float tmpy;
float delta = 0.005;
float alpha;
 void main() {

 vec4 beta = texture2D(u_Sampler, v_TextureCoordinate);

 gl_FragColor = beta;
 tmpx = abs(v_ReferencePosition.x);
 tmpy = abs(v_ReferencePosition.y);
 if(tmpx > maxX - roundedness && tmpy > maxY - roundedness) {
 	tmpx -= maxX - roundedness;
 	tmpy -= maxY - roundedness;
 	if(tmpx * tmpx + tmpy * tmpy  > ((roundedness - delta) * (roundedness - delta))) {
 		alpha = smoothstep((roundedness -  delta) * (roundedness - delta), (roundedness) * (roundedness ), (tmpx * tmpx + tmpy * tmpy));
 		gl_FragColor = mix(beta, vec4(vec3(beta),0.0), alpha);
 	}
 }
}