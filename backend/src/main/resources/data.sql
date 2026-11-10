INSERT INTO notice (id, facility, message, severity, effective_at) VALUES
    ('n1', 'ZDC', 'Radar outage sector 12',        'CRITICAL', TIMESTAMP WITH TIME ZONE '2026-11-10 14:00:00+00'),
    ('n2', 'ZNY', 'Frequency 128.75 degraded',     'WARNING',  TIMESTAMP WITH TIME ZONE '2026-11-10 09:30:00+00'),
    ('n3', 'ZDC', 'Scheduled maintenance tonight', 'INFO',     TIMESTAMP WITH TIME ZONE '2026-11-09 22:00:00+00'),
    ('n4', 'ZBW', 'Weather display delayed',       'WARNING',  TIMESTAMP WITH TIME ZONE '2026-11-10 11:15:00+00'),
    ('n5', 'ZNY', 'Comm line restored',            'INFO',     TIMESTAMP WITH TIME ZONE '2026-11-08 16:45:00+00'),
    ('n6', 'ZBW', 'Primary ERAM failover',         'CRITICAL', TIMESTAMP WITH TIME ZONE '2026-11-10 15:20:00+00');
