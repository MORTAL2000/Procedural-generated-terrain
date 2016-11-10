#version 330 core

layout(location = 0) in vec3 Position;
layout ( location =1) in vec3 Normal;
layout ( location =2) in vec2 TexCoord;

uniform mat4 MVP;

out vec3 interpolatedNormal;
out vec2 st;

void main () {
		
		interpolatedNormal = Normal;
		st = TexCoord;
		gl_Position =  MVP * vec4 (Position , 1.0);
}