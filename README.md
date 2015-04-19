Reusable list of referer spammers

## Usage

The list is stored in this repository in `spammers.txt`. This text file contains one host per line.

You can download this file manually, download the whole folder as zip or clone the repository using git:

```
git clone https://github.com/piwik/referer-spam-blacklist.git
```

Parsing the file should be pretty easy using your favorite language. Beware that the file can contain empty lines.

Here is an example using PHP:

```php
$list = file('spammers.txt', FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
```

## Contributing

Contributing a new host to the list can be done by either opening a new issue or a pull request. Please check if somebody already reported the host before opening a new one.

If you open a pull request, remember to keep one host per line without any extra character (e.g. no comma). The list should be kept order alphabetically. You should also use [Linux end of line](http://en.wikipedia.org/wiki/Newline).

## Disclaimer

TODO

## License

TODO
