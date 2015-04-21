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

## Contributing

To add a new referrer spammer to the list, [click here to edit the spammers.txt file](https://github.com/piwik/referrer-spam-blacklist/edit/master/spammers.txt) and create a pull request. Alternatively you can create a [new issue](https://github.com/piwik/referrer-spam-blacklist/issues/new).  

If you open a pull request, it is appreciated if you keep one hostname per line, keep the list ordered alphabetically, and use [Linux line endings](http://en.wikipedia.org/wiki/Newline).

Please [search](https://github.com/piwik/referrer-spam-blacklist/issues) if somebody already reported the host before opening a new one.

## Disclaimer

This list of Referrer spammers is contributed by the community and is provided as is. Use at your own discretion: it may be incomplete (although we aim to keep it up to date) and it may contain outdated entries (let us know if a hostname was added but is not actually a spammer).

## License

Public Domain (no copyright).
