.class Lcom/android/phone/PhoneGlobals$5;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "support_smart_call"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v1, p1}, Lcom/android/phone/PhoneGlobals;->-wrap0(Lcom/android/phone/PhoneGlobals;Landroid/telephony/ServiceState;)V

    :cond_0
    const-string/jumbo v1, "support_wfc"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "wifi_call_when_roaming"

    invoke-static {v1, v2, v3}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v1, p1, v0}, Lcom/android/phone/PhoneGlobals;->-wrap1(Lcom/android/phone/PhoneGlobals;Landroid/telephony/ServiceState;I)V

    :cond_1
    return-void
.end method
