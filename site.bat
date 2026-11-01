<!doctype html>
<html lang="pt-BR">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<title>Bendito Espresso</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Bricolage+Grotesque:opsz,wght@12..96,500;12..96,700;12..96,800&family=Figtree:wght@400;500;600&display=swap">
<style>
/* Layout: cabeçalho fino, hero tipográfico com xícara em SVG, bloco "Visite" com endereço e rota, rodapé simples. */
:root {
  --bg: #fbf7f0;
  --surface: #f2eadc;
  --fg: #2b1b12;
  --muted: #6e5a4c;
  --line: #dccfbb;
  --accent: #b4580f;
  --accent-fg: #fffaf2;
  --pequi: #e9a82a;
  --font-display: "Bricolage Grotesque", "Trebuchet MS", system-ui, sans-serif;
  --font-body: "Figtree", system-ui, -apple-system, "Segoe UI", sans-serif;
}
@media (prefers-color-scheme: dark) {
  :root:not([data-theme="light"]) {
    --bg: #1b110b; --surface: #271912; --fg: #f5eadb; --muted: #bda996;
    --line: #3c2a1f; --accent: #f0a23a; --accent-fg: #1b110b; --pequi: #f0b940;
    color-scheme: dark;
  }
}
:root[data-theme="dark"] {
  --bg: #1b110b; --surface: #271912; --fg: #f5eadb; --muted: #bda996;
  --line: #3c2a1f; --accent: #f0a23a; --accent-fg: #1b110b; --pequi: #f0b940;
  color-scheme: dark;
}
* { box-sizing: border-box; }
html { scroll-behavior: smooth; }
body {
  background: var(--bg); color: var(--fg);
  font-family: var(--font-body); font-size: 17px; line-height: 1.6;
  padding-block: 0 32px;
  padding-left: max(16px, env(safe-area-inset-left, 0px));
  padding-right: max(16px, env(safe-area-inset-right, 0px));
}
.wrap { max-width: 1080px; margin: 0 auto; }
a { color: inherit; }
:focus-visible { outline: 3px solid var(--accent); outline-offset: 3px; border-radius: 6px; }

header {
  display: flex; align-items: center; justify-content: space-between; gap: 12px;
  padding-block: 18px; flex-wrap: wrap;
}
.brand { font-family: var(--font-display); font-weight: 800; font-size: 1.25rem; letter-spacing: -0.01em; text-decoration: none; }
.brand span { color: var(--accent); }
nav { display: flex; gap: 20px; align-items: center; }
nav a.link { text-decoration: none; font-weight: 500; color: var(--muted); }
nav a.link:hover { color: var(--fg); }

.btn {
  display: inline-flex; align-items: center; justify-content: center; gap: 10px;
  min-height: 48px; padding: 0 22px; border-radius: 999px;
  font-weight: 600; font-size: 1rem; text-decoration: none; cursor: pointer;
  border: 2px solid var(--accent); font-family: inherit;
  transition: transform .15s ease, background .15s ease;
}
.btn.primary { background: var(--accent); color: var(--accent-fg); }
.btn.ghost { background: transparent; color: var(--fg); border-color: var(--line); }
.btn:hover { transform: translateY(-2px); }
.btn.ghost:hover { border-color: var(--accent); }
.btn svg { width: 20px; height: 20px; flex: none; }

.hero {
  display: grid; grid-template-columns: 1.3fr 1fr; gap: 40px; align-items: center;
  padding-block: 40px 56px;
}
.hero > * { min-width: 0; }
.eyebrow { font-size: .8rem; letter-spacing: .14em; text-transform: uppercase; color: var(--accent); font-weight: 600; margin: 0 0 14px; }
h1 {
  font-family: var(--font-display); font-weight: 800; line-height: .98;
  font-size: clamp(2.8rem, 9vw, 5.6rem); letter-spacing: -0.035em; margin: 0 0 20px;
  text-wrap: balance;
}
h1 em { font-style: normal; color: var(--accent); }
.lead { font-size: 1.15rem; color: var(--muted); max-width: 46ch; margin: 0 0 28px; }
.cta { display: flex; gap: 12px; flex-wrap: wrap; }

