XCode - это ide от Apple в котором можно разрабатывать приложения под их устройства и только через него можно собрать полноценный билд для IOS.
После установки и при попытке билда в юнити, есть шанс что будет вылезать следующая ошибка:
> 'CFUserNotificationCancel' is unavailable: not available on iOS
> xcrun: error: SDK "iphoneos" cannot be located

Не сильно понимаю что это значит, но помогло следующее:
> sudo xcode-select --switch /Applications/Xcode.app