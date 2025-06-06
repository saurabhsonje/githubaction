# Use the official AWS Node.js Lambda base image
FROM public.ecr.aws/lambda/nodejs18.x

# Copy function code
COPY app.js ./

# Set the CMD to your handler (file name and exported function)
CMD ["app.handler"]
