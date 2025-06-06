# FROM node:18
# WORKDIR /app
# COPY app.js .
# EXPOSE 3000
# CMD ["node" , "app.js"] 
# Use the official AWS Node.js Lambda base image
FROM public.ecr.aws/lambda/nodejs18.x@sha256:36a760c1572b3460a97bb40a170901c0e5dd8b6e553d50f3f0f47b5d840cd688

# Copy function code
COPY app.js ./

# Set the CMD to your handler (file name and exported function)
CMD ["app.handler"]


