.class public Lcom/android/phone/mobilenetworks/kor/KeyStringReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KeyStringReceiver.java"


# instance fields
.field private isDataNetworkMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/KeyStringReceiver;->isDataNetworkMode:Z

    return-void
.end method

.method private isDataNetworkModeKT(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "47359"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isDataNetworkModeSKT(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "232580"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSecretCodeAction(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "com.samsung.android.Telephony.SECRET_CODE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private needSendIntent()Z
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "do_not_send_intent_for_keystring"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyStringReceiver"

    const-string/jumbo v1, "needSendIntent false"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string/jumbo v0, "do_not_send_intent_for_keystring_ktt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "KeyStringReceiver"

    const-string/jumbo v1, "for KT needSendIntent false"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string/jumbo v0, "KeyStringReceiver"

    const-string/jumbo v1, "needSendIntent true"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method private startDataNetworkModeActivity(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v1, "KeyStringReceiver"

    const-string/jumbo v2, "startDataNetworkModeActivity"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/mobilenetworks/kor/DataNetworkMode;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v4, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v5, "KeyStringReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/phone/mobilenetworks/kor/KeyStringReceiver;->isSecretCodeAction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/kor/KeyStringReceiver;->isDataNetworkModeSKT(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isSktSim()Z

    move-result v3

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/kor/KeyStringReceiver;->isDataNetworkModeKT(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isKtSim()Z

    move-result v2

    :goto_1
    const-string/jumbo v5, "support_kt_hidden_data_network"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v3, :cond_6

    :goto_2
    iput-boolean v2, p0, Lcom/android/phone/mobilenetworks/kor/KeyStringReceiver;->isDataNetworkMode:Z

    :goto_3
    iget-boolean v4, p0, Lcom/android/phone/mobilenetworks/kor/KeyStringReceiver;->isDataNetworkMode:Z

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/KeyStringReceiver;->needSendIntent()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/kor/KeyStringReceiver;->startDataNetworkModeActivity(Landroid/content/Context;)V

    :cond_3
    :goto_4
    return-void

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    move v2, v4

    goto :goto_2

    :cond_7
    iput-boolean v3, p0, Lcom/android/phone/mobilenetworks/kor/KeyStringReceiver;->isDataNetworkMode:Z

    goto :goto_3

    :cond_8
    const-string/jumbo v5, "support_kt_hidden_data_network"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/kor/KeyStringReceiver;->isDataNetworkModeSKT(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/kor/KeyStringReceiver;->isDataNetworkModeKT(Ljava/lang/String;)Z

    move-result v4

    :cond_9
    iput-boolean v4, p0, Lcom/android/phone/mobilenetworks/kor/KeyStringReceiver;->isDataNetworkMode:Z

    :goto_5
    iget-boolean v4, p0, Lcom/android/phone/mobilenetworks/kor/KeyStringReceiver;->isDataNetworkMode:Z

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/KeyStringReceiver;->needSendIntent()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/kor/KeyStringReceiver;->startDataNetworkModeActivity(Landroid/content/Context;)V

    goto :goto_4

    :cond_a
    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/kor/KeyStringReceiver;->isDataNetworkModeSKT(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/phone/mobilenetworks/kor/KeyStringReceiver;->isDataNetworkMode:Z

    goto :goto_5
.end method
