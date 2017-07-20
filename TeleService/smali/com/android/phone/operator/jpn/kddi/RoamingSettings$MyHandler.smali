.class Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;
.super Landroid/os/Handler;
.source "RoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/jpn/kddi/RoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;


# direct methods
.method private constructor <init>(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;-><init>(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 6

    const/16 v5, 0x9

    const/4 v4, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    aget v1, v3, v4

    iget-object v3, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    invoke-static {v3}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->-get1(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "preferred_network_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleGetPreferredNetworkTypeResponse: if 1: modemNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->-wrap1(Ljava/lang/String;)V

    if-eq v1, v2, :cond_1

    move v2, v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setPreferredNetworkMode(I)V

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleGetPreferredNetworkTypeResponse: settingsNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->-wrap1(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    const/4 v3, 0x7

    if-eq v1, v3, :cond_0

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    if-eq v1, v5, :cond_0

    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    const/16 v3, 0xb

    if-eq v1, v3, :cond_0

    const/16 v3, 0xc

    if-eq v1, v3, :cond_0

    const-string/jumbo v3, "handleGetPreferredNetworkTypeResponse: else: reset to default"

    invoke-static {v3}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->-wrap1(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->resetNetworkModeToDefault()V

    goto :goto_0
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getPreferredNetworkType(Landroid/os/Message;)V

    const-string/jumbo v1, "RoamingSettings_kdi"

    const-string/jumbo v2, "handleSetPreferredNetworkTypeResponse: exception"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    invoke-static {v1}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->-wrap0(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)V

    goto :goto_0
.end method

.method private resetNetworkModeToDefault()V
    .locals 3

    const/16 v2, 0x9

    iget-object v0, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    invoke-static {v0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->-get2(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)Landroid/preference/ListPreference;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    invoke-virtual {v0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "preferred_network_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "preferred_change_by_mobile_data_exceptional_case"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "persist.radio.setnwkmode"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setPreferredNetworkType(ILandroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
