#!/bin/bash

##############################################
# MEMBER 1: Information Discovery Batch Scanner
# Tuning Options: 1, 2, 3, b
# Total Scans: 21
##############################################

echo "=========================================="
echo "MEMBER 1: INFORMATION DISCOVERY SCANS"
echo "=========================================="
echo ""
echo "Starting at: $(date)"
echo "Scan Count: 21"
echo ""

cd /Users/mohanganesh/YAAAAAHHHHHH

# Counter
scan_count=0

# ===== TUNING 1: Interesting Files (4 scans) =====
echo "[1/21] Scanning testphp.vulnweb.com - Tuning 1..."
nikto -h http://testphp.vulnweb.com -Tuning 1 -Display V -output member1_information_discovery/scans/tuning1_interesting_files/testphp_t1.html -Format htm 2>&1 | grep -E "(Target|Server|Scan terminated)"
((scan_count++))
echo "✓ Scan $scan_count/21 complete"
echo ""

echo "[2/21] Scanning testhtml5.vulnweb.com - Tuning 1..."
nikto -h http://testhtml5.vulnweb.com -Tuning 1 -output member1_information_discovery/scans/tuning1_interesting_files/testhtml5_t1.html -Format htm 2>&1 | grep -E "(Target|Server|Scan terminated)"
((scan_count++))
echo "✓ Scan $scan_count/21 complete"
echo ""

echo "[3/21] Scanning demo.testfire.net - Tuning 1..."
nikto -h http://demo.testfire.net -Tuning 1 -output member1_information_discovery/scans/tuning1_interesting_files/testfire_t1.html -Format htm 2>&1 | grep -E "(Target|Server|Scan terminated)"
((scan_count++))
echo "✓ Scan $scan_count/21 complete"
echo ""

echo "[4/21] Scanning zero.webappsecurity.com - Tuning 1..."
nikto -h http://zero.webappsecurity.com -Tuning 1 -output member1_information_discovery/scans/tuning1_interesting_files/zero_t1.html -Format htm 2>&1 | grep -E "(Target|Server|Scan terminated)"
((scan_count++))
echo "✓ Scan $scan_count/21 complete"
echo ""

# ===== TUNING 2: Misconfigurations (4 scans) =====
echo "[5/21] Scanning testphp.vulnweb.com - Tuning 2..."
nikto -h http://testphp.vulnweb.com -Tuning 2 -Display V -output member1_information_discovery/scans/tuning2_misconfigurations/testphp_t2.html -Format htm 2>&1 | grep -E "(Target|Server|Scan terminated)"
((scan_count++))
echo "✓ Scan $scan_count/21 complete"
echo ""

echo "[6/21] Scanning testasp.vulnweb.com - Tuning 2..."
nikto -h http://testasp.vulnweb.com -Tuning 2 -output member1_information_discovery/scans/tuning2_misconfigurations/testasp_t2.html -Format htm 2>&1 | grep -E "(Target|Server|Scan terminated)"
((scan_count++))
echo "✓ Scan $scan_count/21 complete"
echo ""

echo "[7/21] Scanning testaspnet.vulnweb.com - Tuning 2..."
nikto -h http://testaspnet.vulnweb.com -Tuning 2 -output member1_information_discovery/scans/tuning2_misconfigurations/testaspnet_t2.html -Format htm 2>&1 | grep -E "(Target|Server|Scan terminated)"
((scan_count++))
echo "✓ Scan $scan_count/21 complete"
echo ""

echo "[8/21] Scanning demo.testfire.net - Tuning 2..."
nikto -h http://demo.testfire.net -Tuning 2 -output member1_information_discovery/scans/tuning2_misconfigurations/testfire_t2.html -Format htm 2>&1 | grep -E "(Target|Server|Scan terminated)"
((scan_count++))
echo "✓ Scan $scan_count/21 complete"
echo ""

# ===== TUNING 3: Information Disclosure (3 scans) =====
echo "[9/21] Scanning testphp.vulnweb.com - Tuning 3..."
nikto -h http://testphp.vulnweb.com -Tuning 3 -Display V -output member1_information_discovery/scans/tuning3_info_disclosure/testphp_t3.html -Format htm 2>&1 | grep -E "(Target|Server|Scan terminated)"
((scan_count++))
echo "✓ Scan $scan_count/21 complete"
echo ""

echo "[10/21] Scanning testhtml5.vulnweb.com - Tuning 3..."
nikto -h http://testhtml5.vulnweb.com -Tuning 3 -output member1_information_discovery/scans/tuning3_info_disclosure/testhtml5_t3.html -Format htm 2>&1 | grep -E "(Target|Server|Scan terminated)"
((scan_count++))
echo "✓ Scan $scan_count/21 complete"
echo ""

echo "[11/21] Scanning zero.webappsecurity.com - Tuning 3..."
nikto -h http://zero.webappsecurity.com -Tuning 3 -output member1_information_discovery/scans/tuning3_info_disclosure/zero_t3.html -Format htm 2>&1 | grep -E "(Target|Server|Scan terminated)"
((scan_count++))
echo "✓ Scan $scan_count/21 complete"
echo ""

