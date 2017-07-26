.class Lcom/android/phone/VzwVoWiFiCallSettings$4;
.super Ljava/lang/Object;
.source "VzwVoWiFiCallSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VzwVoWiFiCallSettings;->enableRoamingSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VzwVoWiFiCallSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/VzwVoWiFiCallSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/VzwVoWiFiCallSettings$4;->this$0:Lcom/android/phone/VzwVoWiFiCallSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    const-string/jumbo v2, "VzwVoWiFiCallSettings"

    const-string/jumbo v3, "Inside roaming setting onPreferenceClick"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/VzwVoWiFiCallSettings$4;->this$0:Lcom/android/phone/VzwVoWiFiCallSettings;

    invoke-static {v2}, Lcom/android/phone/VzwVoWiFiCallSettings;->-get1(Lcom/android/phone/VzwVoWiFiCallSettings;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/phone/RoamingSettingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/android/phone/VzwVoWiFiCallSettings$4;->this$0:Lcom/android/phone/VzwVoWiFiCallSettings;

    invoke-virtual {v2, v1}, Lcom/android/phone/VzwVoWiFiCallSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "VzwVoWiFiCallSettings"

    const-string/jumbo v3, "In catch block"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
