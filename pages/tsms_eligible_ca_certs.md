---
layout: default
title:  Certification Authority Certificates Eligible for Install
permalink: /tsmseligiblecacerts/
---

The default set of eligible CA certificates is below. (**Note:**&nbsp;&nbsp;This is _not_ a configuration file.)

These certificates all assert the _id-fpki-common-auth (2.16.840.1.101.3.2.1.3.13)_ policy object identifier (OID). 

* To _OMIT_ specific certificates from the output file, go to the **targets.json** file and set their installation flags to _FALSE_. 

| ID    | Subject                                                  | PIV Issuer                                | Valid From        | Valid To          | Serial Number                             |
|-------|----------------------------------------------------------|---------------------------------------|------------------|------------------|------------------------------------------|
| 00001 | Betrusted Production SSP CA A1                         | Federal Common Policy CA            | 12/9/2010 19:55  | 12/9/2020 19:49  | 19A  |  
| 00002 | Bureau of the Census Agency CA                         | Symantec SSP Intermediate CA - G4   | 7/30/2015 0:00   | 11/11/2024 23:59 | 2355994850457C656B1B9A58E3FC3F98         |
| 00003 | Department of Veterans Affairs CA                      | US Treasury Root CA                   | 8/28/2012 13:47  | 8/28/2022 14:17  | 4E397F22                                 |
| 00004 | Department of Veterans Affairs CA                      | US Treasury Root CA                   | 10/17/2015 14:01 | 10/17/2025 14:31 | 4E398179                                 |
| 00005 | DHS CA4                                                  | US Treasury Root CA                   | 1/21/2011 19:11  | 1/21/2021 19:41  | 4A61D293                                 |
| 00006 | DHS CA4                                                  | US Treasury Root CA                   | 6/13/2015 14:35  | 6/13/2025 15:05  | 4E398128                                 |
| 00007 | DOD ID CA-41                                             | DoD Root CA 3                         | 11/9/2015 16:13  | 11/9/2021 16:13  | 18                                       |
| 00008 | DOD ID CA-42                                             | DoD Root CA 3                         | 11/9/2015 16:15  | 11/9/2021 16:15  | 19                                       |
| 00009 | DOD ID CA-43                                             | DoD Root CA 3                         | 11/9/2015 16:16  | 11/9/2021 16:16  | 1A                                       |
| 00010 | DOD ID CA-44                                             | DoD Root CA 3                         | 11/9/2015 16:18  | 11/9/2021 16:18  | 1B                                       |
| 00011 | DOD ID CA-49                                             | DoD Root CA 3                         | 11/22/2016 13:48 | 11/23/2022 13:48 | 127                                      |
| 00012 | DOD ID CA-50                                             | DoD Root CA 3                         | 11/22/2016 13:48 | 11/23/2022 13:48 | 128                                      |
| 00013 | DOD ID CA-51                                             | DoD Root CA 3                         | 11/22/2016 13:49 | 11/23/2022 13:49 | 129                                      |
| 00014 | DOD ID CA-52                                             | DoD Root CA 3                         | 11/22/2016 13:49 | 11/23/2022 13:49 | 12A                                      |
| 00015 | DOE SSP CA                                               | Entrust Managed Services Root CA    | 5/29/2012 14:13  | 4/29/2019 14:43  | 447FFCD7                                 |
| 00016 | DOE SSP CA                                               | Entrust Managed Services Root CA    | 3/1/2018 14:13   | 6/1/2025 14:43   | 4480CB97                                 |
| 00017 | Entrust Managed Services SSP CA                        | Entrust Managed Services Root CA    | 5/9/2009 15:32   | 5/9/2019 14:02   | 447F9D1F                                 |
| 00018 | Entrust Managed Services SSP CA                        | Entrust Managed Services Root CA    | 7/30/2015 16:37  | 7/23/2025 16:36  | 448063D5                                 |
| 00019 | GPO SCA                                                  | GPO PCA                               | 12/15/2010 11:30 | 12/15/2020 11:43 | 40D7D0EE                                 |
| 00020 | GPO SCA                                                  | GPO PCA                               | 10/14/2015 14:20 | 10/14/2025 14:37 | 40D86A4F                                 |
| 00021 | HHS-FPKI-Intermediate-CA-E1                              | Entrust Managed Services Root CA    | 3/7/2013 17:41   | 5/9/2019 14:02   | 44801668                                 |
| 00022 | HHS-FPKI-Intermediate-CA-E1                              | Entrust Managed Services Root CA    | 12/20/2016 15:40 | 7/20/2025 16:10  | 44809A90                                 |
| 00023 | NASA Operational CA                                      | US Treasury Root CA                   | 1/22/2011 13:39  | 1/22/2021 14:09  | 4A61D2A5                                 |
| 00024 | NASA Operational CA                                      | US Treasury Root CA                   | 6/13/2015 14:24  | 6/13/2025 14:54  | 4E398116                                 |
| 00025 | Naval Reactors SSP Agency CA G3                        | Symantec SSP Intermediate CA - G4   | 12/10/2015 0:00  | 11/11/2024 23:59 | 18876CD9FFD738AB7E69350ECC9D41F8         |
| 00026 | NRC SSP Agency CA G3                                     | Symantec SSP Intermediate CA - G4   | 11/25/2014 0:00  | 11/11/2024 23:59 | 100F05DD316CA819D9D39FEBC661B326         |
| 00027 | OCIO CA                                                  | US Treasury Root CA                   | 9/12/2010 14:46  | 9/12/2020 15:16  | 4A61D147                                 |
| 00028 | OCIO CA                                                  | US Treasury Root CA                   | 11/7/2010 14:46  | 11/7/2020 15:16  | 4A61D192                                 |
| 00029 | OCIO CA                                                  | US Treasury Root CA                   | 4/19/2015 15:17  | 4/19/2025 15:47  | 4E398101                                 |
| 00030 | ORC SSP 3                                                | Federal Common Policy CA            | 1/12/2011 0:54   | 1/12/2021 0:52   | 2C2                                      |
| 00031 | ORC SSP 4                                                | Federal Common Policy CA            | 8/31/2015 15:14  | 1/21/2024 16:36  | 2EF9                                     |
| 00032 | Social Security Administration Certification Authority | US Treasury Root CA                   | 2/16/2011 23:29  | 2/16/2021 23:59  | 4A61D2BA                                 |
| 00033 | Social Security Administration Certification Authority | US Treasury Root CA                   | 4/19/2015 15:04  | 4/19/2025 15:34  | 4E3980EF                                 |
| 00034 | U.S. Department of   Education Agency CA - G3            | VeriSign SSP Intermediate CA - G3   | 10/20/2011 0:00  | 10/19/2018 23:59 | A8159718ADC92AC10A506ACB577CEAB          |
| 00035 | U.S. Department of   Education Agency CA - G4            | Symantec SSP Intermediate CA - G4   | 7/21/2015 0:00   | 11/11/2024 23:59 | 224AD7D35A9D34350671F9B8BE45A23A         |
| 00036 | U.S. Department of   State PIV CA                        | U.S. Department of State AD Root CA | 9/30/2009 23:18  | 9/30/2019 23:48  | 40DA5F3D                                 |
| 00037 | U.S. Department of   State PIV CA2                       | U.S. Department of State AD Root CA | 8/3/2016 16:13   | 8/3/2026 16:43   | 51B02402                                 |
| 00038 | U.S. Department of   Transportation Agency CA G4         | Symantec SSP Intermediate CA - G4   | 12/11/2014 0:00  | 11/11/2024 23:59 | 61A90F3E5FF532F9FE6209D931279A82         |
| 00039 | USPTO_INTR_CA1                                           | Federal Bridge CA 2016              | 12/15/2016 19:04 | 12/15/2019 19:04 | 2E4E311804B49D0BFFF0E3B6A9254FC4D1A97F32 |
| 00040 | USPTO_INTR_CA1                                           | Federal Bridge CA 2016              | 4/23/2018 17:17  | 12/15/2019 17:16 | 6E6C011D8D83D73D918FC917C2AC515A472EF2DF |
| 00041 | USPTO_INTR_CA1                                           | USPTO_INTR_CA1                        | 6/24/2010 20:45  | 6/24/2030 21:15  | 4C296F46                                 |
| 00042 | USPTO_INTR_CA1                                           | USPTO_INTR_CA1                        | 4/7/2018 12:16   | 12/7/2029 12:46  | 4C296F47                                 |
| 00043 | Verizon SSP CA A2                                        | Federal Common Policy CA            | 12/6/2016 16:12  | 12/6/2026 16:09  | 403C                                     |
| 00044 | Veterans Affairs CA   B3                                 | Verizon SSP CA A2                     | 12/15/2017 17:56 | 12/15/2027 17:56 | 5ECB874A1B24B1113848E40E76DC3EA4449624FE |
| 00046 | Veterans Affairs User   CA B1                            | Verizon SSP CA A2                     | 1/25/2017 4:59   | 1/25/2027 4:59   | 251EA36536CFEBB0E9D1334D0CB96102BAB16589 |

{% include alert-info.html content="If you feel this list should be updated, please email us at fpki@gsa.gov." %}
