* Encoding: UTF-8.

* SYNTAX FOR IMPUTING VARIABLES FROM OBSERVED DATA IN TRANSATLANTIC SLAVE TRADE DATABASE							
																			
*     natinimp     Inputed nation of ship registration							
							
recode national 							
(1 thru 2=3) (4 thru 5 = 6) (7=7) (8=8) (9=9) (10=10) (11 thru 14=15) (16 thru 24=30)							
into natinimp.							
EXECUTE.							
							
*     yeardep     Imputed year in which voyage began							
*     yearaf       Year departed Africa (imputed)							
*     yearam     Year of arrival at port of disembarkation (imputed)							
*     year5        Imputed five years in which voyage occurred							
*     year10      Imputed decade in which voyage occurred							
*     year25      Imputed quarter century in which voyage occurred							
*     year100    Imputed century in which voyage occurred							
							
* Variables defining yeardep, yearaf, yearam, year5, year10, year25, and year100 depend on 							
* independent coding of datedepc, d1slatrc, dlslatrc, datarr34, datarr38, datarr41, 							
* ddepamc, and datarr45 -- CONTRIBUTE program should generate distinct day, month, 							
* and year variables for each stage of voyage as well as composite date variables where 							
* all three components (yyyy-mm-dd).  SPSS commands to extract year variables using							
* Date and Time Wizard deleted since assumed they will be created as data variables							
* from information entered by contributor.							
							
Compute yeardep=datedepc.							
If (missing(yeardep)) yeardep=d1slatrc.							
If (missing(yeardep)) yeardep=dlslatrc.							
If (missing(yeardep)) yeardep=datarr34.							
If (missing(yeardep)) yeardep=ddepamc.							
If (missing(yeardep)) yeardep=datarr45.							
							
Compute yearaf=dlslatrc.							
If (missing(yearaf)) yearaf=d1slatrc.							
If (missing(yearaf)) yearaf=datedepc.							
If (missing(yearaf)) yearaf=datarr34.							
If (missing(yearaf)) yearaf=ddepamc.							
If (missing(yearaf)) yearaf=datarr45.							
							
Compute yearam=datarr34.							
If (missing(yearam)) yearam=dlslatrc.							
If (missing(yearam)) yearam=d1slatrc.							
If (missing(yearam)) yearam=datedepc.							
If (missing(yearam)) yearam=ddepamc.							
If (missing(yearam)) yearam=datedepc.							
If (missing(yearam)) yearam=datarr45.							
							
* TRANSFORMATION OF DAY, MONTH, AND YEAR VARIABLES INTO COMPOSITE 							
* DATE VARIABLES 							
							
* SPSS date and time functions operate only for dates from October 14, 1582.  Earlier dates 							
* must be added separately.							
							
If (yearam > 1500 & yearam < 1506) year5 =1.							
If (yearam > 1505 & yearam < 1511) year5 =2.							
If (yearam > 1510 & yearam < 1516) year5 =3.							
If (yearam > 1515 & yearam < 1521) year5 =4.							
If (yearam > 1520 & yearam < 1526) year5 =5.							
If (yearam > 1525 & yearam < 1531) year5 =6.							
If (yearam > 1530 & yearam < 1536) year5 =7.							
If (yearam > 1535 & yearam < 1541) year5 =8.							
If (yearam > 1540 & yearam < 1546) year5 =9.							
If (yearam > 1545 & yearam < 1551) year5 =10.							
If (yearam > 1550 & yearam < 1556) year5 =11.							
If (yearam > 1555 & yearam < 1561) year5 =12.							
If (yearam > 1560 & yearam < 1566) year5 =13.							
If (yearam > 1565 & yearam < 1571) year5 =14.							
If (yearam > 1570 & yearam < 1576) year5 =15.							
If (yearam > 1575 & yearam < 1581) year5 =16.							
If (yearam > 1580 & yearam < 1586) year5 =17.							
If (yearam > 1585 & yearam < 1591) year5 =18.							
If (yearam > 1590 & yearam < 1596) year5 =19.							
If (yearam > 1595 & yearam < 1601) year5 =20.							
If (yearam > 1600 & yearam < 1606) year5 =21.							
If (yearam > 1605 & yearam < 1611) year5 =22.							
If (yearam > 1610 & yearam < 1616 ) year5 =23.							
If (yearam > 1615 & yearam < 1621) year5 =24.							
If (yearam > 1620 & yearam < 1626) year5 =25.							
If (yearam > 1625 & yearam < 1631) year5 =26.							
If (yearam > 1630 & yearam < 1636) year5 =27.							
If (yearam > 1635 & yearam < 1641) year5 =28.							
If (yearam > 1640 & yearam < 1646) year5 =29.							
If (yearam > 1645 & yearam < 1651) year5 =30.							
If (yearam > 1650 & yearam < 1656) year5 =31.							
If (yearam > 1655 & yearam < 1661) year5 =32.							
If (yearam > 1660 & yearam < 1666) year5 =33.							
If (yearam > 1665 & yearam < 1671) year5 =34.							
If (yearam > 1670 & yearam < 1676) year5 =35.							
If (yearam > 1675 & yearam < 1681) year5 =36.							
If (yearam > 1680 & yearam < 1686) year5 =37.							
If (yearam > 1685 & yearam < 1691) year5 =38.							
If (yearam > 1690 & yearam < 1696) year5 =39.							
If (yearam > 1695 & yearam < 1701) year5 =40.							
If (yearam > 1700 & yearam < 1706) year5 =41.							
If (yearam > 1705 & yearam < 1711) year5 =42.							
If (yearam > 1710 & yearam < 1716 ) year5 =43.							
If (yearam > 1715 & yearam < 1721) year5 =44.							
If (yearam > 1720 & yearam < 1726) year5 =45.							
If (yearam > 1725 & yearam < 1731) year5 =46.							
If (yearam > 1730 & yearam < 1736) year5 =47.							
If (yearam > 1735 & yearam < 1741) year5 =48.							
If (yearam > 1740 & yearam < 1746) year5 =49.							
If (yearam > 1745 & yearam < 1751) year5 =50.							
If (yearam > 1750 & yearam < 1756) year5 =51.							
If (yearam > 1755 & yearam < 1761) year5 =52.							
If (yearam > 1760 & yearam < 1766) year5 =53.							
If (yearam > 1765 & yearam < 1771) year5 =54.							
If (yearam > 1770 & yearam < 1776) year5 =55.							
If (yearam > 1775 & yearam < 1781) year5 =56.							
If (yearam > 1780 & yearam < 1786) year5 =57.							
If (yearam > 1785 & yearam < 1791) year5 =58.							
If (yearam > 1790 & yearam < 1796) year5 =59.							
If (yearam > 1795 & yearam < 1801) year5 =60.							
If (yearam > 1800 & yearam < 1806) year5 =61.							
If (yearam > 1805 & yearam < 1811) year5 =62.							
If (yearam > 1810 & yearam < 1816 ) year5 =63.							
If (yearam > 1815 & yearam < 1821) year5 =64.							
If (yearam > 1820 & yearam < 1826) year5 =65.							
If (yearam > 1825 & yearam < 1831) year5 =66.							
If (yearam > 1830 & yearam < 1836) year5 =67.							
If (yearam > 1835 & yearam < 1841) year5 =68.							
If (yearam > 1840 & yearam < 1846) year5 =69.							
If (yearam > 1845 & yearam < 1851) year5 =70.							
If (yearam > 1850 & yearam < 1856) year5 =71.							
If (yearam > 1855 & yearam < 1861) year5 =72.							
If (yearam > 1860 & yearam < 1866) year5 =73.							
If (yearam > 1865 & yearam < 1871) year5 =74.							
							
If (yearam > 1500 & yearam < 1511) year10 = 1 .							
If (yearam > 1510 & yearam < 1521) year10 = 2 .							
If (yearam > 1520 & yearam < 1531) year10 = 3 .							
If (yearam > 1530 & yearam < 1541) year10 = 4 .							
If (yearam > 1540 & yearam < 1551) year10 = 5 .							
If (yearam > 1550 & yearam < 1561) year10 = 6 .							
If (yearam > 1560 & yearam < 1571) year10 = 7 .							
If (yearam > 1570 & yearam < 1581) year10 = 8 .							
If (yearam > 1580 & yearam < 1591) year10 = 9 .							
If (yearam > 1590 & yearam < 1601) year10 = 10 .							
If (yearam > 1600 & yearam < 1611) year10 = 11 .							
If (yearam > 1610 & yearam < 1621) year10 = 12 .							
If (yearam > 1620 & yearam < 1631) year10 = 13 .							
If (yearam > 1630 & yearam < 1641) year10 = 14 .							
If (yearam > 1640 & yearam < 1651) year10 = 15 .							
If (yearam > 1650 & yearam < 1661) year10 = 16 .							
If (yearam > 1660 & yearam < 1671) year10 = 17 .							
If (yearam > 1670 & yearam < 1681) year10 = 18 .							
If (yearam > 1680 & yearam < 1691) year10 = 19 .							
If (yearam > 1690 & yearam < 1701) year10 = 20 .							
If (yearam > 1700 & yearam < 1711) year10 = 21 .							
If (yearam > 1710 & yearam < 1721) year10 = 22 .							
If (yearam > 1720 & yearam < 1731) year10 = 23 .							
If (yearam > 1730 & yearam < 1741) year10 = 24 .							
If (yearam > 1740 & yearam < 1751) year10 = 25 .							
If (yearam > 1750 & yearam < 1761) year10 = 26 .							
If (yearam > 1760 & yearam < 1771) year10 = 27 .							
If (yearam > 1770 & yearam < 1781) year10 = 28 .							
If (yearam > 1780 & yearam < 1791) year10 = 29 .							
If (yearam > 1790 & yearam < 1801) year10 = 30 .							
If (yearam > 1800 & yearam < 1811) year10 = 31 .							
If (yearam > 1810 & yearam < 1821) year10 = 32 .							
If (yearam > 1820 & yearam < 1831) year10 = 33 .							
If (yearam > 1830 & yearam < 1841) year10 = 34 .							
If (yearam > 1840 & yearam < 1851) year10 = 35 .							
If (yearam > 1850 & yearam < 1861) year10 = 36 .							
If (yearam > 1860 & yearam < 1871) year10 = 37 .							
							
If (yearam > 1500 & yearam < 1526) year25 = 1 .							
If (yearam > 1525 & yearam < 1551) year25 = 2 .							
If (yearam > 1550 & yearam < 1576) year25 = 3 .							
If (yearam > 1575 & yearam < 1601) year25 = 4 .							
If (yearam > 1600 & yearam < 1626) year25 = 5 .							
If (yearam > 1625 & yearam < 1651) year25 = 6 .							
If (yearam > 1650 & yearam < 1676) year25 = 7 .							
If (yearam > 1675 & yearam < 1701) year25 = 8 .							
If (yearam > 1700 & yearam < 1726) year25 = 9 .							
If (yearam > 1725 & yearam < 1751) year25 = 10 .							
If (yearam > 1750 & yearam < 1776) year25 = 11 .							
If (yearam > 1775 & yearam < 1801) year25 = 12 .							
If (yearam > 1800 & yearam < 1826) year25 = 13 .							
If (yearam > 1825 & yearam < 1851) year25 = 14.							
If (yearam > 1850 & yearam < 1876) year25 = 15 .							
							
If (yearam < 1601) year100=1500.							
If (yearam > 1600 and yearam < 1701) year100=1600.							
If (yearam > 1700 and yearam < 1801) year100=1700.							
If (yearam > 1800) year100=1800.							
EXECUTE.							
							
*     voy1imp     Imputed voyage length from departure to first port of landing							
							
COMPUTE voy1imp = DATEDIF(DATEland1, DATEdep, "days").							
VARIABLE LABELS voy1imp "Imputed voyage length from departure to first port of landing".							
VARIABLE LEVEL voy1imp (SCALE).							
FORMATS voy1imp (F5.0).							
VARIABLE WIDTH voy1imp(5).							
							
*     voy2imp     Imputed length of Middle Passage							
							
COMPUTE voy2imp = DATEDIF(DATEland1, DATEleftAfr, "days").							
VARIABLE LABEL voy2imp "Imputed length of Middle Passage".							
VARIABLE LEVEL voy2imp (SCALE).							
FORMATS voy2imp (F5.0).							
VARIABLE WIDTH voy2imp(5).							
							
*     tonmod     Standardized tonnage							
							
compute tonmod=tonnage.							
if (tontype = 13) tonmod=tonnage.							
if ((tontype < 3 or tontype = 4 or tontype = 5) and yearam > 1773) tonmod = tonnage.							
if ((tontype < 3 or tontype = 4 or tontype = 5) and yearam < 1774 and tonnage > 250) tonmod=13.1 + (1.1 * tonnage).							
if ((tontype < 3 or tontype = 4 or tontype = 5) and yearam < 1774 and tonnage > 150 and tonnage < 251) tonmod=65.3 + (1.2 * tonnage).							
if ((tontype < 3 or tontype = 4 or tontype = 5) and yearam < 1774 and tonnage < 151) tonmod=2.3 + (1.8 * tonnage).							
if (tontype = 4 and yearam > 1783 and yearam < 1794) tonmod=$sysmis.							
if (tontype = 3 or tontype = 6 or tontype = 9 or tontype = 16) tonmod = 71 + (0.86 * tonnage).							
if ((tontype = 3 or tontype = 6 or tontype = 9 or tontype = 16) and yearam < 1774 and tonmod > 250) tonmod=13.1 + (1.1 * tonnage).							
if ((tontype = 3 or tontype = 6 or tontype = 9 or tontype = 16) and yearam < 1774 and tonmod > 150 and tonmod < 251) tonmod=65.3 + (1.2 * tonnage).							
if ((tontype = 3 or tontype = 6 or tontype = 9 or tontype = 16) and yearam < 1774 and tonmod < 151) tonmod=2.3 + (1.8 * tonnage).							
if (tontype = 7) tonmod=tonnage * 2.							
if (tontype = 7 and yearam > 1773 and tonmod > 250) tonmod=13.1 + (1.1 * tonmod).							
if (tontype = 7 and yearam > 1773 and tonmod > 150 and tonmod < 251) tonmod=65.3 + (1.2 * tonmod).							
if (tontype = 7 and yearam > 1773 and tonmod < 151) tonmod=2.3 + (1.8 * tonmod).							
if (tontype = 21) tonmod= -6.093 + (0.76155 * tonnage).							
if (tontype = 21 and yearam > 1773 and tonmod > 250) tonmod=13.1 + (1.1 * tonmod).							
if (tontype = 21 and yearam > 1773 and tonmod > 150 and tonmod < 251) tonmod=65.3 + (1.2 * tonmod).							
if (tontype = 21 and yearam > 1773 and tonmod < 151) tonmod=2.3 + (1.8 * tonmod).							
if ((missing(tontype)) and (yearam gt 1714 and yearam lt 1786) and tonnage gt 0 and natinimp =7) tontype=22.							
if (tontype = 22 and tonnage > 250) tonmod=13.1 + (1.1 * tonnage).							
if (tontype = 22 and tonnage > 150 and tonnage < 251) tonmod=65.3 + (1.2 * tonnage).							
if (tontype = 22 and tonnage < 151) tonmod=2.3 + (1.8 * tonnage).							
if (tontype = 15 or tontype = 14 or tontype = 17) tonmod = 52.86 + (1.22 * tonnage).							
EXECUTE.							
							
