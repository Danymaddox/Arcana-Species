#version 150

in vec4 vertexColor;
in float vertexDistance;
in vec3 xyzPos;

uniform float GameTime;
uniform vec4 ColorModulator;
uniform vec2 u_resolution;
uniform vec2 ScreenSize;

out vec4 fragColor;

void main() {
    vec4 color = vertexColor;
    if (color.a == 0.0) {
        discard;
    }

    /* checks for background colour */
    if (color.r == 16/255.0 && color.g == 0/255.0 && color.b == 16/255.0 ) {
        color = vec4(0.25, 0.00, 0.28, 0.6); /* < < Your custom colour goes here*/
    }

    /* checks for border colours */
    if (color.r >= 0.15686 && color.r <= 0.31373 && color.g == 0 && color.b >= 0.49 && color.b <= 1) { 
        color = vec4(1.00, 0.67, 0.00, 0.9); /* < < Your custom colour goes here*/
    }

    if (color.r == 255/255.0 && color.g == 255/255.0 && color.b == 255/255.0 && color.a == 128/255.0) {
    color = vec4(0.63, 0.63, 0.63, color.a); /* < < Your colour goes here (#4e315e)*/
    }
    if (color.r == 239.0/255.0 && color.g == 50.0/255.0 && color.b == 61.0/255.0) {
    color = vec4(1.00, 0.67, 0.00, color.a); /* < < Your custom colour goes here (#372C32)*/
    }
    
    
    // opacity override
    //color = vec4(color.rgb, 1.0);

    fragColor = color * ColorModulator;
}
