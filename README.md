# **[Anonymousland](https://anonymousland.org)** v1.10

>  Anonymity, Privacy, Security

<div align="center">

[![Anonymousland logo](/assets/img/anonymousland_logo.png "Anonymousland logo")](https://anonymousland.org)

</div>

<div align="center">

![Website](https://img.shields.io/website?down_color=red&down_message=down&style=flat-square&up_color=green&up_message=up&url=https%3A%2F%2Fanonymousland.org%2F)
![Security Headers](https://img.shields.io/security-headers?style=flat-square&url=https%3A%2F%2Fanonymousland.org%2F)
![GitHub contributors](https://img.shields.io/github/contributors/anonyland/anonymousland?label=GitHub%20contributors&style=flat-square)
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/anonyland/anonymousland?label=GitHub%20commit%20activity&style=flat-square)
![GitHub](https://img.shields.io/github/license/anonyland/anonymousland?style=flat-square)
![GitHub Repo stars](https://img.shields.io/github/stars/anonyland/anonymousland?label=GitHub%20stars&style=flat-square)
![Maintenance](https://img.shields.io/maintenance/yes/2023?style=flat-square)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/anonyland/anonymousland?style=flat-square)

</div>

<div align="center">

[![Monero wallet](https://img.shields.io/badge/XMR-47teQv7uWPv9EALRDv9je6ckC83UYJiisHpmhNKHyPPTXinPJNRtvW8PcpEoLxex9ierqWvD89v9mVyGf77uLtS3RnGUk8K-orange?logo=monero&style=flat-square)](https://anonymousland.org/donate)

</div>

[Changelog](https://anonymousland.org/changelog)

## Mirrors

Here are the place where you can view and contribute to our repositories:

- [Main (Self-hosted Gitea)](https://git.anonymousland.org/anonymousland/anonymousland)
- [GitHub mirror](https://github.com/anonyland/anonymousland)
- [Codeberg mirror](https://codeberg.org/anonymousland/anonymousland)

*All of the mirrors are both read and write and you can contribute on either place.*

## Contributing

**Thank you very much for reading this.** Contributions are very welcome, to contribute, just fork the repository, do the changes and open a pull request.

You can contribute either on our own [Git](https://git.anonymousland.org/anonymousland/anonymousland) or on any other mirror listed above.

If you do not know where to start, take a look at the [issues](https://git.anonymousland.org/anonymousland/anonymousland/issues) for this repository, you can also take a look at our *site-wide* [issues list](https://git.anonymousland.org/anonymousland/main).

## Donations

Running these services and properly maintaining them takes time and money. *We would be extremely grateful to get donations*, we only ask for 5$, that's all.

To donate, you can visit our [donation page](https://anonymousland.org/donate), contribute directly to our [Monero](https://www.getmonero.org/) wallet or by scanning the folowing QR Code:

<div align="center">

|![](/assets/img/xmr_donation_wallet.svg)                |
|:--------------:|
| **Monero (XMR)** |

</div>

_Monero wallet address:_ `47teQv7uWPv9EALRDv9je6ckC83UYJiisHpmhNKHyPPTXinPJNRtvW8PcpEoLxex9ierqWvD89v9mVyGf77uLtS3RnGUk8K`

## Building

To build this Jekyll website you can use the following commands:

```
bundle install
jekyll build
```

**Make sure to be at the root of the repository.**
The built site files ready to host will be located at the *_site* directory.

## Hosting

To host this site, we use nginx, you can check our config at our [infrastructure repository](https://git.anonymousland.org/anonymousland/infrastructure). But this should do:

```
server {  
    listen 443 ssl http2;
    listen [::]:443 ssl http2;
    gzip on;

    server_name exampledomain.com;

    location / {
        root /config/www;
        index index.html;
        try_files $uri $uri.html $uri/ =404;
    }

}
```

## License

![CC0 Logo](https://upload.wikimedia.org/wikipedia/commons/6/69/CC0_button.svg)

All content produced by us is licensed under *public domain* using the [CC0 license](https://creativecommons.org/share-your-work/public-domain/cc0/).

## Contact

Click [here](https://matrix.to/#/#lounge:anonymousland.org) to join our main Matrix *chatroom* and [here](https://matrix.to/#/#anonymousland:anonymousland.org) to join our Matrix *space.*