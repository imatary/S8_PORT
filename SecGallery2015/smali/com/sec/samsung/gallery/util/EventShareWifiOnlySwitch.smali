.class public Lcom/sec/samsung/gallery/util/EventShareWifiOnlySwitch;
.super Ljava/lang/Object;
.source "EventShareWifiOnlySwitch.java"


# static fields
.field private static final EVENT_SETTING_WIFI_ONLY:Ljava/lang/String; = "event_setting_wifi_only"

.field public static final EVENT_SHARE_WIFI_ONLY_CHANGED:Ljava/lang/String; = "com.sec.android.gallery3d.WIFI_ONLY_CHANGED"

.field public static final EVENT_SHARE_WIFI_ONLY_VALUE:Ljava/lang/String; = "EVENT_SHARE_WIFI_ONLY_VALUE"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOn(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "event_setting_wifi_only"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static sendWifiOnlyChanged(Landroid/content/Context;Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.gallery3d.WIFI_ONLY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "EVENT_SHARE_WIFI_ONLY_VALUE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static turnOff(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "event_setting_wifi_only"

    invoke-static {p0, v0, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {p0, v1}, Lcom/sec/samsung/gallery/util/EventShareWifiOnlySwitch;->sendWifiOnlyChanged(Landroid/content/Context;Z)V

    return-void
.end method

.method public static turnOn(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "event_setting_wifi_only"

    invoke-static {p0, v0, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {p0, v1}, Lcom/sec/samsung/gallery/util/EventShareWifiOnlySwitch;->sendWifiOnlyChanged(Landroid/content/Context;Z)V

    return-void
.end method
