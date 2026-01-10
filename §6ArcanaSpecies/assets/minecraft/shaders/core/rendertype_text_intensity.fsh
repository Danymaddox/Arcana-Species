#version 150

#moj_import <fog.glsl>

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;

in float vertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;
in float depthLevel;

out vec4 fragColor;

void main() {
    vec4 color = vec4(vec3(1.0), texture(Sampler0, texCoord0).r) * vertexColor;
    if (color.a < 0.1) discard;

    if (depthLevel == 0) {
      if (color.r > 0.2441 && color.r < 0.2442 && color.r == color.g && color.r == color.b) {
        color.rgb = vec3(1.0);
      } else if (color.r > 0.2480 && color.r < 0.2481 && color.r == color.g && color.r == color.b) {
        color.rgb = vec3(1.0);
      } else if (color.r > 0.403 && color.r < 0.4031 && color.g > 0.3642 && color.g < 0.3643 && color.b > 0.2867 && color.b < 0.2868) {
        color.rgb = vec3(0.78, 1.0, 0.56);
      } else if (color.r > 0.496 && color.r < 0.4961 && color.r == color.g && color.r == color.b) {
        color.rgb = vec3(0.95);
      } else if (color.r > 0.527 && color.r < 0.5271 && color.r == color.g && color.r == color.b) {
        color.rgb = vec3(1.0);
      } else if (color.r > 0.372 && color.r < 0.3721 && color.r == color.g && color.r == color.b) {
        color.rgb = vec3(0.93, 0.98, 0.98);
	  } else if (color.r > 0.2635 && color.r < 0.2636 && color.r == color.g && color.r == color.b) {
        color.rgb = vec3(1.0, 0.95, 0.95);
      } else if (color.r > 0.3294 && color.r < 0.3295 && color.r == color.g && color.r == color.b) {
        color.rgb = vec3(0.85, 0.9, 0.95);
      } else if (color.r > 0.4883 && color.r < 0.4884 && color.r == color.g && color.r == color.b) {
        color.rgb = vec3(0.93, 0.98, 0.98);
      } else if (color.r > 0.0968 && color.r < 0.0969 && color.g > 0.124 && color.g < 0.1241 && color.b > 0.1317 && color.b < 0.1318) {
        color.rgb = vec3(0.93, 0.95, 0.98);
      } else if (color.r > 0.2867 && color.r < 0.2868 && color.g > 0.248 && color.g < 0.2481 && color.b > 0.1705 && color.b < 0.1706) {
        color.rgb = vec3(0.98, 1.0, 0.76);
      } else if (color.r > 0.3991 && color.r < 0.3992 && color.g > 0.3604 && color.g < 0.3605 && color.b > 0.2829 && color.b < 0.283) {
        color.rgb = vec3(0.68, 0.9, 0.46);
      } else if (color.r > 0.279 && color.r < 0.2791 && color.r == color.g && color.b > 0.2751 && color.b < 0.2752) {
        color.rgb = vec3(0.95, 0.95, 0.92);
      } else if (color.r > 0.1162 && color.r < 0.1163 && color.r == color.g && color.r == color.b) {
        color.rgb = vec3(0.95, 0.92, 0.95);
      } else if (color.r > 0.3449 && color.r < 0.345 && color.g > 0.1395 && color.g < 0.1396 && color.g == color.b) {
        color.rgb = vec3(1.0);
      } else if (color.r > 0.0542 && color.r < 0.0543 && color.g > 0.1317 && color.g < 0.1318 && color.b > 0.1976 && color.b < 0.1977) {
        color.rgb = vec3(1.0);
      } else if (color.r > 0.31 && color.r < 0.3101 && color.r == color.g && color.r == color.b) {
        color.rgb = vec3(1.0);
      } else if (color.r > 0.6588 && color.r < 0.6589 && color.r == color.g && color.r == color.b) {
        color.rgb = vec3(1.0);
      } else if (color.r > 0.2325 && color.r < 0.2326 && color.r == color.g && color.r == color.b) {
        color.rgb = vec3(1.0);
      } else if (color.r > 0.186 && color.r < 0.1861 && color.r == color.g && color.r == color.b) {
        color.rgb = vec3(1.0);
      } else if (color.r > 0.4611 && color.r < 0.4612 && color.r == color.g && color.r == color.b) {
        color.rgb = vec3(1.0);
      } else if (color.r > 0.5929 && color.r < 0.593 && color.r == color.g && color.r == color.b) {
        color.rgb = vec3(0.9);
      } else if (color.r > 0.1201 && color.r < 0.1202 && color.g > 0.2131 && color.g < 0.2132 && color.b > 0.2441 && color.b < 0.2442) {
        color.rgb = vec3(1.0);
      } else if (color.r > 0.1743 && color.r < 0.1744 && color.g > 0.2441 && color.g < 0.2442 && color.b > 0.279 && color.b < 0.2791) {
        color.rgb = vec3(0.9, 1.0, 1.0);
      } else if (color.r > 0.2441 && color.r < 0.2442 && color.g > 0.3216 && color.g < 0.3217 && color.b > 0.3526 && color.b < 0.3527) {
        color.rgb = vec3(1.0, 0.95, 0.95);
      } else if (color.r > 0.4805 && color.r < 0.4806 && color.g > 0.5309 && color.g < 0.531 && color.b > 0.5386 && color.b < 0.5387) {
        color.rgb = vec3(0.98, 1.0, 1.0);
      } else if (color.a < 0.4001 && color.r < 0.0001 && color.g < 0.0001 && color.b < 0.0001) {
        color.rgb = vec3(1.0);
		color.a = color.a + 0.4;
      }
    } else if (depthLevel == 200 && color.r > 0.248 && color.r < 0.2481 && color.r == color.g && color.r == color.b) {
      color.rgb = vec3(1.0);
    } else if (depthLevel == 300 && color.r > 0.248 && color.r < 0.2481 && color.r == color.g && color.r == color.b) {
      color.rgb = vec3(1.0);
    } else if (depthLevel >= 300 && mod(depthLevel, 50.0) == 0) {
      if (color.r > 0.465 && color.r < 0.4651 && color.r == color.g && color.r == color.b) {
	    color.rgb = vec3(1.0);
	  } else if (color.r > 0.4728 && color.r < 0.4729 && color.r == color.g && color.r == color.b) {
	    color.rgb = vec3(0.95);
	  } else if (depthLevel >= 500) {
	    if (color.r > 0.248 && color.r < 0.2481 && color.r == color.g && color.r == color.b) {
          color.rgb = vec3(1.0);
	    } else if (color.r > 0.062 && color.r < 0.0621 && color.r == color.g && color.r == color.b) {
          color.rgb = vec3(1.0);
	    }
	  }
    } else if (depthLevel == 0.03) {
      if (color.r > 0.5929 && color.r < 0.593 && color.r == color.g && color.r == color.b) {
        color.rgb = vec3(1.0);
      } else if (color.r > 0.9882 && color.r < 0.9883 && color.r == color.g && color.r == color.b) {
        color.a = 0.0;
      }
    } else if (depthLevel == 1 && color.r > 0.3294 && color.r < 0.3295 && color.r == color.g && color.r == color.b) {
      color.rgb = vec3(0.85, 0.9, 0.95);
    } else if (depthLevel == 2) {
      color.rgb = vec3(0.9);
    } else if (depthLevel == 2.1) {
      color.rgb = vec3(0.0);
    }

    fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
}