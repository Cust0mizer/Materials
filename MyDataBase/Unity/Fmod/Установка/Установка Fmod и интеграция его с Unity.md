Для начала надо зарегистрироваться на сайте [Fmod](https://www.fmod.com/unity)
После чего перейти на вкладку [Download](https://www.fmod.com/download)
И выбрать Fmod Studio - Это сам движок, в котором можно работать со звуками
И Fmod for Unity, это Package для игрового движка.
Устанавливаем Fmod Studio и потом перекидываем Fmod for Unity в проект.

Для начала создадим Fmod project в Fmod Studio, открываем его через меню пуск.  
![[Pasted image 20250130120821.png]]
Создаем новый проект.
Я возьму для примера проект LoveStory:
Тут уже все созданно, пробежимся по базовым настройкам
![[Pasted image 20250130120922.png]]
На вкладке Builds есть 2 основные настройки
![[Pasted image 20250130121017.png]]
1) Место куда будут собираться наши банки (Банка - хранилище для звуков) 
2) Платформы для которых мы собираем наши банки, в моем случае я собираю билд под ios поэтому у меня есть настройка Mobile, где написано ios 
![[Pasted image 20250130121127.png]]
Это основные настройки для Fmod Studio

Теперь о настройках Fmod For Unity:
После экспорта ассета переходим в unity, и нам нужно пройтись по всем сценам и выполнить следующее действие:
![[Pasted image 20250130121239.png]]
Нажать на эти 2 кнопки
![[Pasted image 20250130121304.png]]
Выбрать в каком виде будут загружаться наши банки
![[Pasted image 20250130121337.png]]
Fmod Studio Project - Мы укажем ссылку на наш проект, в таком случае сам проект должен мигрировать с нашим репозиторием, иначе на новом устройстве мы просто не найдем проект который мы указали
Single platform build - Хорошо только когда у нас есть одна целевая платформа, в моем случае это не подходит поскольку я буду собирать банки под несколько платформ.
Multiple Platform Build - То что нужно, но стоит знать что папка с собранными банками должна быть в проекте. 

Дальше заменяем обычный проигрыватель звуков на фмодовский.
![[Pasted image 20250130121626.png]]

И в конце обновляем наш GitIgnore 
![[Pasted image 20250130121724.png]]


```gitignore
# Never ignore DLLs in the FMOD subfolder.
!/[Aa]ssets/Plugins/FMOD/**/lib/*

# Don't ignore images and gizmos used by FMOD in the Unity Editor.
!/[Aa]ssets/Gizmos/FMOD/*
!/[Aa]ssets/Editor Default Resources/FMOD/*

# Ignore the Cache folder since it is updated locally.
/[Aa]ssets/Plugins/FMOD/Cache/*

# Ignore bank files in the StreamingAssets folder.
/[Aa]ssets/StreamingAssets/**/*.bank
/[Aa]ssets/StreamingAssets/**/*.bank.meta

# If the source bank files are kept outside of the StreamingAssets folder then these can be ignored.
# Log files can be ignored.
fmod_editor.log
```
