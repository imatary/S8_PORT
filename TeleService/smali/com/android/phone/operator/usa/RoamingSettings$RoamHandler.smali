.class Lcom/android/phone/operator/usa/RoamingSettings$RoamHandler;
.super Landroid/os/Handler;
.source "RoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/usa/RoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoamHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/RoamingSettings;


# direct methods
.method private constructor <init>(Lcom/android/phone/operator/usa/RoamingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/RoamingSettings$RoamHandler;->this$0:Lcom/android/phone/operator/usa/RoamingSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/operator/usa/RoamingSettings;Lcom/android/phone/operator/usa/RoamingSettings$RoamHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/usa/RoamingSettings$RoamHandler;-><init>(Lcom/android/phone/operator/usa/RoamingSettings;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    aget v1, v3, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleGetPreferredNetworkTypeResponse: modemNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/operator/usa/RoamingSettings;->-wrap0(Ljava/lang/String;)V

    const-string/jumbo v3, "preferred_network_mode"

    sget v4, Lcom/android/phone/operator/usa/RoamingSettings;->preferredNetworkMode:I

    invoke-static {v3, v4}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingValueInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleGetPreferredNetworkTypeReponse: settingsNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/operator/usa/RoamingSettings;->-wrap0(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

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

    invoke-static {v3}, Lcom/android/phone/operator/usa/RoamingSettings;->-wrap0(Ljava/lang/String;)V

    if-eq v1, v2, :cond_1

    const-string/jumbo v3, "handleGetPreferredNetworkTypeResponse: if 2: modemNetworkMode != settingsNetworkMode"

    invoke-static {v3}, Lcom/android/phone/operator/usa/RoamingSettings;->-wrap0(Ljava/lang/String;)V

    move v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleGetPreferredNetworkTypeResponse: if 2: settingsNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/operator/usa/RoamingSettings;->-wrap0(Ljava/lang/String;)V

    const-string/jumbo v3, "preferred_network_mode"

    invoke-static {v3, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
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

    const-string/jumbo v3, "handleGetPreferredNetworkTypeResponse: else: reset to default"

    invoke-static {v3}, Lcom/android/phone/operator/usa/RoamingSettings;->-wrap0(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/RoamingSettings$RoamHandler;->resetNetworkModeToDefault()V

    goto :goto_0
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings$RoamHandler;->this$0:Lcom/android/phone/operator/usa/RoamingSettings;

    invoke-static {v2}, Lcom/android/phone/operator/usa/RoamingSettings;->-get0(Lcom/android/phone/operator/usa/RoamingSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "preferred_network_mode"

    invoke-static {v2, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/phone/operator/usa/RoamingSettings$RoamHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private resetNetworkModeToDefault()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings$RoamHandler;->this$0:Lcom/android/phone/operator/usa/RoamingSettings;

    invoke-static {v0}, Lcom/android/phone/operator/usa/RoamingSettings;->-get0(Lcom/android/phone/operator/usa/RoamingSettings;)Landroid/preference/ListPreference;

    move-result-object v0

    sget v1, Lcom/android/phone/operator/usa/RoamingSettings;->preferredNetworkMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const-string/jumbo v0, "preferred_network_mode"

    sget v1, Lcom/android/phone/operator/usa/RoamingSettings;->preferredNetworkMode:I

    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    sget v0, Lcom/android/phone/operator/usa/RoamingSettings;->preferredNetworkMode:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/usa/RoamingSettings$RoamHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setPreferredNetworkType(ILandroid/os/Message;)V

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
    invoke-direct {p0, p1}, Lcom/android/phone/operator/usa/RoamingSettings$RoamHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/operator/usa/RoamingSettings$RoamHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
