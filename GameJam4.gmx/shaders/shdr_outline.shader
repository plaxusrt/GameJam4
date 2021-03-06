//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
//attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;

uniform float pixelSize;
uniform vec3 outlineColour;

void main()
{
    float alpha = 0.0;
    
    alpha+=texture2D( gm_BaseTexture, v_vTexcoord + vec2( pixelSize*2.0, 0.0 ) ).a;
    alpha+=texture2D( gm_BaseTexture, v_vTexcoord + vec2( -pixelSize*2.0, 0.0 ) ).a;
    alpha+=texture2D( gm_BaseTexture, v_vTexcoord + vec2( 0.0, pixelSize*2.0 ) ).a;
    alpha+=texture2D( gm_BaseTexture, v_vTexcoord + vec2( 0.0, -pixelSize*2.0 ) ).a;
    
    //alpha /= 4.0;
    
    gl_FragColor = vec4(outlineColour, alpha);
}

