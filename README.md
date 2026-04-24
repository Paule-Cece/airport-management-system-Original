# airport-management-system-Original
# Airport Management System — Java OOP

A comprehensive Airport Management System built with Java, demonstrating core OOP principles:
**Encapsulation, Abstraction, Inheritance, Polymorphism, and Interfaces.**

---

## Project Structure

```
airport-project/
├── src/
│   └── AirportManagementSystem.java   # Full source code (all 23 classes)
├── AirportManagementSystem.jar        # Compiled executable JAR
├── Dockerfile                         # Docker container configuration
└── README.md
```

## OOP Concepts Demonstrated

| Concept | Implementation |

| Encapsulation | Private attributes + getters/setters in all classes |
| Abstraction   | `AirportEntity` abstract class with 10 abstract methods 
| Interfaces    | `Reservable`, `Payable`, `Trackable`        |
| Inheritance   | `Flight` → 5 subclasses, `Staff` → 5 subclasses |
| Polymorphism  | Method overriding + `FlightFactory` factory pattern |

---

## Run with Java (JAR)

**Requirements:** Java 21+

```bash
java -jar AirportManagementSystem.jar
```

## Run with Docker

**Requirements:** Docker installed

```bash
# Build the image
docker build -t airport-system .

# Run the container (interactive mode required for user input)
docker run -it airport-system
```

---

## How It Works

The program runs interactively and walks through:

1. **Passenger registration** — name, passport, nationality, phone (validated)
2. **Security check** — automatic clearance
3. **Flight selection** — choose from available flights
4. **Booking** — select class and seat
5. **Payment** — Credit Card, Cash, or Mobile Money
6. **Baggage check-in**
7. **Boarding pass** generation
8. **Reports** — flights, passengers, revenue, delays
9. **Polymorphism demo** — all flight types and staff

---

## Classes Overview

**Interfaces:** `Reservable`, `Payable`, `Trackable`

**Abstract:** `AirportEntity` (10 abstract methods)

**Core:** `AirportManager`, `Flight`, `Passenger`, `Ticket`, `Reservation`, `BoardingPass`

**Flight types:** `DomesticFlight`, `InternationalFlight`, `CargoFlight`, `CharterFlight`, `EmergencyFlight`

**Staff:** `Staff`, `Pilot`, `CabinCrew`, `GroundStaff`, `SecurityOfficer`, `MaintenanceStaff`

**Support:** `Airport`, `Terminal`, `Gate`, `Baggage`, `SecurityCheck`, `Payment`, `Schedule`, `Notification`

**Utilities:** `ReportGenerator`, `InputValidator`, `FlightFactory`
