# 🌐 Networking Concepts Every DevOps Engineer Must Know

Networking is one of the most important skills for a DevOps Engineer. Almost every DevOps tool and platform depends on networking. Whether you are working with cloud platforms, Docker containers, Kubernetes clusters, CI/CD pipelines, or Linux servers, understanding networking helps you deploy, manage, troubleshoot, and secure applications properly.

This repository serves as a comprehensive guide and cheat sheet for DevOps networking.

---

## 🟢 1. What is Networking?
Networking is the process of communication between devices and systems.
**Examples:**
* Your browser communicating with a website server.
* A frontend application talking to a backend API.
* Docker containers communicating with databases.
* Kubernetes pods exchanging data.

Without networking, applications cannot communicate with users or other services.

---

## 🟢 2. IP Addresses
An IP address is like the home address of a computer on a network. (Example: `192.168.1.10`)
Every device connected to a network needs an IP address.

| Type | Example | Usage |
| :--- | :--- | :--- |
| **Private IP** | `192.168.x.x` | Internal communication (homes, offices, cloud VPCs) |
| **Public IP** | `54.x.x.x` | Internet communication |

**DevOps Example (AWS):** EC2 instances use private IPs for internal communication, while Public IPs allow internet access to the servers.

---

## 🟢 3. DNS (Domain Name System)
DNS converts human-readable domain names into IP addresses. (Example: `google.com` → `142.250.x.x`). 
Humans remember names, but computers communicate using IP addresses.

**How DNS Works when you visit github.com:**
1. Browser asks a DNS server for the IP address.
2. DNS server returns the IP.
3. Browser connects to the server.

**DevOps Example:** When deploying `myapp.com`, DNS records (like A or CNAME records) point the domain name to your cloud server's IP.

---

## 🟢 4. Ports
Ports are communication endpoints inside a computer. A single server can run multiple applications using different ports.

| Port | Service |
| :--- | :--- |
| **22** | SSH |
| **80** | HTTP |
| **443** | HTTPS |
| **3306** | MySQL |
| **5432** | PostgreSQL |

**Example:** `http://localhost:3000` (localhost = your machine, 3000 = application port)

---

## 🟢 5. Network Interfaces
A network interface connects a device to a network.
* **Linux command:** `ip addr`
* **Common interfaces:** `eth0` (ethernet), `wlan0` (wireless), `docker0` (docker bridge).

---

## 🟢 6. Virtualization and Networking
* **Before virtualization:** One physical server ran one OS.
* **After virtualization:** One physical server can run multiple virtual machines (VMs).
Each VM has virtual network interfaces and virtual IP addresses managed by Hypervisors (like VMware, VirtualBox, Hyper-V).

---

## 🟢 7. Cloud Networking (AWS)
Cloud networking is a critical DevOps skill.

### 🔥 VPC (Virtual Private Cloud)
A VPC is your private network inside AWS.
*(Structure: AWS Account → VPC → Subnets → Servers)*

### 🔥 Subnets
Subnets divide a VPC into smaller networks.
* **Public Subnet:** Internet-facing resources (e.g., Load Balancers).
* **Private Subnet:** Internal resources (e.g., Databases).

### 🔥 Security Groups
Security groups act as virtual firewalls attached to instances.
*(Example: Allow SSH on Port 22, Allow HTTPS on Port 443).*

### 🔥 NAT Gateway
Allows Private Servers to access the internet (for updates/patches) without exposing them publicly.

---

## 🟢 8. Docker Networking
Containers need networking to communicate.

### 🔥 Bridge Network
Docker’s default network type. Creates the `docker0` interface. Containers on the bridge can communicate internally.
* **Port Mapping:** `docker run -p 3000:3000 myapp` (Format: `host_port:container_port`)

### 🔥 Overlay Network
Allows containers on different hosts to communicate (used in Docker Swarm).

### 🔥 Docker DNS
Docker provides internal DNS resolution. Containers can communicate using container names instead of IPs (e.g., `backend` talking to `database`).

---

## 🟢 9. Kubernetes Networking
Kubernetes networking is advanced but essential.

### 🔥 Pod Networking
Each pod receives its own IP address. Pods communicate directly.

### 🔥 CNI (Container Network Interface)
Plugins that manage Kubernetes networking (e.g., Calico, Flannel, Cilium).

### 🔥 Kubernetes Services
Because pods are temporary and change IPs, Services provide stable IPs and DNS names.
* **ClusterIP:** Internal communication.
* **NodePort:** External access.
* **LoadBalancer:** Cloud load balancer integration.

### 🔥 Ingress
Manages HTTP routing, domain names, and SSL/TLS. (e.g., `api.myapp.com` → backend service).

### 🔥 Network Policies
Control communication between pods (e.g., Frontend → Backend is allowed, but Backend → Database is restricted).

---

## 🟢 10. Real DevOps Network Flow
A typical cloud-native application flow:
`User` → `DNS` → `Load Balancer` → `Ingress` → `Kubernetes Service` → `Pod` → `Database`

---

## 🟢 11. Important Linux Networking Commands
| Command | Purpose |
| :--- | :--- |
| `ip addr` | Show IP addresses |
| `ping` | Test connectivity |
| `curl` | Test APIs (See `demo.ps1` for examples) |
| `netstat` | Show open ports |
| `ss` | Display socket statistics |
| `nslookup` | DNS lookup |
| `traceroute` | Show packet route |

---

## 🟢 12. Best Learning Path
1. Linux networking basics
2. IP addresses and DNS
3. Ports and firewalls
4. Cloud networking (AWS VPC)
5. Docker networking
6. Kubernetes networking
