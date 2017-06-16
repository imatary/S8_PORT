.class Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;
.super Landroid/telephony/PhoneStateListener;
.source "HeadsetPhoneState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method

.method private cdmaDbmEcioToSignal(Landroid/telephony/SignalStrength;)I
    .locals 13

    const/4 v12, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    const/16 v10, -0x4b

    if-lt v0, v10, :cond_2

    const/4 v6, 0x4

    :goto_0
    const/16 v10, -0x5a

    if-lt v1, v10, :cond_6

    const/4 v7, 0x4

    :goto_1
    if-ge v6, v7, :cond_a

    move v2, v6

    :goto_2
    iget-object v10, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {v10}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->-get1(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)Landroid/telephony/ServiceState;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {v10}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->-get1(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v10

    if-eq v10, v12, :cond_0

    iget-object v10, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {v10}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->-get1(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v3

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, -0x28a

    if-lt v3, v10, :cond_b

    const/4 v8, 0x4

    :goto_3
    if-le v5, v12, :cond_f

    const/4 v9, 0x4

    :goto_4
    if-ge v8, v9, :cond_13

    move v4, v8

    :cond_1
    :goto_5
    if-le v2, v4, :cond_14

    :goto_6
    return v2

    :cond_2
    const/16 v10, -0x55

    if-lt v0, v10, :cond_3

    const/4 v6, 0x3

    goto :goto_0

    :cond_3
    const/16 v10, -0x5f

    if-lt v0, v10, :cond_4

    const/4 v6, 0x2

    goto :goto_0

    :cond_4
    const/16 v10, -0x64

    if-lt v0, v10, :cond_5

    const/4 v6, 0x1

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    goto :goto_0

    :cond_6
    const/16 v10, -0x6e

    if-lt v1, v10, :cond_7

    const/4 v7, 0x3

    goto :goto_1

    :cond_7
    const/16 v10, -0x82

    if-lt v1, v10, :cond_8

    const/4 v7, 0x2

    goto :goto_1

    :cond_8
    const/16 v10, -0x96

    if-lt v1, v10, :cond_9

    const/4 v7, 0x1

    goto :goto_1

    :cond_9
    const/4 v7, 0x0

    goto :goto_1

    :cond_a
    move v2, v7

    goto :goto_2

    :cond_b
    const/16 v10, -0x2ee

    if-lt v3, v10, :cond_c

    const/4 v8, 0x3

    goto :goto_3

    :cond_c
    const/16 v10, -0x384

    if-lt v3, v10, :cond_d

    const/4 v8, 0x2

    goto :goto_3

    :cond_d
    const/16 v10, -0x41a

    if-lt v3, v10, :cond_e

    const/4 v8, 0x1

    goto :goto_3

    :cond_e
    const/4 v8, 0x0

    goto :goto_3

    :cond_f
    const/4 v10, 0x5

    if-le v5, v10, :cond_10

    const/4 v9, 0x3

    goto :goto_4

    :cond_10
    const/4 v10, 0x3

    if-le v5, v10, :cond_11

    const/4 v9, 0x2

    goto :goto_4

    :cond_11
    const/4 v10, 0x1

    if-le v5, v10, :cond_12

    const/4 v9, 0x1

    goto :goto_4

    :cond_12
    const/4 v9, 0x0

    goto :goto_4

    :cond_13
    move v4, v9

    goto :goto_5

    :cond_14
    move v2, v4

    goto :goto_6
.end method

.method private gsmAsuToSignal(Landroid/telephony/SignalStrength;)I
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v1, 0x5

    return v1

    :cond_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    return v4

    :cond_1
    if-lt v0, v4, :cond_2

    const/4 v1, 0x3

    return v1

    :cond_2
    if-lt v0, v3, :cond_3

    return v3

    :cond_3
    if-lt v0, v2, :cond_4

    return v2

    :cond_4
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->sendDeviceDataStateChanged(I)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->-set1(Lcom/android/bluetooth/hfp/HeadsetPhoneState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v1, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->getServiceState(I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->-set0(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I

    const-string/jumbo v0, "HeadsetPhoneState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mService= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {v4}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->-get0(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->-get0(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->-set2(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->setRoam(I)V

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->sendDeviceStateChanged()V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v3, v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->-set0(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 5

    const/4 v4, 0x5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->-get2(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I

    move-result v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->-get0(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->-set2(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->-set2(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I

    const-string/jumbo v1, "HeadsetPhoneState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Signal level : previous="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " curr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->-get2(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->-get2(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I

    move-result v1

    if-le v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {v1, v4}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->-set2(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->-get2(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->-get0(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->sendDeviceStateChanged()V

    :cond_2
    return-void
.end method
