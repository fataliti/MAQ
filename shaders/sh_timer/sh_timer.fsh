varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float timeMax;
uniform float timeCur;

// https://thebookofshaders.com/08/?lan=ru
mat2 rotate2d(float _angle){
    return mat2(cos(_angle),-sin(_angle),
                sin(_angle),cos(_angle));
}


void main()
{   
    vec2 uv = v_vTexcoord;
    uv -= vec2(0.5);
    uv = rotate2d(-3.14 / 2.0) * uv;

    float color = 0.0;
    float d = length(uv);
    color += smoothstep(0.4, 0.4 - 0.01, d);
    color -= smoothstep(0.37, 0.36 , d);
    
    float angle = atan(uv.y, uv.x);
    //  https://stackoverflow.com/questions/1311049/how-to-map-atan2-to-degrees-0-360
    angle = (angle >= 0.0 ? angle : (2. * 3.14 + angle)) * 360.0 / (2.0 * 3.14);
    
    color += smoothstep(0.33, 0.33-0.01, d) * step(360.0 * (timeCur / timeMax), angle);
    color -= smoothstep(0.26, 0.26-0.01, d);
    
    
    gl_FragColor = vec4( color);
}