*     fate2     Outcome of voyage for slaves							
							
RECODE fate							
(1, 4, 5, 7, 8, 9, 11, 12, 15, 16, 17, 19, 20, 24, 26, 29, 30, 39, 40, 46, 47, 48, 49, 51, 52, 54, 58, 68, 70, 71, 72, 76, 							
78, 79, 80, 81, 82, 85, 88, 92, 95, 97, 104, 108, 109, 122, 123, 124, 125, 132, 134, 135, 142, 144, 148, 154, 157, 							
159, 161, 162, 163, 170, 171,172,173, 174, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 187, 189, 201, 203, 205 =1)							
(2, 6, 10, 14, 18, 22, 25, 27, 31, 41, 45, 50, 57, 74, 90, 93, 94, 96, 102, 103, 106, 110, 111, 112, 118, 121, 126, 127, 							
128, 130, 138, 141, 153, 155, 156, 160, 192, 193, 198, 202=2)							
(42, 44, 69, 73, 114, 120, 206, 207=3) 							
(3, 66, 99=4)							
(13, 21, 23, 43, 53, 55, 56, 59, 67, 77, 86, 87, 113, 164, 165, 166, 188, 191, 194, 195, 196, 199=5)							
(208=6)							
(28, 75, 89, 91, 98=7)							
into fate2.							
							
*     fate3     Outcome of voyage If vessel captured							
							
RECODE fate							
(2, 3, 4, 5, 27, 28, 29, 30, 75, 85, 86, 91, 94, 95, 97=1)							
(6, 7, 8, 9, 31, 48, 96, 159, 192, 193=2)							
(10, 11, 12, 13, 54, 58, 102, 103, 104, 106, 108, 109, 110, 111, 112, 113, 114, 118, 120, 121, 122, 123, 							
124, 125, 126, 127, 128, 130, 132, 134, 135, 138, 141, 144, 148, 155, 156, 194, 196, 198, 202, 203, 205=3)							
(14, 15, 16, 17=4)							
(18, 19, 20, 21, 187, 188, 189, 191, 195=5)							
(22, 23, 24, 25, 55=6)							
(43, 50, 51, 52, 53, 164, 165, 166, 170, 171, 172, 173, 174, 176, 177, 178, 179, 180, 181, 182, 183, 184=8)							
(160, 161, 162, 163, 185=9)							
(42, 56, 66, 69, 73, 76, 80, 81, 82, 87, 99=10)							
(57, 74, 79, 89, 90, 98=11)							
(142, 199=12)							
(26, 39, 45, 46, 47, 67, 71, 72, 78, 153, 154, 157=13)							
(1, 40,41,44,49, 59, 68, 70, 77, 88, 92, 93,206, 207=14)							
(208=15)							
(201=16)							
(211=17)							
(212=18)							
into fate3.							
							
*     fate4     Outcome of voyage for owner							
							
RECODE fate							
(1, 49, 68, 77, 79, 88, 92, 135, 203, 205, 206, 207, 208=1)							
(2, 3, 4, 5, 27, 28, 29, 30, 54, 58, 59, 85, 86, 91, 94, 95, 97=2)							
(6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 31, 39, 41, 42, 43, 44, 							
45, 46, 47, 48, 50, 51, 52, 53, 55, 56, 57, 66, 67, 69, 71, 72, 73, 74, 75, 76, 78, 80, 81, 82, 87, 							
89, 90, 93, 98, 99, 102, 103, 104, 106, 108, 109,110,111,112,113,114,118,120,121,122,123,124,							
125,126,127,128,130,132,134,138,141,142,144,148,153,154,155,156,157,159,160,161,162,163,							
164,165,166,170,171,172,173,174,176,177,178,179,180,181,182,183,184,185,187,188,189,191,							
192,193,194,195,196,198,199,201,202=3) 							
(40,70,96,208=4)							
into fate4.							
EXECUTE.							
							
*     constreg        Region of vessel's construction							
*     regisreg         Region of vessel's registration							
*     embreg          First intended region of embarkation of slaves							
*     embreg2        Second intended region of embarkation of slaves							
*     regem1          First region of embarkation of slaves							
*     regem2          Second region of embarkation of slaves							
*     regem3         Third region of embarkation of slaves							
*     regarr            First intended region of slave landing							
*     regarr2          Second intended region of slave landing							
*     regdis1         First region of landing of slaves							
*     regdis2         Second region of landing of slaves							
*     regdis3         Third region of landing of slaves							
*     retrnreg        Region of return							
							
RECODE							
placcons placreg embport embport2 plac1tra plac2tra plac3tra 							
arrport arrport2 sla1port adpsale1 adpsale2 portret							
(10101 thru 10199 = 10100)							
(10201 thru 10299 = 10200)							
(10301 thru 10399 = 10300)							
(10401 thru 10499 = 10400)							
(10501 thru 10599 = 10500)							
(10601 thru 10699 = 10600)							
(10701 thru 10799 = 10700)							
(10801 thru 10899 = 10800)							
(10901 thru 10999 = 10900)							
(11001 thru 11099 = 11000)							
(11101 thru 11199 = 11100)							
(11201 thru 11299 = 11200)							
(11301 thru 11399 = 11300)							
(11401 thru 11499 = 11400)							
(11501 thru 11599 = 11500)							
(11601 thru 11699 = 11600)							
(20101 thru 20199 = 20100)							
(20201 thru 20299 = 20200)							
(20301 thru 20399 = 20300)							
(20401 thru 20499 = 20400)							
(20501 thru 20599 = 20500)							
(20601 thru 20699 = 20600)							
(20701 thru 20799 = 20700)							
(20801 thru 20899 = 20800)							
(20901 thru 20999 = 20900)							
(21001 thru 21099 = 21000)							
(21101 thru 21199 = 21100)							
(21201 thru 21299 = 21200)							
(21301 thru 21399 = 21300)							
(21401 thru 21499 = 21400)							
(21501 thru 21599 = 21500)							
(21601 thru 21699 = 21600)							
(21701 thru 21799 = 21700)							
(21801 thru 21899 = 21800)							
(21901 thru 21999 = 21900)							
(31101 thru 31199 = 31100)							
(31201 thru 31299 = 31200)							
(31301 thru 31399 = 31300)							
(31401 thru 31499 = 31400)							
(32101 thru 32199 = 32100)							
(32201 thru 32299 = 32200)							
(32301 thru 32399 = 32300)							
(33201 thru 33299 = 33200)							
(33301 thru 33399 = 33300)							
(33401 thru 33499 = 33400)							
(33501 thru 33599 = 33500)							
(33601 thru 33699 = 33600)							
(33701 thru 33799 = 33700)							
(33801 thru 33899 = 33800)							
(34101 thru 34199 = 34100)							
(34201 thru 34299 = 34200)							
(34301 thru 34399 = 34300)							
(34401 thru 34499 = 34400)							
(34501 thru 34599 = 34500)							
(34601 thru 34699 = 34600)							
(35101 thru 35199 = 35100)							
(35201 thru 35299 = 35200)							
(35301 thru 35399 = 35300)							
(35401 thru 35499 = 35400)							
(35501 thru 35599 = 35500)							
(36101 thru 36199 = 36100)							
(36201 thru 36299 = 36200)							
(36301 thru 36399 = 36300)							
(36401 thru 36499 = 36400)							
(36501 thru 36599 = 36500)							
(37001 thru 37099 = 37000)							
(38101 thru 38199 = 38100)							
(39001 thru 39099 = 39000)							
(41201 thru 41299 = 41200)							
(42001 thru 42099 = 42000)							
(43001 thru 43099 = 43000)							
(50101 thru 50199 = 50100)							
(50201 thru 50299 = 50200)							
(50301 thru 50399 = 50300)							
(50401 thru 50499 = 50400)							
(50501 thru 50599 = 50500)							
(60101 thru 60199 = 60100)							
(60201 thru 60299 = 60200)							
(60301 thru 60399 = 60300)							
(60401 thru 60499 = 60400)							
(60501 thru 60599 = 60500)							
(60601 thru 60699 = 60600)							
(60701 thru 60799 = 60700)							
(60801 thru 60899 = 60800)							
(60901 thru 60999 = 60900)							
(80101 thru 80199 = 80100)							
(80201 thru 80299 = 80200)							
(80301 thru 80399 = 80300)							
(80401 thru 80499 = 80400)							
(80501 thru 80599 = 80500)							
(80601 thru 80699 = 80600)							
(80701 thru 80799 = 80700)							
(99801 thru 99899 = 99800)							
(99901 thru 99999 = 99900)							
into constreg regisreg embreg embreg2 regem1 regem2 regem3 							
regarr regarr2 regdis1 regdis2 regdis3 retrnreg.							
EXECUTE.							
							
* mjbyptimp       Principal port of slave purchase (replaces majbuypt as imputed variable)							
							
DO IF (ncar13 >= 1 | ncar15 >= 1 | ncar17 >= 1).							
RECODE							
  ncar13 ncar15 ncar17  (MISSING=0)  .							
END IF .							
compute ncartot = ncar13+ncar15+ncar17.							
RECODE ncartot (0=sysmis).							
							
*  pctemb       Percentage of total embarkations documented for places of embarkation.  							
* (temporary variable that can be deleted once program is run)							
							
COMPUTE pctemb = ncartot/tslavesd .							
IF (MISSING(tslavesd)) pctemb = ncartot/tslavesp .							
							
if (plac1tra >= 1 & missing(plac2tra) & missing(plac3tra)) mjbyptimp = plac1tra.							
if (plac2tra >= 1 & missing(plac1tra) & missing(plac3tra)) mjbyptimp = plac2tra.							
if (plac3tra >= 1 & missing(plac1tra) & missing(plac2tra)) mjbyptimp = plac3tra.							
if (missing(plac1tra) & missing(plac2tra) & missing(plac3tra) & embport >=1 & missing(embport2)) mjbyptimp = embport.							
if (missing(plac1tra) & missing(plac2tra) & missing(plac3tra) & missing(embport) & embport2 >=1) mjbyptimp = embport2.							
if (missing(plac1tra) & missing(plac2tra) & missing(plac3tra) & embport >=1 & embport2 >= 1 & embreg = embreg2) mjbyptimp = embreg + 99.							
if (missing(plac1tra) & missing(plac2tra) & missing(plac3tra) & embport >=1 & embport2 >= 1 & embreg ~= embreg2) mjbyptimp = 60999.							
							
if (regem1 = regem2 & missing(regem3)) mjbyptimp=regem1+99.							
if (regem1 = regem3 & missing(regem2)) mjbyptimp=regem1+99.							
if (regem2 = regem3 & missing(regem1)) mjbyptimp=regem2+99.							
if (regem1 = regem2 & regem1 = regem3) mjbyptimp = regem1 +99.							
if (regem1 ~= regem2 & regem1 ~= regem3 & regem2 ~= regem3) mjbyptimp = 60999.							
							
if (ncar13 > ncar15 & ncar13 > ncar17) mjbyptimp = plac1tra.							
if (ncar15 > ncar13 & ncar15 > ncar17) mjbyptimp = plac2tra.							
if (ncar17 > ncar13 & ncar17 > ncar15) mjbyptimp = plac3tra.							
							
if (ncar13=ncar15 & ncar13 > ncar17 & regem1=regem2) mjbyptimp=regem1 + 99.							
if (ncar13=ncar15 & ncar13 > ncar17 & regem1 ~= regem2) mjbyptimp=60999.							
if (ncar13=ncar17 & ncar13 > ncar15 & regem1=regem3) mjbyptimp=regem1 + 99.							
if (ncar13=ncar17 & ncar13 > ncar15 & regem1 ~= regem3) mjbyptimp=60999.							
if (ncar15=ncar17 & ncar15 > ncar13 & regem2=regem3) mjbyptimp=regem2 + 99.							
if (ncar15=ncar17 & ncar15 > ncar17 & regem2 ~= regem3) mjbyptimp=60999.							
							
DO IF (pctemb < .5 | (ncartot < 50 & missing(tslavesd) & missing(tslavesp))).							
If (ncar13 = 0 & ncar15 > 0 & ncar17 > 0) mjbyptimp = plac1tra.							
If (ncar13 > 0 & ncar15 = 0 & ncar17 > 0) mjbyptimp = plac2tra.							
If (ncar13 > 0 & ncar15 > 0 & ncar17 = 0) mjbyptimp = plac3tra.							
If (ncar13 = 0 & ncar15 > 0 & ncar17 = 0 & missing(plac3tra)) mjbyptimp = plac1tra.							
If (ncar13 > 0 & ncar15 = 0 & ncar17 = 0 & plac2tra > 0 & missing(plac3tra)) mjbyptimp = plac2tra.							
If (ncar13 = 0 & ncar15 = 0 & ncar17 > 0 & regem1 = regem2) mjbyptimp = regem1 + 99.							
If (ncar13 = 0 & ncar15 > 0 & ncar17 = 0 & regem1 = regem3) mjbyptimp = regem1 + 99.							
If (ncar13 > 0 & ncar15 = 0 & ncar17 = 0 & regem2 = regem3) mjbyptimp = regem2 + 99.							
If (ncar13 = 0 & ncar15 = 0 & ncar17 > 0 & regem1 ~= regem2) mjbyptimp = 60999.							
If (ncar13 = 0 & ncar15 > 0 & ncar17 = 0 & regem1 ~= regem3) mjbyptimp = 60999.							
If (ncar13 > 0 & ncar15 = 0 & ncar17 = 0 & regem2 ~= regem3) mjbyptimp = 60999.							
END IF.							
							
