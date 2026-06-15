# Ethan Jerzak's website

The source pages are in `src/`. Run:

```sh
src/buildmywebsite.sh
```

This builds the static site in the repository root. GitHub Pages publishes the
`main` branch's root directory.

The custom domain is `ethanjerzak.com`. In Cloudflare DNS, configure:

| Type | Name | Content |
| --- | --- | --- |
| A | `@` | `185.199.108.153` |
| A | `@` | `185.199.109.153` |
| A | `@` | `185.199.110.153` |
| A | `@` | `185.199.111.153` |
| CNAME | `www` | `ejerzak.github.io` |

Keep these records DNS-only while GitHub validates the domain and issues its
HTTPS certificate. In the repository's Pages settings, set the custom domain
to `ethanjerzak.com`, then enable "Enforce HTTPS" when it becomes available.
The repository's `CNAME` file records the custom domain.
