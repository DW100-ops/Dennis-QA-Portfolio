# Recovery Notes: Firmware Trace Drift

## Common Drift Patterns
- Timestamp gaps > 2 seconds between modules
- Repeated WARN → ERROR → INFO sequences
- Module-specific delays (e.g., Module 3, Module 7)

## Rollback Triggers
- 3+ consecutive ERRORs within 10 seconds
- Unresponsive module > 5 seconds

## Safe Restore Points
- Last INFO before ERROR cluster
- Post-recovery INFO confirming module reinitialization

## Notes
Use `sync_trace.py` to align timestamps before analysis. Always validate rollback with checksum verification.