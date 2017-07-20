.class public Lcom/android/phone/LGTRoamingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LGTRoamingReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/LGTRoamingReceiver$1;
    }
.end annotation


# instance fields
.field private enable:Z

.field private isDisableRoamingMultiIMSI:Z

.field private mEfRoaming:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mcontext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lcom/android/phone/LGTRoamingReceiver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/LGTRoamingReceiver;->enable:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/phone/LGTRoamingReceiver;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/LGTRoamingReceiver;->mEfRoaming:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/LGTRoamingReceiver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/LGTRoamingReceiver;->mcontext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/LGTRoamingReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/LGTRoamingReceiver;->sendImsiStatusChangeNotiForNoWait()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/LGTRoamingReceiver;->mEfRoaming:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/LGTRoamingReceiver;->enable:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_RIL_DisableRoamingMultiIMSI"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/LGTRoamingReceiver;->isDisableRoamingMultiIMSI:Z

    new-instance v0, Lcom/android/phone/LGTRoamingReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTRoamingReceiver$1;-><init>(Lcom/android/phone/LGTRoamingReceiver;)V

    iput-object v0, p0, Lcom/android/phone/LGTRoamingReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private sendImsiStatusChangeNotiForNoWait()V
    .locals 8

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string/jumbo v6, "LGTRoamingReceiver"

    const-string/jumbo v7, "sendImsiStatusChangeNotiForNoWait!!! SEND 0x10"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    const/4 v4, 0x5

    const/16 v6, 0x16

    :try_start_0
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v6, 0x2f

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/16 v6, 0x10

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void

    :catch_0
    move-exception v3

    return-void

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception v3

    return-void

    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    throw v6

    :catch_3
    move-exception v3

    return-void
.end method

.method private setLteRoamingIMSI(Z)V
    .locals 13

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/android/phone/LGTRoamingReceiver;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    new-array v7, v10, [B

    const-string/jumbo v8, "LGTRoamingReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setLteRoamingIMSI OnOff "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/16 v8, 0x10

    aput-byte v8, v7, v11

    const-string/jumbo v8, "10"

    iput-object v8, p0, Lcom/android/phone/LGTRoamingReceiver;->mEfRoaming:Ljava/lang/String;

    :goto_0
    const/4 v6, 0x0

    :try_start_0
    const-class v8, Lcom/android/internal/telephony/IccCard;

    const-string/jumbo v9, "setRoaming"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v5}, Landroid/os/Message;->getClass()Ljava/lang/Class;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    return-void

    :cond_0
    aput-byte v11, v7, v11

    const-string/jumbo v8, "00"

    iput-object v8, p0, Lcom/android/phone/LGTRoamingReceiver;->mEfRoaming:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v3

    goto :goto_1
.end method

.method private setLteRoamingOn(Z)V
    .locals 7

    const/4 v4, 0x0

    const-string/jumbo v3, "LGTRoamingReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setLteRoamingOn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "ril.currentplmn"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "oversea"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "setLteRoamingOn"

    const-string/jumbo v4, "Because currentplmn is unknown, this function should be finished."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/phone/LGTRoamingReceiver;->mcontext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "lte_roaming_mode_on"

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "LGTRoamingReceiver"

    const-string/jumbo v5, "setNetworkSelectionModeAutomatic"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/LGTRoamingReceiver;->sendImsiStatusChangeNotiForNoWait()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    :cond_1
    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/phone/LGTRoamingReceiver;->mcontext:Landroid/content/Context;

    const v5, 0x7f0d09e8

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/phone/LGTRoamingReceiver;->mcontext:Landroid/content/Context;

    const v5, 0x7f0d09e9

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private updateCountryInfo(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_1

    :cond_0
    const v2, 0x7f0d076d

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCatService()Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v2, "LGTRoamingReceiver"

    const-string/jumbo v3, "getCatService returned null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    invoke-interface {v0}, Lcom/android/internal/telephony/cat/AppInterface;->sendEnvelopeToTriggerBip()V

    const-string/jumbo v2, "LGTRoamingReceiver"

    const-string/jumbo v3, "Sent envelope to trigger BIP..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object p1, p0, Lcom/android/phone/LGTRoamingReceiver;->mcontext:Landroid/content/Context;

    const-string/jumbo v1, "mobile_newtork_style_for_lgt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "LGTRoamingReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "kr.co.uplus.UPDATE_COUNTRY_INFO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/phone/LGTRoamingReceiver;->updateCountryInfo(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "kr.co.uplus.SET_LTE_ROAMING_IMSI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "lte_roaming"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/LGTRoamingReceiver;->enable:Z

    iget-boolean v1, p0, Lcom/android/phone/LGTRoamingReceiver;->isDisableRoamingMultiIMSI:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/phone/LGTRoamingReceiver;->enable:Z

    invoke-direct {p0, v1}, Lcom/android/phone/LGTRoamingReceiver;->setLteRoamingOn(Z)V

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/phone/LGTRoamingReceiver;->enable:Z

    invoke-direct {p0, v1}, Lcom/android/phone/LGTRoamingReceiver;->setLteRoamingIMSI(Z)V

    goto :goto_0
.end method