DO IF (missing(ncartot)).							
If (plac1tra >=1 & plac2tra >=1 & missing(plac3tra) & regem1=regem2) mjbyptimp = regem1 + 99.							
If (plac1tra >=1 & plac3tra >=1 & missing(plac2tra) & regem1=regem3) mjbyptimp = regem1 + 99.							
If (plac2tra >=1 & plac3tra >=1 & missing(plac1tra) & regem2=regem3) mjbyptimp = regem2 + 99.							
If (plac1tra >=1 & plac2tra >=1 & missing(plac3tra) & regem1 ~= regem2) mjbyptimp = 60999.							
If (plac1tra >=1 & plac3tra >=1 & missing(plac2tra) & regem1 ~= regem3) mjbyptimp = 60999.							
If (plac2tra >=1 & plac3tra >=1 & missing(plac1tra) & regem2 ~= regem3) mjbyptimp = 60999.							
If (plac1tra >=1 & plac2tra >=1 & plac3tra >= 1 & regem1 = regem2) mjbyptimp = regem1 + 99.							
If (plac1tra >=1 & plac2tra >=1 & plac3tra >= 1 & regem1 = regem3) mjbyptimp = regem1 + 99.							
If (plac1tra >=1 & plac2tra >=1 & plac3tra >= 1 & regem2 = regem3) mjbyptimp = regem2 + 99.							
If (plac1tra >=1 & plac2tra >=1 & plac3tra >= 1 & regem1 ~= regem2 & regem1 ~= regem3 & regem2 ~= regem3) mjbyptimp = 60999.							
END IF.							
							
if (embport >= 1 & missing (embport2) & missing(plac1tra) & missing(plac2tra) & missing(plac3tra)) mjbyptimp = embport.							
if (embport2 >= 1 & missing(plac1tra) & missing(plac2tra) & missing(plac3tra)) mjbyptimp = embport2.							
if (missing(mjbyptimp) & fate2 ~= 2 & (embport >= 1 | embport2 >= 1 | plac1tra >= 1 | plac2tra >= 1 | plac3tra >= 1 | ncartot > 0)) mjbyptimp = 60999.							
EXECUTE.							
							
if (missing(mjbyptimp) & majbuypt >=1) mjbyptimp=majbuypt.							
							
*     mjslptimp      Principal port of slave purchase							
							
DO IF (slas32 >= 1 | slas36 >= 1 | slas39 >= 1).							
RECODE							
  slas32 slas36 slas39  (MISSING=0)  .							
END IF .							
compute slastot = slas32+slas36+slas39.							
RECODE slastot (0=sysmis).							
							
*  pctdis       Percentage of total embarkations documented for places of embarkation.  							
* (temporary variable that can be deleted once program is run)							
							
if (slaarriv >0) pctdis = slastot/slaarriv .							
							
if (sla1port >= 1 & missing(adpsale1) & missing(adpsale2)) mjslptimp = sla1port.							
if (adpsale1 >= 1 & missing(sla1port) & missing(adpsale2)) mjslptimp = adpsale1.							
if (adpsale2 >= 1 & missing(sla1port) & missing(adpsale1)) mjslptimp = adpsale2.							
if (missing(sla1port) & missing(adpsale1) & missing(adpsale2) & arrport >=1 & missing(arrport2)) mjslptimp = arrport.							
if (missing(sla1port) & missing(adpsale1) & missing(adpsale2) & missing(arrport) & arrport2 >=1) mjslptimp = arrport2.							
if (missing(sla1port) & missing(adpsale1) & missing(adpsale2) & arrport >=1 & arrport2 >= 1 & regarr = regarr2) mjslptimp = regarr + 99.							
if (missing(sla1port) & missing(adpsale1) & missing(adpsale2) & arrport >=1 & arrport2 >= 1 & regarr ~= regarr2) mjslptimp = 99801.							
							
if (regdis1 = regdis2 & missing(regdis3)) mjslptimp=regdis1+99.							
if (regdis1 = regdis3 & missing(regdis2)) mjslptimp=regdis1+99.							
if (regdis2 = regdis3 & missing(regdis1)) mjslptimp=regdis2+99.							
if (regdis1 = regdis2 & regdis1 = regdis3) mjbyptimp = regdis1 +99.							
if (regdis1 ~= regdis2 & regdis1 ~= regdis3 & regdis2 ~= regdis3) mjslptimp = 99801.							
							
if (slas32 > slas36 & slas32 > slas39) mjslptimp = sla1port.							
if (slas36 > slas32 & slas36 > slas39) mjslptimp = adpsale1.							
if (slas39 > slas32 & slas39 > slas36) mjslptimp = adpsale2.							
							
if (slas32=slas36 & slas32 > slas39 & regdis1=regdis2) mjslptimp=regdis1 + 99.							
if (slas32=slas36 & slas32 > slas39 & regdis1 ~= regdis2) mjslptimp=99801.							
if (slas32=slas39 & slas32 > slas36 & regdis1=regdis3) mjslptimp=regdis1 + 99.							
if (slas32=slas39 & slas32 > slas36 & regdis1 ~= regdis3) mjslptimp=99801.							
if (slas36=slas39 & slas36 > slas32 & regdis2=regdis3) mjslptimp=regdis2 + 99.							
if (slas36=slas39 & slas36 > slas39 & regdis2 ~= regdis3) mjslptimp=99801.							
							
DO IF ( (pctdis < .5 | (slastot < 50 & missing(slaarriv))) & sla1port >=1 & adpsale1 >=1 & missing(adpsale2)).							
if (slas32 =0 & slas36 >=1) mjslptimp = sla1port.							
if (slas36 =0 & slas32 >=1) mjslptimp = adpsale1.							
if (slas36 >=1 & slas32 >=1 & regdis1 = regdis2) mjslptimp = regdis1+99.							
if (slas36 >=1 & slas32 >=1 & regdis1 ~= regdis2) mjslptimp = 99801.							
END IF.							
							
IF ( (pctdis < .5 | (slastot < 50 & missing(slaarriv))) & sla1port >=1 & adpsale1 >=1 & adpsale2 >=1) mjslptimp = 99801.							
							
DO IF (missing(slastot)).							
If (sla1port >=1 & adpsale1 >=1 & missing(adpsale2) & regdis1=regdis2) mjslptimp = regdis1+99.							
If (sla1port >=1 & adpsale2 >=1 & missing(adpsale1) & regdis1=regdis3) mjslptimp = regdis1+99.							
If (adpsale1 >=1 & adpsale2 >=1 & missing(sla1port) & regdis2=regdis3) mjslptimp = regdis2+99.							
If (sla1port >=1 & adpsale1 >=1 & missing(adpsale2) & regdis1 ~= regdis2) mjslptimp = 99801.							
If (sla1port >=1 & adpsale2 >=1 & missing(adpsale1) & regdis1 ~= regdis3) mjslptimp = 99801.							
If (adpsale1 >=1 & adpsale2 >=1 & missing(sla1port) & regdis2 ~= regdis3) mjslptimp = 99801.							
If (sla1port >=1 & adpsale1 >=1 & adpsale2 >= 1 & regdis1 = regdis2) mjslptimp = regdis1 + 99.							
If (sla1port >=1 & adpsale1 >=1 & adpsale2 >= 1 & regdis1 = regdis3) mjslptimp = regdis1 + 99.							
If (sla1port >=1 & adpsale1 >=1 & adpsale2 >= 1 & regdis2 = regdis3) mjslptimp = regdis2 + 99.							
If (sla1port >=1 & adpsale1 >=1 & adpsale2 >= 1 & regdis1 ~= regdis2 & regdis1 ~= regdis3 & regdis2 ~= regdis3) mjslptimp = 99801.							
END IF.							
							
if (arrport >= 1 & missing(sla1port) & missing(adpsale1) & missing(adpsale2)) mjslptimp = arrport.							
							
if (missing(mjslptimp) & (fate2 = 1 | fate2 =3 | fate2 = 5) & (arrport >= 1 | arrport2 >= 1 | sla1port >= 1 | adpsale1 >= 1 | adpsale2 >= 1 | slastot > 0)) mjslptimp = 99801.							
EXECUTE.							
							
if (missing(mjslptimp) & majselpt >=1) mjslptimp=majselpt.							
							
*     ptdepimp       Imputed port where voyage began							
							
compute ptdepimp=portdep.							
if (mjslptimp >= 50200 & mjslptimp < 50300 & missing(portdep)) ptdepimp=50299.							
if (mjslptimp >= 50300 & mjslptimp < 50400 & missing(portdep)) ptdepimp=50399.							
if (mjslptimp >= 50400 & mjslptimp < 50500 & missing(portdep)) ptdepimp=50422.							
EXECUTE.							
							
*     deptregimp    Imputed region where voyage began							
*     majbyimp      Imputed principal region of slave purchase							
*     mjselimp       Imputed principal region of landing							
							
RECODE							
ptdepimp mjbyptimp mjslptimp 							
(10101 thru 10199 = 10100)							
(10201 thru 10299 = 10200)							
(10301 thru 10399 = 10300)							
(10401 thru 10499 = 10400)							
(10501 thru 10599 = 10500)							
(10601 thru 10699 = 10600)							
(10701 thru 10799 = 10700)							
(10801 thru 10899 = 10800)							
(10901 thru 10999 = 10900)							
(11001 thru 11099 = 11000)							
(11101 thru 11199 = 11100)							
(11201 thru 11299 = 11200)							
(11301 thru 11399 = 11300)							
(11401 thru 11499 = 11400)							
(11501 thru 11599 = 11500)							
(11601 thru 11699 = 11600)							
(20101 thru 20199 = 20100)							
(20201 thru 20299 = 20200)							
(20301 thru 20399 = 20300)							
(20401 thru 20499 = 20400)							
(20501 thru 20599 = 20500)							
(20601 thru 20699 = 20600)							
(20701 thru 20799 = 20700)							
(20801 thru 20899 = 20800)							
(20901 thru 20999 = 20900)							
(21001 thru 21099 = 21000)							
(21101 thru 21199 = 21100)							
(21201 thru 21299 = 21200)							
(21301 thru 21399 = 21300)							
(21401 thru 21499 = 21400)							
(21501 thru 21599 = 21500)							
(21601 thru 21699 = 21600)							
(21701 thru 21799 = 21700)							
(21801 thru 21899 = 21800)							
(21901 thru 21999 = 21900)							
(31101 thru 31199 = 31100)							
(31201 thru 31299 = 31200)							
(31301 thru 31399 = 31300)							
(31401 thru 31499 = 31400)							
(32101 thru 32199 = 32100)							
(32201 thru 32299 = 32200)							
(32301 thru 32399 = 32300)							
(33201 thru 33299 = 33200)							
(33301 thru 33399 = 33300)							
(33401 thru 33499 = 33400)							
(33501 thru 33599 = 33500)							
(33601 thru 33699 = 33600)							
(33701 thru 33799 = 33700)							
(33801 thru 33899 = 33800)							
(34101 thru 34199 = 34100)							
(34201 thru 34299 = 34200)							
(34301 thru 34399 = 34300)							
(34401 thru 34499 = 34400)							
(34501 thru 34599 = 34500)							
(34601 thru 34699 = 34600)							
(35101 thru 35199 = 35100)							
(35201 thru 35299 = 35200)							
(35301 thru 35399 = 35300)							
(35401 thru 35499 = 35400)							
(35501 thru 35599 = 35500)							
(36101 thru 36199 = 36100)							
(36201 thru 36299 = 36200)							
(36301 thru 36399 = 36300)							
(36401 thru 36499 = 36400)							
(36501 thru 36599 = 36500)							
(37001 thru 37099 = 37000)							
(38101 thru 38199 = 38100)							
(39001 thru 39099 = 39000)							
(41201 thru 41299 = 41200)							
(42001 thru 42099 = 42000)							
(43001 thru 43099 = 43000)							
(50101 thru 50199 = 50100)							
(50201 thru 50299 = 50200)							
(50301 thru 50399 = 50300)							
(50401 thru 50499 = 50400)							
(50501 thru 50599 = 50500)							
(60101 thru 60199 = 60100)							
(60201 thru 60299 = 60200)							
(60301 thru 60399 = 60300)							
(60401 thru 60499 = 60400)							
(60501 thru 60599 = 60500)							
(60601 thru 60699 = 60600)							
(60701 thru 60799 = 60700)							
(60801 thru 60899 = 60800)							
(60901 thru 60999 = 60900)							
(80101 thru 80199 = 80100)							
(80201 thru 80299 = 80200)							
(80301 thru 80399 = 80300)							
(80401 thru 80499 = 80400)							
(80501 thru 80599 = 80500)							
(80601 thru 80699 = 80600)							
(80701 thru 80799 = 80700)							
(99801 thru 99899 = 99800)							
(99901 thru 99999 = 99900)							
into deptregimp majbyimp mjselimp.							
							
*     deptregimp1  Imputed broad region where voyage began							
*     majbyimp1    Imputed broad region of slave purchase							
*     mjselimp1     Imputed broad region of landing							
*     retrnreg1       Broad region of return							
							
RECODE							
ptdepimp mjbyptimp mjslptimp portret							
(10101 thru 11699 = 10000)							
(20101 thru 21999 = 20000)							
(31102 thru 39002 = 30000)							
(41201 thru 43001 = 40000)							
(50101 thru 50599 = 50000)							
(60101 thru 60999 = 60000)							
(80199 thru 99912 = 80000)							
into deptregimp1 majbyimp1 mjselimp1 retrnreg1.							
EXECUTE.							
							
*    xmimpflag    Voyage groupings for estimating imputed slaves							
							
if ((rig=26 | rig=29 | rig=42 | rig=43 | rig =54 | rig =59 | rig=61 | rig =65 | rig = 80 | rig=86 | missing(rig)) 							
    & yearam >= 1626 & yearam < 1651) xmimpflag = 127 .							
if ((rig=26 | rig=29 | rig=42 | rig=43 | rig =54 | rig =59 | rig=61 | rig =65 | rig = 80 | rig=86 | missing(rig)) 							
    & yearam >= 1651 & yearam < 1676) xmimpflag = 128 .							
