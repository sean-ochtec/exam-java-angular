export type Severity = 'INFO' | 'WARNING' | 'CRITICAL';

export interface Notice {
  id: string;
  facility: string;
  message: string;
  severity: Severity;
  /** ISO-8601 timestamp, e.g. "2026-11-10T14:00:00Z" */
  effectiveAt: string;
}
