# DataCite data centers



Install the required packages (see [here](https://github.com/ropensci/rdatacite) for more information).


```r
options(stringsAsFactors = FALSE)

# install required packages
# install.packages("lubridate")
# install.packages("ggplot2")
# install.packages("knitr")
# devtools::install_github("ropensci/solr")
# devtools::install_github("ropensci/rdatacite")

library('rdatacite')
library('lubridate')
library('ggplot2')
library('knitr')
```




```r
datacenters <- dc_facet(q = "*",facet.field = 'datacentre_facet', facet.sort = 'count', facet.limit = 2000)
dc <- datacenters$facet_fields$datacentre_facet
kable(dc)
```



X1                                                                                                                              X2      
------------------------------------------------------------------------------------------------------------------------------  --------
CDL.DPLANET - Data-Planet                                                                                                       1494609 
TIB.PANGAEA - PANGAEA - Publishing Network for Geoscientific and Environmental Data                                             705278  
BL.CCDC - The Cambridge Crystallographic Data Centre                                                                            573021  
ESTDOI.BIO - TÜ Loodusmuuseum                                                                                                   487438  
ETHZ.SEALS - Retro Seals - Digitalisierte Zeitschriften                                                                         416132  
GESIS.DIE - Deutsches Institut für Erwachsenenbildung                                                                           373193  
ETHZ.EPICS-BA - E-Pics Bildarchiv                                                                                               327495  
TIB.R-GATE - ResearchGate                                                                                                       270572  
BL.IMPERIAL - Imperial College London                                                                                           190982  
CDL.DIGSCI - Digital Science                                                                                                    167417  
CDL.PQR - Pitt Quantum Repository                                                                                               101870  
CDL.LTERNET - Long Term Ecological Research (LTER) Network                                                                      95514   
CDL.PISCO - Partnership for Interdisciplinary Studies of Coastal Oceans (PISCO)                                                 92518   
DK.GBIF - Global Biodiversity Information Facilily                                                                              83113   
CDL.IRIS - Incorporated Research Institutions for Seismology                                                                    58126   
CDL.DRYAD - Dryad                                                                                                               45824   
ETHZ.ZORA - Universität Zürich, ZORA                                                                                            45812   
ZBMED.GMS - German Medical Science                                                                                              39476   
ETHZ.E-MANUS - e-manuscripta                                                                                                    39177   
NRCT.DB1 - NRCT Data Center                                                                                                     38122   
TIB.TIB - TIB Hannover                                                                                                          34584   
BL.ADS - Archaeology Data Service                                                                                               34338   
TIB.ESR - European Society of Radiology                                                                                         34208   
ETHZ.E-RARA - e-rara.ch                                                                                                         33431   
CISTI.BOLD - Biodiversity Institute of Ontario                                                                                  30827   
DELFT.EASY - DANS-EASY                                                                                                          30444   
CDL.RUTGERS - Rutgers University Library                                                                                        30347   
ETHZ.E-COLL - ETH E-Collection                                                                                                  30292   
CDL.DIGANT - Digital Antiquity                                                                                                  29328   
GESIS.ICPSR - ICPSR                                                                                                             24463   
CERN.ZENODO - ZENODO - Research. Shared.                                                                                        23020   
CDL.UCBMVZ - UC Berkeley Museum of Vertebrate Zoology                                                                           19022   
BL.DRI - Digital Repository of Ireland                                                                                          18430   
OSTI.LBNLMP - Materials Project, Lawrence Berkeley National Laboratory                                                          16431   
TIB.TUDO - Technische Universität Dortmund                                                                                      16385   
GESIS.UBHD - UBHD                                                                                                               14776   
CDL.CDL - California Digital Library                                                                                            13652   
ETHZ.BORIS - Bern Open Repository and Information System (BORIS)                                                                13496   
BL.OXDB - Oxford University Library Service Databank                                                                            13455   
TIB.KMO - TIB KMO / FLOWWORKS GmbH                                                                                              12808   
CRUI.UNIBO - Università degli Studi di Bologna                                                                                  11612   
ETHZ.EPICS-AD - E-Pics Alte und Seltene Drucke                                                                                  10895   
CDL.BROAD - Broad Institute of MIT and Harvard                                                                                  10502   
CDL.R2R - Rolling Deck to Repository Program                                                                                    10435   
CDL.PEERJ - PeerJ                                                                                                               9765    
TIB.KIT - Karlsruher Institut für Technologie                                                                                   9370    
BL.YORK - University of York                                                                                                    9342    
CDL.OHSU - Oregon Health & Science University                                                                                   8942    
CERN.YELLOW - CERN Yellow Reports                                                                                               8244    
CDL.DATAVERS - Harvard Dataverse                                                                                                8159    
CDL.UCBLAWLB - Berkeley Law Library                                                                                             7687    
BL.UKDA - UK Data Archive                                                                                                       7506    
TIB.WIP - WIP - Renewable Energies                                                                                              7236    
TIB.UBTDOIS - Universitätsbibliothek Tübingen                                                                                   7069    
CRUI.UNIMI - Università degli Studi di Milano                                                                                   6877    
ETHZ.EPFL - EPFL Infoscience                                                                                                    6725    
GESIS.ARCHIV - GESIS Data Archive                                                                                               6553    
CDL.NCEAS - National Center for Ecological Analysis and Synthesis (NCEAS)                                                       6432    
CRUI.UNIFI - Università degli Studi di Firenze                                                                                  6364    
TIB.LDEO - LDEO - Lamont-Doherty Earth Observatory, Columbia University                                                         6351    
TIB.GFZ - Geoforschungszentrum Potsdam                                                                                          6108    
CRUI.UNINA - Università degli Studi di Napoli Federico II                                                                       5633    
TIB.EUGRAPH - Eurographics                                                                                                      5521    
CDL.CULIS - Columbia University Libraries/Information Services (CUL/IS)                                                         5230    
TIB.AWI - Alfred-Wegener-Institut                                                                                               5051    
TIB.TOPOI - TOPOI-ExcellenzCluster                                                                                              5051    
DELFT.JRC - Joint Research Centre's Institute of Energy                                                                         4832    
DELFT.TUE - TU Eindhoven                                                                                                        4500    
ANDS.CENTRE25 - Geoscience Australia                                                                                            4281    
CRUI.UNILE - Università del Salento                                                                                             4220    
ETHZ.UNKNOWN - not assigned to a specific ETHZ datacentre                                                                       4013    
CISTI.NRC - National Research Council                                                                                           3888    
CDL.UNAVCO - UNAVCO                                                                                                             3778    
ZBMED.ELLINET - ElliNET                                                                                                         3659    
BL.F1000R - Faculty of 1000 Research Ltd                                                                                        3641    
DELFT.DATACENT - 3TU Datacentrum                                                                                                3426    
PURDUE.EZID - Purdue University                                                                                                 3241    
DELFT.TUDARCH - TU Delft Architecture                                                                                           3065    
CDL.UOREGON - University of Oregon                                                                                              3026    
PURDUE.UMD - University of Maryland Libraries                                                                                   3019    
TIB.DAGST - Dagstuhl                                                                                                            2983    
TIB.KIT-IOC - Karlsruher Institut für Technologie - Institut für Organische Chemie                                              2969    
SND.SND - Swedish National Data Service                                                                                         2725    
ANDS.CENTRE11 - University of Sydney Library                                                                                    2630    
CDL.CRCL - Center for Research in Computational Linguistics                                                                     2625    
TIB.WDCC - World Data Center for Climate                                                                                        2571    
CDL.ORNL - Oak Ridge National Laboratory Distributed Active Archive Center (ORNL DAAC)                                          2555    
CDL.TACC - Texas Advanced Computing Center                                                                                      2539    
CDL.NASAGSFC - NASA Goddard Space Flight Center (GSFC)                                                                          2449    
TIB.ETA - ETA-Florence Renewable Energies                                                                                       2426    
INIST.GARNIER - Classiques GARNIER                                                                                              2320    
DK.DTIC - DTIC Datacenter                                                                                                       2282    
ETHZ.UNIBAS - edoc - University Library of Basel                                                                                2183    
CDL.WUSTL - Washington University in St. Louis                                                                                  2172    
CDL.UCDIRL - University College Dublin                                                                                          2092    
BL.STFC - Science and Technology Facilities Council                                                                             1753    
TIB.FLOSS - FLOSS Project, Syracuse University                                                                                  1711    
TIB.DESY - DESY - Deutsches Elektronen-Synchrotron                                                                              1687    
TIB.AMA - AMA Service GmbH                                                                                                      1639    
ZBMED.KTBL - Kuratorium für Technik und Bauwesen in der Landwirtschaft e. V. (KTBL)                                             1620    
INIST.ILL - Institut Laue-Langevin                                                                                              1560    
DELFT.TUDELFT - TU Delft Library                                                                                                1453    
TIB.UBMR - Universitätsbibliothek Marburg Zentralbibliothek Wilhelm-Röpke-Straße 4 35039 Marburg                                1414    
ETHZ.MA - SIB modelarchive.org                                                                                                  1394    
CDL.RE3DATA - Registry of Research Repositories                                                                                 1330    
OSTI.TREASFS - Department of Treasury, Bureau of the Fiscal Service                                                             1312    
TIB.TUHH - Technische Universität Hamburg-Harburg                                                                               1255    
CDL.NCAR - National Center for Atmospheric Research (NCAR)                                                                      1210    
TIB.ESGAR - European Society of Gastrointestinal and Abdominal Radiology                                                        1205    
CDL.USGS - USGS Core Science Analytics and Synthesis (CSAS)                                                                     1140    
ZBMED.LERNZDB - Environmental Research Institute, Faculty of Science & Engineering, University of Waikato, New Zealand          1137    
ANDS.CENTRE-8 - CSIRO                                                                                                           1135    
ZBMED.TABRIZ - Tabriz University of Medical Sciences                                                                            1131    
ETHZ.ECODICES - e-codices                                                                                                       1093    
GESIS.QUE-NET - Zeitschrift für Frauen- und Geschlechterforschung                                                               1072    
CDL.LCRNZ - Landcare Research New Zealand Ltd                                                                                   1062    
TIB.JKI - Julius Kühn-Institut                                                                                                  1062    
TIB.GEOZON - Geozon Science Media                                                                                               974     
CDL.SAGEBIO - Sage Bionetworks                                                                                                  963     
DK.SA - The State Archives                                                                                                      939     
BL.SOTON - University of Southampton                                                                                            909     
ETHZ.AR - Applied Rheology                                                                                                      814     
CDL.LABARCH - LabArchives                                                                                                       798     
TIB.G-NODE - German Neuroinformatics Node                                                                                       785     
CDL.MORPHOSO - Morphosource Project                                                                                             784     
CDL.WRITPRO - UCSB Writing Program                                                                                              771     
CDL.UCSB - UCSB                                                                                                                 751     
GESIS.BSB - Bavarian State Library                                                                                              748     
CRUI.UNIPV - Università degli Studi di Pavia                                                                                    724     
OSTI.ORNLARM - Oak Ridge National Laboratory - Atmospheric Radiation Measurement (ARM) Data Archive                             705     
TIB.RUBHB - UB Bochum                                                                                                           700     
TIB.GFZBIB - Bibliothek des Wissenschaftsparks Albert Einstein                                                                  681     
GESIS.DIPF - Deutsches Institut für Internationale Pädagogische Forschung                                                       677     
CRUI.UNISA - Università degli Studi di Salerno                                                                                  662     
CDL.MORPHOBA - MorphoBank                                                                                                       660     
CRUI.UNICA - Università degli Studi di Cagliari                                                                                 645     
CDL.NOAA - US National Oceanic and Atmospheric Administration (NOAA)                                                            608     
DK.AAU - Aalborg University Library                                                                                             557     
GESIS.DIAMETRO - Diametros                                                                                                      547     
TIB.OWPWR - Politechnika Wrocławska                                                                                             516     
ETHZ.LO - BOP - Linguistik Online                                                                                               502     
BL.BGI - Beijing Genomics Institute                                                                                             496     
CRUI.POLITO - Politecnico di Torino                                                                                             493     
CDL.UTAUSTIN - University of Texas at Austin                                                                                    472     
TIB.ADLNET - Romania ADL Association                                                                                            472     
TIB.UKON - Universität Konstanz - Bibliothek                                                                                    466     
TIB.CTT - Cellular Therapy and Transplantation                                                                                  459     
BL.SAHFOS - Sir Alister Hardy Foundation for Ocean Science                                                                      426     
GESIS.CSDA - Czech Social Science Data Archive                                                                                  425     
CDL.UCBLING - UC Berkeley Department of Linguistics                                                                             413     
ANDS.CENTRE15 - Australian Antarctic Division                                                                                   410     
BL.NERC - Natural Environment Research Council                                                                                  407     
TIB.FPSC - Fundacja Pro Scientia Publica                                                                                        397     
CDL.FDSN - International Federation of Digital Seismograph Networks (FDSN)                                                      385     
TIB.EDITURA - Editura Universitara - Romania                                                                                    368     
TIB.FUUB - Universitätsbibliothek der FU Berlin Hochschulschriftenstelle u. Dokumentenserver                                    366     
CRUI.UNIFE - Università degli Studi di Ferrara                                                                                  363     
BL.ESDS-I - ESDS International Mimas, The University of Manchester                                                              355     
TIB.GSI - GSI Helmholtzzentrum für Schwerionenforschung GmbH                                                                    349     
ANDS.CENTRE50 - Swinburne University of Technology                                                                              342     
CRUI.UNIVE - Università degli Studi di Venezia Ca’ Foscari                                                                      330     
TIB.HOG - Hugo-Obermaier-Gesellschaft                                                                                           329     
TIB.ZIB - Konrad-Zuse-Zentrum Berlin                                                                                            322     
MTAKIK.SE - Semmelweis Egyetem                                                                                                  317     
BL.ED - University of Edinburgh                                                                                                 311     
GESIS.GESIS - GESIS.GESIS                                                                                                       298     
CDL.NSIDC - National Snow & Ice Data Center (NSIDC)                                                                             297     
CDL.ESCHOL - eScholarship                                                                                                       291     
TIB.UBFR - Universitätsbibliothek Freiburg                                                                                      282     
TIB.LJ-RED - Logistics Journal                                                                                                  268     
CDL.UKY - University of Kentucky Libraries                                                                                      262     
ZBMED.AEZQ - Ärztliches Zentrum für Qualität in der Medizin                                                                     249     
INIST.SERDI - Société d'Etude, Réalisation et Diffusion Internationale                                                          242     
CDL.UAL - University of Alberta Libraries                                                                                       239     
TIB.HAWK - HAWK Hildesheim - Hornemann Institut                                                                                 237     
CRUI.INFNCNAF - Istituto Nazionale di Fisica Nucleare. Centro Nazionale Analisi Fotogrammi                                      236     
BL.EAP - Endangered Archives Project                                                                                            232     
GESIS.ZIS - ZIS - GESIS Leibniz Institute for the Social Sciences                                                               232     
INIST.ONERA - Centre français de recherche aérospatiale - The French Aerospace Lab                                              229     
TIB.GRIPS - IMP InterMediaPartners GmbH                                                                                         223     
TIB.BAFG - Bundesanstalt für Gewässerkunde                                                                                      222     
TIB.ASTONE - Institut für Wirtschaftsinformatik, Westfälische Wilhelms-Universität Münster                                      213     
OSTI.DOEGDR - DOE Geothermal Data Repository                                                                                    206     
TIB.SUBGOE - Staats- und Universitätsbibliothek Göttingen                                                                       201     
CDL.COS - Center for Open Science                                                                                               197     
CDL.SDSCOT - OpenTopography Facility                                                                                            193     
CDL.CIESIN - Center for International Earth Science Information Network (CIESIN)                                                188     
TIB.KISTI - Korea Institute of Science and Technology Information                                                               188     
TIB.PTB - Physikalisch-Technische Bundesanstalt                                                                                 188     
ANDS.CENTRE-5 - TERN Central Portal                                                                                             180     
GESIS.FID - FID für internationale und interdisziplinäre Rechtsforschung                                                        180     
CDL.HRI - Harte Research Institute                                                                                              179     
CDL.UCI - UC Irvine Library                                                                                                     171     
INIST.IFREMER - Institut Français de Recherche pour l'Exploitation de la Mer                                                    171     
TIB.TUM - TU München - Informatik                                                                                               170     
ZBMED.BLE - Bundesanstalt für Landwirtschaft und Ernährung                                                                      170     
GESIS.BIBB-FDZ - Forschungsdatenzentrum im Bundesinstitut für Berufsbildung                                                     163     
BL.SURREY - University of Surrey                                                                                                162     
ZBMED.IBJ - Iranian Biomedical Journal                                                                                          161     
ESTDOI.QDB - Qsardb repository                                                                                                  158     
CRUI.IMTLUCCA - Lucca IMT                                                                                                       154     
INIST.OMNT - Observatoire des Micro et Nano Technologies, UMS 2920 CEA-CNRS                                                     154     
CDL.CRAWDAD - CRAWDAD                                                                                                           153     
GESIS.ET-BBU - Erdélyi Társadalom Social Science Journal                                                                        152     
TIB.SLUBDD - Sächsische Landesbibliothek - Staats- und Universitätsbibliothek Dresden (SLUB)                                    152     
CDL.UMA - UMass Amherst                                                                                                         149     
MTAKIK.SZIE-UTI - Szent István Egyetem Gazdaság és Társadalomtudományok Kar Üzleti Tudományok Intézet                           148     
ETHZ.IDS-LU - IDS Luzern                                                                                                        143     
ZBMED.DHL - Deutsche Hochdruckliga e.V.                                                                                         141     
ZBMED.FBN - Leibniz-Institut für Nutztierbiologie (FBN)                                                                         141     
ANDS.CENTRE-6 - Curtin University                                                                                               140     
CRUI.UNIVR - Università degli Studi di Verona                                                                                   139     
CDL.SBGRID - Harvard Medical School                                                                                             131     
CRUI.UNITO - Università degli Studi di Torino                                                                                   130     
CRUI.UNIURB - Università degli Studi di Urbino                                                                                  128     
CDL.BENCHFLY - BenchFly                                                                                                         126     
ETHZ.DA-RD - ETHZ Data Archive - Research Data                                                                                  124     
GESIS.HSR - HSR (GESIS Leibniz-Institut für Sozialwissenschaften)                                                               123     
TIB.UBLMU - Universitätsbibliothek München                                                                                      121     
GESIS.MIND - Theoretical Philosophy/MIND Group – JGU Mainz                                                                      119     
MTAKIK.SZIE - Szent István Egyetem                                                                                              110     
INIST.IRSTEA - Institut National de Recherche en Sciences et Technologies                                                       109     
MTAKIK.NYME - Nyugat-magyarországi Egyetem                                                                                      108     
CDL.OCONTEXT - Open Context                                                                                                     101     
INIST.OMP - Observatoire Midi-Pyrénées                                                                                          100     
ZBMED.IFADO - Leibniz-Institut für Arbeitsforschung an der TU Dortmund (IfADo)                                                  100     
CDL.UOA - University of Auckland                                                                                                98      
GESIS.JNA - Institut für Ur- und Frühgeschichte                                                                                 98      
TIB.EARSEL - EARSeL eProceedings, University of Oldenburg                                                                       96      
GESIS.HSRC - Human Science Research Council SA                                                                                  95      
MTAKIK.PPKE - Pázmány Péter Katolikus Egyetem                                                                                   93      
CDL.MLA - Modern Language Association                                                                                           91      
TIB.TUB - Technische Universität Berlin - Universitätsbibliothek                                                                90      
ZBMED.PSYMET - Psychometrikon                                                                                                   90      
CDL.ESIP - Federation of Earth Science Information Partners (ESIP) Commons                                                      89      
CDL.LALEUMBC - Laboratory for Anthropogenic Landscape Ecology                                                                   88      
PURDUE.UND - University of Notre Dame                                                                                           87      
TIB.L3S - Forschungszentrum L3S                                                                                                 87      
CDL.ODUMUNC - Odum Institute for Research in Social Science                                                                     85      
TIB.ZALF - Leibniz-Zentrum für Agrarlandschaftsforschung (ZALF) e. V.                                                           85      
BL.OLD-API - BL's DOI service prototype                                                                                         82      
MTAKIK.SZE - Széchenyi István Egyetem                                                                                           82      
CISTI.IPY - Canadian Polar Data Network (CPDN)                                                                                  80      
CDL.MITLCP - MIT Laboratory of Computational Physiology                                                                         78      
CRUI.UNIME - Università degli Studi di Messina                                                                                  78      
TIB.RADS - Russian Agency for Digital Standardization                                                                           77      
BL.BRISTOL - University of Bristol                                                                                              76      
ESTDOI.KEEL - Keeleressursid                                                                                                    76      
INIST.DDE - Direction de la Documentation et de l'Edition de l'Université de Lorraine                                           76      
BL.MCHESTER - University of Manchester                                                                                          75      
TIB.ESCR - European Society of Cardiac Radiology                                                                                75      
ZBMED.EMP - eyeMoviePedia                                                                                                       75      
GESIS.ETUM - E-Journal for Theatre and Media                                                                                    74      
OSTI.PNNLMSDP - PNNL Microscopy Data Portal                                                                                     74      
CDL.UCB - UC Berkeley                                                                                                           73      
MTAKIK.ME - Miskolci Egyetem                                                                                                    72      
GESIS.DATALINO - datalino                                                                                                       71      
BL.GLASGOW - University of Glasgow                                                                                              70      
TIB.THIEME - Thieme Chemistry                                                                                                   70      
CDL.DATAMARE - DataMares                                                                                                        68      
TIB.UNIBI - Universität Bielefeld                                                                                               65      
BL.MENDELEY - Mendeley                                                                                                          64      
ANDS.CENTRE-3 - Monash University                                                                                               62      
ETHZ.BOPALT - ALT Proceedings / UB Bern                                                                                         62      
TIB.LUHREPO - Leibniz Universität Hannover                                                                                      62      
DELFT.EUR - Universiteitsbibliotheek EUR                                                                                        60      
TIB.DGG - Deutsche Gartenbauwissenschaftliche Gesellschaft                                                                      59      
GESIS.BIB - Bundesinstitut für Bevolkerungsforschung (CPoS)                                                                     57      
OSTI.USDAADC - US Department of Agriculture, Agricultural Data Commons                                                          57      
BL.MARINESC - Marine Scotland                                                                                                   56      
BL.STRATH - University of Strathclyde                                                                                           56      
CERN.OPENDATA - CERN OpenData Portal                                                                                            56      
CDL.DATABRAR - Databrary                                                                                                        55      
ETHZ.ITIS - IT'IS Foundation                                                                                                    55      
TIB.IPK - IPK Gatersleben                                                                                                       53      
ETHZ.LI - Liechtenstein-Institut                                                                                                52      
ETHZ.DMM - Astronomie-Rara (Deutsches Museum München)                                                                           51      
ZBMED.PF - Universitätsbibliothek Regensburg                                                                                    51      
GESIS.INDEPTH - INDEPTH Network                                                                                                 50      
GESIS.ZPID - GESIS.ZPID                                                                                                         50      
CDL.BUL - Brown University Library                                                                                              49      
CDL.CIN - University of Cincinnati Libraries                                                                                    49      
CDL.TCIA - The Cancer Imaging Archive                                                                                           48      
ETHZ.LIVES - LIVES Working Paper Series                                                                                         48      
GESIS.UBMA - UBMA                                                                                                               48      
OSTI.NIMH - National Institutes of Health, National Institute of Mental Health                                                  48      
TIB.HZB - Helmholtz-Zentrum Berlin für Materialien und Energie GmbH                                                             48      
ZBW.IFO - LMU-ifo Economics & Business Data Center                                                                              48      
GESIS.HIIG - Alexander von Humboldt Institut für Internet und Gesellschaft                                                      47      
MTAKIK.MTATK - Magyar Tudományos Akadémia Társadalomtudományi Kutatóközpont                                                     47      
CDL.EIX - Entrepreneur & Innovation Exchange                                                                                    46      
DK.UNINETT - UNINETT Sigma AS, Norway                                                                                           46      
GESIS.VIADRINA - Europa-Universität Viadrina                                                                                    46      
BL.UEL - University of East London                                                                                              45      
CISTI.UDEMBC - Université de Montréal Biodiversity Centre                                                                       45      
ZBW.PBR - e-Journal of Practical Business Research                                                                              45      
INIST.UNC - Université de Nouvelle-Calédonie                                                                                    44      
TIB.MPDL - Max Planck Digital Library                                                                                           44      
CDL.SDSCSG - UCSD Signaling Gateway                                                                                             43      
CDL.UCBRIT - UC Berkeley Research IT                                                                                            43      
TIB.DWD - Deutscher Wetterdienst - Klimaüberwachung                                                                             43      
CDL.USGCRP - U.S. Global Change Research Program/UCAR                                                                           42      
CDL.UTENN - University of Tennessee                                                                                             42      
GESIS.MPIB - Max Planck Institute for Human Development                                                                         41      
ZBMED.FLORSOZ - Floristisch-soziologische Arbeitsgemeinschaft e.V. (FlorSoz)                                                    41      
MTAKIK.HADTUD - Hadtudomány                                                                                                     40      
OSTI.ORNLNGEE - NGEE-Arctic  (Next Generation Ecosystems Experiement)                                                           40      
TIB.UBTUM - Technische Universität München, Universitätsbibliothek                                                              40      
BL.LANCS - University of Lancaster                                                                                              39      
GESIS.MDA - GESIS MDA Zeitschriften                                                                                             39      
GESIS.SDM - GESIS - Survey Guidelines                                                                                           39      
OSTI.CDIAC-TC - Carbon Dioxide Information Analysis Center (TC)                                                                 39      
ANDS.CENTRE-1 - Griffith University                                                                                             38      
OSTI.DOE - DOE Generic                                                                                                          38      
PURDUE.UMICH - University of Michigan Library                                                                                   38      
BL.CEFAS - Cefas                                                                                                                37      
CDL.CAMS - Cyberinfrastructure for Atomistic Materials Science (CAMS)                                                           37      
CDL.UCBCRCNS - Collaborative Research in Computational Neuroscience (CRCNS)                                                     37      
PURDUE.DRUM - Data Repository for the University of Minnesota                                                                   37      
TIB.THW - Technische Hochschule Wildau [FH] Hochschulbibliothek Hochschulring 1 15745 Wildau                                    37      
ANDS.CENTRE13 - The Australian National University                                                                              36      
CDL.GMU - George Mason University                                                                                               36      
CRUI.UNITS - Università degli Studi di Trieste                                                                                  36      
CDL.USU - Utah State University Merrill-Cazier Library                                                                          35      
MTAKIK.ELTE - Eötvös Loránd Tudományegyetem                                                                                     35      
MTAKIK.SZEETT - Széchenyi István Egyetem Épülettervezési Tanszék                                                                35      
OSTI.USQCD - US Lattice Quantum Chromodynamics Collaboration (USQCD)                                                            35      
ZBMED.EAACI - European Academy for Allergology and Clinical Immunology                                                          35      
BL.BATH - University of Bath                                                                                                    34      
BL.NHM - Natural History Museum, London                                                                                         34      
CDL.RENCI - RENCI (Renaissance Computing Institute)                                                                             34      
CDL.SEU - Saint Edward's University                                                                                             34      
CDL.UCSD - UCSD                                                                                                                 34      
ETHZ.FSW - Foucault-Blog                                                                                                        34      
ETHZ.UBASOJS - 027.7 - Zeitschrift für Bibliothekskultur                                                                        34      
ZBMED.SFUWIEN - Sigmund Freud PrivatUniversität Wien (SFU)                                                                      34      
CDL.UCSFCTSI - UCSF Clinical & Translational Science Institute (CTSI)                                                           32      
CDL.UWL - University of Washington                                                                                              32      
TIB.HSA - Hochschule Sachsen-Anhalt                                                                                             32      
TIB.WDCRSAT - World Data Center for Remote Sensing of the Atmosphere                                                            32      
CERN.INSPIRE - inspirehep.net                                                                                                   31      
ETHZ.SMIF - Survey Methods                                                                                                      31      
GESIS.DEAS - Forschungsdatenzentrum Deutsches Zentrum für Altersfragen (FDZ-DZA)                                                31      
INIST.SIDR - INIST/CNRS - Standard-Based Infrastructure with Distributed Resources                                              31      
OSTI.NREL - National Renewable Energy Laboratory (NREL)                                                                         31      
TIB.SMN-DOI - SMN ScienceMedia Network GmbH                                                                                     31      
GESIS.DATORIUM - GESIS Data Archive                                                                                             30      
GESIS.IFPUK - Institut für Publizistik- und Kommunikationswissenschaft an der FU Berlin                                         30      
GESIS.SEAS - Gesellschaft für Südostasienwissenschaften (SEAS)                                                                  30      
MTAKIK.MKSZLE - Magyar Könyvszemle                                                                                              30      
OSTI.CXIDB - Coherent X-ray Imaging Data Bank                                                                                   30      
PURDUE.UIUCLIB - University of Illinois Libraries                                                                               30      
INIST.ADYVA - Association française de dynamique des structures et vibroacoustique                                              29      
ANDS.CENTRE28 - James Cook University                                                                                           28      
ANDS.CENTRE49 - The University of Melbourne                                                                                     28      
ANDS.CENTRE52 - Australian Synchrotron                                                                                          28      
CDL.OSU - Oregon State University                                                                                               28      
ETHZ.INFOCLIO - Infoclio                                                                                                        28      
TIB.FOR816 - Biodiversity and Sustainable Management of a Megadiverse Mountain Ecosystem in South Ecuador                       28      
TIB.REPOD - University of Warsaw  Interdisciplinary Centre for Mathematical and Comutational Modelling                          27      
BL.STANDREW - University of St Andrews                                                                                          26      
CDL.UCD-SSDS - UC Davis, Social Science Data Service                                                                            26      
BL.DURHAM - Durham University                                                                                                   25      
GESIS.AKM - Arbeitskreises Militärgeschichte                                                                                    25      
CDL.UCSDCCA - California Coastal Atlas                                                                                          24      
TIB.HU - Humboldt Universität zu Berlin                                                                                         24      
TIB.MFO - Mathematisches Forschungsinstitut Oberwolfach                                                                         24      
ZBW.RWI - RWI - Rheinisch-Westfälisches Institut für Wirtschaftsforschung e.V.                                                  24      
ETHZ.UZH-AL - altrelettere                                                                                                      23      
ZBMED.BIOFRESH - Project BioFresh, Leibniz-Institute of Freshwater Ecology and Inland Fisheries                                 23      
BL.WAP - Web Archive Programme at BL                                                                                            22      
CISTI.CEN - Centre d'études nordiques                                                                                           22      
GESIS.NEPS - Nationales Bildungspanel (National Educational Panel Study, NEPS)                                                  22      
MTAKIK.KE - Kaposvári Egyetem                                                                                                   22      
TIB.JOANNEUM - JOANNEUM RESEARCH Forschungsgesellschaft mbH                                                                     22      
CRUI.OGSTS - Istituto Nazionale di Oceanografia e di Geofisica Sperimentale                                                     21      
GESIS.SOEP - Forschungsdatenzentrum Sozio-ökonomisches Panel (FDZ SOEP)                                                         21      
ZBMED.LIVBOOKS - ZB MED Living Books                                                                                            21      
GESIS.IQB - Institut zur Qualitätsentwicklung im Bildungswesen                                                                  20      
MTAKIK.ORZSE - Országos Rabbiképző-Zsidó Egyetem                                                                                20      
CDL.JHU - Johns Hopkins University Data Archive                                                                                 19      
CRUI.UNIROMA1 - Università degli Studi di Roma La Sapienza                                                                      19      
DELFT.VLIZ - VLIZ - Vlaams Instituut voor de Zee                                                                                19      
GESIS.HAB - HAB - Herzog August Bibliothek                                                                                      19      
MTAKIK.NYTUDK - Nyelvtudományi Közlemények                                                                                      19      
BL.LBORO - Loughborough University                                                                                              18      
BL.LEEDS - University of Leeds                                                                                                  18      
CRUI.INGV - Istituto Nazionale di Geofisica e Vulcanologia                                                                      18      
ETHZ.DODIS - DODIS - Diplomatische Dokumente der Schweiz                                                                        18      
GESIS.IJRVET - International Journal for Research in Vocational Education and Training                                          18      
GESIS.QJB - Querelles Jahrbuch für Frauen- und Geschlechterforschung                                                            18      
ZBMED.DIAGNOMX - DiagnomX GmbH                                                                                                  18      
ETHZ.CORSSA - CORSSA - Community Online Resource for Statistical Seismicity Analysis                                            17      
ETHZ.JROI - JROI - Journal of Radiation Oncology Informatics                                                                    17      
GESIS.GCR21 - Käte Hamburger Kolleg/Center for Global Cooperation Research                                                      17      
GESIS.RKI-BIB1 - RKI-Bib1 (Robert Koch-Institut)                                                                                17      
MTAKIK.MTAKIK - Magyar Tudományos Akadémia Könyvtár és Információs Központ                                                      17      
CDL.IDASHREP - iDASH Repository                                                                                                 16      
CRUI.EVK2CNR - Comitato Ev-K2-CNR                                                                                               16      
CRUI.GEM - Fondazione Global Earthquake Model                                                                                   16      
MTAKIK.ALKPSICH - Alkalmazott Pszichológia                                                                                      16      
PURDUE.STATSRC - Statistics (ResearchCompendia.org)                                                                             16      
ZBMED.IJSFD - International Center for Food Chain and Network Research, Rheinische Friedrich Wilhelms-Universität Bonn          16      
ZBMED.ZFPG - Hochschule für angewandte Wissenschaften Neu-Ulm Fakultät Gesundheitsmanagement Wileystr. 1 D-89231Neu-Ulm         16      
ANDS.CENTRE16 - Deakin University                                                                                               15      
BL.QUB - Queen's University Belfast                                                                                             15      
CDL.IUPUI - Indiana University-Purdue University Indianapolis                                                                   15      
TIB.UBDE - Universitätsbibliothek Duisburg-Essen Universitätsstraße 9-11  45141 Essen                                           15      
BL.LSHTM - London School of Hygiene and Tropical Medicine                                                                       14      
CRUI.UNIPI - Università degli Studi di Pisa                                                                                     14      
OSTI.TESTPROJ - Test Project                                                                                                    14      
TIB.AIP - Leibniz-Institut für Astrophysik Potsdam (AIP) An der Sternwarte 16 14482 Potsdam                                     14      
ZBMED.GIQS - GIQS (Grenzüberschreitende Integrierte Qualitätssicherung e.V.)                                                    14      
ZBMED.VJVRS - Video Journal of Vitreoretinal Surgery                                                                            14      
ZBW.ZOEBIS - Zentrum für ökonomische Bildung in Siegen                                                                          14      
ANDS.CENTRE10 - Institute for Future Environments                                                                               13      
CDL.NKN - Northwest Knowledge Network (NKN)                                                                                     13      
CDL.UNMLIB - University of New Mexico Libraries                                                                                 13      
DATACITE.DATACITE - DataCite                                                                                                    13      
DATACITE.RDA - Research Data Alliance                                                                                           13      
GESIS.DSZ-BO - DSZ-BO                                                                                                           13      
INIST.RESIF - Réseau sismologique et géodésique français                                                                        13      
BL.ASTON - Aston University                                                                                                     12      
BL.NOTTS - University of Nottingham                                                                                             12      
GESIS.VZ-NRW - vz-nrw (Verbraucherzentrale Nordrhein-Westfalen e. V.)                                                           12      
TIB.BIKF - Biodiversity and Climate Research Centre                                                                             12      
DELFT.NIBG - Nederlands Instituut voor Beeld en Geluid                                                                          11      
GESIS.RKI - FDZ-RKI                                                                                                             11      
GESIS.SHARE - SHARE - ERIC                                                                                                      11      
INIST.EPP - Ecole de Psychologues Praticiens                                                                                    11      
PURDUE.INTBIO - Intrepid Bioinformatics                                                                                         11      
BL.CARDIFF - Cardiff University                                                                                                 10      
BL.HWU - Heriot-Watt University                                                                                                 10      
BL.SAGECITE - SageCite                                                                                                          10      
CDL.CMU - Carnegie Mellon University Libraries                                                                                  10      
INIST.LIX - Laboratoire d'Informatique de l'Ecole Polytechnique                                                                 10      
ANDS.CENTRE57 - Bond University                                                                                                 9       
BL.LPOOL - University of Liverpool                                                                                              9       
CDL.UCSC - UCSC                                                                                                                 9       
CDL.VTTI - Virginia Tech Transportation Institute                                                                               9       
GESIS.ZZF - ZZF - Centre for Contemporary History                                                                               9       
INIST.INRA - Institut National de Recherche Agronomique                                                                         9       
PURDUE.MYGEOHUB - MyGeoHub                                                                                                      9       
TIB.UBP - Universitätsbibliothek Passau                                                                                         9       
BL.PORTSMTH - University of Portsmouth                                                                                          8       
CDL.VTLIB - Virginia Tech University Libraries                                                                                  8       
GESIS.ZFL - Zentrum für Literatur- und Kulturforschung                                                                          8       
ZBMED.HORTIGAT - Gartenbau-Informationssystem hortigate Ein Angebot des Zentralverbandes Gartenbau e.V. (ZVG)                   8       
ANDS.CENTRE39 - University of the Sunshine Coast                                                                                7       
ANDS.CENTRE61 - RMIT University                                                                                                 7       
BL.BRIGHTON - University of Brighton                                                                                            7       
BL.DUNDEE - University of Dundee                                                                                                7       
CDL.MSU - Montana State University                                                                                              7       
CDL.QDR - Consortium for Qualitative Research Methods                                                                           7       
CDL.SEISMOLA - Caltech Seismological Laboratory                                                                                 7       
CDL.UCLAEEB - UCLA Department of Ecology and Evolutionary Biology                                                               7       
ESTDOI.REPO - Repositoorium TÜ juures                                                                                           7       
GESIS.IANUS - IANUS - FDZ Archäologie & Altertumswissenschaften                                                                 7       
GESIS.IJLL - International Journal of Literary Linguistics                                                                      7       
INIST.BCU - Bibliothèque Clermont Université                                                                                    7       
MTAKIK.CEU - Közép-Európai Egyetem                                                                                              7       
PURDUE.PSIEE - Penn State Institutes of Energy and the Environment/PSU Data Commons                                             7       
SND.BILS - Bioinformatics Infrastructure for Life Sciences                                                                      7       
TIB.IOW - Leibniz-Institut fuer Ostseeforschung Warnemuende                                                                     7       
TIB.MLDATA - MLData                                                                                                             7       
ANDS.CENTRE35 - University of Western Sydney                                                                                    6       
ANDS.CENTRE47 - Southern Cross University                                                                                       6       
ANDS.CENTRE55 - The University of Adelaide                                                                                      6       
CDL.PGERR - UTA Petroleum Engineering                                                                                           6       
DK.GBIF-ES - GBIF Spain                                                                                                         6       
ETHZ.WGMS - World Glacier Monitoring Service                                                                                    6       
INIST.MEDSYS - MEDSYS-Conferences & Abstraits Management system                                                                 6       
MTAKIK.JUSO - Journal of Universal Science Online                                                                               6       
MTAKIK.TF - Testnevelési Egyetem                                                                                                6       
ZBMED.HITS - HITS gGmbH,Heidelberger Institut für Theoretische Studien                                                          6       
ANDS.CENTRE-9 - Queensland University of Technology                                                                             5       
BL.NCL - Newcastle University                                                                                                   5       
CDL.BAER - Bay Area Environmental Research (BAER) Institute                                                                     5       
CDL.BIOCODE - Biocode Commons                                                                                                   5       
CDL.DUL - Duke University                                                                                                       5       
CDL.UCLA - UCLA                                                                                                                 5       
CDL.UCSBAGL - UCSB Advanced Graphics Lab                                                                                        5       
CDL.UMWLSL - University of Massachusetts Medical School                                                                         5       
CDL.UWESCI - University of Washington eScience Institute                                                                        5       
CISTI.CADC - Canadian Astronomy Data Centre                                                                                     5       
CISTI.UGARDR - University of Guelph                                                                                             5       
ESTDOI.GEO - Geoloogilised andmekogud                                                                                           5       
GESIS.CSES - Comparative Study of Electoral Systems                                                                             5       
PURDUE.UNL - University of Nebraska-Lincoln Libraries                                                                           5       
ZBW.IOS - Institut für Ost- und Südosteuropaforschung                                                                           5       
ANDS.CENTRE-2 - CSSE Uni Melbourne                                                                                              4       
ANDS.CENTRE43 - Charles Sturt University                                                                                        4       
ANDS.CENTRE48 - University of Wollongong                                                                                        4       
CDL.BSL - Berkeley Seismological Laboratory                                                                                     4       
CDL.SBGEOG - UCSB Climate Hazards Group, Dept of Geography                                                                      4       
CDL.UCBITS - UC Berkeley Institute of Transportation Studies (ITS)                                                              4       
CDL.UCM - UC Merced                                                                                                             4       
CDL.UCRBCOE - UC Riverside Bourns College of Engineering                                                                        4       
CDL.USFWS - U.S. Fish and Wildlife Service                                                                                      4       
GESIS.IHI - Ifakara Health Institute                                                                                            4       
SND.SU - Stockholm University                                                                                                   4       
TIB.TUCHEM - Universitätsbibliothek Chemnitz                                                                                    4       
BL.HALLAM - Sheffield Hallam University                                                                                         3       
CDL.ACSESS - Alliance for Crops, Soils, and Environmental Science Societies                                                     3       
CDL.CALTECH - California Institute of Technology (Caltech)                                                                      3       
CDL.ISSDA - Irish Social Science Data Archive (ISSDA)                                                                           3       
CDL.LIBUNC - UNC Library - Resource Description and Management                                                                  3       
CDL.NOAA-GMD - NOAA Global Monitoring Division                                                                                  3       
CDL.UCSFLIB - UCSF                                                                                                              3       
CDL.UUTAH - University of Utah                                                                                                  3       
CDL.UWYO - University of Wyoming Libraries                                                                                      3       
CERN.CDS - CERN Document Server                                                                                                 3       
CISTI.OTNDC - Ocean Tracking Network                                                                                            3       
CISTI.UPEI - University of Prince Edward Island                                                                                 3       
CRUI.UNIFG - Università degli Studi di Foggia                                                                                   3       
DELFT.IEA - International Association for the Evaluation of Educational Achievement                                             3       
GESIS.UDE - Institute of Sociology at the University of Duisburg-Essen                                                          3       
INIST.CNRS - INIST/CNRS Institut de l'Information Scientifique et Technique                                                     3       
MTAKIK.EKF - Eszterházy Károly Főiskola                                                                                         3       
PURDUE.NCIP - National Cancer Institute, NIH                                                                                    3       
ZBW.ZEW - Zentrum für Europäische Wirtschaftsforschung GmbH (ZEW)                                                               3       
ANDS.CENTRE14 - Australian National Data Service                                                                                2       
ANDS.CENTRE22 - La Trobe University                                                                                             2       
ANDS.CENTRE23 - The University of Western Australia                                                                             2       
ANDS.CENTRE37 - Charles Darwin University                                                                                       2       
ANDS.CENTRE53 - University of New South Wales                                                                                   2       
BL.QMUL - Queen Mary University of London                                                                                       2       
CDL.AAS - American Astronomical Society                                                                                         2       
CDL.LIGO - LIGO Open Science Center                                                                                             2       
CDL.LUCKLAB - Laboratory for Basic and Translational Cognitive Neuroscience                                                     2       
CDL.MDY - Middlebury College                                                                                                    2       
CDL.NCCS - NASA Center for Climate Simulation (NCCS)                                                                            2       
CDL.RCIDC - UCSD Research Cyberinfrastructure Data Curation                                                                     2       
CDL.UCR - UC Riverside                                                                                                          2       
CDL.UCSDSSPP - UCSD Skaggs School of Pharmacy and Pharmaceutical Sciences                                                       2       
CDL.UMIAMI - University of Miami Libraries                                                                                      2       
CDL.UWCIG - University of Washington College of the Environment Climate Impacts Group (CIG)                                     2       
CISTI.AN - ArcticNet                                                                                                            2       
CISTI.WOUDC - World Ozone Ultraviolet Data Centre                                                                               2       
GESIS.MM - medica mondiale                                                                                                      2       
INIST.MEMO - Observatoire MEMO : Mammifères Echantillonneurs du Milieu Océanique - Service d'Observation de l'Océan CNRS-INSU   2       
INIST.RDMDTN - R&D Médiation                                                                                                    2       
JALC.JALC - Japan Link Center                                                                                                   2       
MTAKIK.ANDRASSY - Andrássy Gyula Budapesti Német Nyelvű Egyetem                                                                 2       
OSTI.ORNLCCSI - Oak Ridge National Laboratory – Climate Change Science Institute                                                2       
PURDUE.NCIPH - National Cancer Informatics Program Hub, NIH                                                                     2       
PURDUE.UMBS - University of Michigan Biological Station (UMBS)                                                                  2       
SND.ECDS - Environment Climate Data Sweden                                                                                      2       
ANDS.CENTRE41 - National Computational Infrastructure                                                                           1       
ANDS.CENTRE66 - Australian Catholic University                                                                                  1       
ANDS.CENTRE71 - Bioplatforms Australia                                                                                          1       
ANDS.TEST - ANDS Testing datacentre                                                                                             1       
BL.FBA - Freshwater Biological Association                                                                                      1       
BL.MBA - Marine Biological Association                                                                                          1       
BL.READING - University of Reading                                                                                              1       
BL.UCLAN - University of Central Lancashire                                                                                     1       
CDL.AUL - American University Library                                                                                           1       
CDL.CCHDO - CLIVAR and Carbon Hydrographic Data Office                                                                          1       
CDL.CISER - Cornell Institute for Social and Economic Research (CISER)                                                          1       
CDL.CMMAP - Center for Multiscale Modeling of Atmospheric Processes                                                             1       
CDL.CRBS - Center for Research in Biological Systems                                                                            1       
CDL.CUL - Cornell University Library                                                                                            1       
CDL.EARTHREF - EarthRef                                                                                                         1       
CDL.ELRAP - Edom Lowlands Regional Archaeology Project                                                                          1       
CDL.FHCRC - Fred Hutchinson Cancer Research Center                                                                              1       
CDL.IPLANT - iPlant Collaborative (at University of Arizona)                                                                    1       
CDL.MBFBIO - MBF Bioscience                                                                                                     1       
CDL.ONELAB - UCSD OneLab                                                                                                        1       
CDL.ONEOCEAN - OneOcean                                                                                                         1       
CDL.OPENFMRI - Openfmri                                                                                                         1       
CDL.UCSDBIO - UCSD Nieh Lab                                                                                                     1       
CDL.UCSDOOI - UCSD Ocean Observatory Initiative                                                                                 1       
CDL.UWCSDE - University of Washington Center for Studies in Demography and Ecology                                              1       
CDL.UWISOLAB - University of Washington IsoLab                                                                                  1       
CDL.WORMBASE - Caltech Biology                                                                                                  1       
CDL.WSU - Washington State University                                                                                           1       
CISTI.CARLETON - Carleton University                                                                                            1       
CISTI.LUL - Laurentian University                                                                                               1       
DELFT.MAASTRO - MAASTRO Clinic                                                                                                  1       
DELFT.TLO - Transport and Logistics Section, TU Delft                                                                           1       
DK.MISC - Miscellaneous DOIs                                                                                                    1       
ETHZ.SED - Swiss Seismological Service, Hazard Center                                                                           1       
GESIS.DB-BANK - Deutsche Bundesbank                                                                                             1       
GESIS.FDP-URU - Facultad de Psicología de la Universidad de la República                                                        1       
GESIS.HEIUP - Heidelberg University Publishing                                                                                  1       
INIST.CEBC - Centre d'études biologiques de Chizé                                                                               1       
INIST.MAE - USR3225 - Maison René Ginouvès                                                                                      1       
MTAKIK.BESZEDK - Beszédkutatás                                                                                                  1       
MTAKIK.MTANYTI - Magyar Tudományos Akadémia Nyelvtudományi Intézet                                                              1       
MTAKIK.NYMEBPK - Nyugat-magyarországi Egyetem Benedek Elek Pedagógiai Kar                                                       1       
MTAKIK.SZEEET - Széchenyi István Egyetem Építészeti és Épületszerkezettani Tanszék                                              1       
OSTI.ANL - Argonne National Lab                                                                                                 1       
OSTI.LANL - Los Alamos National Laboratory                                                                                      1       
PURDUE.IUCNS - Indiana University Cyberinfrastructure for Network Science Center                                                1       
PURDUE.NEES - Network for Earthquake Engineering Simulation (NEES)                                                              1       
PURDUE.UCHIG - University of Chicago                                                                                            1       
TIB.CASIMIR - Stiftung Schloss Friedenstein, Gotha                                                                              1       
TIB.HMGU - Helmholtz-Zentrum München - Gesundheit und Umwelt GmbH                                                               1       
TIB.ISTA - Institute of Science and Technology Austria                                                                          1       
TIB.RWTH - Universitätsbibliothek RWTH Aachen University                                                                        1       
ZBMED.EBOOKALT - TU Braunschweig, Institut für Psychologie, Abt. Gerontopsychologie                                             1       
ZBMED.VLSP - Verband von Lesben und Schwulen in der Psychologie c/o PLUS e.V. Alphornstr. 2a 68169 Mannheim                     1       
ANDS.CENTRE-9 - Queensland University of Technology                                                                             0       
GESIS.DIE - Deutsches Institut für Erwachsenenbildung                                                                           0       
GESIS.DSZ-BO - DSZ-BO                                                                                                           0       
GESIS.ETUM - E-Journal for Theatre and Media                                                                                    0       
GESIS.HSR - HSR (GESIS Leibniz-Institut für Sozialwissenschaften)                                                               0       
GESIS.HSRC - Human Science Research Council SA                                                                                  0       
GESIS.IJRVET - International Journal for Research in Vocational Education and Training                                          0       
GESIS.INDEPTH - INDEPTH Network                                                                                                 0       
GESIS.NEPS - Nationales Bildungspanel (National Educational Panel Study, NEPS)                                                  0       
GESIS.RKI - FDZ-RKI                                                                                                             0       
GESIS.SOEP - Forschungsdatenzentrum
Sozio-ökonomisches Panel (FDZ SOEP)                                                          0       
GESIS.VIADRINA - Europa-Universität
Viadrina                                                                                     0       
SND.SU - Stockholm University                                                                                                   0       
TIB.EARSEL - EARSeL eProceedings,
University of Oldenburg                                                                        0       
TIB.FPSC - Fundacja Pro Scientia Publica                                                                                        0       
TIB.G-NODE - German Neuroinformatics Node                                                                                       0       
TIB.HU - Humbolt Universität zu Berlin                                                                                          0       
TIB.THW - Technische Hochschule Wildau [FH]
Hochschulbibliothek
Hochschulring 1
15745 Wildau                                       0       
TIB.UBTDOIS - Universitätsbibliothek Tübingen,
Wilhelmstraße 32,
Postfach 2620,
72016 Tübingen                                     0       
TIB.UBTUM - Technische Universität München,
Universitätsbibliothek                                                               0       
TIB.ZALF - Leibniz-Zentrum für Agrarlandschaftsforschung (ZALF) e. V.                                                           0       
ZBMED.BIOFRESH - Project BioFresh,
Leibniz-Institute of Freshwater Ecology and Inland Fisheries                                  0       
ZBMED.EBOOKALT - TU Braunschweig, Institut für Psychologie, Abt. Gerontopsychologie                                             0       
ZBMED.HORTIGAT - Gartenbau-Informationssystem hortigate
Ein Angebot des Zentralverbandes Gartenbau e.V. (ZVG)                    0       
ZBMED.VLSP - Verband von Lesben und Schwulen in der Psychologie
c/o PLUS e.V.
Alphornstr. 2a
68169 Mannheim                        0       
ZBMED.ZFPG - Hochschule für angewandte Wissenschaften Neu-Ulm
Fakultät Gesundheitsmanagement
Wileystr. 1
D-89231Neu-Ulm            0       
