# Reaction Commerce Foundation 5 Starter Theme

`meteor add getoutfitted:reaction-foundation-theme`

## Use Zurb Foundation 5 with ReactionCommerce
This theme is almost identical visually to the existing [ReactionCommerce Core Theme](https://github.com/reactioncommerce/reaction-core-theme).



### About

This theme contains all of the SCSS/SASS files that you need to run Zurb Foundation 5 with Reaction Commerce.

It contains all of the Templates, Helpers, and Events you need to start theming for ReactionCommerce with Foundation 5.

## Installation
#### Step 1.
`meteor add getoutfitted:reaction-foundation-theme`


#### Step 2.

From the root of your Meteor app run:  
`curl -L -O https://raw.github.com/getoutfitted/reaction-foundation-theme/master/downloads/scss.json`

This file instructs your Meteor app that you have additional source paths for scss files located in that package.

#### Step 3.
Run

1. `cd client/themes`

2. `curl -L -O https://raw.github.com/getoutfitted/reaction-foundation-theme/master/downloads/main.scss`

3. `curl -L -O https://raw.github.com/getoutfitted/reaction-foundation-theme/master/downloads/_settings.scss`

This will download the default `main.scss` file which loads all of our scss files in the correct order and `_settings.scss` which has our variable settings. You can edit these files, particularly `_settings.scss` to customize this theme to your needs.

#### Step 4.
Remove or disable the `nemo64:bootstrap` and `reaction:core-theme` packages as well as the default theme `.json` bootstrap config files in the `client/themes` directory.

To disable these packages open the file `.meteor/packages` and add `#` in front of the lines with `nemo64:bootstrap` and `reaction:core-theme`

You can delete `custom.bootstrap.json` and `custom.reaction.json` or if you want to keep them, just give it a new extension (e.g. `custom.reaction.json.backup`)


#### Step 5.
In the `client/templates/layout/footer/footer.coffee` file, comment out `line 13` `Template.footer.replaces "LayoutFooter"`

Start your server.
You are now running on the scss/foundation based theme instead of the base less/bootstrap core theme.

Note: If you get a `Scss compiler error: file to import not found or unreadable` just restart your server. This should only happen once and I think it's because the scss compiler is looking for files that aren't built yet.

Fork this theme and make it your own.


## Adding or Removing Files

If you add or remove files, run

    ./build-package.sh
    
This script will update the templates, coffescript files, and scss or sass files that you have in your project.

##### Updating scss files?
You will also need to update your `main.scss` file in your root app.

##### Updating adding or removing html templates?
You may need to update the `templates/templateOverrides.coffee` file as well.

##### Updating coffeescript files?
See https://github.com/aldeed/meteor-template-extension for details about how to properly use the template extensions and Template replaces.


## Origin and Thanks
Inspired by and originally forked from the https://github.com/juliancwirko/meteor-zf5/ package. Thanks for pointing the way to integrate foundation 5 with Meteor.

Also thanks to https://github.com/fourseven/meteor-scss which we are using to properly compile the scss files.

See the [fourseven:scss](https://github.com/fourseven/meteor-scss) package for
additional configuration details.
