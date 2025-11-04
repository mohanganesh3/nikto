#!/bin/bash

###############################################################################
# MEMBER 4 BATCH SCANNING SCRIPT
# Purpose: Execute all 33 advanced scans (SSL, Headers, Evasion, Plugins)
# Member: Member 4 - SSL/TLS & Advanced Testing + Custom Plugins
###############################################################################

echo "=================================================="
echo "MEMBER 4: SSL/ADVANCED - BATCH SCANNING"
echo "=================================================="
echo "Total Scans: 33 (SSL, Security Headers, Evasion, Custom Plugins)"
echo "Estimated Duration: 80-100 minutes"
echo "Start Time: $(date)"
echo "=================================================="
echo ""

SCAN_COUNT=0
TOTAL_SCANS=33

###############################################################################
# SSL/TLS TESTING (HTTPS SITES)
###############################################################################

echo "[SSL/TLS Security Testing]"

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] SSL scan: demo.testfire.net..."
nikto -h https://demo.testfire.net -ssl -Display 1 -output member4_ssl_advanced/scans/ssl_tls_testing/testfire_ssl.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] SSL scan with verbose: demo.testfire.net..."
nikto -h https://demo.testfire.net -ssl -Display V -output member4_ssl_advanced/scans/ssl_tls_testing/testfire_ssl_verbose.txt -Format txt 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] SSL scan: zero.webappsecurity.com..."
nikto -h https://zero.webappsecurity.com -ssl -Display 1 -output member4_ssl_advanced/scans/ssl_tls_testing/zero_ssl.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] SSL scan with CSV output: zero.webappsecurity.com..."
nikto -h https://zero.webappsecurity.com -ssl -output member4_ssl_advanced/scans/ssl_tls_testing/zero_ssl.csv -Format csv 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo ""

###############################################################################
# SECURITY HEADERS TESTING (ALL SITES)
###############################################################################

echo "[Security Headers Analysis]"

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Headers: testphp.vulnweb.com..."
nikto -h http://testphp.vulnweb.com -Plugins headers -Display 1 -output member4_ssl_advanced/scans/security_headers/testphp_headers.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Headers: testhtml5.vulnweb.com..."
nikto -h http://testhtml5.vulnweb.com -Plugins headers -Display 1 -output member4_ssl_advanced/scans/security_headers/testhtml5_headers.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Headers: testasp.vulnweb.com..."
nikto -h http://testasp.vulnweb.com -Plugins headers -Display 1 -output member4_ssl_advanced/scans/security_headers/testasp_headers.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Headers: testaspnet.vulnweb.com..."
nikto -h http://testaspnet.vulnweb.com -Plugins headers -Display 1 -output member4_ssl_advanced/scans/security_headers/testaspnet_headers.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Headers: demo.testfire.net..."
nikto -h http://demo.testfire.net -Plugins headers -Display 1 -output member4_ssl_advanced/scans/security_headers/testfire_headers.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Headers: zero.webappsecurity.com..."
nikto -h http://zero.webappsecurity.com -Plugins headers -Display 1 -output member4_ssl_advanced/scans/security_headers/zero_headers.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo ""

###############################################################################
# EVASION TECHNIQUES TESTING
###############################################################################

echo "[Evasion Techniques Testing]"

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Evasion mode 1: testphp.vulnweb.com..."
nikto -h http://testphp.vulnweb.com -evasion 1 -Display 1 -output member4_ssl_advanced/scans/evasion_techniques/testphp_evasion1.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Evasion mode 2: testphp.vulnweb.com..."
nikto -h http://testphp.vulnweb.com -evasion 2 -Display 1 -output member4_ssl_advanced/scans/evasion_techniques/testphp_evasion2.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Evasion mode 3: testhtml5.vulnweb.com..."
nikto -h http://testhtml5.vulnweb.com -evasion 3 -Display 1 -output member4_ssl_advanced/scans/evasion_techniques/testhtml5_evasion3.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Evasion mode 4: testhtml5.vulnweb.com..."
nikto -h http://testhtml5.vulnweb.com -evasion 4 -Display 1 -output member4_ssl_advanced/scans/evasion_techniques/testhtml5_evasion4.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Evasion mode 5: demo.testfire.net..."
nikto -h http://demo.testfire.net -evasion 5 -Display 1 -output member4_ssl_advanced/scans/evasion_techniques/testfire_evasion5.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Evasion mode 6: demo.testfire.net..."
nikto -h http://demo.testfire.net -evasion 6 -Display 1 -output member4_ssl_advanced/scans/evasion_techniques/testfire_evasion6.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo ""

###############################################################################
# MUTATION TESTING
###############################################################################

echo "[Mutation Testing]"

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Mutation level 1: testphp.vulnweb.com..."
nikto -h http://testphp.vulnweb.com -mutate 1 -Display 1 -output member4_ssl_advanced/scans/mutation_testing/testphp_mutate1.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Mutation level 2: testphp.vulnweb.com..."
nikto -h http://testphp.vulnweb.com -mutate 2 -Display 1 -output member4_ssl_advanced/scans/mutation_testing/testphp_mutate2.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Mutation level 3: testhtml5.vulnweb.com..."
nikto -h http://testhtml5.vulnweb.com -mutate 3 -Display 1 -output member4_ssl_advanced/scans/mutation_testing/testhtml5_mutate3.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Mutation level 4: demo.testfire.net..."
nikto -h http://demo.testfire.net -mutate 4 -Display 1 -output member4_ssl_advanced/scans/mutation_testing/testfire_mutate4.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo ""

