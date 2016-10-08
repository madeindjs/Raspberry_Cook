Raspberry Cook
=========


![Raspberry Logo](https://raw.githubusercontent.com/madeindjs/raspberry_cook/master/public/assets/images/og_image.png)


The history
-----------------


**Raspberry** Cook is a project started near September 2015. The first idea was simple: try to build a web-application without knowing. To make it more funny, I want to build it on a Raspberry Pi B+.

So I asked my girlfriend:

>"Hey! Do you want a cool website?"

>"Yes, I want! To save all my recipes to cook."

>"Say no more!"


So for me purposes was very clear:


* make a beautiful design
* built it on my great Raspberry Pi B+
* build a clean code and learn more & more technology
* make happier my girlfriend
* make it with love

So this project start with PHP / SQL / HTML / CCS on my **Linux** Mint laptop. I buy a Raspberry PI for some Euro. I start to learn all SSH commands and to build a Apache Server. And I did all my best

When I was happy of my work. I broke all result to convert it into **Ruby On Rails** Framework to have the greatest website on hearth, of course !!

My configuration
------------------------

### My personal computer

* HP Pavillon G72-a55sf
* Linux Mint 17.3 Cinnamon 64-bit
* Ruby 2.1.5p273
* Rails 4.2.5.1
* Sublime Text 3
* Firefox 44


### My Raspberry
* Raspberry Pi B+
* Raspian
* Ruby 2.2.1p85
* Rails 4.0.13
* VIM
* SD Card 32go


Development
-----------------------

### Global things

* **SASS** for Stylesheets
* **Units Tests** to ensure all work fine `rake test`
* **Capistrano** to deploy on my Raspberry Pi

### Gems

* [will_paginate](https://github.com/mislav/will_paginate) for pagination
* [carrierwave](https://github.com/carrierwaveuploader/carrierwave) & [rmagick](https://github.com/rmagick/rmagick) for upload picture and resizing *( may need to install libmagickwand-dev `sudo apt-get install libmagickwand-dev`)*
* [pdfkit](https://github.com/pdfkit/pdfkit) to build pdf of recipes *( need to install **wkhtmltopdf** `sudo apt-get install wkhtmltopdf`)*
* [sitemap_generator](https://github.com/christianhellsten/sitemap-generator) to build automatically a beautiful Site Map `ruby config/sitemap.rb`
* [authlogic](https://github.com/binarylogic/authlogic) for authentication
* [unread](https://github.com/ledermann/unread) for notifications system

Things I want to do
----------------------------

* [ ] Add a ingredients feature to calculate some stats about the recipe
* [ ] add connection with **Instagram** & **Facebook**


License
-----------

[MIT](https://opensource.org/licenses/MIT)


Author
----------

[Rousseau Alexandre](https://github.com/madeindjs)


