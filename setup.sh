
#!/bin/bash

echo "🚀 Setting up M7R Network..."

# Clone repository
git clone https://github.com/your-repo/m7rnetwork.git
cd m7rnetwork || exit

# Install backend dependencies
echo "📦 Installing backend dependencies..."
cd backend || exit
npm install

# Install frontend dependencies
echo "📦 Installing frontend dependencies..."
cd ../frontend || exit
npm install

# Prompt for .env setup
echo "🛠️ Please create and configure the .env files in both /backend and /frontend folders."
echo "✅ Setup complete. Use 'npm run dev' in backend and 'npm start' in frontend to begin."
