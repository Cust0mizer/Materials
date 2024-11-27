### Часто используемые разрешения Android

1. **Разрешения для работы с камерой и мультимедиа:**
    
    - `android.permission.CAMERA` — доступ к камере для фотографий и видео.
    - `android.permission.RECORD_AUDIO` — запись аудио через микрофон.
    - `android.permission.WRITE_EXTERNAL_STORAGE` — запись данных на внешнее хранилище.
    - `android.permission.READ_EXTERNAL_STORAGE` — чтение данных с внешнего хранилища (актуально для Android 9 и ниже, в новых версиях заменено на `MediaStore`).
2. **Разрешения для работы с сетью и интернетом:**
    
    - `android.permission.INTERNET` — доступ к интернету.
    - `android.permission.ACCESS_NETWORK_STATE` — проверка состояния сети.
    - `android.permission.ACCESS_WIFI_STATE` — информация о состоянии Wi-Fi-соединения.
    - `android.permission.CHANGE_WIFI_STATE` — изменение состояния Wi-Fi.
3. **Разрешения для работы с геолокацией:**
    
    - `android.permission.ACCESS_FINE_LOCATION` — доступ к точным данным о местоположении.
    - `android.permission.ACCESS_COARSE_LOCATION` — доступ к примерному местоположению (менее точно, чем `FINE_LOCATION`).
    - `android.permission.ACCESS_BACKGROUND_LOCATION` — доступ к данным о местоположении в фоновом режиме (для Android 10 и выше).
4. **Разрешения для доступа к контактам, звонкам и сообщениям:**
    
    - `android.permission.READ_CONTACTS` — доступ к контактам.
    - `android.permission.WRITE_CONTACTS` — запись в контакты.
    - `android.permission.CALL_PHONE` — совершение телефонных звонков без перехода в телефонное приложение.
    - `android.permission.READ_CALL_LOG` — доступ к журналу звонков.
    - `android.permission.SEND_SMS` — отправка SMS.
    - `android.permission.RECEIVE_SMS` — получение SMS.
5. **Разрешения для работы с календарем:**
    
    - `android.permission.READ_CALENDAR` — доступ к данным календаря.
    - `android.permission.WRITE_CALENDAR` — изменение данных календаря.
6. **Разрешения для работы с физическими датчиками и здоровьем:**
    
    - `android.permission.BODY_SENSORS` — доступ к данным датчиков (например, шагомера).
    - `android.permission.ACTIVITY_RECOGNITION` — распознавание активности (например, ходьба, бег).
7. **Прочие полезные разрешения:**
    
    - `android.permission.SEND_NOTIFICATION` — отправка уведомлений (для Android 13 и выше, аналог `POST_NOTIFICATIONS`).
    - `android.permission.READ_PHONE_STATE` — чтение состояния устройства, включая статус сети.
    - `android.permission.REQUEST_INSTALL_PACKAGES` — установка пакетов (APK) из сторонних источников.
    - `android.permission.SYSTEM_ALERT_WINDOW` — отображение наложений поверх других приложений (например, для всплывающих окон).
    - `android.permission.WAKE_LOCK` — предотвращение засыпания устройства (удержание экрана активным).

### Пример использования в коде