## FontBakery report

fontbakery version: 0.12.8



## Experimental checks

These won't break the CI job for now, but will become effective after some time if nobody raises any concern.


<details><summary>[2] Fustat[wght].ttf</summary>
<div>
<details>
    <summary>🔥 <b>FAIL</b> Ensure 'smcp' (small caps) lookups are defined before ligature lookups in the 'GSUB' table. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/universal.html#"></a></summary>
    <div>







* 🔥 **FAIL** <p>'smcp' or 'liga' lookups not found in GSUB table.</p>
 [code: missing-lookups]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Validate size, and resolution of article images, and ensure article page has minimum length and includes visual assets. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.article.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>Family metadata at fonts/variable does not have an article.</p>
 [code: lacks-article]



</div>
</details>
</div>
</details>




## All other checks



<details><summary>[7] Fustat[wght].ttf</summary>
<div>
<details>
    <summary>🔥 <b>FAIL</b> Do we have the latest version of FontBakery installed? <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/universal.fontbakery.html#"></a></summary>
    <div>







* 🔥 **FAIL** <p>Current FontBakery version is 0.12.8, while a newer 0.12.9 is already available. Please upgrade it with 'pip install -U fontbakery'</p>
 [code: outdated-fontbakery]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check font contains no unreachable glyphs <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/universal.glyphset.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>The following glyphs could not be reached by codepoint or substitution rules:</p>
<pre><code>- doubleverticalbarbelowar

- uni0307.i

- uni0308.narrow
</code></pre>
 [code: unreachable-glyphs]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Glyph names are all valid? <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/universal.glyphnames.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>The following glyph names may be too long for some legacy systems which may expect a maximum 31-characters length limit:
twodotshorizontalabove_tahabovear, twodotshorizontalbelow_tahabovear and twodotshorizontalcenter_tahabovear</p>
 [code: legacy-long-names]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Are there any misaligned on-curve points? <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/outline.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>The following glyphs have on-curve points which have potentially incorrect y coordinates:</p>
<pre><code>* g (U+0067): X=404.5,Y=-2.0 (should be at baseline 0?)

* g (U+0067): X=419.5,Y=501.5 (should be at x-height 500?)

* gbreve (U+011F): X=404.5,Y=-2.0 (should be at baseline 0?)

* uni0123 (U+0123): X=404.5,Y=-2.0 (should be at baseline 0?)

* gdotaccent (U+0121): X=404.5,Y=-2.0 (should be at baseline 0?)

* uni0627.fina: X=70.0,Y=1.0 (should be at baseline 0?)

* uni0627.short.fina: X=70.0,Y=1.0 (should be at baseline 0?)

* uni08C0 (U+08C0): X=382.0,Y=701.0 (should be at cap-height 700?)

* uni08C0 (U+08C0): X=428.0,Y=701.0 (should be at cap-height 700?)

* uni08C0 (U+08C0): X=489.0,Y=701.0 (should be at cap-height 700?)

* uni08C0 (U+08C0): X=534.0,Y=701.0 (should be at cap-height 700?)

* uni06B4 (U+06B4): X=190.0,Y=699.0 (should be at cap-height 700?)

* uni06B4 (U+06B4): X=190.0,Y=699.0 (should be at cap-height 700?)

* uni06B8 (U+06B8): X=287.0,Y=-422.0 (should be at descender -420?)

* uni06440644065106700647: X=593.0,Y=1001.0 (should be at ascender 1000?)

* uni066C (U+066C): X=208.0,Y=699.0 (should be at cap-height 700?)

* uni066C.tf: X=377.0,Y=699.0 (should be at cap-height 700?)

* uni06F5 (U+06F5): X=231.0,Y=702.0 (should be at cap-height 700?)

* uni06F4.locl.numr: X=233.0,Y=700.5 (should be at cap-height 700?)

* uni06F7.locl.numr: X=203.0,Y=702.0 (should be at cap-height 700?)

* uni0669.numr: X=85.5,Y=698.0 (should be at cap-height 700?)

* uni06F5.subs: X=195.0,Y=2.0 (should be at baseline 0?)

* uni06F7.locl.subs: X=185.0,Y=1.0 (should be at baseline 0?)

* uni0663.sups: X=245.0,Y=701.0 (should be at cap-height 700?)

* uni06F5.tf: X=212.0,Y=702.0 (should be at cap-height 700?)

* one.dnom: X=175.0,Y=-2.0 (should be at baseline 0?)

* one.dnom: X=250.0,Y=-2.0 (should be at baseline 0?)

* two.dnom: X=52.0,Y=-2.0 (should be at baseline 0?)

* two.dnom: X=306.0,Y=-2.0 (should be at baseline 0?)

* four.dnom: X=198.0,Y=-2.0 (should be at baseline 0?)

* four.dnom: X=273.0,Y=-2.0 (should be at baseline 0?)

* seven.dnom: X=92.0,Y=-2.0 (should be at baseline 0?)

* seven.dnom: X=92.0,Y=2.0 (should be at baseline 0?)

* seven.dnom: X=167.0,Y=-2.0 (should be at baseline 0?)

* one.numr: X=177.0,Y=702.0 (should be at cap-height 700?)

* one.numr: X=250.0,Y=702.0 (should be at cap-height 700?)

* four.numr: X=201.0,Y=702.0 (should be at cap-height 700?)

* four.numr: X=273.0,Y=702.0 (should be at cap-height 700?)

* five.numr: X=74.0,Y=702.0 (should be at cap-height 700?)

* five.numr: X=288.0,Y=702.0 (should be at cap-height 700?)

* seven.numr: X=58.0,Y=702.0 (should be at cap-height 700?)

* seven.numr: X=293.0,Y=702.0 (should be at cap-height 700?)

* onehalf (U+00BD): X=177.0,Y=702.0 (should be at cap-height 700?)

