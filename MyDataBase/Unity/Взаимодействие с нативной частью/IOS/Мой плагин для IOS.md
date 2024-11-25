
```C
#import <UserNotifications/UserNotifications.h>
#import <Foundation/Foundation.h>

extern "C" {
    // Helper method to create C string copy
    char* MakeStringCopy (NSString* nsstring)
    {
        if (nsstring == NULL) {
            return NULL;
        }
        // convert from NSString to char with utf8 encoding
        const char* striKng = [nsstring cStringUsingEncoding:NSUTF8StringEncoding];
        if (string == NULL) {
            return NULL;
        }

        // create char copy with malloc and strcpy
        char* res = (char*)malloc(strlen(string) + 1);
        strcpy(res, string);
        return res;
    }

    const char* GetSettingsURL () {
         NSURL * url = [NSURL URLWithString: UIApplicationOpenSettingsURLString];
         return MakeStringCopy(url.absoluteString);
    }

    void ShowNotificationWindow() {
        UNUserNotificationCenter* center = [UNUserNotificationCenter currentNotificationCenter];
        
        [center requestAuthorizationWithOptions:(UNAuthorizationOptionAlert | UNAuthorizationOptionSound | UNAuthorizationOptionBadge)
                               completionHandler:^(BOOL granted, NSError * _Nullable error) {
            if (granted) {
                printf("Notification permission granted.\n");
            } else {
                printf("Notification permission denied.\n");
            }
            if (error) {
                printf("Error requesting notification permission: %s\n", [[error localizedDescription] UTF8String]);
            }
        }];
    }

    bool GetNotificationStatus() {
        __block BOOL notificationsEnabled = NO;
        dispatch_semaphore_t semaphore = dispatch_semaphore_create(0);

        UNUserNotificationCenter* center = [UNUserNotificationCenter currentNotificationCenter];
        [center getNotificationSettingsWithCompletionHandler:^(UNNotificationSettings *settings) {
            if (settings.authorizationStatus == UNAuthorizationStatusAuthorized) {
                notificationsEnabled = YES;
            } else {
                notificationsEnabled = NO;
            }
            dispatch_semaphore_signal(semaphore); // Отправляем сигнал для продолжения
        }];
        
        dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);
        
        return notificationsEnabled;
    }
}
```

1) 
```c
    char* MakeStringCopy (NSString* nsstring)
    {
        if (nsstring == NULL) {
            return NULL;
        }
        // convert from NSString to char with utf8 encoding
        const char* striKng = [nsstring cStringUsingEncoding:NSUTF8StringEncoding];
        if (string == NULL) {
            return NULL;
        }

        // create char copy with malloc and strcpy
        char* res = (char*)malloc(strlen(string) + 1);
        strcpy(res, string);
        return res;
    }
```
Метод который возвращает строку, так как С не поддерживает стринги.

2) 
```C
    const char* GetSettingsURL () {
         NSURL * url = [NSURL URLWithString: UIApplicationOpenSettingsURLString];
         return MakeStringCopy(url.absoluteString);
    }
```
Метод который возвращает путь до настроек, перейдя по этому пути через

```cshapr
Application.OpenUrl(string path);
```
Мы можем попасть в настройки этого приложения в системе.

Дальше есть еще 2 метода который открывают окно для подключения уведомлений и получения статуса этих уведомлений.