# ===== TUNING B: Software Identification (4 scans) =====
echo "[12/21] Scanning testphp.vulnweb.com - Tuning b..."
nikto -h http://testphp.vulnweb.com -Tuning b -Display V -output member1_information_discovery/scans/tuningb_software_id/testphp_tb.html -Format htm 2>&1 | grep -E "(Target|Server|Scan terminated)"
((scan_count++))
echo "✓ Scan $scan_count/21 complete"
echo ""

echo "[13/21] Scanning testasp.vulnweb.com - Tuning b..."
nikto -h http://testasp.vulnweb.com -Tuning b -output member1_information_discovery/scans/tuningb_software_id/testasp_tb.html -Format htm 2>&1 | grep -E "(Target|Server|Scan terminated)"
((scan_count++))
echo "✓ Scan $scan_count/21 complete"
echo ""

echo "[14/21] Scanning testaspnet.vulnweb.com - Tuning b..."
nikto -h http://testaspnet.vulnweb.com -Tuning b -output member1_information_discovery/scans/tuningb_software_id/testaspnet_tb.html -Format htm 2>&1 | grep -E "(Target|Server|Scan terminated)"
((scan_count++))
echo "✓ Scan $scan_count/21 complete"
echo ""

echo "[15/21] Scanning demo.testfire.net - Tuning b..."
nikto -h http://demo.testfire.net -Tuning b -output member1_information_discovery/scans/tuningb_software_id/testfire_tb.html -Format htm 2>&1 | grep -E "(Target|Server|Scan terminated)"
((scan_count++))
echo "✓ Scan $scan_count/21 complete"
echo ""

# ===== PLUGIN SCANS (3 scans) =====
echo "[16/21] Scanning testphp.vulnweb.com - Robots plugin..."
nikto -h http://testphp.vulnweb.com -Plugins "robots" -output member1_information_discovery/scans/tuning1_interesting_files/robots_testphp.html -Format htm 2>&1 | grep -E "(Target|Server|Scan terminated)"
((scan_count++))
echo "✓ Scan $scan_count/21 complete"
echo ""

echo "[17/21] Scanning demo.testfire.net - Robots plugin..."
nikto -h http://demo.testfire.net -Plugins "robots" -output member1_information_discovery/scans/tuning1_interesting_files/robots_testfire.html -Format htm 2>&1 | grep -E "(Target|Server|Scan terminated)"
((scan_count++))
echo "✓ Scan $scan_count/21 complete"
echo ""

echo "[18/21] Scanning testphp.vulnweb.com - Multiple index plugin..."
nikto -h http://testphp.vulnweb.com -Plugins "multiple_index" -output member1_information_discovery/scans/tuning2_misconfigurations/indexes_testphp.html -Format htm 2>&1 | grep -E "(Target|Server|Scan terminated)"
((scan_count++))
echo "✓ Scan $scan_count/21 complete"
echo ""

# ===== ADVANCED SCANS (3 scans) =====
echo "[19/21] Scanning testphp.vulnweb.com - Combined tunings (123b)..."
nikto -h http://testphp.vulnweb.com -Tuning 123b -Display 1234V -output member1_information_discovery/scans/combined_all_tunings.html -Format htm 2>&1 | grep -E "(Target|Server|Scan terminated)"
((scan_count++))
echo "✓ Scan $scan_count/21 complete"
echo ""

echo "[20/21] Scanning demo.testfire.net - Multi-format output (htm)..."
nikto -h http://demo.testfire.net -Tuning 123b -output member1_information_discovery/scans/multi_format_testfire.htm -Format htm 2>&1 | grep -E "(Target|Server|Scan terminated)"
((scan_count++))
echo "✓ Scan $scan_count/21 complete"
echo ""

echo "[21/21] Scanning demo.testfire.net - Multi-format output (txt)..."
nikto -h http://demo.testfire.net -Tuning 123b -output member1_information_discovery/scans/multi_format_testfire.txt -Format txt 2>&1 | grep -E "(Target|Server|Scan terminated)"
((scan_count++))
echo "✓ Scan $scan_count/21 complete"
echo ""

echo "=========================================="
echo "MEMBER 1 SCANS COMPLETE!"
echo "=========================================="
echo "Total scans: $scan_count/21"
echo "Completed at: $(date)"
echo ""
echo "Output directory: member1_information_discovery/scans/"
echo ""
echo "Next steps:"
echo "1. Review scan outputs"
echo "2. Create member1_findings.md"
echo "3. Take screenshots"
echo "4. Create CHECKPOINT_MEMBER_1.md"
echo "=========================================="

# Count actual output files
echo ""
echo "Verifying scan outputs..."
file_count=$(find member1_information_discovery/scans -type f \( -name "*.html" -o -name "*.htm" -o -name "*.txt" \) | wc -l | tr -d ' ')
echo "✓ Found $file_count scan output files"
echo ""