* onehalf (U+00BD): X=250.0,Y=702.0 (should be at cap-height 700?)

* onehalf (U+00BD): X=485.0,Y=-2.0 (should be at baseline 0?)

* onehalf (U+00BD): X=739.0,Y=-2.0 (should be at baseline 0?)

* uni2153 (U+2153): X=177.0,Y=702.0 (should be at cap-height 700?)

* uni2153 (U+2153): X=250.0,Y=702.0 (should be at cap-height 700?)

* onequarter (U+00BC): X=177.0,Y=702.0 (should be at cap-height 700?)

* onequarter (U+00BC): X=250.0,Y=702.0 (should be at cap-height 700?)

* onequarter (U+00BC): X=581.0,Y=-2.0 (should be at baseline 0?)

* onequarter (U+00BC): X=656.0,Y=-2.0 (should be at baseline 0?)

* threequarters (U+00BE): X=601.0,Y=-2.0 (should be at baseline 0?)

* threequarters (U+00BE): X=676.0,Y=-2.0 (should be at baseline 0?)

* oneeighth (U+215B): X=177.0,Y=702.0 (should be at cap-height 700?)

* oneeighth (U+215B): X=250.0,Y=702.0 (should be at cap-height 700?)

* fiveeighths (U+215D): X=74.0,Y=702.0 (should be at cap-height 700?)

* fiveeighths (U+215D): X=288.0,Y=702.0 (should be at cap-height 700?)

* seveneighths (U+215E): X=58.0,Y=702.0 (should be at cap-height 700?)

* seveneighths (U+215E): X=293.0,Y=702.0 (should be at cap-height 700?)

* two.subs: X=225.0,Y=-2.0 (should be at baseline 0?)

* nine.subs: X=161.0,Y=1.0 (should be at baseline 0?)

* parenleft (U+0028): X=342.0,Y=702.0 (should be at cap-height 700?)

* parenright (U+0029): X=25.0,Y=702.0 (should be at cap-height 700?)

* questiondown (U+00BF): X=390.0,Y=1.0 (should be at baseline 0?)

* quotesinglbase (U+201A): X=121.0,Y=-1.0 (should be at baseline 0?)

* quotedblbase (U+201E): X=278.0,Y=-1.0 (should be at baseline 0?)

* quotedblbase (U+201E): X=121.0,Y=-1.0 (should be at baseline 0?)

* uniFDF2 (U+FDF2): X=593.0,Y=1001.0 (should be at ascender 1000?)

* section (U+00A7): X=126.0,Y=-1.0 (should be at baseline 0?)

* uni0650 (U+0650): X=0.0,Y=-1.0 (should be at baseline 0?)
</code></pre>
 [code: found-misalignments]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check for codepoints not covered by METADATA subsets. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.subsets.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>The following codepoints supported by the font are not covered by
