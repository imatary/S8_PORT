.class public Lcom/android/phone/PhoneApp;
.super Landroid/app/Application;
.source "PhoneApp.java"


# static fields
.field private static sMe:Lcom/android/phone/PhoneApp;


# instance fields
.field private final SAMSUNG_ANALYTICS_TRACKING_ID:Ljava/lang/String;

.field private final SAMSUNG_ANALYTICS_VERSION:Ljava/lang/String;

.field mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

.field mTelephonyGlobals:Lcom/android/services/telephony/TelephonyGlobals;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const-string/jumbo v0, "8.1"

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->SAMSUNG_ANALYTICS_VERSION:Ljava/lang/String;

    const-string/jumbo v0, "753-399-1005248"

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->SAMSUNG_ANALYTICS_TRACKING_ID:Ljava/lang/String;

    sput-object p0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    return-void
.end method

.method public static getInstance()Lcom/android/phone/PhoneApp;
    .locals 2

    sget-object v0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No PhoneApp here!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    const-string/jumbo v2, "PhoneApp"

    const-string/jumbo v3, "onCreate"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-direct {v2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;-><init>()V

    const-string/jumbo v3, "8.1"

    invoke-virtual {v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setVersion(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v2

    const-string/jumbo v3, "753-399-1005248"

    invoke-virtual {v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setTrackingId(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId()Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->setConfiguration(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "PhoneApp"

    const-string/jumbo v3, "Phone app is created as userid = 0"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/phone/PhoneGlobals;

    invoke-direct {v2, p0}, Lcom/android/phone/PhoneGlobals;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/PhoneApp;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->onCreate()V

    new-instance v2, Lcom/android/services/telephony/TelephonyGlobals;

    invoke-direct {v2, p0}, Lcom/android/services/telephony/TelephonyGlobals;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/PhoneApp;->mTelephonyGlobals:Lcom/android/services/telephony/TelephonyGlobals;

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mTelephonyGlobals:Lcom/android/services/telephony/TelephonyGlobals;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyGlobals;->onCreate()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "Call"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    new-instance v1, Lcom/android/phone/ia/StartStateListener;

    invoke-direct {v1, p0}, Lcom/android/phone/ia/StartStateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setStartStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;)V

    invoke-static {p0}, Lcom/android/phone/photoring/PhotoRingMgr;->registerMcidReceiver(Lcom/android/phone/PhoneApp;)V

    return-void

    :cond_0
    const-string/jumbo v2, "PhoneApp"

    const-string/jumbo v3, "Phone app is created as userid not 0, there\'s no PhoneApp() Instance"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/TeleServiceSystemDB;->initialize(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->makeFeature(Landroid/content/Context;)V

    goto :goto_0
.end method
