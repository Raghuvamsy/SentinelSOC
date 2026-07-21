#!/bin/bash
echo "🛡️ SentinelSOC Setup"
echo "===================="

# Backend setup
cd backend
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
cp .env.example .env 2>/dev/null || echo "Create .env file manually"
python init_db.py
cd ..

# Frontend setup
cd frontend
npm install
cd ..

echo ""
echo "✅ Setup complete!"
echo "Terminal 1: cd backend && source venv/bin/activate && python app.py"
echo "Terminal 2: cd frontend && npm run dev"
echo "Open: http://localhost:3000"
echo "Login: admin / admin123"