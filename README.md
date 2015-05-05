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
Make sure that `scss.json` exists within the root of your app. If it does not, add the `scss.json` file with the following content.
```json
{
  "includePaths": [
    ".meteor/local/build/programs/server/assets/packages/getoutfitted_reaction-foundation-theme/scss/"
  ]
}
```

This file instructs your Meteor app that you have additional source paths for scss files located in that package.


#### Step 3.
Move the files located within the `move-these-files` directory - `main.scss` and `_settings.scss` to somewhere within your main Meteor app's `client` directory - such as `client/themes/`

#### Step 4.
Remove `nemo64:bootstrap` and `reaction:core-theme` from your meteor app. Or at least make sure that `reaction-foundation-theme` comes after them. Recommend that you remove them.

#### Step 5.
Restart your server.
You are now running on the scss/foundation based theme instead of the base less/bootstrap core theme.


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
