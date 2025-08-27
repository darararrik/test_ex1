# Пути
PUB_BIN := $(HOME)/.pub-cache/bin

default: help

## Установка зависимостей
get:
	flutter pub get

## Очистка проекта
clean:
	flutter clean
	flutter pub get

## Сборка apk
apk:
	flutter build apk --release

## Spider (генерация констант)
spider:
	spider build

## Сортировка импортов
imports:
	dart run import_sorter:main

## Генерация локализации
locale:
	flutter gen-l10n

## Генерация кода build_runner
runner:
	dart run build_runner build --delete-conflicting-outputs

## Запуск форматирования кода
format:
	dart format .

## Запуск анализа
analyze:
	flutter analyze

## Обновление Pods
pods:
	cd ios && pod install --repo-update
## Помощь
help:
	@echo "Доступные команды:"
	@echo "  make get            - flutter pub get"
	@echo "  make clean          - flutter clean + pub get"
	@echo "  make apk            - собрать apk"
	@echo "  make spider         - spider build (генерация констант)"
	@echo "  make imports   	 - сортировка импортов"
	@echo "  make locale         - генерация локализации"
	@echo "  make runner  		 - build_runner build --delete-conflicting-outputs"
	@echo "  make fix-path       - добавить pub-cache/bin в PATH"
	@echo "  make format         - dart format ."
	@echo "  make analyze        - flutter analyze"
