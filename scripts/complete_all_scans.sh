#!/bin/bash
# RAPID SCAN COMPLETER - Finish all remaining scans quickly

echo "🚀 COMPLETING ALL REMAINING SCANS"
echo "=================================="
date
echo ""

cd /Users/mohanganesh/YAAAAAHHHHHH

# Quick function to run scan
scan() {
    nikto -h "$1" -Tuning "$2" -output "$3" -Format htm 2>&1 | grep -E "(Target|completed|Scan terminated)" | head -3
    echo "✓ Created: $3"
}

# MEMBER 2 - Remaining scans
echo "[MEMBER 2] Injection Attacks"
scan "http://testasp.vulnweb.com" "4" "member2_injection_attacks/scans/tuning4_xss_injection/testasp_t4.html"
scan "http://demo.testfire.net" "4" "member2_injection_attacks/scans/tuning4_xss_injection/testfire_t4.html"
scan "http://testphp.vulnweb.com" "8" "member2_injection_attacks/scans/tuning8_command_exec/testphp_t8.html"
scan "http://testhtml5.vulnweb.com" "8" "member2_injection_attacks/scans/tuning8_command_exec/testhtml5_t8.html"
scan "http://testasp.vulnweb.com" "8" "member2_injection_attacks/scans/tuning8_command_exec/testasp_t8.html"
scan "http://testaspnet.vulnweb.com" "8" "member2_injection_attacks/scans/tuning8_command_exec/testaspnet_t8.html"
scan "http://testhtml5.vulnweb.com" "9" "member2_injection_attacks/scans/tuning9_sql_injection/testhtml5_t9.html"
scan "http://testasp.vulnweb.com" "9" "member2_injection_attacks/scans/tuning9_sql_injection/testasp_t9.html"
scan "http://demo.testfire.net" "9" "member2_injection_attacks/scans/tuning9_sql_injection/testfire_t9.html"
scan "http://testphp.vulnweb.com" "c" "member2_injection_attacks/scans/tuningc_remote_inclusion/testphp_tc.html"
scan "http://testhtml5.vulnweb.com" "c" "member2_injection_attacks/scans/tuningc_remote_inclusion/testhtml5_tc.html"
scan "http://testasp.vulnweb.com" "c" "member2_injection_attacks/scans/tuningc_remote_inclusion/testasp_tc.html"
scan "http://testaspnet.vulnweb.com" "c" "member2_injection_attacks/scans/tuningc_remote_inclusion/testaspnet_tc.html"
scan "http://demo.testfire.net" "c" "member2_injection_attacks/scans/tuningc_remote_inclusion/testfire_tc.html"
scan "http://zero.webappsecurity.com" "c" "member2_injection_attacks/scans/tuningc_remote_inclusion/zero_tc.html"

echo ""
echo "[MEMBER 3] File & Auth Testing"
scan "http://testhtml5.vulnweb.com" "0" "member3_file_auth_testing/scans/tuning0_file_upload/testhtml5_t0.html"
scan "http://testasp.vulnweb.com" "0" "member3_file_auth_testing/scans/tuning0_file_upload/testasp_t0.html"
scan "http://testaspnet.vulnweb.com" "0" "member3_file_auth_testing/scans/tuning0_file_upload/testaspnet_t0.html"
scan "http://demo.testfire.net" "0" "member3_file_auth_testing/scans/tuning0_file_upload/testfire_t0.html"
scan "http://testphp.vulnweb.com" "5" "member3_file_auth_testing/scans/tuning5_remote_files_webroot/testphp_t5.html"
scan "http://testhtml5.vulnweb.com" "5" "member3_file_auth_testing/scans/tuning5_remote_files_webroot/testhtml5_t5.html"
scan "http://testasp.vulnweb.com" "5" "member3_file_auth_testing/scans/tuning5_remote_files_webroot/testasp_t5.html"
scan "http://testaspnet.vulnweb.com" "5" "member3_file_auth_testing/scans/tuning5_remote_files_webroot/testaspnet_t5.html"
scan "http://demo.testfire.net" "5" "member3_file_auth_testing/scans/tuning5_remote_files_webroot/testfire_t5.html"
scan "http://zero.webappsecurity.com" "5" "member3_file_auth_testing/scans/tuning5_remote_files_webroot/zero_t5.html"
scan "http://testphp.vulnweb.com" "7" "member3_file_auth_testing/scans/tuning7_remote_files_serverwide/testphp_t7.html"
scan "http://testhtml5.vulnweb.com" "7" "member3_file_auth_testing/scans/tuning7_remote_files_serverwide/testhtml5_t7.html"
scan "http://testasp.vulnweb.com" "7" "member3_file_auth_testing/scans/tuning7_remote_files_serverwide/testasp_t7.html"
scan "http://demo.testfire.net" "7" "member3_file_auth_testing/scans/tuning7_remote_files_serverwide/testfire_t7.html"
scan "http://testhtml5.vulnweb.com" "a" "member3_file_auth_testing/scans/tuninga_auth_bypass/testhtml5_ta.html"
scan "http://testasp.vulnweb.com" "a" "member3_file_auth_testing/scans/tuninga_auth_bypass/testasp_ta.html"
scan "http://testaspnet.vulnweb.com" "a" "member3_file_auth_testing/scans/tuninga_auth_bypass/testaspnet_ta.html"
scan "http://demo.testfire.net" "a" "member3_file_auth_testing/scans/tuninga_auth_bypass/testfire_ta.html"
scan "http://zero.webappsecurity.com" "a" "member3_file_auth_testing/scans/tuninga_auth_bypass/zero_ta.html"

echo ""
echo "[MEMBER 4] SSL & Advanced (Selected key scans)"
nikto -h "https://zero.webappsecurity.com" -ssl -output "member4_ssl_advanced/scans/ssl_tls_testing/zero_ssl.html" -Format htm 2>&1 | grep -E "(Target|completed)" | head -2
nikto -h "http://testphp.vulnweb.com" -Plugins headers -output "member4_ssl_advanced/scans/security_headers/testphp_headers.html" -Format htm 2>&1 | grep -E "(Target|completed)" | head -2
nikto -h "http://testhtml5.vulnweb.com" -Plugins headers -output "member4_ssl_advanced/scans/security_headers/testhtml5_headers.html" -Format htm 2>&1 | grep -E "(Target|completed)" | head -2
nikto -h "http://demo.testfire.net" -Plugins headers -output "member4_ssl_advanced/scans/security_headers/testfire_headers.html" -Format htm 2>&1 | grep -E "(Target|completed)" | head -2
nikto -h "http://testphp.vulnweb.com" -evasion 1 -output "member4_ssl_advanced/scans/evasion_techniques/testphp_evasion1.html" -Format htm 2>&1 | grep -E "(Target|completed)" | head -2
nikto -h "http://testphp.vulnweb.com" -mutate 1 -output "member4_ssl_advanced/scans/mutation_testing/testphp_mutate1.html" -Format htm 2>&1 | grep -E "(Target|completed)" | head -2

echo ""
echo "=================================="
echo "✅ SCAN COMPLETION SUMMARY"
echo "=================================="
find member*_*/scans -name "*.html" | wc -l | xargs echo "Total HTML files created:"
echo ""
find member1*/scans -name "*.html" | wc -l | xargs echo "Member 1:"
find member2*/scans -name "*.html" | wc -l | xargs echo "Member 2:"
find member3*/scans -name "*.html" | wc -l | xargs echo "Member 3:"
find member4*/scans -name "*.html" | wc -l | xargs echo "Member 4:"
echo ""
date
echo "✅ DONE!"
