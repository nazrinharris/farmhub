# farmhub

### General Price Structure:

1. Each [Price] of a [Produce] will be represented as a single document.
2. Only one [Price] document is used to represent the price for a specific date. For example, for a [Produce] named Watermelon, there can be a [Price] document for the date 10-5-2022.
3. A [Price] is made up of multiple fields, but the actual price, i.e. the number ($), is dependent on the [subPrices] within it. For example, a [Price] with a price of 6, is the result of the [subPrices] which are 7 and 5.
4. To put it simply, the price in [Price] document is the average of [subPrices].
5. Whenever the admin adds a new price to a [Produce], that price is actually added to the [subPrices] in the [Price] document of the specific date chosen.
6. There may be some naming confusion in [Price]. [subPrices], [allPricesMap], [allPricesWithDateList] should all generally mean the same thing, with nuanced differences between them.

## App Versioning

> CAUTION OR REMEMBER OR WHATEVER!!
>
> Maximum app version is `999.999.999`, for each segment (major, minor and patch), maximum digits are `999`.

This app uses semantic versioning as its main version representation. But due to the limitations of Firestore Security Rules, semantic comparisons are (at least as far as I have tried) impossible, if not almost. This is due to the lack of debug capabilities as well as limited string manipulation methods. I don't expect this to change anytime soon, since Firestore Security Rules are meant for simpler comparisons, or so I have been told. Another workaround is to use Cloud Functions but that approach seems like we need to move all our methods into Cloud Functions, which will mess with Transactions. And so the solution is the use of integer versioning, where we convert semantic to integer using weights, like so:

```dart
int integerVersion = major * 10000 + minor * 1000 + patch;
```

### How does the app compare versions?

Updated as of 23/5/2023

There are two restrictions, client-side and server-side.

1. For client-side, the app retrieves the `FarmhubConfig` from `Firebase Remote Config` and compares it then.
2. For server-side, `Firestore Security Rules` has hard-coded minimum version which needs to be changed manually, and compares it against the user's custom claims, which is currently updated every time the user signs in as well as when the user refreshes the main screen and its `PackageInfo` version differs from the locally stored `localAppVersion`.

### How to update the app version?

Updated as of 19/5/2023

There are a couple steps that needs to be taken. First, let's go through updating the actual app version.

1. Go to `pubspec.yaml` and update the (semantic) `version` field.
2. (May need to do) Open `Xcode` and select the root `Runner`, in the `Targets` section, choose the `Runner`, go to `General` tab and to the `Identity` section, update the (semantic) `Version` and `Build` field.

Now that the app version is updated, update the `minimum_app_version` and `latest_app_version` if necessary.

1. Go to `Firebase Remote Config` and update the (semantic) `minimum_app_version` and `latest_app_version`.
2. Go to `Firestore Security Rules` and update the (integer) `minimum_app_version`.

## Quirks

### Price and Subprice:

1. When you create a new Price with a date that is not the date of the creation (for example, I created a new Price for three days ago), the sub-price of it will still use the current date, as its date represents the time the sub-price is added. (Confusing, I know.)