if ((rig=26 | rig=29 | rig=42 | rig=43 | rig =54 | rig =59 | rig=61 | rig =65 | rig = 80 | rig=86 | missing(rig)) 							
    & yearam >= 1676 & yearam < 1701) xmimpflag = 129 .							
if ((rig=26 | rig=29 | rig=42 | rig=43 | rig =54 | rig =59 | rig=61 | rig =65 | rig = 80 | rig=86 | missing(rig)) 							
    & yearam >= 1701 & yearam < 1726) xmimpflag = 130 .							
if ((rig=26 | rig=29 | rig=42 | rig=43 | rig =54 | rig =59 | rig=61 | rig =65 | rig = 80 | rig=86 | missing(rig)) 							
    & yearam >= 1726 & yearam < 1751) xmimpflag = 131 .							
if ((rig=26 | rig=29 | rig=42 | rig=43 | rig =54 | rig =59 | rig=61 | rig =65 | rig = 80 | rig=86 | missing(rig)) 							
   & yearam >= 1751 & yearam < 1776) xmimpflag = 132 .							
if ((rig=26 | rig=29 | rig=42 | rig=43 | rig =54 | rig =59 | rig=61 | rig =65 | rig = 80 | rig=86 | missing(rig)) 							
   & yearam >= 1776 & yearam < 1801) xmimpflag = 133 .							
if ((rig=26 | rig=29 | rig=42 | rig=43 | rig =54 | rig =59 | rig=61 | rig =65 | rig = 80 | rig=86 | missing(rig)) 							
   & yearam >= 1801 & yearam < 1826) xmimpflag = 134 .							
if ((rig=26 | rig=29 | rig=42 | rig=43 | rig =54 | rig =59 | rig=61 | rig =65 | rig = 80 | rig=86 | missing(rig)) 							
   & yearam >= 1826 & yearam < 1851) xmimpflag = 135 .							
if ((rig=26 | rig=29 | rig=42 | rig=43 | rig =54 | rig =59 | rig=61 | rig =65 | rig = 80 | rig=86 | missing(rig)) 							
   & yearam >= 1851 & yearam < 1876) xmimpflag = 136 .							
if (yearam < 1700 & majbyimp = 60100) xmimpflag = 101 .							
if (yearam >= 1700 & yearam < 1801 & majbyimp = 60100) xmimpflag = 102 .							
if (yearam >=1800 & majbyimp = 60100) xmimpflag = 103 .							
if (yearam < 1700 & majbyimp = 60200) xmimpflag = 104 .							
if (yearam >= 1700 & yearam < 1801 & majbyimp = 60200) xmimpflag = 105 .							
if (yearam >=1800 & majbyimp = 60200) xmimpflag = 106 .							
if (yearam < 1700 & majbyimp = 60400) xmimpflag = 107 .							
if (yearam >= 1700 & yearam < 1801 & majbyimp = 60400) xmimpflag = 108 .							
if (yearam < 1700 & majbyimp = 60500) xmimpflag = 110 .							
if (yearam >= 1700 & yearam < 1801 & majbyimp = 60500) xmimpflag = 111 .							
if (yearam >=1800 & majbyimp = 60500) xmimpflag = 112 .							
if (yearam < 1700 & majbyimp = 60600) xmimpflag = 113 .							
if (yearam >= 1700 & yearam < 1801 & majbyimp = 60600) xmimpflag = 114 .							
if (yearam >=1800 & majbyimp = 60600) xmimpflag = 115 .							
if (yearam < 1700 & majbyimp = 60700) xmimpflag = 116 .							
if (yearam >= 1700 & yearam < 1801 & majbyimp = 60700) xmimpflag = 117 .							
if (yearam >=1800 & majbyimp = 60700) xmimpflag = 118 .							
if (yearam >= 1700 & yearam < 1801 & majbyimp = 60300) xmimpflag = 120 .							
if (yearam >=1800 & majbyimp = 60300) xmimpflag = 121 .							
if (yearam < 1700 & majbyimp = 60800) xmimpflag = 122 .							
if (yearam >= 1700 & yearam < 1801 & majbyimp = 60800) xmimpflag = 123 .							
if (yearam >=1800 & majbyimp = 60800) xmimpflag = 124 .							
if (yearam < 1626) xmimpflag = 1 .							
if ((yearam >= 1626 & yearam < 1642) & ((mjselimp >= 31100 & mjselimp < 32000) | 							
     mjselimp1 = 40000 | mjselimp = 80400))   xmimpflag = 2 .							
if (yearam < 1716 & mjselimp >= 36100 & mjselimp < 37000) xmimpflag = 3 .							
if (yearam < 1701 & mjselimp = 50300)  xmimpflag = 4 .							
if (yearam >= 1700 & yearam < 1800 & mjselimp = 50300)  xmimpflag = 5 .							
if (yearam > 1799 & mjselimp = 50300)  xmimpflag = 6 .							
if (yearam < 1650 & natinimp = 8 )  xmimpflag = 7 .							
if (yearam >= 1650 & yearam < 1674 & natinimp = 8)  xmimpflag = 8 .							
if (yearam >= 1674 & yearam < 1731 & natinimp = 8)  xmimpflag = 9 .							
if (yearam > 1730 & natinimp = 8 )  xmimpflag = 10 .							
if (yearam < 1751 & mjselimp = 50200)  xmimpflag = 11 .							
if (yearam >= 1751 & yearam < 1776 & mjselimp = 50200)  xmimpflag = 12 .							
if (yearam >= 1776 & yearam < 1801 & mjselimp = 50200)  xmimpflag = 13 .							
if (yearam >= 1801 & yearam < 1826 & mjselimp = 50200)  xmimpflag = 14 .							
if (yearam > 1825 & mjselimp = 50200)  xmimpflag = 15 .							
if (yearam >= 1642 & yearam < 1663 & ((mjselimp >= 31100 & mjselimp < 32000) | 							
    mjselimp1 = 40000 | mjselimp = 80400))  xmimpflag = 16 .							
if (yearam >= 1794 & yearam < 1807 & natinimp = 15)  xmimpflag = 157 .							
if (yearam < 1794 & natinimp = 15) xmimpflag = 159 .							
if (yearam < 1851 & natinimp = 9 )  xmimpflag = 99 .							
if (yearam >= 1851 & yearam < 1876 & natinimp =9)  xmimpflag = 100 .							
if (yearam < 1751 & rig = 1) xmimpflag = 17 .							
if (yearam >= 1751 & yearam < 1776 & rig = 1)  xmimpflag = 98 .							
if (yearam >= 1776 & yearam < 1801 & rig = 1)  xmimpflag = 18 .							
if (yearam >= 1801 & yearam < 1826 & rig = 1)  xmimpflag = 19 .							
if (yearam >= 1826 & yearam < 1851 & rig = 1)  xmimpflag = 20 .							
if (yearam >= 1851 & yearam < 1876 & rig = 1)  xmimpflag = 21 .							
if (yearam < 1776 & rig = 2) xmimpflag = 22 .							
if (yearam >= 1776 & yearam < 1801 & rig = 2)  xmimpflag = 23 .							
if (yearam >= 1801 & yearam < 1826 & rig = 2)  xmimpflag = 24 .							
if (yearam >= 1826 & yearam < 1851 & rig = 2)  xmimpflag = 25 .							
if (yearam >= 1851 & yearam < 1876 & rig = 2)  xmimpflag = 26 .							
if (yearam < 1751 & rig = 3) xmimpflag = 27 .							
if (yearam >= 1751 & yearam < 1776 & rig = 3)  xmimpflag = 28 .							
if (yearam >= 1776 & yearam < 1801 & rig = 3)  xmimpflag = 29 .							
if (yearam >= 1801 & yearam < 1876 & rig = 3)  xmimpflag = 30 .							
if (yearam < 1726 & rig = 4) xmimpflag = 31 .							
if (yearam >= 1726 & yearam < 1751 & rig = 4)  xmimpflag = 32 .							
if (yearam >= 1751 & yearam < 1776 & rig = 4)  xmimpflag = 33 .							
if (yearam >= 1776 & yearam < 1801 & rig = 4)  xmimpflag = 34 .							
if (yearam >= 1801 & yearam < 1826 & rig = 4)  xmimpflag = 35 .							
if (yearam >= 1826 & yearam < 1851 & rig = 4)  xmimpflag = 36 .							
if (yearam >= 1851 & yearam < 1876 & rig = 4)  xmimpflag = 37 .							
if (rig=5) xmimpflag = 38 .							
if (rig=6) xmimpflag = 39 .							
if (rig=7) xmimpflag = 40 .							
if (yearam < 1776 & rig = 8) xmimpflag = 41 .							
if (yearam >= 1776 & yearam < 1801 & rig = 8)  xmimpflag = 42 .							
if (yearam >= 1801 & yearam < 1826 & rig = 8)  xmimpflag = 43 .							
if (yearam >= 1826 & yearam < 1851 & rig = 8)  xmimpflag = 44 .							
if (yearam >= 1851 & yearam < 1876 & rig = 8)  xmimpflag = 45 .							
if (yearam < 1826 & (rig = 9 | rig = 31)) xmimpflag = 46 .							
if (yearam >= 1826 & yearam < 1851 & (rig = 9 | rig = 31))  xmimpflag = 47 .							
if (yearam >= 1851 & yearam < 1876 & (rig = 9 | rig = 31))  xmimpflag = 48 .							
if (rig=10|rig=24) xmimpflag = 49 .							
if (rig=11 | rig=12) xmimpflag = 50 .							
if (yearam < 1751 & rig = 13) xmimpflag = 51 .							
if (yearam >= 1751 & yearam < 1776 & rig = 13)  xmimpflag = 52 .							
if (yearam >= 1776 & yearam < 1801 & rig = 13)  xmimpflag = 53 .							
if (yearam >= 1801 & yearam < 1826 & rig = 13)  xmimpflag = 54 .							
if (yearam >= 1826 & yearam < 1877 & rig = 13)  xmimpflag = 55 .							
if (rig=15) xmimpflag = 56 .							
if (rig=20) xmimpflag = 57 .							
if (rig=21) xmimpflag = 58 .							
if (rig=23) xmimpflag = 59 .							
if (yearam < 1751 & rig = 25) xmimpflag = 60 .							
if (yearam >= 1751 & yearam < 1776 & rig = 25)  xmimpflag = 61 .							
if (yearam >= 1776 & yearam < 1801 & rig = 25)  xmimpflag = 62 .							
if (yearam >= 1801 & yearam < 1826 & rig = 25)  xmimpflag = 63 .							
if (yearam >= 1826 & yearam < 1851 & rig = 25)  xmimpflag = 160 .							
if (yearam >= 1851 & yearam < 1877 & rig = 25)  xmimpflag = 64 .							
if (yearam < 1751 & rig = 27) xmimpflag = 65 .							
if (yearam >= 1751 & yearam < 1776 & rig = 27)  xmimpflag = 66 .							
if (yearam >= 1776 & yearam < 1801 & rig = 27)  xmimpflag = 67 .							
if (yearam >= 1801 & yearam < 1877 & rig = 27)  xmimpflag = 68 .							
if (rig=28) xmimpflag = 69 .							
if (yearam < 1726 & (rig = 30 | rig = 45 | rig=63)) xmimpflag = 70 .							
if (yearam >= 1726 & yearam < 1776 & (rig = 30 | rig = 45 | rig=63))  xmimpflag = 71 .							
if (yearam >= 1776 & yearam < 1801 & (rig=30 | rig=45 | rig=63)) xmimpflag = 97 .							
if (yearam >= 1801 & yearam < 1826 & (rig = 30 | rig = 45 | rig=63))  xmimpflag = 72 .							
if (yearam >= 1826 & yearam < 1876 & (rig=30 | rig=45 | rig=63)) xmimpflag = 85 .							
if (rig=32 | rig=39) xmimpflag = 73 .							
if (yearam < 1726 & rig = 35) xmimpflag = 74 .							
if (yearam >= 1726 & yearam < 1751 & rig = 35)  xmimpflag = 75 .							
if (yearam >= 1751 & yearam < 1776 & rig = 35)  xmimpflag = 76 .							
if (yearam >= 1776 & yearam < 1801 & rig = 35)  xmimpflag = 77 .							
if (yearam >= 1801 & yearam < 1877 & rig = 35)  xmimpflag = 78 .							
if (yearam < 1776 & rig = 40) xmimpflag = 79 .							
if (yearam >= 1776 & yearam < 1801 & rig = 40)  xmimpflag = 80 .							
if (yearam >= 1801 & yearam < 1826 & rig = 40)  xmimpflag = 81 .							
if (yearam >= 1826 & yearam < 1876 & rig = 40)  xmimpflag = 82 .							
if (rig=41 | rig=57) xmimpflag = 83 .							
if (rig=44) xmimpflag = 84 .							
if (rig=47) xmimpflag = 86 .							
if (rig=48) xmimpflag = 87 .							
if (yearam < 1826 & (rig=14 | rig = 36 | rig=49)) xmimpflag = 88 .							
if (yearam >= 1826 & yearam < 1876 & ( rig = 14 | rig=36 | rig = 49))  xmimpflag = 89 .							
if (yearam < 1826 & (rig=16 | rig = 51)) xmimpflag = 90 .							
if (yearam >= 1826 & yearam < 1851 & (rig=16 | rig = 51))  xmimpflag = 91 .							
if (yearam >= 1851 & yearam < 1876 & (rig=16 | rig = 51))  xmimpflag = 92 .							
if (rig=17|rig=19|rig=52|rig=53) xmimpflag = 93 .							
if (yearam < 1726 & rig = 60) xmimpflag = 94 .							
if (yearam >= 1726 & yearam < 1826 & rig = 60)  xmimpflag = 95 .							
if (yearam >= 1826 & yearam < 1876 & rig = 60)  xmimpflag = 96 .							
if (yearam < 1776 & rig = 1 & natinimp = 9) xmimpflag = 137 .							
if (yearam >= 1776 & yearam < 1801 & rig = 1 & natinimp = 9)  xmimpflag = 138 .							
if (yearam >= 1801 & yearam < 1826 & rig = 1 & natinimp = 9)  xmimpflag = 139 .							
if (yearam > 1825 & rig = 1 & natinimp =9)  xmimpflag = 140 .							
if (yearam < 1776 & (rig=2 | rig = 5) & natinimp = 9) xmimpflag = 141 .							
if (yearam >= 1776 & yearam < 1801 & (rig=2 | rig = 5) & natinimp = 9)  xmimpflag = 142 .							
if (yearam >= 1801 & yearam < 1826 & rig = 5 & natinimp = 9)  xmimpflag = 143 .							
if (yearam > 1825 & (rig=2 | rig = 5) & natinimp =9)  xmimpflag = 145 .							
if (yearam < 1776 & rig =4 & natinimp = 9) xmimpflag = 146 .							
if (yearam >= 1776 & yearam < 1801 & rig =4 & natinimp = 9)  xmimpflag = 147 .							
if (yearam >= 1801 & yearam < 1826 & rig =4 & natinimp = 9)  xmimpflag = 148 .							
if (yearam > 1825 & rig =4 & natinimp =9)  xmimpflag = 149 .							
if (yearam < 1776 & rig =8 & natinimp = 9) xmimpflag = 150 .							
if (yearam >= 1776 & yearam < 1826 & rig =8 & natinimp = 9)  xmimpflag = 151 .							
if (yearam > 1825 & rig =8 & natinimp =9)  xmimpflag = 152 .							
if (yearam >= 1826 & yearam < 1876 & rig = 9 & natinimp = 9) xmimpflag = 154 .							
if (rig = 27 & natinimp = 9) xmimpflag = 155 .							
if (rig = 35 & natinimp = 9) xmimpflag = 156 .							
EXECUTE.							
							
