# 🎶 AUDIORA: Music Recognition Application  
_Shazam-like Audio Identification Tool_

## 📌 Introduction

**AUDIORA** is an advanced music recognition system designed to identify songs from short audio clips. Inspired by platforms like **Shazam**, it leverages cutting-edge **audio fingerprinting**, **real-time processing**, and a full-stack web interface to bridge the gap between user experience and embedded audio recognition technology.

Built with a modern **React frontend**, a powerful **Go-based backend**, and a **Python audio engine**, AUDIORA provides a scalable and responsive solution for music lovers and developers alike.

## 🧠 Project Overview

AUDIORA converts recorded audio into unique fingerprints, matches them against a fingerprint database, and returns the matching song metadata to the user — all through a user-friendly web interface. It supports live recordings, precise fingerprinting, and fast identification optimized for cloud-scale deployment.

## ✨ Features

- 🎤 **Real-time audio capture from browser**
- 🎼 **Audio fingerprinting using FFT-based frequency analysis**
- 🔎 **Accurate song matching via Locality-Sensitive Hashing (LSH)**
- 🧩 Modular backend in **Go + Python**
- 🌐 Modern, responsive frontend using **React** and **Tailwind CSS**
- 🧪 Basic testing using Postman, MongoDB Compass, and logs
- ☁️ Scalable and containerized using **Docker**

## 🧰 Technologies Used

| ![React](https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB) | ![Tailwind CSS](https://img.shields.io/badge/Tailwind_CSS-38B2AC?style=for-the-badge&logo=tailwind-css&logoColor=white) | ![Go](https://img.shields.io/badge/Go-00ADD8?style=for-the-badge&logo=go&logoColor=white) | ![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white) |
|---|---|---|---|
| ![Flask](https://img.shields.io/badge/Flask-000000?style=for-the-badge&logo=flask&logoColor=white) | ![Librosa](https://img.shields.io/badge/Librosa-9E9E9E?style=for-the-badge&logo=python&logoColor=white) | ![MongoDB](https://img.shields.io/badge/MongoDB-4EA94B?style=for-the-badge&logo=mongodb&logoColor=white) | ![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white) |

| Layer            | Tools & Languages |
|------------------|-------------------|
| **Frontend**     | React.js, Tailwind CSS, Web Audio API |
| **Backend (API)**| Golang (Go), Flask (Python bridge) |
| **Audio Engine** | Python, Librosa, NumPy, SciPy, FFmpeg |
| **Database**     | MongoDB |
| **Containerization** | Docker |
| **Testing Tools** | Postman, MongoDB Compass |

## 📁 Project Structure

```text
AUDIORA/
├── Backend/
│ ├── audio_engine/           # Python audio fingerprinting logic
│ ├── app.go                  # Go server API
│ └── flask_bridge.py         # Bridge to Python engine
├── Frontend/
│ ├── src/                    # React components
│ └── index.html
├── Dockerfile
├── database/                 # MongoDB fingerprint collections
├── tests/                    # Postman/API tests
└── README.md
```

## 🛠️ Recognition Workflow

1. **Record**: User records audio via browser.
2. **Preprocess**: Audio cleaned, converted to mono WAV using FFmpeg.
3. **Fingerprinting**: Spectral peaks extracted using FFT; hashes generated.
4. **Match**: Fingerprints matched against MongoDB using LSH.
5. **Result**: Matching song displayed with title, artist, and album.

## 🚀 How to Run

### 📥 Clone Repo

  ```bash
    git clone https://github.com/rakshitnarang018/Audiora01
    cd Audiora01
  ```

### 🧠 Backend Setup

1. Set up Python environment:

  ```bash
    python -m venv .venv
    source .venv/bin/activate      # On Linux/Mac
    .venv\Scripts\activate         # On Windows
  ```

2. Install Python dependencies:

  ```bash
    pip install -r requirements.txt
  ```

3. Run the Flask backend:

  ```bash
    cd Backend
    python app.py
  ```
Flask server will run at: http://localhost:5000

### 🎨 Frontend Setup
You can either run the frontend with npm or use Docker Compose:
  ```bash
    cd Frontend
    npm install
    npm run dev
  ```
Visit http://localhost:3000 in your browser to use the app.

### 🐳 Docker Deployment
AUDIORA uses Docker Compose to containerize and serve the React frontend, while the backend is run manually on your local machine.

#### 📁 Prerequisites
- Docker & Docker Compose installed: Get Docker

#### 🚀 Build and Start the Frontend

From the root of your project (where docker-compose.yml is present or create it as shown below):

  ```bash
    docker-compose up --build
  ```

##  🧪 Testing
Basic testing was performed using:

- ✅ Postman – for API request testing
- ✅ MongoDB Compass – to inspect stored fingerprints
- ✅ Temporary audio logs – for audio integrity validation
- ✅ Manual logs – to verify backend/frontend flow

## 🖼️ UI Snapshots
- 🎧 Landing Page – “Welcome to AUDIORA”
- 🟢 Recording Animation – “Listening for your tune...”
- 📊 Analyzing Page – “Matching your music...”
- 🎉 Result Page – Displays identified song details

## 🔭 Future Enhancements
- 🔁 Live-stream music detection
- 🌍 Multilingual/global music database
- ⚡ Edge computing for ultra-low latency
- 🔒 Audio encryption and user profile sync
- 🤖 AI-based music genre or mood tagging

## 📚 Acknowledgments
- Librosa, SciPy, FFmpeg, Flask, MongoDB
- Shazam – for inspiring the concept
- React + Tailwind community
- Python and Go open-source ecosystems