# Facility Notices

We have a list of operational notices for air traffic facilities. Build a small API to serve them and a screen to view them.

**Talk through your thinking as you go.** We care more about your approach than finishing everything.

## The task

### Backend (`backend/`, Spring Boot 3.5, Java 21)

The `Notice` entity, `Severity` enum and `NoticeRepository` are already there. The database is an in-memory H2 instance seeded from `data.sql`.

1. `GET /api/notices` returns all notices, newest `effectiveAt` first.
   - Optional `facility` query param, case-insensitive (`zdc` matches `ZDC`).
   - Optional `minSeverity` query param (`INFO` < `WARNING` < `CRITICAL`). It returns notices at that severity or higher.
2. `GET /api/notices/{id}` returns one notice, or a 404 if it doesn't exist.

### Frontend (`frontend/`, Angular 20)

3. Implement `NoticeListComponent` (and `NoticeService`) to show the notices: facility, severity, message and effective time.
   - Add a text input that filters by facility using the API, not by filtering in the browser.
   - Handle loading, error and empty states.
   - Make `CRITICAL` notices visually distinct.

### If you have time

- A test for the controller or service.
- A meaningful error body for an invalid `minSeverity`.
- A retry button on the error state.

## Getting started

### Option A: GitHub Codespaces (recommended)

Click **Code → Codespaces → Create codespace on main**. Java, Node and dependencies are installed for you. The first build takes a few minutes.

### Option B: Your own machine

You'll need **JDK 21** and **Node 22**. Then run `npm ci` once in `frontend/`.

## Running

Use two terminals:

```bash
# Terminal 1: backend on http://localhost:8080
cd backend
./mvnw spring-boot:run
```

```bash
# Terminal 2: frontend on http://localhost:4200
cd frontend
npm start
```

The frontend proxies `/api` to the backend, so open the app on port **4200**. In Codespaces, use the **Ports** tab to open it.

Useful extras:

- H2 console: http://localhost:8080/h2-console (JDBC URL `jdbc:h2:mem:notices`, user `sa`, no password)
- Backend tests: `cd backend && ./mvnw test`
