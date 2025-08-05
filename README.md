MySQL-Datenanalyse für eine Social-Media-Kampagne zur Produktpromotion

Projektziel
Analyse und Reporting zur Performance von Social-Media-Kampagnen zur Produktpromotion mit Fokus auf Zielgruppenverhalten und Kanalprofitabilität. Ziel ist es, datenbasierte Entscheidungen über Marketingbudgets und Zielgruppenansprache zu ermöglichen.

Zieldefinition
Kampagnen-Performance je Kanal: Facebook, Instagram, TikTok, YouTube.

Zielgruppenanalyse entlang des Funnels:
Reichweite → Klicks → Absprünge → Käufe.

Kanal-ROI: Welcher Kanal generiert den höchsten Umsatz?

Kundensegmentierung:
Neukunden vs. Bestandskunden.

Loyalität & Wiederkäufe:
Wiederholungskäufe und Kundenbindung.

Datenquellen & Struktur
Quelle	              Inhalt
Social Media APIs	    Kampagnenmetriken je Kanal (Facebook, etc.)
Trackingdaten	        Klicks, Ausstiege (via UTM oder Trackingcode)
Shop/CRM-System	      Käufe, Kundenhistorie

Datenmodell (Entitäten & Tabellen)
Tabelle	                  Beschreibung
social_campaigns	        Kampagneninfos pro Kanal
audience_segments	        Zielgruppeninfos (Alter, Geschlecht, Region)
ad_interactions	          Interaktionen: Impressionen, Klicks, Ausstiege
purchases	                Käufe inkl. Kanal, Zeit, Kunde, Promo-Code
customers	                Kundeninfos, Neukunde/Bestandskunde, Loyalitätsstatus

Beispiel-Felder
social_campaigns: campaign_id (PK), campaign_channel, campaign_title, start_ts, end_ts  
audience_segments: segment_id (PK), age_group, gender, location_region  
ad_interactions: interaction_id (PK), campaign_id (FK), segment_id (FK), event_type, event_ts  
purchases: purchase_id (PK), customer_id (FK), campaign_id (FK), segment_id (FK), purchase_ts, promo_code_used, revenue_amount  
customers: customer_id (PK), first_purchase_ts, is_new_customer (BOOLEAN), loyalty_level (z.B. bronze/silver/gold)

KPIs (Key Performance Indicators)
KPI	                          Bedeutung
Reach	                        Impressionen pro Kanal/Zeit/Zielgruppe
CTR (Click-Through-Rate)	    Klicks / Impressionen
Conversion Rate	              Käufe / Klicks
Bounce Rate	                  Ausstiege / Klicks
Customer Acquisition Cost	    Ad-Ausgaben / Neukunden
Revenue per Channel	          Umsatz pro Kanal
Loyalty Ratio	                Bestandskunden / Neukunden

Beispielfragen für SQL-Analysen
  Wie viele Nutzer wurden pro Kanal und Zeitraum erreicht?
  Wie viele Klicks vs. Käufe gab es je Zielgruppe und Kanal?
  Wann und wo sind Nutzer ausgestiegen? (Exit Rate)
  Vergleich der Performance von Zielgruppen auf TikTok vs Instagram.
  Wie viele Neukunden gewann jede Plattform?
  Wie hoch ist der Umsatz je Kanal und Zielgruppe?
  Wie viele Bestandskunden kauften erneut über Facebook?
  Wann war der Peak der Käufe nach Kampagnenstart?

SQL-Objekte
VIEW: view_channel_funnel
→ Übersicht über Funnel-Metriken je Kanal.

STORED PROCEDURE: get_segment_performance(channel_input)
→ Gibt Performance je Zielgruppe für gewählten Kanal zurück.

FUNCTION: calc_conversion_rate(clicks INT, purchases INT)
→ Berechnet Conversion Rate aus Klicks und Käufen.

ER-Diagramm (Beziehungen)
text
Kopieren
Bearbeiten
customers
   ▲
   │
purchases ─────► social_campaigns ◄───── ad_interactions
   │                        ▲
   │                        │
   ▼                        ▼
audience_segments       (verbindend)

Lizenz
Dieses Projekt steht unter der MIT-Lizenz.
