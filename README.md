این پروژه React با پیاده‌سازی CI/CD با GitLab و Docker است.

مراحل اصلی:
- ساخت پروژه React با npm
                                                                                                                                                                                                                                           - Dockerize کردن پروژه
- اجرای Pipeline در GitLab برای Build و Deploy به VPS

نکته مهم:
- باید کلید SSH در GitLab تنظیم شود برای اتصال به VPS.
- آدرس و نام کاربری VPS را در .gitlab-ci.yml تغییر دهید.
