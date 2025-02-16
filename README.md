# scanWAS

## Description
scanWAS is a network security tool designed to detect connected devices using **fping** and simulate ARP spoofing attacks with **arpspoof**. This tool helps security professionals and network administrators identify vulnerabilities and assess potential MITM attack risks.

## Features
- Scans the local network to identify connected devices.
- Automatically detects the network interface.
- Executes **ARP spoofing** to test network security.
- Assesses potential MITM vulnerabilities.

## Requirements
- Linux-based OS
- **fping** and **arpspoof** installed
- Root privileges

## Installation
Install the required dependencies using:
```bash
sudo apt install fping dsniff -y
```

## Usage
Run scanWAS with root privileges:
```bash
sudo chmod +x scanWAS.sh
sudo ./scanWAS.sh
```
Enter the gateway IP when prompted, and the tool will scan the network, listing connected devices and executing **ARP spoofing** attacks.

## Disclaimer
⚠ **WARNING:** This tool is intended for ethical security testing and research purposes only. Unauthorized use on networks without permission may be illegal.

# scanWAS

# ----------------------------------------------------

## الوصف
scanWAS هي أداة أمان شبكية مصممة لاكتشاف الأجهزة المتصلة بالشبكة باستخدام **fping** ومحاكاة هجمات **ARP Spoofing** باستخدام **arpspoof**. تساعد هذه الأداة محترفي الأمن السيبراني ومديري الشبكات في تحديد الثغرات الأمنية وتقييم مخاطر هجمات MITM (الرجل في المنتصف).

## الميزات
- مسح الشبكة المحلية لاكتشاف الأجهزة المتصلة.
- اكتشاف واجهة الشبكة تلقائيًا.
- تنفيذ **ARP Spoofing** لاختبار أمان الشبكة.
- تقييم الثغرات الأمنية المحتملة لهجمات MITM.

## المتطلبات
- نظام تشغيل مبني على لينكس.
- تثبيت **fping** و **arpspoof**.
- امتيازات الجذر (Root).

## التثبيت
قم بتثبيت المتطلبات باستخدام الأمر التالي:
```bash
sudo apt install fping dsniff -y
```

## الاستخدام
قم بتشغيل scanWAS بصلاحيات الجذر:
```bash
sudo ./scanWAS.sh
```
عند تشغيل الأداة، أدخل عنوان IP للبوابة عندما يُطلب منك ذلك، وستقوم الأداة بمسح الشبكة، وعرض الأجهزة المتصلة، وتنفيذ هجمات **ARP Spoofing**.

## إخلاء المسؤولية
⚠ **تحذير:** هذه الأداة مخصصة فقط لاختبارات الأمان الأخلاقية والأغراض البحثية. قد يكون الاستخدام غير المصرح به على الشبكات دون إذن غير قانوني.

