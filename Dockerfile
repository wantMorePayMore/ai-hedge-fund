# Use the specified Python base image
FROM python:3.10.16-bookworm

# Set working directory
WORKDIR /app

# Copy the entire project
COPY . /app

# Install Poetry
RUN curl -sSL https://install.python-poetry.org | python3 -

# Add Poetry to PATH
ENV PATH="/root/.local/bin:${PATH}"

# Install project dependencies
RUN poetry install

# No default command (container will start and exit)
CMD ["/bin/bash"]
