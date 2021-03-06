#version 330

in vec3 VertexPosition;
in vec2 VertexTexCoord;
in vec3 VertexColor;
in vec3 VertexNormal;

out vec2 InterpolatedTexCoord;
out vec3 InterpolatedColor;
out vec3 InterpolatedNormal;
out vec3 PixelPosition;

uniform mat4 ModelMatrix;
uniform mat4 mvpMatrix;
uniform mat3 NormalMatrix;

void main()
{
	InterpolatedTexCoord = VertexTexCoord;
	InterpolatedColor = VertexColor;
	gl_Position = mvpMatrix * vec4(VertexPosition, 1.0f);
	PixelPosition = vec3(ModelMatrix * vec4(VertexPosition, 1.0f));
	InterpolatedNormal = NormalMatrix * VertexNormal;


}