.cup { width: 100%; max-width: 380px; justify-self: center; }
.cup .steam { stroke: var(--muted); fill: none; stroke-width: 5; stroke-linecap: round; opacity: .55; }
.cup .saucer { fill: var(--surface); stroke: var(--line); stroke-width: 3; }
.cup .body { fill: var(--fg); }
.cup .coffee { fill: var(--accent); }
.cup .crema { fill: var(--pequi); }
.cup .handle { fill: none; stroke: var(--fg); stroke-width: 14; stroke-linecap: round; }
@media (prefers-reduced-motion: no-preference) {
  .steam { animation: rise 3.2s ease-in-out infinite; }
  .steam.s2 { animation-delay: .8s; }
  .steam.s3 { animation-delay: 1.6s; }
  @keyframes rise { 0%,100% { transform: translateY(0); opacity: .25 } 50% { transform: translateY(-8px); opacity: .6 } }
}

.visit {
  background: var(--surface); border: 1px solid var(--line); border-radius: 28px;
  padding: clamp(24px, 5vw, 48px);
  display: grid; grid-template-columns: 1fr 1fr; gap: 36px;
}
.visit > * { min-width: 0; }
h2 { font-family: var(--font-display); font-weight: 700; font-size: clamp(1.8rem, 5vw, 2.6rem); line-height: 1.05; letter-spacing: -0.025em; margin: 0 0 14px; text-wrap: balance; }
.visit p { color: var(--muted); margin: 0 0 20px; max-width: 46ch; }
dl { margin: 0; display: grid; gap: 18px; }
dt { font-size: .78rem; letter-spacing: .12em; text-transform: uppercase; color: var(--accent); font-weight: 600; margin-bottom: 4px; }
dd { margin: 0; font-size: 1.1rem; font-weight: 500; overflow-wrap: anywhere; }
.copyrow { display: flex; gap: 10px; align-items: center; flex-wrap: wrap; margin-top: 10px; }
.copy { background: none; border: 1px solid var(--line); border-radius: 999px; padding: 6px 14px; font: inherit; font-size: .9rem; color: var(--fg); cursor: pointer; }
.copy:hover { border-color: var(--accent); }
.note { font-size: .95rem; }

.about { display: grid; grid-template-columns: repeat(auto-fit, minmax(240px, 1fr)); gap: 24px; padding-block: 64px 56px; }
.about > * { min-width: 0; }
.about h3 { font-family: var(--font-display); font-size: 1.35rem; margin: 0 0 8px; letter-spacing: -0.01em; }
.about p { margin: 0; color: var(--muted); }
.about article { border-top: 3px solid var(--pequi); padding-top: 16px; }

footer { display: flex; justify-content: space-between; gap: 12px; flex-wrap: wrap; padding-top: 24px; border-top: 1px solid var(--line); color: var(--muted); font-size: .95rem; }

@media (max-width: 760px) {
  .hero, .visit { grid-template-columns: 1fr; }
  .hero { padding-block: 16px 40px; gap: 24px; }
  .cup { max-width: 240px; order: -1; justify-self: start; }
  nav a.link { display: none; }
  .btn { flex: 1 1 100%; }
}
</style>

