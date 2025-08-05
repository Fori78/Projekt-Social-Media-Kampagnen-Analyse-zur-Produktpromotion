/* MySQL-Datenanalyse für eine Social-Media-Kampagne zur Produktpromotion

1. Zieldefinition
	Kampagnen-Performance je Kanal (Facebook, Instagram, TikTok, YouTube).
	Zielgruppenverhalten entlang des Funnels:
	Reichweite → Klicks → Absprünge → Käufe
	Kanal-ROI: Welche Kanäle bringen am meisten Umsatz?
	Kundensegmentierung: Neukunden vs Bestandskunden.
	Loyalität und Wiederkäufe.
    
2. Datenquellen und Struktur
	Ad-Kampagnendaten von Facebook, Insta, TikTok, YouTube (via API oder Export).
	Trackingdaten (z.B. via UTM-Parameter, Trackingcode → Klicks, Ausstiege).
	Shop-System / CRM (Käufe, Kundenhistorie).

3. Datenmodell skizzieren (Entitäten & Tabellen)

Tabelle				Beschreibung
social_campaigns	Kampagneninfos je Kanal
audience_segments	Zielgruppeninfos
ad_interactions		Impressionen, Klicks, Ausstiege pro Nutzer
purchases			Käufe inkl. Kanal, Zeit, Kunde, Code
customers			Kundeninfos, Neukunde/Bestandskunde