# 🛡️ InfraPulse – Honeypot + DevSecOps Cloud Security Automation

InfraPulse is an advanced cloud security project that integrates a dynamic honeypot environment with real-time alerting and DevSecOps practices. It is built using Docker, ELK Stack, Telegram notifications, and runs on Ubuntu (preferred on AWS EC2).

---

## 🔐 Features

- 🎯 **Honeypot with Cowrie**: Simulates SSH/Telnet services to trap attackers.
- 📡 **Real-Time Alerts via Telegram**: Instantly notify your team when an intruder interacts.
- 🔁 **Dynamic Fake Data Rotation**: Keeps the bait fresh and unpredictable.
- 📦 **Dockerized Architecture**: Simple deployment and scalability.
- 📊 **ELK Stack Integration**: Visualize logs and security activity.
- 🧪 **DevSecOps Pipeline**: Optional integration with Jenkins + ArgoCD + Prometheus.

---

## 📦 Prerequisites

- Ubuntu Server (preferably on AWS EC2)
- Docker and Docker Compose
- Telegram Bot Token and Chat ID
- (Optional) Jenkins, ArgoCD, Prometheus, Grafana, etc.

---

## 🚀 Setup

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/infrapulse.git
cd infrapulse
```

### 2. Set Up Environment Variables

Create a `.env` file:

```bash
touch .env
```

Add your config:

```env
TELEGRAM_BOT_TOKEN=your_bot_token
TELEGRAM_CHAT_ID=your_chat_id
```

### 3. Run the Project

```bash
docker-compose up --build
```

This will:

- Deploy Cowrie honeypot in Docker.
- Route logs to the ELK stack.
- Send intrusion alerts to Telegram.

---

## 📊 Visualize Logs (Kibana)

Visit [http://localhost:5601](http://localhost:5601) to access Kibana and explore logs from Cowrie and system metrics.

---

## 🧠 How It Works

1. **Cowrie** mimics SSH access and logs attacker commands.
2. Logs are forwarded to **Logstash**.
3. **Elasticsearch** stores and indexes them.
4. **Kibana** provides a visualization layer.
5. **Telegram bot** sends real-time notifications on events like login attempts.

---

## 🧩 Optional Enhancements

- **Prometheus + Grafana**: Monitor performance and metrics.
- **CI/CD Pipeline**: Use Jenkins + ArgoCD to automatically deploy InfraPulse updates.
- **Cloud Firewall Rules**: Allow only known IPs, except honeypot port.
- **SIEM Integration**: Forward logs to your security information platform.

---

## 🧹 Cleanup

Stop and remove all services:

```bash
docker-compose down -v
```

---

## ⚠️ Notes

- Do **not** expose real system ports for honeypot functionality.
- Rotate Telegram tokens periodically.
- Use CloudWatch or similar tools for cloud-level monitoring.
- For production, implement container hardening.

---

## 📫 Contact

Created by [Sameer Gupta](https://github.com/SameerG16) – Bringing real-time visibility to your cloud infrastructure with InfraPulse.

---


