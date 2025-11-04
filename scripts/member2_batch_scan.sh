#!/bin/bash

###############################################################################
# MEMBER 2 BATCH SCANNING SCRIPT
# Purpose: Execute all 19 injection attack scans (Tuning 4, 8, 9, c)
# Member: Member 2 - Injection Attacks Specialist
###############################################################################

echo "=================================================="
echo "MEMBER 2: INJECTION ATTACKS - BATCH SCANNING"
echo "=================================================="
echo "Total Scans: 19 (Tuning 4, 8, 9, c)"
echo "Estimated Duration: 45-60 minutes"
echo "Start Time: $(date)"
echo "=================================================="
echo ""

SCAN_COUNT=0
TOTAL_SCANS=19

###############################################################################
# TUNING 4: XSS/INJECTION TESTING
###############################################################################

echo "[TUNING 4: XSS/Injection Testing]"

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testphp.vulnweb.com (Tuning 4)..."
nikto -h http://testphp.vulnweb.com -Tuning 4 -Display 1 -output member2_injection_attacks/scans/tuning4_xss_injection/testphp_t4.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testhtml5.vulnweb.com (Tuning 4)..."
nikto -h http://testhtml5.vulnweb.com -Tuning 4 -Display 1 -output member2_injection_attacks/scans/tuning4_xss_injection/testhtml5_t4.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testasp.vulnweb.com (Tuning 4)..."
nikto -h http://testasp.vulnweb.com -Tuning 4 -Display 1 -output member2_injection_attacks/scans/tuning4_xss_injection/testasp_t4.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning demo.testfire.net (Tuning 4)..."
nikto -h http://demo.testfire.net -Tuning 4 -Display 1 -output member2_injection_attacks/scans/tuning4_xss_injection/testfire_t4.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo ""

###############################################################################
# TUNING 8: COMMAND EXECUTION TESTING
###############################################################################

echo "[TUNING 8: Command Execution Testing]"

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testphp.vulnweb.com (Tuning 8)..."
nikto -h http://testphp.vulnweb.com -Tuning 8 -Display 1 -output member2_injection_attacks/scans/tuning8_command_exec/testphp_t8.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testhtml5.vulnweb.com (Tuning 8)..."
nikto -h http://testhtml5.vulnweb.com -Tuning 8 -Display 1 -output member2_injection_attacks/scans/tuning8_command_exec/testhtml5_t8.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testasp.vulnweb.com (Tuning 8)..."
nikto -h http://testasp.vulnweb.com -Tuning 8 -Display 1 -output member2_injection_attacks/scans/tuning8_command_exec/testasp_t8.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testaspnet.vulnweb.com (Tuning 8)..."
nikto -h http://testaspnet.vulnweb.com -Tuning 8 -Display 1 -output member2_injection_attacks/scans/tuning8_command_exec/testaspnet_t8.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo ""

###############################################################################
# TUNING 9: SQL INJECTION TESTING
###############################################################################

echo "[TUNING 9: SQL Injection Testing]"

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testphp.vulnweb.com (Tuning 9)..."
nikto -h http://testphp.vulnweb.com -Tuning 9 -Display 1 -output member2_injection_attacks/scans/tuning9_sql_injection/testphp_t9.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testhtml5.vulnweb.com (Tuning 9)..."
nikto -h http://testhtml5.vulnweb.com -Tuning 9 -Display 1 -output member2_injection_attacks/scans/tuning9_sql_injection/testhtml5_t9.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testasp.vulnweb.com (Tuning 9)..."
nikto -h http://testasp.vulnweb.com -Tuning 9 -Display 1 -output member2_injection_attacks/scans/tuning9_sql_injection/testasp_t9.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning demo.testfire.net (Tuning 9)..."
nikto -h http://demo.testfire.net -Tuning 9 -Display 1 -output member2_injection_attacks/scans/tuning9_sql_injection/testfire_t9.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo ""

###############################################################################
# TUNING C: REMOTE SOURCE INCLUSION
###############################################################################

echo "[TUNING C: Remote Source Inclusion Testing]"

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testphp.vulnweb.com (Tuning c)..."
nikto -h http://testphp.vulnweb.com -Tuning c -Display 1 -output member2_injection_attacks/scans/tuningc_remote_inclusion/testphp_tc.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testhtml5.vulnweb.com (Tuning c)..."
nikto -h http://testhtml5.vulnweb.com -Tuning c -Display 1 -output member2_injection_attacks/scans/tuningc_remote_inclusion/testhtml5_tc.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testasp.vulnweb.com (Tuning c)..."
nikto -h http://testasp.vulnweb.com -Tuning c -Display 1 -output member2_injection_attacks/scans/tuningc_remote_inclusion/testasp_tc.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testaspnet.vulnweb.com (Tuning c)..."
nikto -h http://testaspnet.vulnweb.com -Tuning c -Display 1 -output member2_injection_attacks/scans/tuningc_remote_inclusion/testaspnet_tc.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning demo.testfire.net (Tuning c)..."
nikto -h http://demo.testfire.net -Tuning c -Display 1 -output member2_injection_attacks/scans/tuningc_remote_inclusion/testfire_tc.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning zero.webappsecurity.com (Tuning c)..."
nikto -h http://zero.webappsecurity.com -Tuning c -Display 1 -output member2_injection_attacks/scans/tuningc_remote_inclusion/zero_tc.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo ""

###############################################################################
# COMPLETION
###############################################################################

echo "=================================================="
echo "MEMBER 2 SCANNING COMPLETE!"
echo "=================================================="
echo "Total Scans Completed: $SCAN_COUNT"
echo "End Time: $(date)"
echo ""
echo "Verifying output files..."
echo ""

# Count files created
HTML_COUNT=$(find member2_injection_attacks/scans -name "*.html" | wc -l)

echo "Files created: $HTML_COUNT HTML reports"
echo ""
echo "Output locations:"
echo "  - member2_injection_attacks/scans/tuning4_xss_injection/"
echo "  - member2_injection_attacks/scans/tuning8_command_exec/"
echo "  - member2_injection_attacks/scans/tuning9_sql_injection/"
echo "  - member2_injection_attacks/scans/tuningc_remote_inclusion/"
echo ""
echo "Next steps:"
echo "  1. Review scan results: open member2_injection_attacks/scans/*/*.html"
echo "  2. Create analysis: member2_findings.md"
echo "  3. Run Member 3 scans: ./scripts/member3_batch_scan.sh"
echo "=================================================="
