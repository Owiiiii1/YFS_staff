# YFS Staff App — техническая документация

**yfs_app_staff** — Flutter-приложение для сотрудников на площадке Young Fashion Show.

| Параметр | Значение |
|----------|----------|
| Версия | `1.0.0+1` (`pubspec.yaml`) |
| Bundle ID | `com.youngfashionshow.staff` |
| Dart SDK | `^3.10.7` |
| Backend | Laravel YFS REST API |
| Роль пользователя | `worker` |

---

## 1. Назначение

Staff-приложение используется для операционной работы на ивенте:

- сканирование QR детей на этапах fashion show;
- hostess (вход/выход);
- паркинг, OPEN BAR, backstage — lookup по QR;
- supervisor / superadmin — списки детей и детали;
- rehearsal admin / check-in;
- выдача обедов (meal issue);
- gift control report;
- scan for info (профиль ребёнка по бейджу).

Клиентские функции (профиль ребёнка, покупка билетов родителем) **не используются** в штатном flow, хотя часть кода унаследована от client app.

---

## 2. Структура `lib/`

```
lib/
├── main.dart                     # Entry, theme, AuthService
├── intro_video_page.dart         # Maintenance, version, session
├── login_page.dart               # Worker login
├── app_maintenance_page.dart     # Maintenance screen
├── staff_home_page.dart          # Load worker status → portal
├── staff_portal_page.dart        # Main shell (~4000 строк)
├── staff_scan_page.dart          # QR scanner (mobile_scanner)
├── staff_settings_page.dart      # Event / role / stage selection
├── staff_workspace.dart          # Bootstrap persisted context
├── staff_child_detail_page.dart  # Supervisor detail
├── staff_info_child_profile_page.dart
├── staff_meal_issue_page.dart    # Meal confirm
├── api/auth_service.dart         # REST client (~5900 строк)
├── app_settings.dart             # SharedPreferences staff context
└── gen_l10n/                     # en, ru, uk, es
```

---

## 3. Поток запуска

```
main()
  → AppSettings.load()
  → IntroVideoPage
       → checkAppActive() → Maintenance?
       → checkAppVersion() → Force update?
       → restoreSessionIfPossible()
            → StaffHomePage (role=worker)
            → LoginPage
  → StaffHomePage
       → getWorkerStatus()
       → bootstrapStaffWorkspace()
       → StaffPortalPage
```

При переключении вкладок нижнего меню — повторная проверка `checkAppActive()`.

---

## 4. Портал (StaffPortalPage)

### Нижняя навигация

| Tab | Содержимое |
|-----|------------|
| 0 Home | UI по `home_screen_type` роли |
| 1 Event | Детали активного иvента |
| 2 More | Scan for Info, Settings |

### Persisted context (`AppSettings`)

| Ключ | Назначение |
|------|------------|
| `staff_active_event_id` | Выбранный иvент |
| `staff_active_stage_id` | Этап |
| `staff_active_stage_type` | Тип этапа |
| `staff_selected_role_code` | Активная роль |

Настраивается в `StaffSettingsPage`.

---

## 5. Роли (`home_screen_type`)

Значение приходит из `GET /app/worker/status` → `staff_roles[].home_screen_type`.

| `home_screen_type` | Home tab |
|--------------------|----------|
| `scan` | Скан этапа → `POST /scan/stage/complete` |
| `qr_check` | Скан + success modal |
| `supervisor` | Список детей на этапе |
| `superadmin` | Список с фильтрами brand/stage |
| `hostess` | Entry / Exit scan |
| `parking` | Parking QR lookup |
| `extra_zone` | OPEN BAR QR lookup |
| `backstage` | Backstage QR lookup |
| `rehearsal_admin` | Roster по slot |
| `rehearsal_checkin` | Check-in scan |
| `gift_issue` | Gift report |
| `interview` | Interview list |
| `lunches` | Meal handout scan |

Legacy fallback: если `home_screen_type` пуст, определение по `code`/`name` роли.

---

## 6. StaffScanPage — режимы

| Флаг | API |
|------|-----|
| (default) | `submitStageScan` → `/scan/stage/complete` |
| `scanForInfo` | `scanInfoLookup` |
| `parkingScan` | `parkingScanLookup` |
| `extraZoneScan` | `extraTicketScanLookup` |
| `backstageScan` | `backstageTicketScanLookup` |
| `rehearsalCheckinScan` | `rehearsalCheckinScanLookup` |
| `mealHandoutScan` | `workerMealIssueLookup` → confirm page |
| `hostessMode` | `hostessEntryScan` / exit lookup + complete |

Контекст (event_id, stage_id, role) берётся из `AppSettings` или параметров страницы.

---

## 7. Конфигурация и сборка

### API base URL

```dart
// lib/main.dart — аналогично client app
flutter run --dart-define=API_BASE_URL=https://your-api-host
```

Default: `http://178.156.234.23`

### Android

- Application ID: `com.youngfashionshow.staff`
- Label: `YFS Staff`
- Cleartext HTTP разрешён для dev IP в `network_security_config.xml`
- Permissions: INTERNET, CAMERA

