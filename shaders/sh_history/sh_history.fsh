varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{	
	float alpha = 0.0;
    vec2 uv = v_vTexcoord;
    
    alpha += smoothstep(0.01, 0.06, uv.y);
    alpha -= smoothstep(0.94, 0.99, uv.y);
	
	gl_FragColor = v_vColour * texture2D( gm_BaseTexture, uv) * alpha;
}