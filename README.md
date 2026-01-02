# 🚀 AWS EKS & ArgoCD ile GitOps Altyapısı

Bu proje, AWS üzerinde **Terraform (IaC)** kullanılarak modern, ölçeklenebilir bir Kubernetes (EKS) altyapısının kurulmasını ve **ArgoCD** ile GitOps prensiplerine uygun Sürekli Dağıtım (CD) süreçlerinin yönetilmesini içerir.

## Architecture & Technologies
* **Cloud Provider:** AWS (Amazon Web Services)
* **IaC:** Terraform (Modüler yapı: VPC, EKS, Node Groups)
* **Orchestration:** Kubernetes (EKS v1.29)
* **GitOps / CD:** ArgoCD
* **Networking:** Custom VPC, Public/Private Subnets, NAT Gateways

## 🎯 Proje Kazanımları
* AWS altyapısının **Terraform** ile kod olarak yönetilmesi (Infrastructure as Code).
* **EKS (Elastic Kubernetes Service)** kümesinin sıfırdan kurulumu ve IAM yetkilendirmeleri.
* **ArgoCD** kurulumu ile uygulamanın GitHub deposundaki değişiklikleri otomatik algılayıp canlı ortama (Production) yansıtması.
* Uygulamanın yük altında otomatik ölçeklenmesi (Scaling).

## 📸 Ekran Görüntüleri
*
![eks](https://github.com/user-attachments/assets/d523a229-659a-48cf-86a8-b36f8ba3945c)
![ngx](https://github.com/user-attachments/assets/4d9b0099-b55f-49ab-9dd0-ac556a0150e2)
![get](https://github.com/user-attachments/assets/fb70bde4-cad8-4398-9f0f-6b52abf877f1)

---
*Created by oytun*
