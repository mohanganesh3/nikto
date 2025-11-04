#!/bin/bash

###############################################################################
# MEMBER 3 BATCH SCANNING SCRIPT
# Purpose: Execute all 22 file/auth scans (Tuning 0, 5, 7, a)
# Member: Member 3 - File Upload & Authentication Specialist
###############################################################################

echo "=================================================="
echo "MEMBER 3: FILE UPLOAD & AUTH - BATCH SCANNING"
echo "=================================================="
echo "Total Scans: 22 (Tuning 0, 5, 7, a)"
echo "Estimated Duration: 50-70 minutes"
echo "Start Time: $(date)"
echo "=================================================="
echo ""

SCAN_COUNT=0
TOTAL_SCANS=22

###############################################################################
# TUNING 0: FILE UPLOAD TESTING
###############################################################################

echo "[TUNING 0: File Upload Testing]"

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testphp.vulnweb.com (Tuning 0)..."
nikto -h http://testphp.vulnweb.com -Tuning 0 -Display 1 -output member3_file_auth_testing/scans/tuning0_file_upload/testphp_t0.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testhtml5.vulnweb.com (Tuning 0)..."
nikto -h http://testhtml5.vulnweb.com -Tuning 0 -Display 1 -output member3_file_auth_testing/scans/tuning0_file_upload/testhtml5_t0.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testasp.vulnweb.com (Tuning 0)..."
nikto -h http://testasp.vulnweb.com -Tuning 0 -Display 1 -output member3_file_auth_testing/scans/tuning0_file_upload/testasp_t0.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testaspnet.vulnweb.com (Tuning 0)..."
nikto -h http://testaspnet.vulnweb.com -Tuning 0 -Display 1 -output member3_file_auth_testing/scans/tuning0_file_upload/testaspnet_t0.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning demo.testfire.net (Tuning 0)..."
nikto -h http://demo.testfire.net -Tuning 0 -Display 1 -output member3_file_auth_testing/scans/tuning0_file_upload/testfire_t0.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo ""

###############################################################################
# TUNING 5: REMOTE FILE RETRIEVAL (WEB ROOT)
###############################################################################

echo "[TUNING 5: Remote File Retrieval Testing]"

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testphp.vulnweb.com (Tuning 5)..."
nikto -h http://testphp.vulnweb.com -Tuning 5 -Display 1 -output member3_file_auth_testing/scans/tuning5_remote_files_webroot/testphp_t5.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testhtml5.vulnweb.com (Tuning 5)..."
nikto -h http://testhtml5.vulnweb.com -Tuning 5 -Display 1 -output member3_file_auth_testing/scans/tuning5_remote_files_webroot/testhtml5_t5.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testasp.vulnweb.com (Tuning 5)..."
nikto -h http://testasp.vulnweb.com -Tuning 5 -Display 1 -output member3_file_auth_testing/scans/tuning5_remote_files_webroot/testasp_t5.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testaspnet.vulnweb.com (Tuning 5)..."
nikto -h http://testaspnet.vulnweb.com -Tuning 5 -Display 1 -output member3_file_auth_testing/scans/tuning5_remote_files_webroot/testaspnet_t5.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning demo.testfire.net (Tuning 5)..."
nikto -h http://demo.testfire.net -Tuning 5 -Display 1 -output member3_file_auth_testing/scans/tuning5_remote_files_webroot/testfire_t5.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning zero.webappsecurity.com (Tuning 5)..."
nikto -h http://zero.webappsecurity.com -Tuning 5 -Display 1 -output member3_file_auth_testing/scans/tuning5_remote_files_webroot/zero_t5.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo ""

###############################################################################
# TUNING 7: REMOTE FILE RETRIEVAL (SERVER-WIDE)
###############################################################################

echo "[TUNING 7: Remote Files (Server-wide) Testing]"

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testphp.vulnweb.com (Tuning 7)..."
nikto -h http://testphp.vulnweb.com -Tuning 7 -Display 1 -output member3_file_auth_testing/scans/tuning7_remote_files_serverwide/testphp_t7.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testhtml5.vulnweb.com (Tuning 7)..."
nikto -h http://testhtml5.vulnweb.com -Tuning 7 -Display 1 -output member3_file_auth_testing/scans/tuning7_remote_files_serverwide/testhtml5_t7.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testasp.vulnweb.com (Tuning 7)..."
nikto -h http://testasp.vulnweb.com -Tuning 7 -Display 1 -output member3_file_auth_testing/scans/tuning7_remote_files_serverwide/testasp_t7.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning demo.testfire.net (Tuning 7)..."
nikto -h http://demo.testfire.net -Tuning 7 -Display 1 -output member3_file_auth_testing/scans/tuning7_remote_files_serverwide/testfire_t7.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo ""

###############################################################################
# TUNING A: AUTHENTICATION BYPASS TESTING
###############################################################################

echo "[TUNING A: Authentication Bypass Testing]"

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testphp.vulnweb.com (Tuning a)..."
nikto -h http://testphp.vulnweb.com -Tuning a -Display 1 -output member3_file_auth_testing/scans/tuninga_auth_bypass/testphp_ta.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testhtml5.vulnweb.com (Tuning a)..."
nikto -h http://testhtml5.vulnweb.com -Tuning a -Display 1 -output member3_file_auth_testing/scans/tuninga_auth_bypass/testhtml5_ta.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testasp.vulnweb.com (Tuning a)..."
nikto -h http://testasp.vulnweb.com -Tuning a -Display 1 -output member3_file_auth_testing/scans/tuninga_auth_bypass/testasp_ta.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning testaspnet.vulnweb.com (Tuning a)..."
nikto -h http://testaspnet.vulnweb.com -Tuning a -Display 1 -output member3_file_auth_testing/scans/tuninga_auth_bypass/testaspnet_ta.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning demo.testfire.net (Tuning a)..."
nikto -h http://demo.testfire.net -Tuning a -Display 1 -output member3_file_auth_testing/scans/tuninga_auth_bypass/testfire_ta.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Scanning zero.webappsecurity.com (Tuning a)..."
nikto -h http://zero.webappsecurity.com -Tuning a -Display 1 -output member3_file_auth_testing/scans/tuninga_auth_bypass/zero_ta.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo ""

###############################################################################
# COMPLETION
###############################################################################

echo "=================================================="
echo "MEMBER 3 SCANNING COMPLETE!"
echo "=================================================="
echo "Total Scans Completed: $SCAN_COUNT"
echo "End Time: $(date)"
echo ""
echo "Verifying output files..."
echo ""

# Count files created
HTML_COUNT=$(find member3_file_auth_testing/scans -name "*.html" | wc -l)

echo "Files created: $HTML_COUNT HTML reports"
echo ""
echo "Output locations:"
echo "  - member3_file_auth_testing/scans/tuning0_file_upload/"
echo "  - member3_file_auth_testing/scans/tuning5_remote_files_webroot/"
echo "  - member3_file_auth_testing/scans/tuning7_remote_files_serverwide/"
echo "  - member3_file_auth_testing/scans/tuninga_auth_bypass/"
echo ""
echo "Next steps:"
echo "  1. Review scan results: open member3_file_auth_testing/scans/*/*.html"
echo "  2. Create analysis: member3_findings.md"
echo "  3. Run Member 4 scans: ./scripts/member4_batch_scan.sh"
echo "=================================================="
