.class public Lcom/samsung/android/app/omcagent/db/SettingPref;
.super Lcom/samsung/android/common/util/Preference;
.source "SettingPref.java"


# static fields
.field private static final PROPERTY_AUTO_UPDATE:Ljava/lang/String; = "Settings.AutoUpdate"

.field private static final PROPERTY_WIFI_ONLY:Ljava/lang/String; = "Settings.WiFiOnly"

.field public static final SETTING_PREF:Ljava/lang/String; = "SETTINGS_PREFERENCE"

.field public static final STATE_DEFAULT:I = -0x1

.field public static final STATE_OFF:I = 0x0

.field public static final STATE_ON:I = 0x1

.field public static instance:Lcom/samsung/android/app/omcagent/db/SettingPref;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/db/SettingPref;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/db/SettingPref;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/db/SettingPref;->instance:Lcom/samsung/android/app/omcagent/db/SettingPref;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/common/util/Preference;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoUpdate(Landroid/content/Context;)I
    .locals 3

    const-string v0, "SETTINGS_PREFERENCE"

    const-string v1, "Settings.AutoUpdate"

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/SettingPref;->getIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWiFiOnlySetting(Landroid/content/Context;)I
    .locals 3

    const-string v0, "SETTINGS_PREFERENCE"

    const-string v1, "Settings.WiFiOnly"

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/SettingPref;->getIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/omcagent/db/SettingPref;->setWiFiOnlySetting(Landroid/content/Context;I)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/omcagent/db/SettingPref;->setAutoUpdate(Landroid/content/Context;I)V

    return-void
.end method

.method public setAutoUpdate(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "SETTINGS_PREFERENCE"

    const-string v1, "Settings.AutoUpdate"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/SettingPref;->setIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setDefault(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/db/SettingPref;->getWiFiOnlySetting(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Need to set default Wifi Only"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/app/omcagent/db/SettingPref;->setWiFiOnlySetting(Landroid/content/Context;I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/db/SettingPref;->getAutoUpdate(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Need to set default Auto Update"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/app/omcagent/db/SettingPref;->setAutoUpdate(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method public setWiFiOnlySetting(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "SETTINGS_PREFERENCE"

    const-string v1, "Settings.WiFiOnly"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/SettingPref;->setIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
