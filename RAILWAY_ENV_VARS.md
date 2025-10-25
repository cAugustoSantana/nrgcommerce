# Railway Environment Variables Required

## Database Configuration
DATABASE_URL=postgresql://username:password@host:port/database

## CORS Configuration
STORE_CORS=http://localhost:8000,https://your-domain.com
ADMIN_CORS=http://localhost:7001,https://your-admin-domain.com
AUTH_CORS=http://localhost:8000,https://your-domain.com

## Security Secrets
JWT_SECRET=your-super-secret-jwt-key-here
COOKIE_SECRET=your-super-secret-cookie-key-here

## Stripe Payment Configuration
STRIPE_API_KEY=sk_test_your_stripe_secret_key
STRIPE_WEBHOOK_SECRET=whsec_your_stripe_webhook_secret

## Node Environment
NODE_ENV=production

## Optional: Custom Port (Railway will set PORT automatically)
# PORT=9000