*     slaximp       Imputed number of slaves embarked							
*     slamimp      Imputed number of slaves disembarked							
							
if (tslavesd >= 1) slaximp = tslavesd.							
if (missing(tslavesd) & tslavesp >=1) slaximp = tslavesp.							
if (MISSING(tslavesd) & MISSING(tslavesp) & ncartot > slaarriv) slaximp=ncartot.							
if (MISSING(tslavesd) & MISSING(tslavesp) & MISSING(slaarriv) & ncartot > slastot) slaximp=ncartot.							
if (MISSING(tslavesd) & MISSING(tslavesp) & MISSING(slaarriv) & MISSING(slastot) & ncartot >=50) slaximp=ncartot.							
if (MISSING(tslavesd) & MISSING(tslavesp) & MISSING(slaarriv) & MISSING(slastot) & ncartot < 50) ncartot=$sysmis.							
							
if (slaarriv >= 1) slamimp = slaarriv.							
if (MISSING(slaarriv) & slastot <= tslavesd) slamimp=slastot.							
if (MISSING(slaarriv) & MISSING(tslavesd) & slastot <= tslavesp) slamimp=slastot.							
if (MISSING(slaarriv) & MISSING(tslavesd) & MISSING(tslavesp) & slastot <= ncartot) slamimp=slastot.							
if (MISSING(slaarriv) & MISSING(tslavesd) & MISSING(tslavesd) & MISSING(ncartot) & slastot >= 50) slamimp=slastot.							
if (MISSING(tslavesd) & MISSING(tslavesp) & MISSING(slaarriv) & MISSING(ncartot) & slastot < 50) slastot=$sysmis.							
EXECUTE.							
							
