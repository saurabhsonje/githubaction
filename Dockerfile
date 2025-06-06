# FROM node:18
# WORKDIR /app
# COPY app.js .
# EXPOSE 3000
# CMD ["node" , "app.js"] 
# Use the official AWS Node.js Lambda base image
FROM public.ecr.aws/lambda/nodejs18.x

# Copy function code
COPY app.js ./

# Set the CMD to your handler (file name and exported function)
CMD ["app.handler"]


