This is a community-contributed list of [referrer spammers](http://en.wikipedia.org/wiki/Referer_spam) maintained by [Piwik](http://piwik.org/), the leading open source web analytics platform.

## Usage

The list is stored in this repository in `spammers.txt`. This text file contains one host per line.

You can [download this file manually](https://github.com/piwik/referrer-spam-blacklist/blob/master/spammers.txt), download the [whole folder as zip](https://github.com/piwik/referrer-spam-blacklist/archive/master.zip) or clone the repository using git:

```
git clone https://github.com/piwik/referrer-spam-blacklist.git
```

If you are using PHP, you can also install the list through Composer:

```
composer require piwik/referrer-spam-blacklist
```

Parsing the file should be pretty easy using your favorite language. Beware that the file can contain empty lines.

Here is an example using PHP:

```php
$list = file('spammers.txt', FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
```

### In Piwik

This list is included in each [Piwik](http://piwik.org) release so that referrer spam is filtered automatically. Piwik will also automatically update this list to its latest version every week.

## Contributing

To add a new referrer spammer to the list, [click here to edit the spammers.txt file](https://github.com/piwik/referrer-spam-blacklist/edit/master/spammers.txt) and create a pull request. Alternatively you can create a [new issue](https://github.com/piwik/referrer-spam-blacklist/issues/new). In your issue or pull request please **explain where the referrer domain appeared and why you think it is a spammer**. You are highly encouraged to open **one pull request per new domain**.

If you open a pull request, it is appreciated if you keep one hostname per line, keep the list ordered alphabetically, and use [Linux line endings](http://en.wikipedia.org/wiki/Newline).

Please [search](https://github.com/piwik/referrer-spam-blacklist/issues) if somebody already reported the host before opening a new one.

### Subdomains

Piwik does sub-string matching on domain names from this list, so adding `semalt.com` is enough to block all subdomain referrers too, such as `semalt.semalt.com`.

However, there are cases where you'd only want to add a subdomain but not the root domain. For example, add `referrerspammer.tumblr.com` but not `tumblr.com`, otherwise all `*.tumblr.com` sites would be affected.

### Sorting

To keep the list sorted the same way across forks it is recommended to let the computer do the sorting. The list follows the merge sort algorithm as implemented in [sort](https://en.wikipedia.org/wiki/Sort_(Unix)). You can use sort to both sort the list and filter out doubles:

```
sort -uf -o spammers.txt spammers.txt
```

## Disclaimer

This list of Referrer spammers is contributed by the community and is provided as is. Use at your own discretion: it may be incomplete (although we aim to keep it up to date) and it may contain outdated entries (let us know if a hostname was added but is not actually a spammer).

## License

Public Domain (no copyright).
