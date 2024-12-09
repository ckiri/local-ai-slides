----

style: |
  h1 {
    color: #100F0F;
  } 
  section {
    background-color: #F6F5F4;
    color: #100F0F;
  }

----

<!-- Comments in marp have to be in html format, otherwise the text is rendered
to the slide. -->
<!-- Global styling, is used in the "first" page, as seen above (slide-deck.md)
-->
<!-- Comments are visible inside presenter view, and therefore can be used as
notes for the presentation. -->
<!-- About the SVG-Symbol: (OpenAI logo), path to a resource is from the
standpoint of the rendered document, which resides in: ./docs/index.html,
./assets/open_ai_logo.svg would be the wrong path because assets is not 
on the same directory level as the docs directory. -->
# ![height:80px](../assets/open_ai_logo.svg) OpenAI & ChatGPT 

Wer hier nutzt ChatGPT?

<!-- Local styling -->
<style scoped>
h1 {
  color: #F6F5F4;
  font-size: 80px;
  text-align: center;
}
section {
  color: #F6F5F4;
  background: #1DA486;
  text-align: center;
}
</style>

----

# ![height:40px](../assets/open_ai_logo.svg) ~~Open~~ClosedAI

* _Früher_: OpenAI mit **"the greater good" — das Wohl der Allgemeinheit** beschrieben
* _Heute_: Wichtige Forschungsergebnisse werden zurückgehalten
* Gefahr dass durch Quasi-Monopol Innovationsanreiz verloren geht vgl. Google
* Was passiert mit meinen Daten? Wird es OpenAI und damit auch ChatGPT für immer geben?

> *Wie soll die Forschungsgemeinschaft Verbesserungen für ein Modell vorschlagen, das gar nicht offen zugänglich ist?* — **William Falcon, CEO von Lightning AI**

<style scoped>
h1 {
  color: #F6F5F4;
}
blockquote {
  color: #D0D7DE;
}
section {
  color: #F6F5F4;
  background: #a41d3b;
}
</style>

----

# Gibt es überhaupt eine Alternative zu Big-Tech?

<!-- Vertically split background in "cover" mode with even spacing. -->
![bg cover](../assets/snl_musk.webp)
![bg cover](../assets/the_zucc.webp)
![bg cover](../assets/dabbing_bill.webp)

<style scoped>
h1 {
  font-size: 60px;
  color: #F6F5F4;
  background: #100F0F;
  text-align: center;
}
</style>

----

# KI auf eigener Hardware: Chancen und Herausforderungen

* Vor- und Nachteile
* Tools zur praktische Nutzung
* Einrichtung
* Demo — So kann das Betreiben eines Sprachmodells auf dem eigenen PC aussehen
* Ausblick in die Zukunft

----

# Vorteile

* Keine Abhängigkeit von einem externen Serviceanbieter
* Daten müssen das eigene Netzwerk nicht verlassen und müssen
  nicht Dritten zugänglich gemacht werden 
* Für spezielle Zwecke sind spezialisierte (fine-tuned) Open Source Large
  Language Models verfügbar

----

![bg cover](../assets/angry_pc_man.webp)

# Nachteile aka. Herausforderungen

<style scoped>
h1 {
  font-size: 60px;
  color: #F6F5F4;
  background: #100F0F;
  text-align: center;
}
</style>

----

# Nachteile

* Einrichtung, Wartungen und Updates können mit großem manuellen Aufwand
  verbunden sein zudem evtl. Fachwissen nötig
* Die Hardware großer KI-Anbieter kann effizienter für den Betrieb von
  KI sein
* Speicherplatz: LLMs erfordern große Mengen an Speicherkapazitäten 
  
----

# Tools zur praktischen Nutzung

<!-- Picture on the left side using 33% of the page. -->
![bg contain left:33%](../assets/tool_diag.png)

* LLM (Großes Sprachmodell), Analogie zur Bluray
* Benötigt wird Schnittstelle für Interaktion, eine Art "Bluray-Player" 
* Im besten Fall noch einen Bildschirm um Information zu sehen   

----

# Einrichtungsprozess (vereinfacht)

1. Ollama für Linux herunterladen und installieren:

```sh
curl -fsSL https://ollama.com/install.sh | sh
systemctl start ollama
```

2. Großes Sprachmodell herunterladen:

```sh
ollama pull smollm2:135m
```

3. Openweb-UI mit Podman ausführen:

```sh
podman run -d --name openwebui -p 3000:8080 ghcr.io/open-webui/open-webui:main
```

4. Evtl. Verbindungseinstellungen in Openweb-UI anpassen:

![height:50px](../assets/oi_conn.png) 

----

![bg cover](../assets/confused_mark.webp)

# Soviel zur Theorie! Nun zur Praxis.

<style scoped>
h1 {
  font-size: 60px;
  color: #F6F5F4;
  background: #100F0F;
  text-align: center;
}
</style>

----

# Demo

<!-- A series of pictures with the same height on the right side requireing
60% of space. The position (side) only has to specified once. -->
![bg right:60% h:400px](../assets/oi_signup.jpeg)
![bg h:400px](../assets/oi_login.jpeg)
![bg h:400px](../assets/oi_chat.jpeg)

<!-- Picture (qr-code) on the left "position" is not specified, so the picture
is rendered in at the "foreground". -->
![contain](../assets/qrcode.png)

----

# Ausblick in die Zukunft

![bg left:33%](../assets/prof_dr_ommer.avif)

* Demokratisierung durch effizientere KI-Modelle, **Weniger ist Mehr**
* Beispiel: Stable Diffusion (Nominiert für den Deutschen Zukunftspreis 2024)
* Shareholder getriebene Finanzierung wird nicht ausreichen
 
> *Wenn jeder in der Lage ist etwas zum Entwicklungsprozess beizutragen sind die Chancen auf Erfolg größer* — **Prof. Dr. Björn Ommer**

<style scoped>
blockquote {
  font-size: 20px;
}
</style>

----

<!-- Blurred picture as a background. Pictures from the internet can also be
used. -->
![bg cover blur](https://images.pexels.com/photos/17483873/pexels-photo-17483873/free-photo-of-an-artist-s-illustration-of-artificial-intelligence-ai-this-image-was-inspired-neural-networks-used-in-deep-learning-it-was-created-by-novoto-studio-as-part-of-the-visualising-ai-proje.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2)

# Fazit

* **Gibt es eine alternative zu Big-Tech?**
* **JA**, KI unabhängig von Internetgiganten zu verwenden um so die Innovation in diesem Feld voranzutreiben muss auch ein Weg sein
* Einstieg in die Technologie mit den vorgestellten Tools
* Aktive Community in diesem Bereich z.B. **Huggingface.com**
