package com.example.notices;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.Id;
import java.time.Instant;

@Entity
public class Notice {

    @Id
    private String id;

    @Column(nullable = false)
    private String facility;

    @Column(nullable = false)
    private String message;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private Severity severity;

    @Column(nullable = false)
    private Instant effectiveAt;

    protected Notice() {}

    public Notice(String id, String facility, String message, Severity severity, Instant effectiveAt) {
        this.id = id;
        this.facility = facility;
        this.message = message;
        this.severity = severity;
        this.effectiveAt = effectiveAt;
    }

    public String getId() {
        return id;
    }

    public String getFacility() {
        return facility;
    }

    public String getMessage() {
        return message;
    }

    public Severity getSeverity() {
        return severity;
    }

    public Instant getEffectiveAt() {
        return effectiveAt;
    }
}