If (xmimpflag = 127 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.165107561642471).							
If (xmimpflag = 127 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1-0.165107561642471).							
If (xmimpflag = 127 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =163.181286549708.							
If (xmimpflag = 127 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =163.181286549708/ (1-0.165107561642471 ).							
If (xmimpflag = 128 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.230972326367458).							
If (xmimpflag = 128 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.230972326367458).							
If (xmimpflag = 128 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =241.774647887324.							
If (xmimpflag = 128 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =241.774647887324/ (1-0.230972326367458 ).							
If (xmimpflag = 129 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.218216262481124).							
If (xmimpflag = 129 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.218216262481124).							
If (xmimpflag = 129 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =249.141527001862.							
If (xmimpflag = 129 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =249.141527001862/ (1-0.218216262481124 ).							
If (xmimpflag = 130 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.164154067860228).							
If (xmimpflag = 130 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.164154067860228).							
If (xmimpflag = 130 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =227.680034129693.							
If (xmimpflag = 130 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =227.680034129693/ (1-0.164154067860228 ).							
If (xmimpflag = 131 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.153670852602567).							
If (xmimpflag = 131 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.153670852602567).							
If (xmimpflag = 131 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =272.60549132948.							
If (xmimpflag = 131 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =272.60549132948/ (1-0.153670852602567 ).							
If (xmimpflag = 132 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.120410468186061).							
If (xmimpflag = 132 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.120410468186061).							
If (xmimpflag = 132 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =268.071314102564.							
If (xmimpflag = 132 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =268.071314102564/ (1-0.120410468186061 ).							
If (xmimpflag = 133 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.126821090786133).							
If (xmimpflag = 133 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.126821090786133).							
If (xmimpflag = 133 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =290.826654240447.							
If (xmimpflag = 133 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =290.826654240447/ (1-0.126821090786133 ).							
If (xmimpflag = 134 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.105799354866935).							
If (xmimpflag = 134 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.105799354866935).							
If (xmimpflag = 134 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =225.932515337423.							
If (xmimpflag = 134 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =225.932515337423/ (1-0.105799354866935 ).							
If (xmimpflag = 135 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.114160782328086).							
If (xmimpflag = 135 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.114160782328086).							
If (xmimpflag = 135 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =391.452674897119.							
If (xmimpflag = 135 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =391.452674897119/ (1-0.114160782328086 ).							
If (xmimpflag = 136 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.170755559662484).							
If (xmimpflag = 136 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.170755559662484).							
If (xmimpflag = 136 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =480.734042553191.							
If (xmimpflag = 136 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =480.734042553191/ (1-0.170755559662484 ).							
If (xmimpflag = 101 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.142415261804064).							
If (xmimpflag = 101 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.142415261804064).							
If (xmimpflag = 101 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =163.80243902439.							
If (xmimpflag = 101 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =163.80243902439/ (1-0.142415261804064 ).							
If (xmimpflag = 102 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.104951847967976).							
If (xmimpflag = 102 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.104951847967976).							
If (xmimpflag = 102 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =153.265497076023.							
If (xmimpflag = 102 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =153.265497076023/ (1-0.104951847967976 ).							
If (xmimpflag = 103 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0794334443169517).							
If (xmimpflag = 103 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0794334443169517).							
If (xmimpflag = 103 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =138.094017094017.							
If (xmimpflag = 103 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =138.094017094017/ (1-0.0794334443169517 ).							
If (xmimpflag = 104 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.125269157905197).							
If (xmimpflag = 104 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.125269157905197).							
If (xmimpflag = 104 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =107.64.							
If (xmimpflag = 104 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =107.64 - (107.64*0.125269157905197 ).							
If (xmimpflag = 105 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0887057111704602).							
If (xmimpflag = 105 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0887057111704602).							
If (xmimpflag = 105 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =191.988789237668.							
If (xmimpflag = 105 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =191.988789237668/ (1-0.0887057111704602 ).							
If (xmimpflag = 106 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0985396051230542).							
If (xmimpflag = 106 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0985396051230542).							
If (xmimpflag = 106 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =188.140969162996.							
If (xmimpflag = 106 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =188.140969162996/ (1-0.0985396051230542 ).							
If (xmimpflag = 107 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.199714956235816).							
If (xmimpflag = 107 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.199714956235816).							
If (xmimpflag = 107 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =239.363636363636.							
If (xmimpflag = 107 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =239.363636363636/ (1-0.199714956235816 ).							
If (xmimpflag = 108 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.116764553914052).							
If (xmimpflag = 108 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.116764553914052).							
If (xmimpflag = 108 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =241.066480055983.							
If (xmimpflag = 108 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =241.066480055983/ (1-0.116764553914052 ).							
If (xmimpflag = 110 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.217817105373686).							
If (xmimpflag = 110 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.217817105373686).							
If (xmimpflag = 110 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =321.139784946236.							
If (xmimpflag = 110 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =321.139784946236/ (1-0.217817105373686 ).							
If (xmimpflag = 111 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.134584278813695).							
If (xmimpflag = 111 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.134584278813695).							
If (xmimpflag = 111 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =320.396527777777.							
If (xmimpflag = 111 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =320.396527777777/ (1-0.134584278813695 ).							
If (xmimpflag = 112 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0649564900465187).							
If (xmimpflag = 112 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0649564900465187).							
If (xmimpflag = 112 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =302.919243986254.							
If (xmimpflag = 112 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =302.919243986254/ (1-0.0649564900465187 ).							
If (xmimpflag = 113 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.294943293777566).							
If (xmimpflag = 113 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.294943293777566).							
If (xmimpflag = 113 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =178.191780821918.							
If (xmimpflag = 113 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =178.191780821918/ (1-0.294943293777566 ).							
If (xmimpflag = 114 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.190466263797331).							
If (xmimpflag = 114 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.190466263797331).							
If (xmimpflag = 114 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =268.709993468321.							
If (xmimpflag = 114 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =268.709993468321/ (1-0.190466263797331 ).							
If (xmimpflag = 115 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.165262209695588).							
If (xmimpflag = 115 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.165262209695588).							
If (xmimpflag = 115 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =265.480215827338.							
If (xmimpflag = 115 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =265.480215827338/ (1-0.165262209695588 ).							
If (xmimpflag = 116 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.250590294065011).							
If (xmimpflag = 116 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.250590294065011).							
If (xmimpflag = 116 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =216.026607538803.							
If (xmimpflag = 116 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =216.026607538803/ (1-0.250590294065011 ).							
If (xmimpflag = 117 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0862116624182079).							
If (xmimpflag = 117 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0862116624182079).							
If (xmimpflag = 117 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =341.979498861048.							
If (xmimpflag = 117 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =341.979498861048/ (1-0.0862116624182079 ).							
If (xmimpflag = 118 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0795782666543268).							
If (xmimpflag = 118 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0795782666543268).							
If (xmimpflag = 118 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =382.444580777097.							
If (xmimpflag = 118 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =382.444580777097/ (1-0.0795782666543268 ).							
If (xmimpflag = 120 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.100542298212489).							
If (xmimpflag = 120 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.100542298212489).							
If (xmimpflag = 120 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =191.62583518931.							
If (xmimpflag = 120 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =191.62583518931/ (1-0.100542298212489 ).							
If (xmimpflag = 121 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0690791392436498).							
If (xmimpflag = 121 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0690791392436498).							
If (xmimpflag = 121 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =162.041666666667.							
If (xmimpflag = 121 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =162.041666666667/ (1-0.0690791392436498 ).							
If (xmimpflag = 122 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.274602006426542).							
If (xmimpflag = 122 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.274602006426542).							
If (xmimpflag = 122 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =173.454545454545.							
If (xmimpflag = 122 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =173.454545454545/ (1-0.274602006426542 ).							
If (xmimpflag = 123 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.274602006426542).							
If (xmimpflag = 123 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.274602006426542).							
If (xmimpflag = 123 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =255.028571428571.							
If (xmimpflag = 123 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =255.028571428571/ (1-0.274602006426542 ).							
If (xmimpflag = 124 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.181330570603409).							
If (xmimpflag = 124 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.181330570603409).							
If (xmimpflag = 124 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =447.532008830022.							
If (xmimpflag = 124 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =447.532008830022/ (1-0.181330570603409 ).							
If (xmimpflag = 1 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.255634697158707).							
If (xmimpflag = 1 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.255634697158707).							
If (xmimpflag = 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =166.401374570447.							
If (xmimpflag = 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =166.401374570447/ (1-0.255634697158707 ).							
If (xmimpflag = 2 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.173114449095158).							
If (xmimpflag = 2 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.173114449095158).							
If (xmimpflag = 2 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =152.863945578231.							
If (xmimpflag = 2 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =152.863945578231/ (1-0.173114449095158 ).							
If (xmimpflag = 3 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.191426939591589).							
If (xmimpflag = 3 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.191426939591589).							
If (xmimpflag = 3 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =250.179245283019.							
If (xmimpflag = 3 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =250.179245283019/ (1-0.191426939591589 ).							
If (xmimpflag = 4 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.143739162059858).							
If (xmimpflag = 4 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.143739162059858).							
If (xmimpflag = 4 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =273.896226415094.							
If (xmimpflag = 4 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =273.896226415094 - (273.896226415094*0.143739162059858 ).							
If (xmimpflag = 5 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0703329947332674).							
If (xmimpflag = 5 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0703329947332674).							
If (xmimpflag = 5 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =380.04854368932.							
If (xmimpflag = 5 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =380.04854368932 - (380.04854368932*0.0703329947332674 ).							
If (xmimpflag = 6 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.117444418143106).							
If (xmimpflag = 6 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.117444418143106).							
If (xmimpflag = 6 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =305.868020304568.							
If (xmimpflag = 6 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =305.868020304568/ (1-0.117444418143106 ).							
If (xmimpflag = 7 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.126779394689057).							
If (xmimpflag = 7 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.126779394689057).							
If (xmimpflag = 7 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =265.88.							
If (xmimpflag = 7 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =265.88 - (265.88*0.126779394689057 ).							
If (xmimpflag = 8 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.189011301766662).							
If (xmimpflag = 8 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.189011301766662).							
If (xmimpflag = 8 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =281.325.							
If (xmimpflag = 8 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =281.325/ (1-0.189011301766662 ).							
If (xmimpflag = 9 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.140365224720275).							
If (xmimpflag = 9 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.140365224720275).							
If (xmimpflag = 9 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =402.502202643172.							
If (xmimpflag = 9 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =402.502202643172/ (1-0.140365224720275 ).							
If (xmimpflag = 10 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.107188743129005).							
If (xmimpflag = 10 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.107188743129005).							
If (xmimpflag = 10 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =277.059842519684.							
If (xmimpflag = 10 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =277.059842519684/ (1-0.107188743129005 ).							
If (xmimpflag = 11 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.126901348540731).							
If (xmimpflag = 11 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.126901348540731).							
If (xmimpflag = 11 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =355.810945273632.							
If (xmimpflag = 11 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =355.810945273632/ (1-0.126901348540731 ).							
If (xmimpflag = 12 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0655772248600899).							
If (xmimpflag = 12 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0655772248600899).							
If (xmimpflag = 12 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =309.533898305085.							
If (xmimpflag = 12 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =309.533898305085/ (1-0.0655772248600899 ).							
If (xmimpflag = 13 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0778021073375869).							
If (xmimpflag = 13 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0778021073375869).							
If (xmimpflag = 13 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =305.812154696132.							
If (xmimpflag = 13 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =305.812154696132/ (1-0.0778021073375869 ).							
If (xmimpflag = 14 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0654921908875572).							
If (xmimpflag = 14 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0654921908875572).							
If (xmimpflag = 14 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =285.054112554113.							
If (xmimpflag = 14 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =285.054112554113/ (1-0.0654921908875572 ).							
If (xmimpflag = 15 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0671696102131247).							
If (xmimpflag = 15 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0671696102131247).							
If (xmimpflag = 15 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =361.638059701493.							
If (xmimpflag = 15 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =361.638059701493/ (1-0.0671696102131247 ).							
If (xmimpflag = 16 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.371414750110571).							
If (xmimpflag = 16 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.371414750110571).							
If (xmimpflag = 16 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =239.9.							
If (xmimpflag = 16 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =239.9/ (1-0.371414750110571 ).							
If (xmimpflag = 157 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.230610260687796).							
If (xmimpflag = 157 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.230610260687796).							
If (xmimpflag = 157 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =139.029411764706.							
If (xmimpflag = 157 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =139.029411764706/ (1-0.230610260687796 ).							
If (xmimpflag = 159 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.154487726688789).							
If (xmimpflag = 159 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.154487726688789).							
If (xmimpflag = 159 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =245.12676056338.							
If (xmimpflag = 159 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =245.12676056338/ (1-0.154487726688789 ).							
If (xmimpflag = 99 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.166050441674744).							
If (xmimpflag = 99 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.166050441674744).							
If (xmimpflag = 99 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =125.619750283768.							
If (xmimpflag = 99 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =125.619750283768/ (1-0.166050441674744 ).							
If (xmimpflag = 100 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.178717812379779).							
If (xmimpflag = 100 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.178717812379779).							
If (xmimpflag = 100 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =565.645161290322.							
If (xmimpflag = 100 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =565.645161290322/ (1-0.178717812379779 ).							
If (xmimpflag = 17 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0557746478873239).							
If (xmimpflag = 17 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0557746478873239).							
If (xmimpflag = 17 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =148.882352941176.							
If (xmimpflag = 17 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =148.882352941176/ (1-0.0557746478873239 ).							
If (xmimpflag = 98 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.126563817175912).							
If (xmimpflag = 98 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.126563817175912).							
If (xmimpflag = 98 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =132.596685082873.							
If (xmimpflag = 98 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =132.596685082873/ (1-0.126563817175912 ).							
If (xmimpflag = 18 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.093544030879478).							
If (xmimpflag = 18 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.093544030879478).							
If (xmimpflag = 18 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =184.486013986014.							
If (xmimpflag = 18 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =184.486013986014/ (1-0.093544030879478 ).							
If (xmimpflag = 19 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0985982521761244).							
If (xmimpflag = 19 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0985982521761244).							
If (xmimpflag = 19 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =230.298469387755.							
If (xmimpflag = 19 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =230.298469387755/ (1-0.0985982521761244 ).							
If (xmimpflag = 20 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0944678720322908).							
If (xmimpflag = 20 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0944678720322908).							
If (xmimpflag = 20 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =444.290145985401.							
If (xmimpflag = 20 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =444.290145985401/ (1-0.0944678720322908 ).							
If (xmimpflag = 21 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.167379623404603).							
If (xmimpflag = 21 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.167379623404603).							
If (xmimpflag = 21 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =492.946428571429.							
If (xmimpflag = 21 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =492.946428571429/ (1-0.167379623404603 ).							
If (xmimpflag = 22 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.183801786070534).							
If (xmimpflag = 22 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.183801786070534).							
If (xmimpflag = 22 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =91.9594594594595.							
If (xmimpflag = 22 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =91.9594594594595/ (1-0.183801786070534 ).							
If (xmimpflag = 23 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.102358180948044).							
If (xmimpflag = 23 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.102358180948044).							
If (xmimpflag = 23 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =95.972972972973.							
If (xmimpflag = 23 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =95.972972972973/ (1-0.102358180948044 ).							
If (xmimpflag = 24 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.122708750828674).							
If (xmimpflag = 24 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.122708750828674).							
If (xmimpflag = 24 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =146.31.							
If (xmimpflag = 24 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =146.31/ (1-0.122708750828674 ).							
If (xmimpflag = 25 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.101742168136026).							
If (xmimpflag = 25 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.101742168136026).							
If (xmimpflag = 25 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =279.357142857143.							
If (xmimpflag = 25 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =279.357142857143/ (1-0.101742168136026 ).							
If (xmimpflag = 26 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0830808603000646).							
If (xmimpflag = 26 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0830808603000646).							
If (xmimpflag = 26 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =341.5.							
If (xmimpflag = 26 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =341.5/ (1-0.0830808603000646 ).							
If (xmimpflag = 27 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0951735364832193).							
If (xmimpflag = 27 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0951735364832193).							
If (xmimpflag = 27 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =335.546666666667.							
If (xmimpflag = 27 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =335.546666666667 - (335.546666666667*0.0951735364832193 ).							
If (xmimpflag = 28 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0599984615282753).							
If (xmimpflag = 28 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0599984615282753).							
If (xmimpflag = 28 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =348.926267281106.							
If (xmimpflag = 28 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =348.926267281106 - (348.926267281106*0.0599984615282753 ).							
If (xmimpflag = 29 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0849037398486349).							
If (xmimpflag = 29 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0849037398486349).							
If (xmimpflag = 29 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =323.539358600583.							
If (xmimpflag = 29 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =323.539358600583/ (1-0.0849037398486349 ).							
If (xmimpflag = 30 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0831292966753462).							
If (xmimpflag = 30 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0831292966753462).							
If (xmimpflag = 30 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =435.738461538461.							
If (xmimpflag = 30 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =435.738461538461/ (1-0.0831292966753462 ).							
If (xmimpflag = 31 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.154603810637904).							
If (xmimpflag = 31 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.154603810637904).							
If (xmimpflag = 31 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =221.279220779221.							
If (xmimpflag = 31 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =221.279220779221/ (1-0.154603810637904 ).							
If (xmimpflag = 32 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.169381440464976).							
If (xmimpflag = 32 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.169381440464976).							
If (xmimpflag = 32 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =296.593103448276.							
If (xmimpflag = 32 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =296.593103448276/ (1-0.169381440464976 ).							
If (xmimpflag = 33 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.183684529291394).							
If (xmimpflag = 33 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.183684529291394).							
If (xmimpflag = 33 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =281.452966714906.							
If (xmimpflag = 33 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =281.452966714906/ (1-0.183684529291394 ).							
If (xmimpflag = 34 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0864964921326426).							
If (xmimpflag = 34 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0864964921326426).							
If (xmimpflag = 34 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =325.652360515021.							
If (xmimpflag = 34 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =325.652360515021/ (1-0.0864964921326426 ).							
If (xmimpflag = 35 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.176037224384829).							
If (xmimpflag = 35 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.176037224384829).							
If (xmimpflag = 35 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =272.474358974359.							
If (xmimpflag = 35 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =272.474358974359/ (1-0.176037224384829 ).							
If (xmimpflag = 36 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.116937605450612).							
If (xmimpflag = 36 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.116937605450612).							
If (xmimpflag = 36 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =556.677419354839.							
If (xmimpflag = 36 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =556.677419354839/ (1-0.116937605450612 ).							
If (xmimpflag = 37 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.172812495199871).							
If (xmimpflag = 37 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.172812495199871).							
If (xmimpflag = 37 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =890.470588235294.							
If (xmimpflag = 37 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =890.470588235294/ (1-0.172812495199871 ).							
If (xmimpflag = 38 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.105087524949968).							
If (xmimpflag = 38 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.105087524949968).							
If (xmimpflag = 38 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =335.813953488372.							
If (xmimpflag = 38 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =335.813953488372/ (1-0.105087524949968 ).							
If (xmimpflag = 39 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0856667000685018).							
If (xmimpflag = 39 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0856667000685018).							
If (xmimpflag = 39 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =257.263157894737.							
If (xmimpflag = 39 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =257.263157894737/ (1-0.0856667000685018 ).							
If (xmimpflag = 40 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0865650987499053).							
If (xmimpflag = 40 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0865650987499053).							
If (xmimpflag = 40 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =328.195266272189.							
If (xmimpflag = 40 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =328.195266272189/ (1-0.0865650987499053 ).							
If (xmimpflag = 41 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.171814252005436).							
If (xmimpflag = 41 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.171814252005436).							
If (xmimpflag = 41 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =129.145454545455.							
If (xmimpflag = 41 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =129.145454545455/ (1-0.171814252005436 ).							
If (xmimpflag = 42 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0610387045813586).							
If (xmimpflag = 42 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0610387045813586).							
If (xmimpflag = 42 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =158.1.							
If (xmimpflag = 42 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =158.1/ (1-0.0610387045813586 ).							
If (xmimpflag = 43 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.159823459162871).							
If (xmimpflag = 43 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.159823459162871).							
If (xmimpflag = 43 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =247.759689922481.							
If (xmimpflag = 43 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =247.759689922481/ (1-0.159823459162871 ).							
If (xmimpflag = 44 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0988853555387519).							
If (xmimpflag = 44 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0988853555387519).							
If (xmimpflag = 44 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =363.							
If (xmimpflag = 44 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =363/ (1-0.0988853555387519 ).							
If (xmimpflag = 45 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0904513085721602).							
If (xmimpflag = 45 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0904513085721602).							
If (xmimpflag = 45 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =466.25641025641.							
If (xmimpflag = 45 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =466.25641025641/ (1-0.0904513085721602 ).							
If (xmimpflag = 46 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.082310278477633).							
If (xmimpflag = 46 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.082310278477633).							
If (xmimpflag = 46 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =159.810810810811.							
If (xmimpflag = 46 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =159.810810810811/ (1-0.082310278477633 ).							
If (xmimpflag = 47 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.104714300552102).							
If (xmimpflag = 47 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.104714300552102).							
If (xmimpflag = 47 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =638.25.							
If (xmimpflag = 47 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =638.25/ (1-0.104714300552102 ).							
If (xmimpflag = 48 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.193439630544956).							
If (xmimpflag = 48 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.193439630544956).							
If (xmimpflag = 48 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =608.392156862745.							
If (xmimpflag = 48 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =608.392156862745/ (1-0.193439630544956 ).							
If (xmimpflag = 49 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.145583038352611).							
If (xmimpflag = 49 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.145583038352611).							
If (xmimpflag = 49 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =428.888888888889.							
If (xmimpflag = 49 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =428.888888888889/ (1-0.145583038352611 ).							
If (xmimpflag = 50 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.233333333333333).							
If (xmimpflag = 50 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.233333333333333).							
If (xmimpflag = 50 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =270.846153846154.							
If (xmimpflag = 50 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =270.846153846154/ (1-0.233333333333333 ).							
If (xmimpflag = 51 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.179223522528989).							
If (xmimpflag = 51 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.179223522528989).							
If (xmimpflag = 51 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =229.64.							
If (xmimpflag = 51 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =229.64/ (1-0.179223522528989 ).							
If (xmimpflag = 52 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0819156347249732).							
If (xmimpflag = 52 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0819156347249732).							
If (xmimpflag = 52 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =290.164383561644.							
If (xmimpflag = 52 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =290.164383561644 - (290.164383561644*0.0819156347249732 ).							
If (xmimpflag = 53 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0540922242825536).							
If (xmimpflag = 53 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0540922242825536).							
If (xmimpflag = 53 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =256.548387096774.							
If (xmimpflag = 53 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =256.548387096774/ (1-0.0540922242825536 ).							
If (xmimpflag = 54 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0913651933726713).							
If (xmimpflag = 54 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0913651933726713).							
If (xmimpflag = 54 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =216.907894736842.							
If (xmimpflag = 54 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =216.907894736842/ (1-0.0913651933726713 ).							
If (xmimpflag = 55 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0604022380426763).							
If (xmimpflag = 55 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0604022380426763).							
If (xmimpflag = 55 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =241.461538461538.							
If (xmimpflag = 55 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =241.461538461538/ (1-0.0604022380426763 ).							
If (xmimpflag = 56 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0542026549646127).							
If (xmimpflag = 56 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0542026549646127).							
If (xmimpflag = 56 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =340.230769230769.							
If (xmimpflag = 56 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =340.230769230769/ (1-0.0542026549646127 ).							
If (xmimpflag = 57 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0974564330758702).							
If (xmimpflag = 57 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0974564330758702).							
If (xmimpflag = 57 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =516.45.							
If (xmimpflag = 57 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =516.45/ (1-0.0974564330758702 ).							
If (xmimpflag = 58 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.162886379968412).							
If (xmimpflag = 58 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.162886379968412).							
If (xmimpflag = 58 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =447.518072289157.							
If (xmimpflag = 58 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =447.518072289157 - (447.518072289157*0.162886379968412 ).							
If (xmimpflag = 59 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0561646667118922).							
If (xmimpflag = 59 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0561646667118922).							
If (xmimpflag = 59 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =152.923076923077.							
If (xmimpflag = 59 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =152.923076923077/ (1-0.0561646667118922 ).							
If (xmimpflag = 60 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.133468501803896).							
If (xmimpflag = 60 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.133468501803896).							
If (xmimpflag = 60 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =403.292993630573.							
If (xmimpflag = 60 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =403.292993630573/ (1-0.133468501803896 ).							
If (xmimpflag = 61 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.106708705390018).							
If (xmimpflag = 61 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.106708705390018).							
If (xmimpflag = 61 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =285.644444444444.							
If (xmimpflag = 61 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =285.644444444444/ (1-0.106708705390018 ).							
If (xmimpflag = 62 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0785278768682708).							
If (xmimpflag = 62 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0785278768682708).							
If (xmimpflag = 62 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =335.658227848101.							
If (xmimpflag = 62 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =335.658227848101/ (1-0.0785278768682708 ).							
If (xmimpflag = 63 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.107782269167156).							
If (xmimpflag = 63 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.107782269167156).							
If (xmimpflag = 63 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =472.267857142857.							
If (xmimpflag = 63 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =472.267857142857/ (1-0.107782269167156 ).							
If (xmimpflag = 160 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0779281672325541).							
If (xmimpflag = 160 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0779281672325541).							
If (xmimpflag = 160 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =536.842857142857.							
If (xmimpflag = 160 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =536.842857142857/ (1-0.0779281672325541 ).							
If (xmimpflag = 65 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.115409873680179).							
If (xmimpflag = 65 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.115409873680179).							
If (xmimpflag = 65 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =103.376146788991.							
If (xmimpflag = 65 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =103.376146788991/ (1-0.115409873680179 ).							
If (xmimpflag = 66 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.207088877726936).							
If (xmimpflag = 66 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.207088877726936).							
If (xmimpflag = 66 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =68.1506849315068.							
If (xmimpflag = 66 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =68.1506849315068/ (1-0.207088877726936 ).							
If (xmimpflag = 67 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.110922605367631).							
If (xmimpflag = 67 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.110922605367631).							
If (xmimpflag = 67 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =80.0491803278688.							
If (xmimpflag = 67 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =80.0491803278688/ (1-0.110922605367631 ).							
If (xmimpflag = 68 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.127935729778166).							
If (xmimpflag = 68 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.127935729778166).							
If (xmimpflag = 68 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =84.							
If (xmimpflag = 68 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =84 - (84*0.127935729778166 ).							
If (xmimpflag = 69 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.206358225584424).							
If (xmimpflag = 69 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.206358225584424).							
If (xmimpflag = 69 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =1004.47058823529.							
If (xmimpflag = 69 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =1004.47058823529/ (1-0.206358225584424 ).							
If (xmimpflag = 70 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.142775407154303).							
If (xmimpflag = 70 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.142775407154303).							
If (xmimpflag = 70 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =311.222222222222.							
If (xmimpflag = 70 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =311.222222222222/ (1-0.142775407154303 ).							
If (xmimpflag = 71 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.106323148232566).							
If (xmimpflag = 71 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.106323148232566).							
If (xmimpflag = 71 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =310.39837398374.							
If (xmimpflag = 71 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =310.39837398374/ (1-0.106323148232566 ).							
If (xmimpflag = 97 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.138965456634756).							
If (xmimpflag = 97 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.138965456634756).							
If (xmimpflag = 97 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =259.21875.							
If (xmimpflag = 97 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =259.21875/ (1-0.138965456634756 ).							
If (xmimpflag = 72 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.169436742362705).							
If (xmimpflag = 72 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.169436742362705).							
If (xmimpflag = 72 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =265.325842696629.							
If (xmimpflag = 72 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =265.325842696629/ (1-0.169436742362705 ).							
If (xmimpflag = 85 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.339905284604731).							
If (xmimpflag = 85 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.339905284604731).							
If (xmimpflag = 85 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =563.333333333333.							
If (xmimpflag = 85 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =563.333333333333/ (1-0.339905284604731 ).							
If (xmimpflag = 73 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.129605450439467).							
If (xmimpflag = 73 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.129605450439467).							
If (xmimpflag = 73 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =407.289473684211.							
If (xmimpflag = 73 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =407.289473684211/ (1-0.129605450439467 ).							
If (xmimpflag = 74 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0794384325299229).							
If (xmimpflag = 74 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0794384325299229).							
If (xmimpflag = 74 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =117.137931034483.							
If (xmimpflag = 74 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =117.137931034483/ (1-0.0794384325299229 ).							
If (xmimpflag = 75 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.189369734252207).							
If (xmimpflag = 75 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.189369734252207).							
If (xmimpflag = 75 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =192.772020725389.							
If (xmimpflag = 75 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =192.772020725389/ (1-0.189369734252207 ).							
If (xmimpflag = 76 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.131187789757565).							
If (xmimpflag = 76 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.131187789757565).							
If (xmimpflag = 76 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =199.041666666667.							
If (xmimpflag = 76 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =199.041666666667/ (1-0.131187789757565 ).							
If (xmimpflag = 77 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.136342992788614).							
If (xmimpflag = 77 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.136342992788614).							
If (xmimpflag = 77 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =186.407894736842.							
If (xmimpflag = 77 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =186.407894736842/ (1-0.136342992788614 ).							
If (xmimpflag = 78 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.103049659988616).							
If (xmimpflag = 78 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.103049659988616).							
If (xmimpflag = 78 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =155.470588235294.							
If (xmimpflag = 78 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =155.470588235294/ (1-0.103049659988616 ).							
If (xmimpflag = 79 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.35).							
If (xmimpflag = 79 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.35).							
If (xmimpflag = 79 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =193.74358974359.							
If (xmimpflag = 79 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =193.74358974359/ (1-0.35 ).							
If (xmimpflag = 80 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0732085200996002).							
If (xmimpflag = 80 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0732085200996002).							
If (xmimpflag = 80 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =249.692307692308.							
If (xmimpflag = 80 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =249.692307692308/ (1-0.0732085200996002 ).							
If (xmimpflag = 81 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0934359066589073).							
If (xmimpflag = 81 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0934359066589073).							
If (xmimpflag = 81 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =352.952806122449.							
If (xmimpflag = 81 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =352.952806122449/ (1-0.0934359066589073 ).							
If (xmimpflag = 82 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.07182740558555).							
If (xmimpflag = 82 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.07182740558555).							
If (xmimpflag = 82 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =419.619047619047.							
If (xmimpflag = 82 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =419.619047619047/ (1-0.07182740558555 ).							
If (xmimpflag = 83 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0956449943871365).							
If (xmimpflag = 83 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0956449943871365).							
If (xmimpflag = 83 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =304.5625.							
If (xmimpflag = 83 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =304.5625 - (304.5625*0.0956449943871365 ).							
If (xmimpflag = 84 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.163929225997462).							
If (xmimpflag = 84 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.163929225997462).							
If (xmimpflag = 84 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =319.285714285714.							
If (xmimpflag = 84 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =319.285714285714/ (1-0.163929225997462 ).							
If (xmimpflag = 86 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.112733293827202).							
If (xmimpflag = 86 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.112733293827202).							
If (xmimpflag = 86 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =129.277777777778.							
If (xmimpflag = 86 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =129.277777777778/ (1-0.112733293827202 ).							
If (xmimpflag = 87 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0655504344628028).							
If (xmimpflag = 87 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0655504344628028).							
If (xmimpflag = 87 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =211.							
If (xmimpflag = 87 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =211/ (1-0.0655504344628028 ).							
If (xmimpflag = 88 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.198929221794951).							
If (xmimpflag = 88 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.198929221794951).							
If (xmimpflag = 88 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =296.473684210526.							
If (xmimpflag = 88 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =296.473684210526 - (296.473684210526*0.198929221794951 ).							
If (xmimpflag = 89 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.107517933823928).							
If (xmimpflag = 89 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.107517933823928).							
If (xmimpflag = 89 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =281.958333333333.							
If (xmimpflag = 89 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =281.958333333333/ (1-0.107517933823928 ).							
If (xmimpflag = 90 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.028250184258012).							
If (xmimpflag = 90 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.028250184258012).							
If (xmimpflag = 90 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =208.341176470588.							
If (xmimpflag = 90 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =208.341176470588/ (1-0.028250184258012 ).							
If (xmimpflag = 91 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0487771272192143).							
If (xmimpflag = 91 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0487771272192143).							
If (xmimpflag = 91 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =267.896551724138.							
If (xmimpflag = 91 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =267.896551724138/ (1-0.0487771272192143 ).							
If (xmimpflag = 92 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.111975986975987).							
If (xmimpflag = 92 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.111975986975987).							
If (xmimpflag = 92 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =328.555555555556.							
If (xmimpflag = 92 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =328.555555555556/ (1-0.111975986975987 ).							
If (xmimpflag = 93 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0979648763988006).							
If (xmimpflag = 93 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0979648763988006).							
If (xmimpflag = 93 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =101.111111111111.							
If (xmimpflag = 93 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =101.111111111111/ (1-0.0979648763988006 ).							
If (xmimpflag = 94 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.297737659966491).							
If (xmimpflag = 94 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.297737659966491).							
If (xmimpflag = 94 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =319.733333333333.							
If (xmimpflag = 94 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =319.733333333333/ (1-0.297737659966491 ).							
If (xmimpflag = 95 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0220048899755501).							
If (xmimpflag = 95 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0220048899755501).							
If (xmimpflag = 95 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =220.428571428571.							
If (xmimpflag = 95 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =220.428571428571/ (1-0.0220048899755501 ).							
If (xmimpflag = 96 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0).							
If (xmimpflag = 96 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0).							
If (xmimpflag = 96 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =433.							
If (xmimpflag = 96 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =433/ (1-0 ).							
If (xmimpflag = 137 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.12659407459354).							
If (xmimpflag = 137 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.12659407459354).							
If (xmimpflag = 137 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =104.986301369863.							
If (xmimpflag = 137 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =104.986301369863/ (1-0.12659407459354 ).							
If (xmimpflag = 138 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.179201806454531).							
If (xmimpflag = 138 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.179201806454531).							
If (xmimpflag = 138 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =108.37037037037.							
If (xmimpflag = 138 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =108.37037037037 - (108.37037037037*0.179201806454531 ).							
If (xmimpflag = 139 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.162003845923261).							
If (xmimpflag = 139 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.162003845923261).							
If (xmimpflag = 139 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =128.438775510204.							
If (xmimpflag = 139 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =128.438775510204/ (1-0.162003845923261 ).							
If (xmimpflag = 140 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.171264386321147).							
If (xmimpflag = 140 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.171264386321147).							
If (xmimpflag = 140 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =557.6.							
If (xmimpflag = 140 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =557.6/ (1-0.171264386321147 ).							
If (xmimpflag = 141 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.213152374545978).							
If (xmimpflag = 141 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.213152374545978).							
If (xmimpflag = 141 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =74.							
If (xmimpflag = 141 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =74/ (1-0.213152374545978 ).							
If (xmimpflag = 142 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.190548809128441).							
If (xmimpflag = 142 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.190548809128441).							
If (xmimpflag = 142 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =80.5625.							
If (xmimpflag = 142 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =80.5625 - (80.5625*0.190548809128441 ).							
If (xmimpflag = 145 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.0577485174550083).							
If (xmimpflag = 145 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.0577485174550083).							
If (xmimpflag = 145 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =376.928571428571.							
If (xmimpflag = 145 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =376.928571428571/ (1-0.0577485174550083 ).							
If (xmimpflag = 146 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.153749295952981).							
If (xmimpflag = 146 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.153749295952981).							
If (xmimpflag = 146 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =154.307692307692.							
If (xmimpflag = 146 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =154.307692307692/ (1-0.153749295952981 ).							
If (xmimpflag = 147 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.143606923731731).							
If (xmimpflag = 147 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.143606923731731).							
If (xmimpflag = 147 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =165.903225806452.							
If (xmimpflag = 147 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =165.903225806452 - (165.903225806452*0.143606923731731 ).							
If (xmimpflag = 148 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.254317624200109).							
If (xmimpflag = 148 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.254317624200109).							
If (xmimpflag = 148 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =199.730769230769.							
If (xmimpflag = 148 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =199.730769230769/ (1-0.254317624200109 ).							
If (xmimpflag = 149 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.136559928551299).							
If (xmimpflag = 149 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.136559928551299).							
If (xmimpflag = 149 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =1003.							
If (xmimpflag = 149 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =1003/ (1-0.136559928551299 ).							
If (xmimpflag = 150 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.182187702624498).							
If (xmimpflag = 150 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.182187702624498).							
If (xmimpflag = 150 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =100.090909090909.							
If (xmimpflag = 150 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =100.090909090909/ (1-0.182187702624498 ).							
If (xmimpflag = 151 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.00833333333333333).							
If (xmimpflag = 151 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.00833333333333333).							
If (xmimpflag = 151 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =127.103448275862.							
If (xmimpflag = 151 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =127.103448275862/ (1-0.00833333333333333).							
If (xmimpflag = 152 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.100333848361108).							
If (xmimpflag = 152 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.100333848361108).							
If (xmimpflag = 152 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =436.5.							
If (xmimpflag = 152 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =436.5/ (1-0.100333848361108 ).							
If (xmimpflag = 154 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.235321405225611).							
If (xmimpflag = 154 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.235321405225611).							
If (xmimpflag = 154 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =580.060606060606.							
If (xmimpflag = 154 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =580.060606060606/ (1-0.235321405225611 ).							
If (xmimpflag = 155 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.157476046121814).							
If (xmimpflag = 155 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.157476046121814).							
If (xmimpflag = 155 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =70.0833333333334.							
If (xmimpflag = 155 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =70.0833333333334/ (1-0.157476046121814 ).							
If (xmimpflag = 156 & slaximp >= 1 & MISSING(slaarriv) & MISSING(slastot)) slamimp = slaximp - (slaximp*0.17641709128796).							
If (xmimpflag = 156 & slamimp >= 1 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot)) slaximp = slamimp / (1- 0.17641709128796).							
If (xmimpflag = 156 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slamimp =118.333333333333.							
If (xmimpflag = 156 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp =118.333333333333/ (1-0.17641709128796 ).							
EXECUTE.							
							
if (sladvoy > 0 & MISSING(slaarriv) & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & slastot >= 50) slaximp=slastot+sladvoy.							
If (sladvoy > 0 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & slaarriv >1) slaximp = slaarriv + sladvoy.							
If (sladvoy > 0 & MISSING(tslavesd) & MISSING(tslavesp) & MISSING(ncartot) & MISSING(slaarriv) & MISSING(slastot)) slaximp = slamimp + sladvoy.							
							
COMPUTE slaximp = RND(slaximp) .							
COMPUTE slamimp = RND(slamimp) .							
EXECUTE.							
							
* SLAVE MORTALITY VARIABLES							
							
*     tslmtimp      Imputed total of slaves embarked for mortality calculation							
*     vymrtimp     Imputed number of slaves died in  middle passage							
*     vymrtrat      Slaves died on voyage/Slaves embarked							
							
compute vymrtimp=sladvoy.							
if (missing(sladvoy) & slaarriv <= tslavesd) vymrtimp=tslavesd-slaarriv.							
If (vymrtimp >= 0 & slaarriv <= tslavesd) tslmtimp=tslavesd.							
if ((missing(tslavesd) & missing(tslavesp) & vymrtimp >= 0) & slaarriv >= 1) tslmtimp=slaarriv+vymrtimp.							
compute vymrtrat=vymrtimp/tslmtimp.							
EXECUTE.							
							
	
	
	
	
	
	
	
	
	
	
	
	
							
							
* AGE AND GENDER VARIABLES INCORPORATING INFORMATION FROM VARIABLES 4,5,6							
							
*     adlt1imp      Imputed number of adults among embarked slaves							
*     chil1imp      Imputed number of children among embarked slaves							
*     male1imp    Imputed number of males among embarked slaves							
*     feml1imp     Imputed number of females among embarked slaves							
*     slavema1     Number of embarked slaves with age identified 							
*     slavemx1     Number of embarkedslaves with sex identified							
*     slavmax1     Number of embarked slaves identified by age and sex							
*     menrat1      Ratio of men among embarked slaves							
*     womrat1      Ratio of women among embarked slaves							
*     boyrat1       Ratio of boys among embarked slaves							
*     girlrat1        Ratio of girls among embarked slaves							
*     chilrat1       Child ratio among embarked slaves							
*     malrat1       Male ratio among embarked slaves							
							
*     adlt4imp     Imputed number of adults embarked at second port of purchase							
*     chil4imp     Imputed number of children embarked at second port of purchase							
*     male4imp   Imputed number of males embarked at second port of purchase							
*     feml4imp    Imputed number of females embarked at second port of purchase							
							
* VARIABLES adlt4imp chil4imp male4imp feml4imp NOT INCLUDED SINCE INCLUDED 							
* IN adlt1imp chil1imp male1imp feml1imp. 							
							
RECODE							
  men1 women1 boy1 girl1 child1 infant1 adult1 male1 female1							
  men2 women2 boy2 girl2 child2 infant2 adult2 male2 female2							
  men3 women3 boy3 girl3 child3 infant3 adult3 male3 female3							
  men4 women4 boy4 girl4 child4 infant4 adult4 male4 female4							
  men5 women5 boy5 girl5 child5 infant5 adult5 male5 female5							
  men6 women6 boy6 girl6 child6 infant6 adult6 male6 female6							
  (0=sysmis)  .							
							
DO IF (men1 >= 1 | women1 >= 1 | boy1 >= 1 | girl1 >= 1 | child1 >= 1 | infant1 >= 1 | adult1 >=1 |  							
  men4 >=1 | women4 >=1 | boy4 >=1 | girl4 >=1 | child4 >=1 | infant4>=1 | adult4 >=1 | 							
  men5 >=1 | women5 >=1 | boy5 >=1 | girl5 >=1 | child5 >=1 | adult5 >=1) .							
RECODE							
  men1 women1 boy1 girl1 child1 infant1 adult1 							
  men4 women4 boy4 girl4 child4 infant4 adult4							
  men5 women5 boy5 girl5 child5 infant5 adult5							
  (MISSING=0)  .							
END IF .							
							
Compute adlt1imp = men1+women1+adult1+men4+women4+adult4+men5+women5+adult5.							
Compute chil1imp = boy1+girl1+child1+infant1+boy4+girl4+child4+infant4+boy5+girl5+child5+infant5.							
							
DO IF (male1 >= 1 | female1 >= 1 | male4 >=1 | female4 >=1 | male5 >=1 | female5 >=1) .							
RECODE							
  male1 female1							
  male4 female4							
  male5 female5							
  (MISSING=0)  .							
END IF .							
							
Compute male1imp = male1+male4+male5.							
Compute feml1imp = female1+female4+female5.							
If (missing(male1imp)) male1imp = men1+boy1+men4+boy4+men5+boy5.							
If (missing(feml1imp)) feml1imp = women1+girl1+women4+girl4+women5+girl5.							
							
Compute slavema1 = adlt1imp+chil1imp.							
Compute slavemx1 = male1imp+feml1imp.							
Compute slavmax1 = men1+women1+boy1+girl1+men4+women4+boy4+girl4+men5+women5+boy5+girl5.							
							
Recode slavema1 slavemx1 slavmax1 (0 thru 19 = sysmis).							
							
DO IF (MISSING(slavema1)) .							
RECODE							
  adlt1imp chil1imp  (0 thru Highest= sysmis)  .							
END IF .							
							
DO IF (MISSING(slavemx1)) .							
RECODE							
  feml1imp male1imp  (0 thru Highest= sysmis)  .							
END IF .							
							
Compute chilrat1=chil1imp/slavema1.							
Compute malrat1= male1imp/slavemx1.							
if (slavmax1 >= 20) menrat1=sum(men1,men4,men5)/slavmax1.							
if (slavmax1 >= 20) womrat1=sum(women1,women4,women5)/slavmax1.							
if (slavmax1 >= 20) boyrat1=sum(boy1,boy4,boy5)/slavmax1.							
if (slavmax1 >= 20) girlrat1= sum(girl1,girl4,girl5)/slavmax1.							
EXECUTE.							
							
*     adlt3imp     Imputed number of adults among disembarked slaves							
*     chil3imp     Imputed number of children among disembarked slaves							
*     male3imp   Imputed number of males among disembarked slaves							
*     feml3imp    Imputed number of females among disembarked slaves							
*     slavema3   Number of disembarked slaves with age identified							
*     slavemx3   Number of disembarked slaves with sex identIfied							
*     slavmax3   Number of disembarked slaves identIfied by age and sex							
*     menrat3     Ratio of men among disembarked slaves							
*     womrat3     Ratio of women among disembarked slaves							
*     boyrat3      Ratio of boys among disembarked slaves							
*     girlrat3       Ratio of girls among disembarked slaves							
*     chilrat3      Child ratio among disembarked slaves							
*     malrat3      Male ratio among disembarked slaves							
							
DO IF (men3 >= 1 | women3 >= 1 | boy3 >= 1 | girl3 >= 1 | child3 >= 1 | infant3 >= 1 | 							
  adult3 >=1 | men6 >=1 | women6 >=1 | boy6 >=1 | girl6 >=1 | child6 >=1 | infant6 >=1 | adult6 >=1) .							
RECODE							
  men3 women3 boy3 girl3 child3 infant3 adult3 							
  men6 women6 boy6 girl6 child6 infant6 adult6							
  (MISSING=0)  .							
END IF .							
							
Compute adlt3imp = men3+women3+adult3+men6+women6+adult6.							
Compute chil3imp = boy3+girl3+child3+infant3+boy6+girl6+child6 + infant6.							
							
DO IF (male3 >= 1 | female3 >= 1 | male6 >=1 | female6 >=1) .							
RECODE							
  male3 female3 							
  male6 female6							
  (MISSING=0)  .							
END IF .							
							
Compute male3imp = male3+male6.							
Compute feml3imp = female3+female6.							
If (missing(male3imp)) male3imp = men3+boy3+men6+boy6.							
If (missing(feml3imp)) feml3imp = women3+girl3+women6+girl6.							
							
Compute slavema3 = adlt3imp+chil3imp.							
Compute slavemx3 = male3imp+feml3imp.							
Compute slavmax3 = men3+women3+boy3+girl3+men6+women6+boy6+girl6.							
							
Recode slavema3 slavemx3 slavmax3 (0 thru 19 = sysmis).							
							
DO IF (MISSING(slavema3)) .							
RECODE							
  adlt3imp chil3imp  (0 thru Highest= sysmis)  .							
END IF .							
							
DO IF (MISSING(slavemx3)) .							
RECODE							
  feml3imp male3imp  (0 thru Highest= sysmis)  .							
END IF .							
							
Compute chilrat3=chil3imp/slavema3.							
Compute malrat3= male3imp/slavemx3.							
if (slavmax3 >= 20) menrat3=(men3+men6)/slavmax3.							
if (slavmax3 >= 20) womrat3=(women3+women6)/slavmax3.							
if (slavmax3 >= 20) boyrat3=(boy3+boy6)/slavmax3.							
if (slavmax3 >= 20) girlrat3= (girl3+girl6)/slavmax3.							
EXECUTE.							
							
*     men7        Imputed men when leaving Africa or arriving at ports of landing							
*     women7    Imputed women when leaving Africa or arriving at ports of landing							
*     boy7         Imputed boys when leaving Africa or arriving at ports of landing							
*     girl7          Imputed girls when leaving Africa or arriving at ports of landing							
*     adult7       Imputed adults when leaving Africa or arriving at ports of landing							
*     child7       Imputed children when leaving Africa or arriving at ports of lading							
*     male7       Imputed males when leaving Africa or arriving at ports of landing							
*     female7     Imputed females when leaving Africa or arriving at ports of landing							
*     slavema7   Number of slaves with age identIfied, Africa or ports of lading							
*     slavemx7   Number of slaves with sex identIfied, Africa or ports of landing							
*     slavmax7   Number of slaves identIfied by both age and sex							
*     menrat7     Imputed ratio of men when leaving Africa or arriving at ports of landing							
*     womrat7     Imputed ratio of women when leaving Africa or arriving at ports of landing							
*     boyrat7      Imputed ratio of boys when leaving Africa or arriving at ports of landing							
*     girlrat7       Imputed ratio of girls when leaving Africa or arriving at ports of landing							
*     chilrat7      Imputed ratio of children when leaving Africa or arriving at ports of landing							
*     malrat7      Imputed ratio of males when leaving Africa or arriving at ports of landing							
							
if (slavema3 >= 20) slavema7=slavema3.							
if (slavemx3 >= 20) slavemx7=slavemx3.							
if (slavmax3 >= 20) slavmax7=slavmax3.							
if (slavmax7 >= 20) men7=men3+men6.							
if (slavmax7 >= 20) women7=women3+women6.							
if (slavmax7 >= 20) boy7=boy3+boy6.							
if (slavmax7 >= 20) girl7=girl3+girl6.							
if (slavema7 >= 20) adult7=adlt3imp.							
if (slavema7 >= 20) child7=chil3imp.							
if (slavemx7 >=20) male7=male3imp.							
if (slavemx7 >= 20) female7=feml3imp.							
if (menrat3 >= 0) menrat7=menrat3.							
if (womrat3 >= 0) womrat7=womrat3.							
if (boyrat3 >= 0) boyrat7=boyrat3.							
if (girlrat3 >= 0) girlrat7=girlrat3.							
if (malrat3 >= 0) malrat7=malrat3.							
if (chilrat3 >= 0) chilrat7=chilrat3.							
							
if (missing(slavema3) & slavema1 >=20) slavema7=slavema1.							
if (missing(slavemx3) & slavemx1 >=20) slavemx7=slavemx1.							
if (missing(slavmax3) & slavmax1 >=20) slavmax7=slavmax1.							
if (missing(slavmax3) & slavmax1 >= 20) men7=men1+men4 +men5.							
if (missing(slavmax3) & slavmax1 >= 20) women7=women1+women4+women5.							
if (missing(slavmax3) & slavmax1 >= 20) boy7=boy1+boy4+boy5.							
if (missing(slavmax3) & slavmax1 >= 20) girl7=girl1+girl4+girl5.							
if (missing(slavema3) & slavema1 >= 20) adult7=adlt1imp.							
if (missing(slavema3) & slavema1 >= 20) child7=chil1imp.							
if (missing(slavemx3) & slavemx1 >=20) male7=male1imp.							
if (missing(slavemx3) & slavemx1 >= 20) female7=feml1imp.							
if (missing(menrat3) & menrat1 >= 0) menrat7=menrat1.							
if (missing(womrat3) & womrat1 >= 0) womrat7=womrat1.							
if (missing(boyrat3) & boyrat1 >= 0) boyrat7=boyrat1.							
if (missing(girlrat3) & girlrat1 >= 0) girlrat7=girlrat1.							
if (missing(malrat3) & malrat1 >= 0) malrat7=malrat1.							
if (missing(chilrat3) & chilrat1 >= 0) chilrat7=chilrat1.							
							
*     adlt2imp     Imputed number of adults who died on middle passage							
*     chil2imp     Imputed number of children who died on middle passage							
*     male2imp     Imputed number of males who died on middle passage							
*     feml2imp     Imputed number of females who died on middle passage							
							
DO IF (men2 >=1 | women2 >=1 | boy2 >=1 | girl2 >=1 | adult2 >=1 | child2 >=1 |							
  male2 >=1 | female2 >= 1) .							
RECODE							
  men2 women2 boy2 girl2 adult2 child2 male2 female2 (MISSING=0)  .							
END IF .							
							
Compute adlt2imp=adult2.							
Compute chil2imp=child2.							
if (adlt2imp=0) adlt2imp=men2+women2.							
if (chil2imp=0) chil2imp=boy2+girl2.							
							
DO IF  (adlt2imp=0 & chil2imp=0).							
RECODE							
  adlt2imp chil2imp  (0=sysmis)  .							
END IF .							
							
Compute male2imp=male2.							
Compute feml2imp=female2.							
if (male2imp=0) male2imp=men2+boy2.							
if (feml2imp=0) feml2imp=women2+girl2.							
							
DO IF  (male2imp=0 & feml2imp=0).							
RECODE							
  male2imp feml2imp  (0=sysmis)  .							
END IF .							
							
if (sladvoy >=1 & chil2imp >=1 & adlt2imp=0 & sladvoy > chil2imp) adlt2imp = sladvoy - chil2imp.							
if (sladvoy>=1 & adlt2imp >=1 & chil2imp=0 & sladvoy > adlt2imp) chil2imp = sladvoy - adlt2imp.							
if (sladvoy >=1 & feml2imp >=1  & male2imp=0 & sladvoy > feml2imp) male2imp = sladvoy - feml2imp.							
if (sladvoy >=1 & male2imp >=1  & feml2imp=0 & sladvoy > male2imp) feml2imp = sladvoy - male2imp.							
EXECUTE.							
							
* RECODE OF 0 TO MISSING IN DATA VARIABLES DESCRIBING AGE AND SEX DISTRIBUTION							
							
RECODE							
  men1 women1 boy1 girl1 child1 infant1 adult1 male1 female1							
  men2 women2 boy2 girl2 child2 Infant2 adult2 male2 female2							
  men3 women3 boy3 girl3 child3 infant3 adult3 male3 female3							
  men4 women4 boy4 girl4 child4 infant4 adult4 male4 female4							
  men5 women5 boy5 girl5 child5 infant5 adult5 male5 female5							
  men6 women6 boy6 girl6 child6 infant6 adult6 male6 female6							
  (0=sysmis)  .							