###############################################################################
# CUSTOM PLUGIN TESTING
###############################################################################

echo "[Custom Plugin Testing - Security Headers]"

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Custom Security Headers plugin: testphp.vulnweb.com..."
nikto -h http://testphp.vulnweb.com -Plugins custom_security_headers -Display V -output member4_ssl_advanced/scans/custom_plugins/testphp_custom_headers.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated|OSVDB-999)" | head -15

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Custom Security Headers plugin: testhtml5.vulnweb.com..."
nikto -h http://testhtml5.vulnweb.com -Plugins custom_security_headers -Display V -output member4_ssl_advanced/scans/custom_plugins/testhtml5_custom_headers.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated|OSVDB-999)" | head -15

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Custom Security Headers plugin: demo.testfire.net..."
nikto -h http://demo.testfire.net -Plugins custom_security_headers -Display V -output member4_ssl_advanced/scans/custom_plugins/testfire_custom_headers.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated|OSVDB-999)" | head -15

echo ""

echo "[Custom Plugin Testing - API Discovery]"

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Custom API Discovery plugin: testphp.vulnweb.com..."
nikto -h http://testphp.vulnweb.com -Plugins custom_api_discovery -Display V -output member4_ssl_advanced/scans/custom_plugins/testphp_custom_api.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated|OSVDB-999)" | head -15

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Custom API Discovery plugin: demo.testfire.net..."
nikto -h http://demo.testfire.net -Plugins custom_api_discovery -Display V -output member4_ssl_advanced/scans/custom_plugins/testfire_custom_api.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated|OSVDB-999)" | head -15

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Custom API Discovery plugin: zero.webappsecurity.com..."
nikto -h http://zero.webappsecurity.com -Plugins custom_api_discovery -Display V -output member4_ssl_advanced/scans/custom_plugins/zero_custom_api.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated|OSVDB-999)" | head -15

echo ""

echo "[Custom Plugin Testing - CMS Fingerprinting]"

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Custom CMS Fingerprint plugin: testphp.vulnweb.com..."
nikto -h http://testphp.vulnweb.com -Plugins custom_cms_fingerprint -Display V -output member4_ssl_advanced/scans/custom_plugins/testphp_custom_cms.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated|OSVDB-999)" | head -15

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Custom CMS Fingerprint plugin: testhtml5.vulnweb.com..."
nikto -h http://testhtml5.vulnweb.com -Plugins custom_cms_fingerprint -Display V -output member4_ssl_advanced/scans/custom_plugins/testhtml5_custom_cms.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated|OSVDB-999)" | head -15

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Custom CMS Fingerprint plugin: demo.testfire.net..."
nikto -h http://demo.testfire.net -Plugins custom_cms_fingerprint -Display V -output member4_ssl_advanced/scans/custom_plugins/testfire_custom_cms.html -Format htm 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated|OSVDB-999)" | head -15

echo ""

###############################################################################
# COMPREHENSIVE MULTI-FORMAT SCANS
###############################################################################

echo "[Multi-Format Output Testing]"

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Complete scan with multiple formats: testphp.vulnweb.com..."
nikto -h http://testphp.vulnweb.com -Tuning 123456789abc -output member4_ssl_advanced/scans/comprehensive/testphp_complete -Format htm,txt,csv 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo "[$((++SCAN_COUNT))/$TOTAL_SCANS] Complete scan with XML output: demo.testfire.net..."
nikto -h http://demo.testfire.net -Tuning 123456789abc -output member4_ssl_advanced/scans/comprehensive/testfire_complete -Format xml 2>&1 | grep -E "(Target|Server|items? reported|Scan terminated)" | head -10

echo ""

###############################################################################
# COMPLETION
###############################################################################

echo "=================================================="
echo "MEMBER 4 SCANNING COMPLETE!"
echo "=================================================="
echo "Total Scans Completed: $SCAN_COUNT"
echo "End Time: $(date)"
echo ""
echo "Verifying output files..."
echo ""

# Count files created
FILE_COUNT=$(find member4_ssl_advanced/scans -type f | wc -l)

echo "Files created: $FILE_COUNT total output files"
echo ""
echo "Output locations:"
echo "  - member4_ssl_advanced/scans/ssl_tls_testing/"
echo "  - member4_ssl_advanced/scans/security_headers/"
echo "  - member4_ssl_advanced/scans/evasion_techniques/"
echo "  - member4_ssl_advanced/scans/mutation_testing/"
echo "  - member4_ssl_advanced/scans/custom_plugins/"
echo "  - member4_ssl_advanced/scans/comprehensive/"
echo ""
echo "Custom Plugins Location:"
echo "  - member4_ssl_advanced/plugins/nikto_custom_security_headers.plugin"
echo "  - member4_ssl_advanced/plugins/nikto_custom_api_discovery.plugin"
echo "  - member4_ssl_advanced/plugins/nikto_custom_cms_fingerprint.plugin"
echo ""
echo "Next steps:"
echo "  1. Review scan results: open member4_ssl_advanced/scans/*/*.html"
echo "  2. Create analysis: member4_findings.md"
echo "  3. Compile master report: MASTER_REPORT.md"
echo "=================================================="