</head>
<body>
<div class="wrap">
  <header>
    <a class="brand" href="#topo">Bendito<span>.</span> Espresso</a>
    <nav>
      <a class="link" href="#sobre">A casa</a>
      <a class="link" href="#visite">Visite</a>
      <a class="btn primary" href="https://maps.app.goo.gl/LBMY3urg37DAFyuq7?g_st=ac" target="_blank" rel="noopener">Como chegar</a>
    </nav>
  </header>

  <main id="topo">
    <section class="hero">
      <div>
        <p class="eyebrow">Cafeteria e restaurante · Anápolis, GO</p>
        <h1>Café bom, mesa posta no <em>Jundiaí</em>.</h1>
        <p class="lead">O Bendito Espresso fica na Av. São Francisco de Assis, 480. Passe para um espresso, uma refeição ou uma conversa sem pressa.</p>
        <div class="cta">
          <a class="btn primary" href="https://maps.app.goo.gl/LBMY3urg37DAFyuq7?g_st=ac" target="_blank" rel="noopener">
            <svg viewBox="0 0 24 24" fill="currentColor" aria-hidden="true"><path d="M12 2a7 7 0 0 0-7 7c0 5.2 7 13 7 13s7-7.8 7-13a7 7 0 0 0-7-7Zm0 9.5A2.5 2.5 0 1 1 12 6.5a2.5 2.5 0 0 1 0 5Z"/></svg>
            Abrir no Google Maps
          </a>
          <a class="btn ghost" href="#visite">Ver endereço</a>
        </div>
      </div>
      <svg class="cup" viewBox="0 0 320 300" role="img" aria-label="Xícara de café com vapor">
        <path class="steam" d="M120 70c-14-16 14-26 0-46"/>
        <path class="steam s2" d="M160 76c-14-16 14-30 0-52"/>
        <path class="steam s3" d="M200 70c-14-16 14-26 0-46"/>
        <ellipse class="saucer" cx="160" cy="258" rx="130" ry="24"/>
        <path class="handle" d="M236 140c46-8 46 56-4 62"/>
        <path class="body" d="M64 112h192v54c0 46-38 82-96 82s-96-36-96-82z"/>
        <ellipse class="coffee" cx="160" cy="112" rx="96" ry="18"/>
        <ellipse class="crema" cx="160" cy="112" rx="70" ry="11"/>
      </svg>
    </section>

    <section class="visit" id="visite">
      <div>
        <h2>Venha nos visitar</h2>
        <p>Toque no botão para abrir a rota no Google Maps. Lá você também vê horários, telefone, fotos e avaliações atualizadas pelo restaurante.</p>
        <div class="cta">
          <a class="btn primary" href="https://maps.app.goo.gl/LBMY3urg37DAFyuq7?g_st=ac" target="_blank" rel="noopener">Traçar rota no Maps</a>
        </div>
      </div>
      <dl>
        <div>
          <dt>Endereço</dt>
          <dd id="endereco">Av. São Francisco de Assis, 480<br>Jundiaí, Anápolis - GO<br>CEP 75110-810</dd>
          <div class="copyrow">
            <button class="copy" id="copiar" type="button">Copiar endereço</button>
            <span class="note" id="status" role="status" aria-live="polite"></span>
          </div>
        </div>
        <div>
          <dt>Horários e telefone</dt>
          <dd class="note">Consulte a ficha do Bendito Espresso no <a href="https://maps.app.goo.gl/LBMY3urg37DAFyuq7?g_st=ac" target="_blank" rel="noopener">Google Maps</a> para ver se está aberto agora.</dd>
        </div>
      </dl>
    </section>

    <section class="about" id="sobre">
      <article>
        <h3>Cafeteria</h3>
        <p>Espresso e outras bebidas de café para começar o dia ou fazer uma pausa à tarde.</p>
      </article>
      <article>
        <h3>Restaurante</h3>
        <p>Refeições servidas à mesa, para almoçar com calma ou encontrar a família e os amigos.</p>
      </article>
      <article>
        <h3>No bairro Jundiaí</h3>
        <p>Região central de Anápolis, na Avenida São Francisco de Assis.</p>
      </article>
    </section>
  </main>

  <footer>
    <span>Bendito Espresso Cafeteria e Restaurante</span>
    <a href="https://maps.app.goo.gl/LBMY3urg37DAFyuq7?g_st=ac" target="_blank" rel="noopener">Ver no Google Maps</a>
  </footer>
</div>

<script>
(function () {
  var btn = document.getElementById("copiar");
  var status = document.getElementById("status");
  var text = "Av. São Francisco de Assis, 480, Jundiaí, Anápolis - GO, 75110-810";
  function selectFallback() {
    var r = document.createRange();
    r.selectNodeContents(document.getElementById("endereco"));
    var s = window.getSelection();
    s.removeAllRanges(); s.addRange(r);
    status.textContent = "Endereço selecionado. Copie manualmente.";
  }
  btn.addEventListener("click", function () {
    try {
      navigator.clipboard.writeText(text).then(function () {
        status.textContent = "Endereço copiado.";
      }, selectFallback);
    } catch (e) { selectFallback(); }
  });
})();
</script>
</body>
</html>
