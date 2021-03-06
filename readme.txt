Модуль Импорт из YML
Автор: Gennady Telegin <support@itxd.ru>, Andrey Kozlov <http://opencart-russia.ru>

Модуль импортирует данные в магазин из YML файла (https://yandex.ru/support/partnermarket/yml/about-yml.xml).

Парсится следующая информация:
1. Дерево категорий - синхронизируется с уже существующими категориями в магазине (по названию и полному пути от корня).
2. Товары (синхронизируются по артикулу с уже существующими в магазине), включая следующие поля:
  a) Производитель - создаются недостающие
  b) Атрибуты - создается недостающие
  c) Наличие (в наличии или предзаказ)
3. Картинки (скачиваются на сервер).

Задачи, которые можно решать с помощью модуля:
1. Миграция одного магазина на другой. В модуле есть режим полного удаления данных перед импортом, который удаляет из магазина все категории, товары, атрибуты и производителей, а затем уже делает импорт.
2. Импорт сторонних каталогов на сайт. Если импортировать данные каждый день, то в магазин будут добавлятся только новые, ранее не добавленные в магазин товары.

Установка:
1. Установить модуль, Модули->Установка расширений.
2. Модуль доступен в администраторской панели, Система->Инструменты->Импорт YML
3. При необходимости добавить необходимые права доступа, Система->Пользователи->Группа пользователей

Если возникли сложности или вопросы, то обращайтесь по support@itxd.ru
