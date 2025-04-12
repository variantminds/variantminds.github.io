<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9">
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <title>Variant Minds - Sitemap</title>
      <meta name="color-scheme" content="light dark" />
      <link href="https://cdn.jsdelivr.net/npm/bulma@1.0.3/css/bulma.min.css" rel="stylesheet" media="all" />
    </head>
    <body>
      <main class="section">
        <div class="container">
          <h1 class="title">
            <a href="/">
              <span class="icon"><img src="/assets/favicon/favicon.svg"/></span>
              Variant Minds
            </a>
            <small>- Sitemap</small>
          </h1>
          <div class="table-container">
            <table class="table is-striped is-hoverable is-fullwidth">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">URL</th>
                <th scope="col">Last update</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="sitemap:urlset/sitemap:url">
                <tr>
                  <td scope="row"><xsl:value-of select="position()" /></td>
                  <td>
                    <a>
                      <xsl:attribute name="href">
                        <xsl:value-of select="sitemap:loc"/>
                      </xsl:attribute>
                      <code><xsl:value-of select="sitemap:loc"/></code>
                    </a>
                  </td>
                  <td><xsl:value-of select="sitemap:lastmod" /></td>
                </tr>
              </xsl:for-each>
            </tbody>
            </table>
          </div>
        </div>
      </main>
      <footer class="footer">
        <div class="container has-text-centered">  
          <p><span>&#169;</span> 2025 Variant Minds</p>
        </div>
      </footer>
      <script src="/assets/js/app.js"></script>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
