precision highp float;

#define SMOOTH_RANGE 0.3
#define DELTA_X 0.001

uniform int u_PointCount;
uniform vec2 u_FittingPoint[6];
uniform vec4 u_CurveParameter[5];
uniform float u_LineWidth;
uniform float u_StrokeWidth;
uniform float u_ScreenWidth;
uniform float u_ScreenHeight;
uniform vec4 u_Color;

varying vec2 v_Position;

vec2 getFittingPointAt(int _index) {
    if (_index == 0)
        return u_FittingPoint[0];
    if (_index == 1)
        return u_FittingPoint[1];
    if (_index == 2)
        return u_FittingPoint[2];
    if (_index == 3)
        return u_FittingPoint[3];
    if (_index == 4)
        return u_FittingPoint[4];
    if (_index == 5)
        return u_FittingPoint[5];
}

vec4 getParametersAt(int _index) {
    if (_index == 0)
        return u_CurveParameter[0];
    if (_index == 1)
        return u_CurveParameter[1];
    if (_index == 2)
        return u_CurveParameter[2];
    if (_index == 3)
        return u_CurveParameter[3];
    if (_index == 4)
        return u_CurveParameter[4];
}

float f_out(float _input) {
	int i_res = 0;
	vec2 first_point = getFittingPointAt(0);
    vec2 last_point = getFittingPointAt(u_PointCount - 1);
	bool trend = last_point.x > first_point.x;
	for (int i = 0; i < u_PointCount; i++) {
        if (i == u_PointCount - 1) {
            i_res = u_PointCount - 2;
        } else {
            float point_x = getFittingPointAt(i+1).x;
            if ((trend && _input <= point_x) || (!trend && _input >= point_x)) {
                i_res = i;
                break;
            }
        }
	}
	vec4 param = getParametersAt(i_res);
	float fout = param.x + param.y * _input + param.z * _input * _input + param.w * _input * _input * _input;
	return clamp(fout, first_point.y, last_point.y);
}

void main() {
	float alpha, f_v, f_pre, f_nxt, diff, angle, half_line_width, half_stroke_width;

	f_v = f_out(v_Position.x);
	diff = abs(f_v - v_Position.y);

	f_pre = f_out(v_Position.x - DELTA_X);
	f_nxt = f_out(v_Position.x + DELTA_X);
	angle = atan(((f_nxt - f_pre) * u_ScreenHeight) / (2.0 * DELTA_X * u_ScreenWidth));
	half_line_width = u_LineWidth / (2.0 * cos(angle) * u_ScreenHeight);
	half_stroke_width = u_StrokeWidth / (2.0 * cos(angle) * u_ScreenHeight);

    if (diff > (half_line_width + half_stroke_width) * (1.0 + SMOOTH_RANGE))
        discard;

	if (diff <= half_line_width * (1.0 - SMOOTH_RANGE)) {
		gl_FragColor = u_Color;
	} else if (diff <= half_line_width + half_stroke_width * SMOOTH_RANGE) {
		alpha = smoothstep(half_line_width * (1.0 - SMOOTH_RANGE), half_line_width + half_stroke_width * SMOOTH_RANGE, diff);
		gl_FragColor = mix(u_Color, vec4(0.0, 0.0, 0.0, 0.3), alpha);
	} else if (diff	<= half_line_width + half_stroke_width * (1.0 - SMOOTH_RANGE)) {
		gl_FragColor = vec4(0.0, 0.0, 0.0, 0.3);
	} else if (diff	<= half_line_width + half_stroke_width * (1.0 + SMOOTH_RANGE)) {
		alpha = smoothstep(half_line_width + half_stroke_width * (1.0 + SMOOTH_RANGE), half_line_width + half_stroke_width * (1.0 - SMOOTH_RANGE), diff);
		gl_FragColor = vec4(0.0, 0.0, 0.0, 0.3 * alpha);
	}
}