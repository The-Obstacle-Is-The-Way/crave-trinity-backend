# 🌊 CRAVE WAVE (Trinity Backend): Vertical AI Optimization for Craving Intelligence

## 🌟 Overview  
CRAVE WAVE (Trinity Backend) is a modular, Dockerized FastAPI application built with clean architecture principles. It is designed to track and analyze user cravings and integrates multiple external services, including:  

- 🛢 **PostgreSQL** for structured data storage  
- 🧠 **Pinecone** for vector-based retrieval 
- 🤖 **Llama 2 with LoRA integration** for AI-powered insights

This repository demonstrates an end-to-end system—from initial setup and database migrations to AI model inference with LoRA adapters.  
* 🔗 Frontend (SwiftUI + SwiftData + MVVM) → [crave-trinity-frontend](https://github.com/Crave-Trinity/crave-trinity-frontend)
* 🔗 Backend (FastAPI + PostgreSQL + Pinecone + Llama 2) → [crave-trinity-backend](https://github.com/Crave-Trinity/crave-trinity-backend)

---

⚠️ Disclaimer: CRAVE intends to provide analytical insights based on user-logged cravings data.

It will not offer medical predictions, diagnoses, or treatment prior to FDA SaMD approval.
Any behavioral insights should be viewed as informational only, and users should consult a healthcare professional for medical or therapeutic guidance.

---

![CRAVE Architecture](docs/crave-trinity-architecture-fixed.svg)

## 🌊 Vision
CRAVE-WAVE strives to be the world’s first self-optimizing craving intelligence system—a backend powered by Vertical AI, ensuring that craving personas, retrieval strategies, and inference evolve dynamically as moat and user behavior shift.

🧠 LoRA Persona Hot-Swapping: 
* AI doesn’t just retrieve user insights—it ensures that only the most relevant craving personas are running at any given time. Unused personas are dynamically offloaded, and active personas are auto-optimized based on real-world craving triggers.

🔍 RAG Time Compression & Sequencing: 
* Forget static retrieval pipelines. CRAVE’s retrieval strategy adapts over time, ensuring that recent cravings are prioritized, while older patterns are compressed & summarized intelligently.

⚡ Self-Tuning GPU & VRAM Optimization: 
* The system continuously monitors hardware utilization—adjusting VRAM allocation, inference batching, and persona swapping to ensure real-time efficiency without bottlenecks.

🚀 Autonomous AI Fine-Tuning: 
* Instead of relying on human intervention, CRAVE uses Reinforcement Learning (RLHF) to iteratively refine LoRA persona deployment and retrieval logic. It’s an AI system that learns how to optimize itself—so performance improves continuously.
  
---

🔗 The Core AI Infrastructure

1️⃣ Vertical AI Agent for Autonomous LoRA Persona Management
* ✔ Monitors real-world craving events and dynamically deploys, swaps, or removes LoRA fine-tuned personas in real time.
* ✔ Hot-swap framework to keep only the most relevant craving personas in active VRAM.
* ✔ Self-improving persona selection via Reinforcement Learning (RLHF) to enhance accuracy over time.

2️⃣ Adaptive RAG Retrieval & Time Compression
* ✔ Recency-Weighted Memory: Prioritizes recent cravings but summarizes long-term trends to prevent AI bloating.
* ✔ Dynamic Retrieval Scaling: Adjusts vector DB query depth & response relevance based on past user interactions.
* ✔ Time-Aware Insight Caching: Creates compressed trend markers so retrieval remains fast & cost-efficient.

3️⃣ Self-Tuning AI Inference Optimization
* ✔ Real-Time VRAM/CPU Monitoring: Adjusts hardware usage based on demand.
* ✔ Quantization & Adaptive Batching: Ensures LLaMA/LoRA models run at peak efficiency with minimal compute lag.
* ✔ Scales automatically with user volume: Prevents GPU bottlenecks by auto-managing active inference nodes.

---

## 🏗 Architecture & Batches  

The project was developed with AI-acceleration & basecode abstraction through modular batches, breaking the development process into structured steps:  

### 🔹 Batch 1 – Initial Setup  
📌 Clone the repository, install dependencies, and configure the environment.  
🔧 Initialize **PostgreSQL** and apply **Alembic** database migrations.  
📂 **Key files:** `.env`, `requirements.txt`, `alembic.ini`  

### 🔹 Batch 2 – Backend & Database Integration  
🛠 Develop **FastAPI** REST endpoints following **clean architecture**.  
📊 Implement **database models, repositories, and use-case layers** for craving tracking.  
📂 **Key files:** `app/api/`, `app/core/`, `app/infrastructure/database/`  

### 🔹 Batch 3 – External Services Integration  
📡 Connect to **Pinecone** for **vector storage & retrieval**.  
🤖 Integrate **OpenAI embeddings** for craving analysis.  
📂 **Key files:** `app/infrastructure/vector_db/`, `app/infrastructure/external/openai_embedding.py`  

### 🔹 Batch 4 – Llama 2 with LoRA Integration  
🦙 Load and fine-tune **Llama 2** using **LoRA adapters**.  
🔍 Deploy AI inference endpoints for **craving insights**.  
📂 **Key files:** `app/models/llama2_model.py`, `app/infrastructure/llm/llama2_adapter.py`  

---

## 📂 File Structure  

```plaintext
jj@DESKTOP-L9V85UA:/mnt/c/Users/JJ/Desktop/CRAVE/crave_trinity_backend$ tree -I ".git"
.
################################################################################
#                                                                              
#  "I understand there's a guy inside me who wants to lay in bed,              
#   smoke weed all day, and watch cartoons and old movies.                     
#   My whole life is a series of stratagems to avoid, and outwit, that guy."  
#                                                                              
#   - Anthony Bourdain                                                         
#                                                                              
#   CRAVE: Because understanding your cravings shouldn't be complicated 🍫
#                                                                              
################################################################################
#
#
#
├── Dockerfile
├── README.md
├── alembic.ini
├── app
│   ├── api
│   │   ├── dependencies.py
│   │   ├── endpoints
│   │   │   ├── ai_endpoints.py
│   │   │   ├── craving_logs.py
│   │   │   ├── dependencies.py
│   │   │   ├── health.py
│   │   │   └── user_queries.py
│   │   └── main.py
│   ├── config
│   │   ├── __pycache__
│   │   │   └── settings.cpython-310.pyc
│   │   ├── logging.py
│   │   └── settings.py
│   ├── container
│   │   ├── Dockerfile
│   │   └── ecs_config.yaml
│   ├── core
│   │   ├── entities
│   │   │   ├── craving.py
│   │   │   └── user.py
│   │   ├── services
│   │   │   ├── analytics_service.py
│   │   │   ├── embedding_service.py
│   │   │   ├── lora_manager.py
│   │   │   ├── pattern_detection_service.py
│   │   │   └── rag_service.py
│   │   └── use_cases
│   │       ├── generate_craving_insights.py
│   │       ├── ingest_craving.py
│   │       ├── manage_metadata.py
│   │       ├── process_query.py
│   │       └── search_cravings.py
│   ├── infrastructure
│   │   ├── auth
│   │   │   ├── auth_service.py
│   │   │   ├── oauth_provider.py
│   │   │   └── user_manager.py
│   │   ├── database
│   │   │   ├── __pycache__
│   │   │   │   └── models.cpython-310.pyc
│   │   │   ├── migrations
│   │   │   │   ├── README
│   │   │   │   ├── __pycache__
│   │   │   │   │   └── env.cpython-310.pyc
│   │   │   │   ├── env.py
│   │   │   │   ├── script.py.mako
│   │   │   │   └── versions
│   │   │   │       ├── 200c7d532370_initial_tables_users_cravings.py
│   │   │   │       └── __pycache__
│   │   │   │           └── 200c7d532370_initial_tables_users_cravings.cpython-310.pyc
│   │   │   ├── models.py
│   │   │   └── repository.py
│   │   ├── external
│   │   │   ├── langchain_integration.py
│   │   │   └── openai_embedding.py
│   │   ├── llm
│   │   │   ├── huggingface_integration.py
│   │   │   ├── llama2_adapter.py
│   │   │   └── lora_adapter.py
│   │   └── vector_db
│   │       ├── pinecone_client.py
│   │       └── vector_repository.py
│   └── models
│       └── llama2_model.py
├── docker-compose.yml
├── docs
│   ├── architecture.md
│   └── roadmap.md
├── infra
│   ├── aws
│   ├── docker
│   └── k8s
├── main.py
├── pyproject.toml
├── requirements.txt
└── tests
    ├── integration
    │   ├── test_ai_endpoints.py
    │   ├── test_api.py
    │   └── test_craving_search_api.py
    ├── test_basic.py
    └── unit
        ├── test_auth_service.py
        ├── test_ingest_craving.py
        ├── test_lora_adapter.py
        ├── test_rag_service.py
        └── test_search_cravings.py

30 directories, 62 files
```
---

## ⚡ Quick Start  

### ✅ Prerequisites  

Before you begin, ensure you have the following installed:  

- 🐳 Docker & Docker Compose for containerized setup  
- 🐍 Python 3.11 (if running locally)  
- 🤗 Hugging Face CLI (if using private models, run `huggingface-cli login`)  

### 📥 Clone the Repository  

```bash
git clone git@github.com:The-Obstacle-Is-The-Way/crave-trinity-backend.git
cd crave-trinity-backend
```

### 🔧 Configure Environment Variables  

Create a `.env` file in the project root with the necessary credentials:  

```env
SQLALCHEMY_DATABASE_URI=postgresql://postgres:password@db:5432/crave_db
PINECONE_API_KEY=your_pinecone_api_key_here
PINECONE_ENV=us-east-1-aws
PINECONE_INDEX_NAME=crave-embeddings
OPENAI_API_KEY=your_openai_api_key_here
```

### 🏗 Build & Run with Docker Compose  

```bash
docker-compose up --build
```

This will:  
✅ Build the **FastAPI** backend container  
✅ Start the **PostgreSQL** database  
✅ Expose ports **8000** (API) & **5432** (Database)  

### 🔄 Run Database Migrations  

Inside the container (or locally, if configured):  

```bash
alembic upgrade head
```

This ensures the **database schema** is up to date.  

---

## 🧪 Testing the Application  

### 🔬 API Endpoints  

Once running, test the **craving logging API** with:  

```bash
curl -X POST -H "Content-Type: application/json" \
-d '{"user_id":1, "description":"Chocolate craving", "intensity":8}' \
http://localhost:8000/cravings
```

### 📡 Pinecone Integration  

Inside the **FastAPI** container, verify the Pinecone index:  

```bash
docker exec -it crave_trinity_backend-fast-api-1 python -c \
"from app.infrastructure.vector_db.pinecone_client import init_pinecone; \
init_pinecone(); import pinecone; print('List of indexes:', pinecone.list_indexes())"
```

Ensure `crave-embeddings` exists and is ready for use.  

### 🤖 Run Llama 2 with LoRA Inference (Batch 4)  

```bash
docker exec -it crave_trinity_backend-fast-api-1 python app/models/llama2_model.py
```

This loads **Llama 2 + LoRA adapters** and runs a **test inference prompt**.  

---

## 🛠 Technical Details  

- 🐳 **Dockerized Setup**  
  - The backend is containerized with Python 3.11-slim for efficiency.  

- 🛢 **Database**  
  - Uses **PostgreSQL**, managed via **Alembic** migrations.  

- 📡 **External Services**  
  - **Pinecone** for vector storage & retrieval.  
  - **OpenAI** for text embeddings and craving analysis.  

- 🤖 **AI Model (Batch 4)**  
  - Llama 2 runs via Hugging Face Transformers.  
  - LoRA adapters fine-tune AI insights with PEFT.  

---

## 🛣 Roadmap & Future Enhancements  

🔜 **Batch 5** – Analytics dashboard & craving trend visualization  
📊 **Batch 6** – Performance optimizations (GPU inference, rate limiting)  
🔒 **Security Enhancements** – OAuth, data anonymization, and logging improvements  
🚀 **Scaling** – Kubernetes deployment (`infra/k8s`)  

---

🌍 Why This Changes Everything

* 💥 Static AI is dead.
* 💥 Self-learning, self-optimizing AI is the future.
* 💥 CRAVE-WAVE is that future.

💡 We don’t ask if something is possible. We build until it is.

* ⚡ AI that doesn’t just process cravings—it evolves in real time.
* ⚡ Welcome to the first self-optimizing craving intelligence system.
* ⚡ Welcome to CRAVE-WAVE.

🔥 Get Involved & Contribute
This is a revolution in craving intelligence.

📜 GitHub: Crave-Trinity Backend
📢 Twitter: Coming Soon.
🎙 YC Demo Day: Stay tuned.

---

* 🔗 Frontend (SwiftUI + SwiftData + MVVM) → [crave-trinity-frontend](https://github.com/Crave-Trinity/crave-trinity-frontend)
* 🔗 Backend (FastAPI + PostgreSQL + Pinecone + Llama 2) → [crave-trinity-backend](https://github.com/Crave-Trinity/crave-trinity-backend)

---

⚠️ Disclaimer: CRAVE intends to provide analytical insights based on user-logged cravings data.

It will not offer medical predictions, diagnoses, or treatment prior to FDA SaMD approval.
Any behavioral insights should be viewed as informational only, and users should consult a healthcare professional for medical or therapeutic guidance.

---

## 🤝 Contributing  

1️⃣ **Fork** the repository  
2️⃣ **Create** a feature branch (`git checkout -b feature/your-feature`)  
3️⃣ **Commit** your changes (`git commit -m "Added feature X"`)  
4️⃣ **Push** & open a pull request  

---

## 📜 License  

This project is licensed under the **MIT License**.  
