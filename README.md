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

Here is a modified version of the Google Analytics tracking script which validates the referrer against this blacklist before allowing any tracking to happen:

```js
window.trackVisitor = function() {
  /* Put any tracking scripts here */
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-XXXXXX-Y', 'auto');
  ga('send', 'pageview');

  /* End Tracking Scripts */
}
/* DONT EDIT ANYTHING BELOW THIS LINE!! */
;(function(a,b){var c="https://s3.amazonaws.com/s3.convertify.io/spammers.txt",d=new XMLHttpRequest;d.open("GET",c,!0),d.onreadystatechange=function(){if(4===this.readyState)if(this.status>=200&&this.status<400){var a=this.responseText;e(a,function(a,c){c&&b()})}else b()},d.send(),d=null;var e=function(b,c){var d=b.split("\n"),e=!1,f=d.length-1;for(i=0;i<f;i++){var g=new RegExp(d[i]);if(g.test(a.referrer)){e=!0;break}}e?c(null,!1):c(null,!0)}})(document,window.trackVisitor);

```

You can add any other tracking scripts you use to the above script as well. Github doesn't allow usage of repos for web assets, so a copy of this list is hosted on an S3 server and synced automatically every day. Credit to [Convertify](https://convertify.io) for hosting the list on S3 and keeping it synced. If you want to host the list yourself, just change the relevant URL within the script (`https://s3.amazonaws.com/s3.convertify.io/spammers.txt`) to wherever your list is stored. Note that unless it's on your own domain, you need to have the proper CORS configuration in order for it to work.

## Contributing

To add a new referrer spammer to the list, [click here to edit the spammers.txt file](https://github.com/piwik/referrer-spam-blacklist/edit/master/spammers.txt) and create a pull request. Alternatively you can create a [new issue](https://github.com/piwik/referrer-spam-blacklist/issues/new). In you issue or pull request please **explain where the referrer domain appeared and why you think it is a spammer**.

If you open a pull request, it is appreciated if you keep one hostname per line, keep the list ordered alphabetically, and use [Linux line endings](http://en.wikipedia.org/wiki/Newline).

Please [search](https://github.com/piwik/referrer-spam-blacklist/issues) if somebody already reported the host before opening a new one.

## Disclaimer

This list of Referrer spammers is contributed by the community and is provided as is. Use at your own discretion: it may be incomplete (although we aim to keep it up to date) and it may contain outdated entries (let us know if a hostname was added but is not actually a spammer).

## License

Public Domain (no copyright).