any subsets defined in the font's metadata file, and will never
be served. You can solve this by either manually adding additional
subset declarations to METADATA.pb, or by editing the glyphset
definitions.</p>
<ul>
<li>U+02C7 CARON: try adding one of: yi, tifinagh, canadian-aboriginal</li>
<li>U+02D8 BREVE: try adding one of: yi, canadian-aboriginal</li>
<li>U+02D9 DOT ABOVE: try adding one of: yi, canadian-aboriginal</li>
<li>U+02DB OGONEK: try adding one of: yi, canadian-aboriginal</li>
<li>U+02DD DOUBLE ACUTE ACCENT: not included in any glyphset definition</li>
<li>U+0302 COMBINING CIRCUMFLEX ACCENT: try adding one of: cherokee, coptic, tifinagh, math</li>
<li>U+0306 COMBINING BREVE: try adding one of: old-permic, tifinagh</li>
<li>U+0307 COMBINING DOT ABOVE: try adding one of: tai-le, old-permic, malayalam, coptic, syriac, math, canadian-aboriginal, tifinagh</li>
<li>U+030A COMBINING RING ABOVE: try adding syriac</li>
<li>U+030B COMBINING DOUBLE ACUTE ACCENT: try adding one of: cherokee, osage</li>
<li>U+030C COMBINING CARON: try adding one of: tai-le, cherokee</li>
<li>U+0312 COMBINING TURNED COMMA ABOVE: not included in any glyphset definition</li>
<li>U+0326 COMBINING COMMA BELOW: not included in any glyphset definition</li>
<li>U+0327 COMBINING CEDILLA: not included in any glyphset definition</li>
<li>U+0328 COMBINING OGONEK: not included in any glyphset definition</li>
<li>U+0335 COMBINING SHORT STROKE OVERLAY: not included in any glyphset definition</li>
<li>U+0337 COMBINING SHORT SOLIDUS OVERLAY: not included in any glyphset definition</li>
<li>U+0338 COMBINING LONG SOLIDUS OVERLAY: not included in any glyphset definition</li>
<li>U+0609 ARABIC-INDIC PER MILLE SIGN: try adding arabic</li>
<li>U+060C ARABIC COMMA: try adding one of: thaana, yezidi, hanifi-rohingya, syriac, nko, arabic</li>
<li>U+061B ARABIC SEMICOLON: try adding one of: thaana, yezidi, hanifi-rohingya, syriac, nko, arabic</li>
<li>U+061F ARABIC QUESTION MARK: try adding one of: thaana, adlam, yezidi, hanifi-rohingya, syriac, nko, arabic</li>
<li>U+0620 ARABIC LETTER KASHMIRI YEH: try adding arabic</li>
<li>U+0621 ARABIC LETTER HAMZA: try adding one of: syriac, arabic</li>
<li>U+0622 ARABIC LETTER ALEF WITH MADDA ABOVE: try adding arabic</li>
<li>U+0623 ARABIC LETTER ALEF WITH HAMZA ABOVE: try adding arabic</li>
<li>U+0624 ARABIC LETTER WAW WITH HAMZA ABOVE: try adding arabic</li>
<li>U+0625 ARABIC LETTER ALEF WITH HAMZA BELOW: try adding arabic</li>
<li>U+0626 ARABIC LETTER YEH WITH HAMZA ABOVE: try adding arabic</li>
<li>U+0627 ARABIC LETTER ALEF: try adding one of: indic-siyaq-numbers, arabic</li>
<li>U+0628 ARABIC LETTER BEH: try adding arabic</li>
<li>U+0629 ARABIC LETTER TEH MARBUTA: try adding arabic</li>
<li>U+062A ARABIC LETTER TEH: try adding arabic</li>
<li>U+062B ARABIC LETTER THEH: try adding arabic</li>
<li>U+062C ARABIC LETTER JEEM: try adding arabic</li>
<li>U+062D ARABIC LETTER HAH: try adding arabic</li>
<li>U+062E ARABIC LETTER KHAH: try adding arabic</li>
<li>U+062F ARABIC LETTER DAL: try adding arabic</li>
<li>U+0630 ARABIC LETTER THAL: try adding arabic</li>
<li>U+0631 ARABIC LETTER REH: try adding arabic</li>
<li>U+0632 ARABIC LETTER ZAIN: try adding arabic</li>
<li>U+0633 ARABIC LETTER SEEN: try adding arabic</li>
<li>U+0634 ARABIC LETTER SHEEN: try adding arabic</li>
<li>U+0635 ARABIC LETTER SAD: try adding arabic</li>
<li>U+0636 ARABIC LETTER DAD: try adding arabic</li>
<li>U+0637 ARABIC LETTER TAH: try adding arabic</li>
<li>U+0638 ARABIC LETTER ZAH: try adding arabic</li>
<li>U+0639 ARABIC LETTER AIN: try adding arabic</li>
<li>U+063A ARABIC LETTER GHAIN: try adding arabic</li>
<li>U+063B ARABIC LETTER KEHEH WITH TWO DOTS ABOVE: try adding arabic</li>
<li>U+063C ARABIC LETTER KEHEH WITH THREE DOTS BELOW: try adding arabic</li>
<li>U+063D ARABIC LETTER FARSI YEH WITH INVERTED V: try adding arabic</li>
<li>U+063E ARABIC LETTER FARSI YEH WITH TWO DOTS ABOVE: try adding arabic</li>
<li>U+063F ARABIC LETTER FARSI YEH WITH THREE DOTS ABOVE: try adding arabic</li>
<li>U+0640 ARABIC TATWEEL: try adding one of: manichaean, old-uyghur, psalter-pahlavi, adlam, hanifi-rohingya, syriac, sogdian, mandaic, arabic</li>
<li>U+0641 ARABIC LETTER FEH: try adding arabic</li>
<li>U+0642 ARABIC LETTER QAF: try adding arabic</li>
<li>U+0643 ARABIC LETTER KAF: try adding arabic</li>
<li>U+0644 ARABIC LETTER LAM: try adding arabic</li>
<li>U+0645 ARABIC LETTER MEEM: try adding arabic</li>
<li>U+0646 ARABIC LETTER NOON: try adding arabic</li>
<li>U+0647 ARABIC LETTER HEH: try adding arabic</li>
<li>U+0648 ARABIC LETTER WAW: try adding arabic</li>
<li>U+0649 ARABIC LETTER ALEF MAKSURA: try adding arabic</li>
<li>U+064A ARABIC LETTER YEH: try adding arabic</li>
<li>U+064B ARABIC FATHATAN: try adding one of: syriac, arabic</li>
<li>U+064C ARABIC DAMMATAN: try adding one of: syriac, arabic</li>
<li>U+064D ARABIC KASRATAN: try adding one of: syriac, arabic</li>
<li>U+064E ARABIC FATHA: try adding one of: syriac, arabic</li>
<li>U+064F ARABIC DAMMA: try adding one of: syriac, arabic</li>
<li>U+0650 ARABIC KASRA: try adding one of: syriac, arabic</li>
<li>U+0651 ARABIC SHADDA: try adding one of: syriac, arabic</li>
<li>U+0652 ARABIC SUKUN: try adding one of: syriac, arabic</li>
<li>U+0653 ARABIC MADDAH ABOVE: try adding one of: syriac, arabic</li>
<li>U+0654 ARABIC HAMZA ABOVE: try adding one of: syriac, arabic</li>
<li>U+0655 ARABIC HAMZA BELOW: try adding one of: syriac, arabic</li>
<li>U+0656 ARABIC SUBSCRIPT ALEF: try adding arabic</li>
<li>U+065A ARABIC VOWEL SIGN SMALL V ABOVE: try adding arabic</li>
<li>U+065B ARABIC VOWEL SIGN INVERTED SMALL V ABOVE: try adding arabic</li>
<li>U+0660 ARABIC-INDIC DIGIT ZERO: try adding one of: thaana, indic-siyaq-numbers, yezidi, hanifi-rohingya, syriac, arabic</li>
<li>U+0661 ARABIC-INDIC DIGIT ONE: try adding one of: thaana, indic-siyaq-numbers, yezidi, syriac, arabic</li>
<li>U+0662 ARABIC-INDIC DIGIT TWO: try adding one of: thaana, indic-siyaq-numbers, yezidi, syriac, arabic</li>
<li>U+0663 ARABIC-INDIC DIGIT THREE: try adding one of: thaana, indic-siyaq-numbers, yezidi, syriac, arabic</li>
<li>U+0664 ARABIC-INDIC DIGIT FOUR: try adding one of: thaana, indic-siyaq-numbers, yezidi, syriac, arabic</li>
<li>U+0665 ARABIC-INDIC DIGIT FIVE: try adding one of: thaana, indic-siyaq-numbers, yezidi, syriac, arabic</li>
<li>U+0666 ARABIC-INDIC DIGIT SIX: try adding one of: thaana, indic-siyaq-numbers, yezidi, syriac, arabic</li>
<li>U+0667 ARABIC-INDIC DIGIT SEVEN: try adding one of: thaana, indic-siyaq-numbers, yezidi, syriac, arabic</li>
<li>U+0668 ARABIC-INDIC DIGIT EIGHT: try adding one of: thaana, indic-siyaq-numbers, yezidi, syriac, arabic</li>
<li>U+0669 ARABIC-INDIC DIGIT NINE: try adding one of: thaana, indic-siyaq-numbers, yezidi, syriac, arabic</li>
<li>U+066A ARABIC PERCENT SIGN: try adding one of: thaana, nko, syriac, arabic</li>
<li>U+066B ARABIC DECIMAL SEPARATOR: try adding one of: thaana, syriac, arabic</li>
<li>U+066C ARABIC THOUSANDS SEPARATOR: try adding one of: thaana, syriac, arabic</li>
<li>U+066D ARABIC FIVE POINTED STAR: try adding arabic</li>
<li>U+066E ARABIC LETTER DOTLESS BEH: try adding arabic</li>
<li>U+066F ARABIC LETTER DOTLESS QAF: try adding arabic</li>
<li>U+0670 ARABIC LETTER SUPERSCRIPT ALEF: try adding one of: syriac, arabic</li>
<li>U+0671 ARABIC LETTER ALEF WASLA: try adding arabic</li>
<li>U+0679 ARABIC LETTER TTEH: try adding arabic</li>
<li>U+067A ARABIC LETTER TTEHEH: try adding arabic</li>
<li>U+067B ARABIC LETTER BEEH: try adding arabic</li>
<li>U+067C ARABIC LETTER TEH WITH RING: try adding arabic</li>
<li>U+067D ARABIC LETTER TEH WITH THREE DOTS ABOVE DOWNWARDS: try adding arabic</li>
<li>U+067E ARABIC LETTER PEH: try adding arabic</li>
<li>U+067F ARABIC LETTER TEHEH: try adding arabic</li>
<li>U+0680 ARABIC LETTER BEHEH: try adding arabic</li>
<li>U+0681 ARABIC LETTER HAH WITH HAMZA ABOVE: try adding arabic</li>
<li>U+0682 ARABIC LETTER HAH WITH TWO DOTS VERTICAL ABOVE: try adding arabic</li>
<li>U+0683 ARABIC LETTER NYEH: try adding arabic</li>
<li>U+0684 ARABIC LETTER DYEH: try adding arabic</li>
<li>U+0685 ARABIC LETTER HAH WITH THREE DOTS ABOVE: try adding arabic</li>
<li>U+0686 ARABIC LETTER TCHEH: try adding arabic</li>
<li>U+0687 ARABIC LETTER TCHEHEH: try adding arabic</li>
<li>U+0688 ARABIC LETTER DDAL: try adding arabic</li>
<li>U+0689 ARABIC LETTER DAL WITH RING: try adding arabic</li>
<li>U+068A ARABIC LETTER DAL WITH DOT BELOW: try adding arabic</li>
<li>U+068B ARABIC LETTER DAL WITH DOT BELOW AND SMALL TAH: try adding arabic</li>
<li>U+068C ARABIC LETTER DAHAL: try adding arabic</li>
<li>U+068D ARABIC LETTER DDAHAL: try adding arabic</li>
<li>U+068E ARABIC LETTER DUL: try adding arabic</li>
<li>U+068F ARABIC LETTER DAL WITH THREE DOTS ABOVE DOWNWARDS: try adding arabic</li>
<li>U+0690 ARABIC LETTER DAL WITH FOUR DOTS ABOVE: try adding arabic</li>
<li>U+0691 ARABIC LETTER RREH: try adding arabic</li>
<li>U+0692 ARABIC LETTER REH WITH SMALL V: try adding arabic</li>
<li>U+0693 ARABIC LETTER REH WITH RING: try adding arabic</li>
<li>U+0694 ARABIC LETTER REH WITH DOT BELOW: try adding arabic</li>
<li>U+0695 ARABIC LETTER REH WITH SMALL V BELOW: try adding arabic</li>
<li>U+0696 ARABIC LETTER REH WITH DOT BELOW AND DOT ABOVE: try adding arabic</li>
<li>U+0697 ARABIC LETTER REH WITH TWO DOTS ABOVE: try adding arabic</li>
<li>U+0698 ARABIC LETTER JEH: try adding arabic</li>
<li>U+0699 ARABIC LETTER REH WITH FOUR DOTS ABOVE: try adding arabic</li>
<li>U+069A ARABIC LETTER SEEN WITH DOT BELOW AND DOT ABOVE: try adding arabic</li>
<li>U+069B ARABIC LETTER SEEN WITH THREE DOTS BELOW: try adding arabic</li>
<li>U+069C ARABIC LETTER SEEN WITH THREE DOTS BELOW AND THREE DOTS ABOVE: try adding arabic</li>
<li>U+069D ARABIC LETTER SAD WITH TWO DOTS BELOW: try adding arabic</li>
<li>U+069E ARABIC LETTER SAD WITH THREE DOTS ABOVE: try adding arabic</li>
<li>U+069F ARABIC LETTER TAH WITH THREE DOTS ABOVE: try adding arabic</li>
<li>U+06A0 ARABIC LETTER AIN WITH THREE DOTS ABOVE: try adding arabic</li>
<li>U+06A1 ARABIC LETTER DOTLESS FEH: try adding arabic</li>
<li>U+06A2 ARABIC LETTER FEH WITH DOT MOVED BELOW: try adding arabic</li>
<li>U+06A3 ARABIC LETTER FEH WITH DOT BELOW: try adding arabic</li>
<li>U+06A4 ARABIC LETTER VEH: try adding arabic</li>
<li>U+06A5 ARABIC LETTER FEH WITH THREE DOTS BELOW: try adding arabic</li>
<li>U+06A6 ARABIC LETTER PEHEH: try adding arabic</li>
<li>U+06A7 ARABIC LETTER QAF WITH DOT ABOVE: try adding arabic</li>
<li>U+06A8 ARABIC LETTER QAF WITH THREE DOTS ABOVE: try adding arabic</li>
<li>U+06A9 ARABIC LETTER KEHEH: try adding arabic</li>
<li>U+06AA ARABIC LETTER SWASH KAF: try adding arabic</li>
<li>U+06AB ARABIC LETTER KAF WITH RING: try adding arabic</li>
<li>U+06AC ARABIC LETTER KAF WITH DOT ABOVE: try adding arabic</li>
<li>U+06AD ARABIC LETTER NG: try adding arabic</li>
<li>U+06AE ARABIC LETTER KAF WITH THREE DOTS BELOW: try adding arabic</li>
<li>U+06AF ARABIC LETTER GAF: try adding arabic</li>
<li>U+06B0 ARABIC LETTER GAF WITH RING: try adding arabic</li>
<li>U+06B1 ARABIC LETTER NGOEH: try adding arabic</li>
<li>U+06B2 ARABIC LETTER GAF WITH TWO DOTS BELOW: try adding arabic</li>
<li>U+06B3 ARABIC LETTER GUEH: try adding arabic</li>
<li>U+06B4 ARABIC LETTER GAF WITH THREE DOTS ABOVE: try adding arabic</li>
<li>U+06B5 ARABIC LETTER LAM WITH SMALL V: try adding arabic</li>
<li>U+06B6 ARABIC LETTER LAM WITH DOT ABOVE: try adding arabic</li>
<li>U+06B7 ARABIC LETTER LAM WITH THREE DOTS ABOVE: try adding arabic</li>
<li>U+06B8 ARABIC LETTER LAM WITH THREE DOTS BELOW: try adding arabic</li>
<li>U+06B9 ARABIC LETTER NOON WITH DOT BELOW: try adding arabic</li>
<li>U+06BA ARABIC LETTER NOON GHUNNA: try adding arabic</li>
<li>U+06BB ARABIC LETTER RNOON: try adding arabic</li>
<li>U+06BC ARABIC LETTER NOON WITH RING: try adding arabic</li>
<li>U+06BD ARABIC LETTER NOON WITH THREE DOTS ABOVE: try adding arabic</li>
<li>U+06BE ARABIC LETTER HEH DOACHASHMEE: try adding arabic</li>
<li>U+06BF ARABIC LETTER TCHEH WITH DOT ABOVE: try adding arabic</li>
<li>U+06C0 ARABIC LETTER HEH WITH YEH ABOVE: try adding arabic</li>
<li>U+06C1 ARABIC LETTER HEH GOAL: try adding arabic</li>
<li>U+06C2 ARABIC LETTER HEH GOAL WITH HAMZA ABOVE: try adding arabic</li>
<li>U+06C3 ARABIC LETTER TEH MARBUTA GOAL: try adding arabic</li>
<li>U+06C4 ARABIC LETTER WAW WITH RING: try adding arabic</li>
<li>U+06C6 ARABIC LETTER OE: try adding arabic</li>
<li>U+06C7 ARABIC LETTER U: try adding arabic</li>
<li>U+06C8 ARABIC LETTER YU: try adding arabic</li>
<li>U+06C9 ARABIC LETTER KIRGHIZ YU: try adding arabic</li>
<li>U+06CA ARABIC LETTER WAW WITH TWO DOTS ABOVE: try adding arabic</li>
<li>U+06CB ARABIC LETTER VE: try adding arabic</li>
<li>U+06CC ARABIC LETTER FARSI YEH: try adding arabic</li>
<li>U+06CD ARABIC LETTER YEH WITH TAIL: try adding arabic</li>
<li>U+06CE ARABIC LETTER YEH WITH SMALL V: try adding arabic</li>
<li>U+06CF ARABIC LETTER WAW WITH DOT ABOVE: try adding arabic</li>
<li>U+06D0 ARABIC LETTER E: try adding arabic</li>
<li>U+06D2 ARABIC LETTER YEH BARREE: try adding arabic</li>
<li>U+06D3 ARABIC LETTER YEH BARREE WITH HAMZA ABOVE: try adding arabic</li>
<li>U+06D4 ARABIC FULL STOP: try adding one of: hanifi-rohingya, yezidi, arabic</li>
<li>U+06D5 ARABIC LETTER AE: try adding arabic</li>
<li>U+06EE ARABIC LETTER DAL WITH INVERTED V: try adding arabic</li>
<li>U+06EF ARABIC LETTER REH WITH INVERTED V: try adding arabic</li>
<li>U+06F0 EXTENDED ARABIC-INDIC DIGIT ZERO: try adding one of: indic-siyaq-numbers, arabic</li>
<li>U+06F1 EXTENDED ARABIC-INDIC DIGIT ONE: try adding one of: indic-siyaq-numbers, arabic</li>
<li>U+06F2 EXTENDED ARABIC-INDIC DIGIT TWO: try adding one of: indic-siyaq-numbers, arabic</li>
<li>U+06F3 EXTENDED ARABIC-INDIC DIGIT THREE: try adding one of: indic-siyaq-numbers, arabic</li>
<li>U+06F4 EXTENDED ARABIC-INDIC DIGIT FOUR: try adding one of: indic-siyaq-numbers, arabic</li>
<li>U+06F5 EXTENDED ARABIC-INDIC DIGIT FIVE: try adding one of: indic-siyaq-numbers, arabic</li>
<li>U+06F6 EXTENDED ARABIC-INDIC DIGIT SIX: try adding one of: indic-siyaq-numbers, arabic</li>
<li>U+06F7 EXTENDED ARABIC-INDIC DIGIT SEVEN: try adding one of: indic-siyaq-numbers, arabic</li>
<li>U+06F8 EXTENDED ARABIC-INDIC DIGIT EIGHT: try adding one of: indic-siyaq-numbers, arabic</li>
<li>U+06F9 EXTENDED ARABIC-INDIC DIGIT NINE: try adding one of: indic-siyaq-numbers, arabic</li>
<li>U+06FA ARABIC LETTER SHEEN WITH DOT BELOW: try adding arabic</li>
<li>U+06FB ARABIC LETTER DAD WITH DOT BELOW: try adding arabic</li>
<li>U+06FC ARABIC LETTER GHAIN WITH DOT BELOW: try adding arabic</li>
<li>U+06FD ARABIC SIGN SINDHI AMPERSAND: try adding arabic</li>
<li>U+06FE ARABIC SIGN SINDHI POSTPOSITION MEN: try adding arabic</li>
<li>U+06FF ARABIC LETTER HEH WITH INVERTED V: try adding arabic</li>
<li>U+0751 ARABIC LETTER BEH WITH DOT BELOW AND THREE DOTS ABOVE: try adding arabic</li>
<li>U+0752 ARABIC LETTER BEH WITH THREE DOTS POINTING UPWARDS BELOW: try adding arabic</li>
<li>U+0753 ARABIC LETTER BEH WITH THREE DOTS POINTING UPWARDS BELOW AND TWO DOTS ABOVE: try adding arabic</li>
<li>U+0754 ARABIC LETTER BEH WITH TWO DOTS BELOW AND DOT ABOVE: try adding arabic</li>
<li>U+0755 ARABIC LETTER BEH WITH INVERTED SMALL V BELOW: try adding arabic</li>
<li>U+0756 ARABIC LETTER BEH WITH SMALL V: try adding arabic</li>
<li>U+0757 ARABIC LETTER HAH WITH TWO DOTS ABOVE: try adding arabic</li>
<li>U+0758 ARABIC LETTER HAH WITH THREE DOTS POINTING UPWARDS BELOW: try adding arabic</li>
<li>U+0759 ARABIC LETTER DAL WITH TWO DOTS VERTICALLY BELOW AND SMALL TAH: try adding arabic</li>
<li>U+075A ARABIC LETTER DAL WITH INVERTED SMALL V BELOW: try adding arabic</li>
<li>U+075C ARABIC LETTER SEEN WITH FOUR DOTS ABOVE: try adding arabic</li>
<li>U+075D ARABIC LETTER AIN WITH TWO DOTS ABOVE: try adding arabic</li>
<li>U+075E ARABIC LETTER AIN WITH THREE DOTS POINTING DOWNWARDS ABOVE: try adding arabic</li>
<li>U+075F ARABIC LETTER AIN WITH TWO DOTS VERTICALLY ABOVE: try adding arabic</li>
<li>U+0760 ARABIC LETTER FEH WITH TWO DOTS BELOW: try adding arabic</li>
<li>U+0761 ARABIC LETTER FEH WITH THREE DOTS POINTING UPWARDS BELOW: try adding arabic</li>
<li>U+0762 ARABIC LETTER KEHEH WITH DOT ABOVE: try adding arabic</li>
<li>U+0763 ARABIC LETTER KEHEH WITH THREE DOTS ABOVE: try adding arabic</li>
<li>U+0764 ARABIC LETTER KEHEH WITH THREE DOTS POINTING UPWARDS BELOW: try adding arabic</li>
<li>U+0765 ARABIC LETTER MEEM WITH DOT ABOVE: try adding arabic</li>
<li>U+0766 ARABIC LETTER MEEM WITH DOT BELOW: try adding arabic</li>
<li>U+0767 ARABIC LETTER NOON WITH TWO DOTS BELOW: try adding arabic</li>
<li>U+0768 ARABIC LETTER NOON WITH SMALL TAH: try adding arabic</li>
<li>U+0769 ARABIC LETTER NOON WITH SMALL V: try adding arabic</li>
<li>U+076B ARABIC LETTER REH WITH TWO DOTS VERTICALLY ABOVE: try adding arabic</li>
<li>U+076C ARABIC LETTER REH WITH HAMZA ABOVE: try adding arabic</li>
<li>U+076D ARABIC LETTER SEEN WITH TWO DOTS VERTICALLY ABOVE: try adding arabic</li>
<li>U+076E ARABIC LETTER HAH WITH SMALL ARABIC LETTER TAH BELOW: try adding arabic</li>
<li>U+076F ARABIC LETTER HAH WITH SMALL ARABIC LETTER TAH AND TWO DOTS: try adding arabic</li>
<li>U+0770 ARABIC LETTER SEEN WITH SMALL ARABIC LETTER TAH AND TWO DOTS: try adding arabic</li>
<li>U+0771 ARABIC LETTER REH WITH SMALL ARABIC LETTER TAH AND TWO DOTS: try adding arabic</li>
<li>U+0772 ARABIC LETTER HAH WITH SMALL ARABIC LETTER TAH ABOVE: try adding arabic</li>
<li>U+077E ARABIC LETTER SEEN WITH INVERTED V: try adding arabic</li>
<li>U+077F ARABIC LETTER KAF WITH TWO DOTS ABOVE: try adding arabic</li>
<li>U+0889 ARABIC LETTER NOON WITH INVERTED SMALL V: try adding arabic</li>
<li>U+088A ARABIC LETTER HAH WITH INVERTED SMALL V BELOW: try adding arabic</li>
<li>U+088B ARABIC LETTER TAH WITH DOT BELOW: try adding arabic</li>
<li>U+088C ARABIC LETTER TAH WITH THREE DOTS BELOW: try adding arabic</li>
<li>U+088D ARABIC LETTER KEHEH WITH TWO DOTS VERTICALLY BELOW: try adding arabic</li>
<li>U+08A0 ARABIC LETTER BEH WITH SMALL V BELOW: try adding arabic</li>
<li>U+08A1 ARABIC LETTER BEH WITH HAMZA ABOVE: try adding arabic</li>
<li>U+08A2 ARABIC LETTER JEEM WITH TWO DOTS ABOVE: try adding arabic</li>
<li>U+08A3 ARABIC LETTER TAH WITH TWO DOTS ABOVE: try adding arabic</li>
<li>U+08A4 ARABIC LETTER FEH WITH DOT BELOW AND THREE DOTS ABOVE: try adding arabic</li>
<li>U+08A5 ARABIC LETTER QAF WITH DOT BELOW: try adding arabic</li>
<li>U+08A7 ARABIC LETTER MEEM WITH THREE DOTS ABOVE: try adding arabic</li>
<li>U+08A8 ARABIC LETTER YEH WITH TWO DOTS BELOW AND HAMZA ABOVE: try adding arabic</li>
<li>U+08A9 ARABIC LETTER YEH WITH TWO DOTS BELOW AND DOT ABOVE: try adding arabic</li>
<li>U+08AB ARABIC LETTER WAW WITH DOT WITHIN: try adding arabic</li>
<li>U+08AE ARABIC LETTER DAL WITH THREE DOTS BELOW: try adding arabic</li>
<li>U+08AF ARABIC LETTER SAD WITH THREE DOTS BELOW: try adding arabic</li>
<li>U+08B0 ARABIC LETTER GAF WITH INVERTED STROKE: try adding arabic</li>
<li>U+08B2 ARABIC LETTER ZAIN WITH INVERTED V ABOVE: try adding arabic</li>
<li>U+08B3 ARABIC LETTER AIN WITH THREE DOTS BELOW: try adding arabic</li>
<li>U+08B4 ARABIC LETTER KAF WITH DOT BELOW: try adding arabic</li>
<li>U+08B5 ARABIC LETTER QAF WITH DOT BELOW AND NO DOTS ABOVE: try adding arabic</li>
<li>U+08BB ARABIC LETTER AFRICAN FEH: try adding arabic</li>
<li>U+08BC ARABIC LETTER AFRICAN QAF: try adding arabic</li>
<li>U+08BD ARABIC LETTER AFRICAN NOON: try adding arabic</li>
<li>U+08BE ARABIC LETTER PEH WITH SMALL V: try adding arabic</li>
<li>U+08BF ARABIC LETTER TEH WITH SMALL V: try adding arabic</li>
<li>U+08C0 ARABIC LETTER TTEH WITH SMALL V: try adding arabic</li>
<li>U+08C1 ARABIC LETTER TCHEH WITH SMALL V: try adding arabic</li>
<li>U+08C2 ARABIC LETTER KEHEH WITH SMALL V: try adding arabic</li>
<li>U+08C3 ARABIC LETTER GHAIN WITH THREE DOTS ABOVE: try adding arabic</li>
<li>U+08C4 ARABIC LETTER AFRICAN QAF WITH THREE DOTS ABOVE: try adding arabic</li>
<li>U+08C5 ARABIC LETTER JEEM WITH THREE DOTS ABOVE: try adding arabic</li>
<li>U+08C6 ARABIC LETTER JEEM WITH THREE DOTS BELOW: try adding arabic</li>
<li>U+08C7 ARABIC LETTER LAM WITH SMALL ARABIC LETTER TAH ABOVE: try adding arabic</li>
<li>U+2021 DOUBLE DAGGER: try adding adlam</li>
<li>U+2030 PER MILLE SIGN: try adding adlam</li>
<li>U+204F REVERSED SEMICOLON: try adding one of: adlam, arabic</li>
<li>U+2116 NUMERO SIGN: try adding cyrillic</li>
<li>U+212E ESTIMATED SYMBOL: not included in any glyphset definition</li>
<li>U+2153 VULGAR FRACTION ONE THIRD: not included in any glyphset definition</li>
<li>U+2154 VULGAR FRACTION TWO THIRDS: not included in any glyphset definition</li>
<li>U+215B VULGAR FRACTION ONE EIGHTH: not included in any glyphset definition</li>
<li>U+215C VULGAR FRACTION THREE EIGHTHS: not included in any glyphset definition</li>
<li>U+215D VULGAR FRACTION FIVE EIGHTHS: not included in any glyphset definition</li>
<li>U+215E VULGAR FRACTION SEVEN EIGHTHS: not included in any glyphset definition</li>
<li>U+2190 LEFTWARDS ARROW: try adding one of: symbols, math</li>
<li>U+2192 RIGHTWARDS ARROW: try adding one of: symbols, math</li>
<li>U+2196 NORTH WEST ARROW: try adding one of: symbols, math</li>
<li>U+2197 NORTH EAST ARROW: try adding one of: symbols, math</li>
<li>U+2198 SOUTH EAST ARROW: try adding one of: symbols, math</li>
<li>U+2199 SOUTH WEST ARROW: try adding one of: symbols, math</li>
<li>U+2248 ALMOST EQUAL TO: try adding math</li>
<li>U+2260 NOT EQUAL TO: try adding math</li>
<li>U+2264 LESS-THAN OR EQUAL TO: try adding math</li>
<li>U+2265 GREATER-THAN OR EQUAL TO: try adding math</li>
<li>U+2460 CIRCLED DIGIT ONE: try adding one of: symbols, yi, mongolian</li>
<li>U+2461 CIRCLED DIGIT TWO: try adding one of: symbols, yi, mongolian</li>
<li>U+2462 CIRCLED DIGIT THREE: try adding one of: symbols, yi, mongolian</li>
<li>U+2463 CIRCLED DIGIT FOUR: try adding one of: symbols, yi, mongolian</li>
<li>U+2464 CIRCLED DIGIT FIVE: try adding one of: symbols, yi, mongolian</li>
<li>U+2465 CIRCLED DIGIT SIX: try adding one of: symbols, yi, mongolian</li>
<li>U+2466 CIRCLED DIGIT SEVEN: try adding one of: symbols, yi, mongolian</li>
<li>U+2467 CIRCLED DIGIT EIGHT: try adding one of: symbols, yi, mongolian</li>
<li>U+2468 CIRCLED DIGIT NINE: try adding one of: symbols, yi, mongolian</li>
<li>U+24EA CIRCLED DIGIT ZERO: try adding symbols</li>
<li>U+24FF NEGATIVE CIRCLED DIGIT ZERO: try adding symbols</li>
<li>U+25CC DOTTED CIRCLE: try adding one of: marchen, modi, bassa-vah, bhaiksuki, newa, dogra, khudawadi, sogdian, osage, devanagari, lepcha, adlam, warang-citi, pahawh-hmong, hanunoo, tai-le, tai-tham, telugu, lao, canadian-aboriginal, mandaic, khojki, old-permic, music, grantha, khmer, miao, zanabazar-square, saurashtra, sinhala, tamil, armenian, brahmi, gujarati, kaithi, oriya, balinese, manichaean, tagbanwa, cham, mongolian, coptic, mende-kikakui, ahom, yi, tai-viet, wancho, math, thai, batak, kharoshthi, phags-pa, soyombo, bengali, psalter-pahlavi, tagalog, buginese, caucasian-albanian, limbu, sharada, syriac, sundanese, kannada, tibetan, meetei-mayek, buhid, duployan, gunjala-gondi, chakma, elbasan, malayalam, nko, thaana, tirhuta, rejang, javanese, tifinagh, mahajani, kayah-li, symbols, hebrew, new-tai-lue, siddham, syloti-nagri, masaram-gondi, myanmar, gurmukhi, hanifi-rohingya, takri</li>
<li>U+26AA MEDIUM WHITE CIRCLE: try adding symbols</li>
<li>U+26AB MEDIUM BLACK CIRCLE: try adding symbols</li>
<li>U+2776 DINGBAT NEGATIVE CIRCLED DIGIT ONE: try adding symbols</li>
<li>U+2777 DINGBAT NEGATIVE CIRCLED DIGIT TWO: try adding symbols</li>
<li>U+2778 DINGBAT NEGATIVE CIRCLED DIGIT THREE: try adding symbols</li>
<li>U+2779 DINGBAT NEGATIVE CIRCLED DIGIT FOUR: try adding symbols</li>
<li>U+277A DINGBAT NEGATIVE CIRCLED DIGIT FIVE: try adding symbols</li>
<li>U+277B DINGBAT NEGATIVE CIRCLED DIGIT SIX: try adding symbols</li>
<li>U+277C DINGBAT NEGATIVE CIRCLED DIGIT SEVEN: try adding symbols</li>
<li>U+277D DINGBAT NEGATIVE CIRCLED DIGIT EIGHT: try adding symbols</li>
<li>U+277E DINGBAT NEGATIVE CIRCLED DIGIT NINE: try adding symbols</li>
<li>U+2B1B BLACK LARGE SQUARE: try adding symbols</li>
<li>U+2B1C WHITE LARGE SQUARE: try adding symbols</li>
<li>U+2E41 REVERSED COMMA: try adding one of: adlam, arabic</li>
<li>U+FB01 LATIN SMALL LIGATURE FI: not included in any glyphset definition</li>
<li>U+FB02 LATIN SMALL LIGATURE FL: not included in any glyphset definition</li>
<li>U+FDF2 ARABIC LIGATURE ALLAH ISOLATED FORM: try adding one of: thaana, arabic</li>
</ul>
<p>Or you can add the above codepoints to one of the subsets supported by the font: <code>latin</code>, <code>latin-ext</code></p>
 [code: unreachable-subsetting]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Shapes languages in all GF glyphsets. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.glyphset.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>GF_Arabic_Plus glyphset:</p>
