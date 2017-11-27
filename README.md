## Set iOS Info.plist - Bundle Version and Bundle Short Version String ([BITRISE](https://www.bitrise.io))

Sets the Bundle Version and Bundle Short Version String to the specified value, in the target Info.plist file for the next build.

### How to use this Step

Can be run directly with the [bitrise CLI](https://github.com/bitrise-io/bitrise),
just `git clone` this repository, `cd` into it's folder in your Terminal/Command Line
and call `bitrise run test`.

*Check the `bitrise.yml` file for required inputs which have to be
added to your `.bitrise.secrets.yml` file!*

*There is a sample Info.plist file in _tmp directory for your testing*

### Change log

Version 2.0.0
* Swapped CFBundleShortVersionString & CFBundleVersion. Now is correct. Sorry
* Parameters bundle_version & bundle_version_short now optional
* If need append version dot added automatically
* Fixes


Version 1.1.1
* Fix append version config bug.

Version 1.1.0
* Fixes
* Append Version
* Short Version increment

Version 1.0.1
* Bugfix and first step share to Bitrise.

Version 1.0.0
* Initial commit.

### Credits

Thanks to Bitrise team for this awesome service / prompt support!
Thanks to [Teference](https://github.com/teference/steps-set-ios-bundle-identifier) for source
Thanks to [Tadija](https://github.com/tadija/bitrise-step-xcode-project-info) for source
