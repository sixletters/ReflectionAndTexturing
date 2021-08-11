# Reflection And Texturing
by Harris maung
CS3241 Lab3

This is a texturing and reflection implementation with openGL. We are able to render a scene that users can pan left,right, up and down.
The image below shows the final scene. The reflection on the table was done primitively by taking a table as a plane and using a camera whose positions are a reflection
about this plane to output an image of what it looks like from below the table. This image is then used as a texture and is rendered on the table top during rasterization.

![RayTracing](https://github.com/sixletters/ReflectionAndTexturing/blob/master/out.png?raw=true)