<table>
<thead>
<tr>
<th align="left">Language</th>
<th align="left">WARN messages</th>
</tr>
</thead>
<tbody>
<tr>
<td align="left">ms_Arab (Malay (Arabic))</td>
<td align="left">No exemplar glyphs were defined for language Malay (Arabic)</td>
</tr>
</tbody>
</table>
 [code: warning-language-shaping]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Is there kerning info for non-ligated sequences? <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.gpos.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>GPOS table lacks kerning info for the following non-ligated sequences:</p>
<pre><code>- uni0644.init + uni0644.medi

- uni0644.medi + uni0651

- uni0651 + uni0670

- uni066E.init + uni062D.fina

- uni066E.init + uni062D.medi

- uni0670 + uni0647.fina

- uni0670 + uni06C1.fina
</code></pre>
 [code: lacks-kern-info]



</div>
</details>
</div>
</details>




### Summary

| 💥 ERROR | ☠ FATAL | 🔥 FAIL | ⚠️ WARN | ⏩ SKIP | ℹ️ INFO | ✅ PASS | 🔎 DEBUG | 
| ---|---|---|---|---|---|---|---|
| 0 | 0 | 2 | 7 | 95 | 9 | 138 | 0 | 
| 0% | 0% | 1% | 3% | 38% | 4% | 55% | 0% | 



**Note:** The following loglevels were omitted in this report:


* SKIP
* INFO
* PASS
* DEBUG