
# M7R Network Full Stack Project

This is a full-stack creator economy platform, ready for development, testing, and deployment. This guide covers all setup, run, and deployment instructions for the frontend and backend.

---

## 📁 Project Structure

```
/m7rnetwork
├── backend
├── frontend
└── scripts
```

---

## ⚙️ 1. Initial Setup

```bash
git clone https://github.com/your-repo/m7rnetwork.git
cd m7rnetwork

# Install backend dependencies
cd backend
npm install

# Install frontend dependencies
cd ../frontend
npm install
```

---

## ▶️ 2. Running Locally

```bash
# Backend (port 5000)
cd backend
npm run dev

# Frontend (port 3000)
cd ../frontend
npm start
```

---

## 🔐 3. Environment Variables

### /backend/.env

```
PORT=5000
MONGODB_URI=mongodb://localhost:27017/m7rnetwork
JWT_SECRET=your_jwt_secret
PAYFAST_MERCHANT_ID=xxx
PAYFAST_MERCHANT_KEY=xxx
PAYFAST_PASSPHRASE=optional_passphrase
```

### /frontend/.env

```
REACT_APP_API_BASE_URL=http://localhost:5000
```

---

## 🧪 4. Seeding Database

```bash
cd backend
node scripts/seed.js
```

---

## 💳 5. Payment Gateway (PayFast)

- Set webhook URL in PayFast dashboard.
- Test locally with ngrok:

```bash
ngrok http 5000
```

---

## 🚀 6. Build & Deploy

```bash
# Frontend production build
cd frontend
npm run build
```

Use /frontend/build for deployment on Netlify, Vercel, or copy it to your VPS.

```bash
# Backend production
cd backend
npm install -g pm2
pm2 start server.js
```

---

## 🔍 7. Logs & Monitoring

```bash
pm2 logs
pm2 restart all
```

---

## ✅ 8. Optional Automation

```bash
npm install -g concurrently
concurrently "npm run dev --prefix backend" "npm start --prefix frontend"
```

---

## 🧠 Smart Suggestions

- Use ESLint/Prettier for consistency
- Add Jest or Supertest for automated testing
- Integrate CI/CD with GitHub Actions or Vercel CLI
- Use Docker for containerization

---

Happy building! 🚀