### iOS

- Bundle ID: `com.youngfashionshow.staff`
- Codemagic: `codemagic.yaml` (если настроен)

### State management

`StatefulWidget` + `setState`, без Riverpod/BLoC.  
`AuthService` через constructor injection.

---

# Инструкция по API (staff-приложение)

Реализация: **`lib/api/auth_service.dart`**.  
Base: `{API_BASE_URL}/api/...`

## Аутентификация

| Метод Dart | HTTP | Path | Auth |
|------------|------|------|------|
| `login` | POST | `/app/login` | — |
| `restoreSessionIfPossible` | GET | `/app/me` | Bearer |

Login принимает только пользователей с `role=worker`.

## Жизненный цикл приложения

| Метод Dart | HTTP | Path |
|------------|------|------|
| `checkAppActive` | GET | `/app/staff/status` |
| `checkAppVersion` | POST | `/app/staff/version/check` |

Fallback `checkAppActive` → `staff/version/check` (поле `app_active`).

## Worker status и иvенты

| Метод Dart | HTTP | Path |
|------------|------|------|
| `getWorkerStatus` | GET | `/app/worker/status` |
| `getWorkerUpcomingEvents` | GET | `/app/worker/upcoming-events` |
| `getWorkerEventDetail` | GET | `/app/worker/events/{eventId}` |
| `getWorkerEventStages` | GET | `/app/worker/events/{eventId}/stages` |

### GET `/app/worker/status` — пример ответа

```json
{
  "is_worker": true,
  "staff_roles": [
    {
      "id": 1,
      "code": "hostess",
      "name": "Hostess",
      "home_screen_type": "hostess",
      "stage_ids": [10, 11]
    }
  ]
}
```

## Списки и отчёты

| Метод Dart | HTTP | Path | Query (основные) |
|------------|------|------|------------------|
| `getSupervisorChildren` | GET | `/app/worker/supervisor-children` | `event_id`, `stage_id`, `show_all` |
| `getSupervisorChildDetail` | GET | `/app/worker/supervisor-children/{assignment}/detail` | — |
| `getSuperadminChildren` | GET | `/app/worker/superadmin-children` | `event_id`, `brand_id`, `stage_id`, `staff_role_id` |
| `getRehearsalAdminRoster` | GET | `/app/worker/rehearsal-admin/roster` | `event_id`, `slot_id` |
| `getGiftControlReport` | GET | `/app/worker/gift-control-report` | filters |

## Scan lookup (POST, body `{ "code": "..." }`)

| Метод Dart | Path |
|------------|------|
| `scanInfoLookup` | `/app/worker/scan-info-lookup` |
| `parkingScanLookup` | `/app/worker/parking-scan-lookup` |
| `extraTicketScanLookup` | `/app/worker/extra-ticket-scan-lookup` |
| `backstageTicketScanLookup` | `/app/worker/backstage-ticket-scan-lookup` |
| `rehearsalCheckinScanLookup` | `/app/worker/rehearsal-checkin-scan-lookup` |
| `workerMealIssueLookup` | `/app/worker/meal-issue-lookup` |
| `workerMealIssueConfirm` | `/app/worker/meal-issue-confirm` |
| `hostessEntryScan` | `/app/worker/hostess/entry-scan` |
| `hostessExitLookup` | `/app/worker/hostess/exit-lookup` |
| `hostessExitComplete` | `/app/worker/hostess/exit-complete` |

### OPEN BAR scan

`extraTicketScanLookup` ищет `qr_payload` в `event_extra_tickets`.  
Ответ при успехе: `{ "ok": true, "client_name", "event_name" }`.

## Child flow scan

| Метод Dart | HTTP | Path |
|------------|------|------|
| `submitStageScan` | POST | `/scan/stage/complete` |
| (checkin) | POST | `/scan/checkin` |
| (aux) | POST | `/scan/aux/start`, `/scan/aux/end` |

**POST `/scan/stage/complete`** — multipart:

- `scan_code` — QR ребёнка
- `event_id`, `stage_id`, `stage_type`
- `role_code` (optional)
- photo (optional)

## Уведомления (shared)

| Метод Dart | HTTP | Path |
|------------|------|------|
| `getUnreadNotificationsCount` | GET | `/app/notifications/unread-count` |

## Push (optional)

| Метод Dart | HTTP | Path |
|------------|------|------|
| `registerPushToken` | POST | `/app/push-token` |
| `deactivatePushToken` | DELETE | `/app/push-token` |

---

## Наследие client API

Файл `auth_service.dart` содержит методы `/app/client/*` от fork client app.  
В staff flow они **не вызываются**. При рефакторинге можно вынести shared HTTP layer.

---

## Связанные проекты

| Проект | Документация |
|--------|--------------|
| YFS (API + админка) | `YFS/docs/TECHNICAL_DOCUMENTATION.md` |
| Client app | `jfs_application/docs/TECHNICAL_DOCUMENTATION.md` |

Контракты API описаны в backend-документации — при изменении эндпоинтов обновляйте оба приложения и YFS.
