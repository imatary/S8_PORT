.class public Lcom/android/phone/BootupListener;
.super Landroid/content/BroadcastReceiver;
.source "BootupListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BootupListener$1;
    }
.end annotation


# static fields
.field private static mBoltSimSlot:I

.field private static mIsAllSimReady:Z

.field private static mIsNeedChangeNetworkModeBoltSim:Z

.field private static mIsNeedChangeNetworkModeOtherSim:Z

.field private static mIsNeedGetNetworkModeOtherSim:Z

.field private static mSaveSimIdReady:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mPhones:[Lcom/android/internal/telephony/Phone;


# direct methods
.method static synthetic -get0(Lcom/android/phone/BootupListener;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/BootupListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/BootupListener;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/BootupListener;->actionAfterBootCompleted(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/BootupListener;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/BootupListener;->actionAfterSimStateChanged(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/BootupListener;Landroid/os/Message;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/BootupListener;->handleGetPreferredNetworkTypeForNonBoltResponse(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/BootupListener;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/BootupListener;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/BootupListener;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/BootupListener;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/BootupListener;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/BootupListener;->setDriveLinksetting(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/phone/BootupListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/BootupListener;->setForceLteAfterSimSwap()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/BootupListener;->mIsNeedChangeNetworkModeOtherSim:Z

    sput-boolean v0, Lcom/android/phone/BootupListener;->mIsNeedGetNetworkModeOtherSim:Z

    sput-boolean v0, Lcom/android/phone/BootupListener;->mIsNeedChangeNetworkModeBoltSim:Z

    const/4 v0, -0x2

    sput v0, Lcom/android/phone/BootupListener;->mSaveSimIdReady:I

    sput-boolean v1, Lcom/android/phone/BootupListener;->mIsAllSimReady:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/BootupListener;->mPhones:[Lcom/android/internal/telephony/Phone;

    new-instance v0, Lcom/android/phone/BootupListener$1;

    invoke-direct {v0, p0}, Lcom/android/phone/BootupListener$1;-><init>(Lcom/android/phone/BootupListener;)V

    iput-object v0, p0, Lcom/android/phone/BootupListener;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private actionAfterBootCompleted(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v2, "support_softphone"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BootupListener"

    const-string/jumbo v3, "SUPPORT_SOFTPHONE, enable CallSettingsActivity"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.phone"

    const-string/jumbo v3, "com.android.phone.callsettings.CallSettingsActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "internet_call_settings_visibility"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    const-string/jumbo v2, "block_data_during_call"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/phone/BootupListener;->getEnableProtectCall(Landroid/content/Context;)V

    :cond_2
    const-string/jumbo v2, "enhanced_phone_voice_record"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/phone/BootupListener;->setRecordCallTypeDefaultValue(Landroid/content/Context;)V

    :cond_3
    const-string/jumbo v2, "hw_home_key"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "anykey_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    return-void
.end method

.method private actionAfterSimStateChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x5

    const-string/jumbo v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x1

    const-string/jumbo v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimState(I)I

    move-result v2

    invoke-static {v9}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimState(I)I

    move-result v3

    :cond_0
    const-string/jumbo v5, "BootupListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " INTENT_KEY_ICC_STATE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ss"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mIsNeedChangeNetworkModeBoltSim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/phone/BootupListener;->mIsNeedChangeNetworkModeBoltSim:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v5, "force_lte_for_bolt_sim_after_device_reboot_complete"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/android/phone/BootupListener;->mIsNeedChangeNetworkModeBoltSim:Z

    if-eqz v5, :cond_1

    invoke-direct {p0, p2, p1}, Lcom/android/phone/BootupListener;->setForceLteAfterBoot(Landroid/content/Intent;Landroid/content/Context;)V

    :cond_1
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "vowifi_in_can"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, p1, v2, v0}, Lcom/android/phone/BootupListener;->setWfcDisableUnmatchIMSI(Landroid/content/Context;ILjava/lang/String;)V

    :cond_2
    const-string/jumbo v5, "fdn_contact_search"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "ltn_sdnname_display"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    if-eq v2, v8, :cond_4

    if-ne v3, v8, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/phone/FDNContactsCache;->getInstance()Lcom/android/phone/FDNContactsCache;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/phone/FDNContactsCache;->init(Landroid/content/Context;)V

    :cond_5
    const-string/jumbo v5, "feature_kor"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-ne v2, v8, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "hd_voice_network_prefer"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/phone/BootupListener;->setHdVoiceNetworkEnable(Landroid/content/Context;I)V

    :cond_6
    const-string/jumbo v5, "feature_skt"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-direct {p0, p1}, Lcom/android/phone/BootupListener;->setVolteNotiSettingfor(Landroid/content/Context;)V

    :cond_7
    return-void
.end method

.method private getEnableProtectCall(Landroid/content/Context;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "enable_call_protect_when_calling"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "BootupListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enable_call_protect_when_calling : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "feature_skt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "enable_call_protect_when_calling"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "BootupListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enable_call_protect_when_calling : null->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private getNetworkModeSetForNotBolt()I
    .locals 1

    const-string/jumbo v0, "support_wcdma_in_slave"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private handleGetPreferredNetworkTypeForNonBoltResponse(Landroid/os/Message;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x0

    aget v1, v2, v3

    const-string/jumbo v2, "BootupListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get preferred network type for non bolt  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/BootupListener;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, p2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/BootupListener;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, p2

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v5}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "BootupListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get preferred network type for non bolt 1, exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x0

    aget v1, v2, v3

    const-string/jumbo v2, "BootupListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get preferred network type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "BootupListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get preferred network type, exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    const-string/jumbo v1, "force_lte_for_bolt_sim_after_device_reboot_complete"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BootupListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set preferred network type, exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    sput-boolean v5, Lcom/android/phone/BootupListener;->mIsNeedChangeNetworkModeOtherSim:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/android/phone/BootupListener;->mIsNeedChangeNetworkModeOtherSim:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/BootupListener;->mPhones:[Lcom/android/internal/telephony/Phone;

    sget v2, Lcom/android/phone/BootupListener;->mBoltSimSlot:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/BootupListener;->mPhones:[Lcom/android/internal/telephony/Phone;

    sget v2, Lcom/android/phone/BootupListener;->mBoltSimSlot:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/phone/BootupListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    const-string/jumbo v1, "BootupListener"

    const-string/jumbo v2, "setPreferredNetworkType done!"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    sput-boolean v5, Lcom/android/phone/BootupListener;->mIsNeedChangeNetworkModeOtherSim:Z

    goto :goto_0
.end method

.method private isShouldForceNetworkMode(I)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsMultiSIM;->isBoltSIM(I)Z

    move-result v1

    if-eqz v1, :cond_0

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsMultiSIM;->isBoltSIM(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v1, "BootupListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " simSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  isShouldForceNetworkMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setDriveLinksetting(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const-string/jumbo v0, "drivelink_navigation"

    const-string/jumbo v1, "INTENT_KEY_NAVIGATION_PACKAGE_NAME"

    const-string/jumbo v3, "BootupListener"

    const-string/jumbo v4, "ACTION_DRIVELINK"

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v3, "INTENT_KEY_NAVIGATION_PACKAGE_NAME"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "INTENT_KEY_NAVIGATION_PACKAGE_NAME"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "drivelink_navigation"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v3, "BootupListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NAVI : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_0
    return-void
.end method

.method private setForceLteAfterBoot(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v0

    const-string/jumbo v2, "BootupListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertedSimNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    invoke-direct {p0, p1, p2, v1}, Lcom/android/phone/BootupListener;->setForceLteOver2SimAfterBoot(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/android/phone/BootupListener;->setforceLteLess2SimAfterBoot(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setForceLteAfterSimSwap()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/BootupListener;->mIsNeedChangeNetworkModeOtherSim:Z

    sput-boolean v0, Lcom/android/phone/BootupListener;->mIsNeedGetNetworkModeOtherSim:Z

    sput-boolean v0, Lcom/android/phone/BootupListener;->mIsNeedChangeNetworkModeBoltSim:Z

    const/4 v0, -0x2

    sput v0, Lcom/android/phone/BootupListener;->mSaveSimIdReady:I

    sput-boolean v1, Lcom/android/phone/BootupListener;->mIsAllSimReady:Z

    return-void
.end method

.method private setForceLteOver2SimAfterBoot(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string/jumbo v3, "LOADED"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "slot"

    invoke-virtual {p1, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "BootupListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "simIdReady = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    sget v3, Lcom/android/phone/BootupListener;->mSaveSimIdReady:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_1

    sput v1, Lcom/android/phone/BootupListener;->mSaveSimIdReady:I

    :cond_0
    :goto_0
    sget-boolean v3, Lcom/android/phone/BootupListener;->mIsAllSimReady:Z

    if-eqz v3, :cond_7

    sput-boolean v7, Lcom/android/phone/BootupListener;->mIsNeedChangeNetworkModeBoltSim:Z

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getDefaultDataSlotId()I

    move-result v0

    const-string/jumbo v3, "BootupListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dataSlotID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v2, 0x0

    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/BootupListener;->mPhones:[Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget v3, Lcom/android/phone/BootupListener;->mSaveSimIdReady:I

    if-eq v3, v8, :cond_0

    if-eq v1, v8, :cond_0

    sget v3, Lcom/android/phone/BootupListener;->mSaveSimIdReady:I

    if-eq v3, v1, :cond_0

    sput-boolean v6, Lcom/android/phone/BootupListener;->mIsAllSimReady:Z

    const-string/jumbo v3, "BootupListener"

    const-string/jumbo v4, "All sim card are ready"

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsMultiSIM;->isBoltSIM(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/BootupListener;->mPhones:[Lcom/android/internal/telephony/Phone;

    xor-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    if-eqz v3, :cond_3

    if-ne v0, v2, :cond_3

    const-string/jumbo v3, "qcom_cross_mapping"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, p2, v2}, Lcom/android/phone/BootupListener;->setLteOnlyForQualcom(Landroid/content/Context;I)V

    sput-boolean v7, Lcom/android/phone/BootupListener;->mIsNeedGetNetworkModeOtherSim:Z

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/phone/BootupListener;->mPhones:[Lcom/android/internal/telephony/Phone;

    xor-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    invoke-direct {p0}, Lcom/android/phone/BootupListener;->getNetworkModeSetForNotBolt()I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/BootupListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    sput-boolean v6, Lcom/android/phone/BootupListener;->mIsNeedChangeNetworkModeOtherSim:Z

    sput v2, Lcom/android/phone/BootupListener;->mBoltSimSlot:I

    sput-boolean v7, Lcom/android/phone/BootupListener;->mIsNeedGetNetworkModeOtherSim:Z

    goto :goto_3

    :cond_5
    sget-boolean v3, Lcom/android/phone/BootupListener;->mIsNeedGetNetworkModeOtherSim:Z

    if-eqz v3, :cond_7

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsMultiSIM;->isBoltSIM(I)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/phone/BootupListener;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v7

    if-eqz v3, :cond_6

    const-string/jumbo v3, "BootupListener"

    const-string/jumbo v4, "MESSAGE_GET_PREFERRED_NETWORK_TYPE_FOR_NON_BOLT_1 for Sim slot 0"

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v3, p0, Lcom/android/phone/BootupListener;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/android/phone/BootupListener;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    :cond_6
    invoke-static {v6}, Lcom/android/phone/PhoneUtilsMultiSIM;->isBoltSIM(I)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/phone/BootupListener;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v6

    if-eqz v3, :cond_7

    const-string/jumbo v3, "BootupListener"

    const-string/jumbo v4, "MESSAGE_GET_PREFERRED_NETWORK_TYPE_FOR_NON_BOLT_2 for Sim slot 1"

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v3, p0, Lcom/android/phone/BootupListener;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/android/phone/BootupListener;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    :cond_7
    return-void
.end method

.method private setHdVoiceNetworkEnable(Landroid/content/Context;I)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hd_voice_network_pref"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p2

    const-string/jumbo v1, "BootupListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hd_voice_network_pref : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hd_voice_network_pref"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v1, "BootupListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hd_voice_network_pref : null->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setLteOnlyForQualcom(Landroid/content/Context;I)V
    .locals 6

    const/4 v5, 0x1

    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/android/phone/BootupListener;->getNetworkModeSetForNotBolt()I

    move-result v1

    if-ne p2, v5, :cond_0

    invoke-direct {p0}, Lcom/android/phone/BootupListener;->getNetworkModeSetForNotBolt()I

    move-result v0

    const/16 v1, 0xb

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_network_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_network_mode"

    invoke-static {v2, v3, v5, v1}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->printPreferredNetworkModeValue()V

    const-string/jumbo v2, "BootupListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "QCOM: SET_PREFERRED_NETWORK_TYPE for slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/BootupListener;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, p2

    iget-object v3, p0, Lcom/android/phone/BootupListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    return-void
.end method

.method private setRecordCallTypeDefaultValue(Landroid/content/Context;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "record_calls_automatically_type"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "BootupListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "record_calls_automatically_type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "record_calls_automatically_type"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "BootupListener"

    const-string/jumbo v3, "set record_calls_automatically_type default"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setVolteNotiSettingfor(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "volte_noti_settings"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v3, "BootupListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "volte_noti_settings : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    const-string/jumbo v3, "volte_outgoing_calltype_default_on"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "volte_noti_settings"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private setWfcDisableUnmatchIMSI(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_calling_rogers_imsi"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "BootupListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWfcDisableUnmatchIMSI IMSI : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / IMSI_DB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "wifi_call_enable"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setforceLteLess2SimAfterBoot(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v0

    const-string/jumbo v1, "LOADED"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v2, Lcom/android/phone/BootupListener;->mIsNeedChangeNetworkModeBoltSim:Z

    const-string/jumbo v1, "BootupListener"

    const-string/jumbo v2, "Sim card is ready"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/BootupListener;->mPhones:[Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-direct {p0, v0}, Lcom/android/phone/BootupListener;->isShouldForceNetworkMode(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/BootupListener;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    const-string/jumbo v1, "qcom_cross_mapping"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/android/phone/BootupListener;->setLteOnlyForQualcom(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "need_change_network_mode_for_slot_no_active_sim"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/BootupListener;->mPhones:[Lcom/android/internal/telephony/Phone;

    xor-int/lit8 v2, v0, 0x1

    xor-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/phone/BootupListener;->mPhones:[Lcom/android/internal/telephony/Phone;

    xor-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    invoke-direct {p0}, Lcom/android/phone/BootupListener;->getNetworkModeSetForNotBolt()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/BootupListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    sput-boolean v4, Lcom/android/phone/BootupListener;->mIsNeedChangeNetworkModeOtherSim:Z

    sput v0, Lcom/android/phone/BootupListener;->mBoltSimSlot:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/BootupListener;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/phone/BootupListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/android/phone/BootupListener;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/BootupListener;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/phone/BootupListener;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0

    :cond_4
    if-ne v0, v4, :cond_0

    iget-object v1, p0, Lcom/android/phone/BootupListener;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/BootupListener;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/phone/BootupListener;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "BootupListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iput-object p1, p0, Lcom/android/phone/BootupListener;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/BootupListener;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BootupListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v2, "com.sec.android.automotive.drivelink.NAVIGATION_PACKAGE_NAME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/BootupListener;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BootupListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/BootupListener;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "force_lte_for_bolt_sim_after_device_reboot_complete"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/BootupListener;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
