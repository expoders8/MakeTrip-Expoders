const String baseUrl = "https://opentales-api.azurewebsites.net/";
const String androidAppId = "com.app.opentales";
const String iOsAppId = "";

const String playStoreUrl =
    "https://play.google.com/store/apps/details?id=$androidAppId";
const String appStoreUrl = "https://apps.apple.com/in/developer/id=$iOsAppId";

const cloudRegion = 'asia-south1';
const storeKeyBasic = 'opentales_subscription_1m';
const storeKeyPremiumBasic = 'opentales_premium_subscriptions_1m';
const storeKeyUpgrade = 'opentales_subscriptions_1y';
const storeKeyPremiumUpgrade = 'opentales_premium_subscriptions_1y';

bool hasActiveSubscription = false;
