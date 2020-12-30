FROM python:3.8
ENV PYTHONUNBUFFERED=1
# Create a working directory for the django project
WORKDIR /code
# Copy requirements to the container

# con requirements
# COPY Pipfile /code/
# Install the requirements to the container
# utilizando 'python -m' para tomar la version correcta de python del entorno
# RUN python -m pip install pipenv && pipenv install --dev
# RUN pipenv shell

# con requirements
COPY requirements.txt /code/
RUN pip install -r requirements.txt

# Copy the project files into the working directory
COPY . /code/

