# Use Node.js 20 Alpine image
FROM node:20-alpine

# Install yarn if not available
RUN npm install -g yarn

# Set working directory
WORKDIR /app

# Copy package files from nrgcommerce directory
COPY nrgcommerce/package.json nrgcommerce/yarn.lock ./

# Configure yarn to suppress warnings
RUN yarn config set enableTelemetry false && \
    yarn config set enableGlobalCache false

# Install dependencies with error handling
RUN yarn install --frozen-lockfile --silent --ignore-engines --non-interactive --network-timeout 300000 || \
    (echo "Frozen lockfile failed, trying without..." && yarn install --silent --ignore-engines --non-interactive)

# Copy the rest of the nrgcommerce application
COPY nrgcommerce/ ./

# Build the application
RUN yarn build

# Expose port
EXPOSE 9000

# Set environment variables
ENV NODE_ENV=production
ENV PORT=9000

# Start the application
CMD ["yarn", "start"]