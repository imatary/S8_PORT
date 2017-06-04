.class public Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;
.super Ljava/lang/Object;
.source "EventShareSetting.java"


# static fields
.field private static final COREAPPS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.coreapps"

.field private static final COREAPPS_SUPPORT_MAJOR_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EventShareSetting"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEasySignupAccount(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getMsisdn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getServiceId(Landroid/content/Context;)I
    .locals 6

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "com.samsung.android.enhancedfeatures.sdk.service"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "EventShareSetting"

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isCoreAppsInstalled(Landroid/content/Context;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    :try_start_0
    const-string/jumbo v1, "com.samsung.android.coreapps"

    const/16 v2, 0x40

    invoke-static {p0, v1, v2}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EventShareSetting"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCoreAppsSupportVersion(Landroid/content/Context;)Z
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v3, "com.samsung.android.coreapps"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string/jumbo v4, "."

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v3, "EventShareSetting"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v3, "EventShareSetting"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isEventSharingAuth(Landroid/content/Context;)Z
    .locals 2

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->isAuth()Z

    move-result v1

    return v1
.end method

.method public static isEventSharingRegisterOn(Landroid/content/Context;)Z
    .locals 2

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->isRegistered()Z

    move-result v1

    goto :goto_0
.end method

.method public static isEventSharingServiceOn(Landroid/content/Context;)Z
    .locals 2

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->isServiceOn()Z

    move-result v1

    goto :goto_0
.end method

.method public static isEventSharingServiceOnCoreApps(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->init(Landroid/content/Context;)V

    :cond_2
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedAccountEx()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;->isServiceEnabledInCoreApps(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static onEventSharingService(Landroid/content/Context;Z)V
    .locals 2

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->serviceOn(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->register(Z)V

    goto :goto_0
.end method

.method public static restoreEventSharingService(Landroid/content/Context;)V
    .locals 2

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->restore(Landroid/content/Context;)V

    goto :goto_0
.end method
