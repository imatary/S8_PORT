.class Lcom/android/phone/VzwVoWiFiCallSettings$3;
.super Ljava/lang/Object;
.source "VzwVoWiFiCallSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VzwVoWiFiCallSettings;->enableUpdateAddressSetting()V
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

    iput-object p1, p0, Lcom/android/phone/VzwVoWiFiCallSettings$3;->this$0:Lcom/android/phone/VzwVoWiFiCallSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v2, "VzwVoWiFiCallSettings"

    const-string/jumbo v3, "Inside update address onPreferenceClick"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.sec.vowifispg"

    const-string/jumbo v3, "com.sec.vowifispg.AddressVerification"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "launch_mode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/VzwVoWiFiCallSettings$3;->this$0:Lcom/android/phone/VzwVoWiFiCallSettings;

    const/16 v3, 0xa

    invoke-virtual {v2, v1, v3}, Lcom/android/phone/VzwVoWiFiCallSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v4

    :catch_0
    move-exception v0

    const-string/jumbo v2, "VzwVoWiFiCallSettings"

    const-string/jumbo v3, "In catch block"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
