#!/bin/bash
# FINISH ALL REMAINING SCANS - SIMPLE SEQUENTIAL APPROACH

cd /Users/mohanganesh/YAAAAAHHHHHH

echo "🚀 FINISHING ALL REMAINING SCANS..."
date

# Member 2 - Missing scans
echo "[M2] SQL Injection scans..."
nikto -h http://testasp.vulnweb.com -Tuning 9 -output member2_injection_attacks/scans/tuning9_sql_injection/testasp_t9.html -Format htm 2>&1 | tail -2
nikto -h http://demo.testfire.net -Tuning 9 -output member2_injection_attacks/scans/tuning9_sql_injection/testfire_t9.html -Format htm 2>&1 | tail -2

echo "[M2] Remote inclusion scans..."
nikto -h http://testphp.vulnweb.com -Tuning c -output member2_injection_attacks/scans/tuningc_remote_inclusion/testphp_tc.html -Format htm 2>&1 | tail -2
nikto -h http://testhtml5.vulnweb.com -Tuning c -output member2_injection_attacks/scans/tuningc_remote_inclusion/testhtml5_tc.html -Format htm 2>&1 | tail -2
nikto -h http://testasp.vulnweb.com -Tuning c -output member2_injection_attacks/scans/tuningc_remote_inclusion/testasp_tc.html -Format htm 2>&1 | tail -2

# Member 3 - Missing scans
echo "[M3] Remote files serverwide..."
nikto -h http://testasp.vulnweb.com -Tuning 7 -output member3_file_auth_testing/scans/tuning7_remote_files_serverwide/testasp_t7.html -Format htm 2>&1 | tail -2
nikto -h http://demo.testfire.net -Tuning 7 -output member3_file_auth_testing/scans/tuning7_remote_files_serverwide/testfire_t7.html -Format htm 2>&1 | tail -2

echo "[M3] Auth bypass..."
nikto -h http://testhtml5.vulnweb.com -Tuning a -output member3_file_auth_testing/scans/tuninga_auth_bypass/testhtml5_ta.html -Format htm 2>&1 | tail -2
nikto -h http://testasp.vulnweb.com -Tuning a -output member3_file_auth_testing/scans/tuninga_auth_bypass/testasp_ta.html -Format htm 2>&1 | tail -2

# Member 4 - Key scans
echo "[M4] Comprehensive scans..."
nikto -h http://testphp.vulnweb.com -Tuning 1234567890abcx -output member4_ssl_advanced/scans/testphp_full.html -Format htm 2>&1 | tail -2
nikto -h http://testhtml5.vulnweb.com -Tuning 1234567890abcx -output member4_ssl_advanced/scans/testhtml5_full.html -Format htm 2>&1 | tail -2

echo ""
echo "✅ COMPLETED!"
date
find member*_*/scans -name "*.html" | wc -l | xargs echo "Total scans:"
