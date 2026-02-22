#pull a base image
FROM python:3.12-slim

#create a folder where app code will stired
WORKDIR /app

#copy from HOST to container
COPY . .

#Compile the application code
RUN pip install -r requirements.txt

#expose port 80
EXPOSE 80

#serve the app/run the app
CMD ["python","run.py"]
