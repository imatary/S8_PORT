.class public Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;
.super Ljava/lang/Object;
.source "NetworkModeMultiSimController.java"

# interfaces
.implements Lcom/android/phone/mobilenetworks/INetworkModeController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$1;,
        Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$2;,
        Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$NetworkModePhoneStateListener;
    }
.end annotation


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mActivePhoneId:I

.field private final mContext:Landroid/content/Context;

.field private mCtcInsertedPhoneId:I

.field private mCtcSimOffReceiver:Landroid/content/BroadcastReceiver;

.field private mDDSDialog:Landroid/app/AlertDialog;

.field private mDialog:Landroid/app/AlertDialog;

.field private mFailDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mIsChangeNetworkTypeStep2:Z

.field private mIsDisconnectingData:Z

.field private mIsEnabled:Z

.field private mIsEnabledForCtcOff:Z

.field private mIsOtherPhone3G:Z

.field private final mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

.field private mNetworkType:I

.field private mNetworkTypeForStep2:I

.field private mNetworkTypeSim0:I

.field private mNetworkTypeSim1:I

.field private mNetworkTypeSim2:I

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$NetworkModePhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPhones:[Lcom/android/internal/telephony/Phone;

.field public mPrevNetworkType:[I

.field private mRequestedNetworkType:I

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTriggerChangeNetwork:Z


# direct methods
.method static synthetic -get0(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mFailDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mRequestedNetworkType:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsOtherPhone3G:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->addOrReplacePhoneStateListeners()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->setDdsChangeForNetworkMode()V

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/mobilenetworks/NetworkModeMediator;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "NetworkModeMultiSimController"

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [I

    sget v2, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    aput v2, v1, v4

    aput v3, v1, v3

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mPrevNetworkType:[I

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneCount()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mPhones:[Lcom/android/internal/telephony/Phone;

    sget v1, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    iput v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkType:I

    sget v1, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    iput v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim0:I

    sget v1, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    iput v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim1:I

    sget v1, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    iput v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim2:I

    sget v1, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    iput v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mRequestedNetworkType:I

    iput v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeForStep2:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mCtcInsertedPhoneId:I

    iput-boolean v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsEnabled:Z

    new-instance v1, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$1;

    invoke-direct {v1, p0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$1;-><init>(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;)V

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mPhoneStateListeners:Ljava/util/Map;

    new-instance v1, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$2;

    invoke-direct {v1, p0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$2;-><init>(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;)V

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    iput p2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mPhones:[Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-void
.end method

.method private addOrReplacePhoneStateListeners()V
    .locals 8

    iget-object v6, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "addOrReplacePhoneStateListeners..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mPhoneStateListeners:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v5, :cond_1

    invoke-direct {p0, v5, v4}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->containsSubId(Ljava/util/List;I)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_1
    iget-object v6, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/PhoneStateListener;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    iget-object v6, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v2, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$NetworkModePhoneStateListener;

    invoke-direct {v2, p0, v4}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$NetworkModePhoneStateListener;-><init>(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;I)V

    const/16 v6, 0x40

    invoke-static {v2, v6}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v6, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private changeDefaultDataSubId()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "changeDefaultDataSubId"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "changeDefaultDataSubId : isDataConnectedNow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsDisconnectingData:Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->setMobileDataEnable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "changeDefaultDataSubId: change data service network"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "SimSetPreferLTE"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "set SimSetPreferLTE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->setDefaultDataSubId(I)V

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsDisconnectingData:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "changeDefaultDataSubId: setDataEnabled(true)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->setMobileDataEnable(Z)V

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->sendBroadcastCheckAndSetEnabledIntent(Z)V

    return-void
.end method

.method private checkDdsChangeAfterSetPreferredNetworkMode()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "gsm.sim.operator.numeric"

    const-string/jumbo v3, "0"

    invoke-static {v5, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "gsm.sim.operator.numeric"

    const-string/jumbo v3, "0"

    invoke-static {v6, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "feature_multisim_popup_progress_simplification"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "check :  FEATURE_MULTISIM_POPUP_PROGRESS_SIMPLIFICATION ] because the feature isn\'t defined,  don\'t change dds"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "checkDdsChangeAfterSetPreferredNetworkMode: false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    const-string/jumbo v2, "support_wcdma_in_slave"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mRequestedNetworkType:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mRequestedNetworkType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_1
    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsCHN;->isWcdmaLimitationSimInSlaveSlot(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mRequestedNetworkType:I

    if-ne v2, v6, :cond_4

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Don\'t need change data service network,  network type is gsm only"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsCHN;->isWcdmaLimitationSimInMasterSlot(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "check : [selected network is SUPPORT_WCDMA_IN_SLAVE] because not slave limitation sim is inserted in slave slot and 3/2 mode is selected, don\'t change dds"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSubIdUsingPhoneId(I)I

    move-result v3

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "check : Don\'t need change data service network, already activePhone is dataPrefered SIM."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "AddDataLock"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_RIL_ConfigSimLock"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkDdsChangeAfterSetPreferredNetworkMode: isPreferenceStarted:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v4}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->isPreferenceStarted()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_7
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "check : [DataLockFeature] Don\'t need change data service network."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private containsSubId(Ljava/util/List;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)Z"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    if-ne v1, p2, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private getPhoneCountNeedCheck()I
    .locals 1

    const-string/jumbo v0, "need_change_network_mode_for_slot_no_active_sim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneCount()I

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getActivatedSimNum()I

    move-result v0

    return v0
.end method

.method private handleChangeNetworkTypeForCtcSimOff()V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "handleChangeNetworkTypeForCtcSimOff"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0452

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$7;

    invoke-direct {v2, p0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$7;-><init>(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;)V

    const v3, 0x1040013

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private handleDdsChangeAfterSetPreferredNetworkMode()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleDdsChangeAfterSetPreferredNetworkMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->checkDdsChangeAfterSetPreferredNetworkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->changeDefaultDataSubId()V

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsDisconnectingData:Z

    iput-boolean v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mTriggerChangeNetwork:Z

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsDisconnectingData:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleDdsChangeAfterSetPreferredNetworkMode: setMobileDataEnabled(true)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->setMobileDataEnabled(Z)V

    goto :goto_0
.end method

.method private handleDdsChangeForNetworkMode()V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mContext:Landroid/content/Context;

    const v5, 0x7f0d0454

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    iget v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mRequestedNetworkType:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->getCaptionFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "force_lte_for_bolt_sim_after_device_reboot_complete"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mRequestedNetworkType:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Because mRequestedNetworkType was overridden, so request network mode name will be null "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->getCaptionFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mContext:Landroid/content/Context;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v7

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    const v6, 0x7f0d0453

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-direct {p0, v4}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->isCtcSimInsertedInOtherSlotForCtcOff(I)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0452

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleDDSChangeForNetworkMode: slotNameInactivePhone - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", neteworkModeNameInactivePhone - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", dialogMessage - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$5;

    invoke-direct {v5, p0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$5;-><init>(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;)V

    const v6, 0x1040013

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$6;

    invoke-direct {v5, p0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$6;-><init>(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mDDSDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private isCmccSimInsertedInOtherSlot(I)Z
    .locals 2

    const-string/jumbo v0, "network_mode_cmcc"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCHN;->isCMCCSIM(I)Z

    move-result v0

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "isCmccSimInsertedInOtherSlot: true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "isCmccSimInsertedInOtherSlot: false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private isCtcSimInsertedInOtherSlotForCtcOff(I)Z
    .locals 2

    const-string/jumbo v0, "feature_multisim_popup_progress_for_ctc_off"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "chn_cdma_network_on_all_rat"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsCHN;->isCTCSIM(I)Z

    move-result v0

    if-nez v0, :cond_0

    xor-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCHN;->isCTCSIM(I)Z

    move-result v0

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "isCtcSimInsertedInOtherSlotForCtcOff: true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "isCtcSimInsertedInOtherSlotForCtcOff: false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private isDualSimMpsDataLock(I)Z
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, "AddDataLock"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_RIL_ConfigSimLock"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "gsm.sim.operator.numeric"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The length of simNumeric is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", numeric : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    aget-object v0, v1, p1

    const-string/jumbo v2, "persist.radio.networklocklist"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[DataLockFeature] Enable for operator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", simSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_1
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "DataLockFeature is disable"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method private isWcdmaAnaGsmSetInSlaveSlot(I)Z
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "support_wcdma_in_slave"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "because chipset don\'t support 75 mode, slave isn\'t  3g/2g"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->checkDdsChangeAfterSetPreferredNetworkMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsOtherPhone3G:Z

    if-eqz v0, :cond_2

    :cond_1
    xor-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCHN;->isWcdmaLimitationSimInSlaveSlot(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "because cmcc or ctc sim is inserted in salve slot, slave isn\'t  3g/2g"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "maset change and other slot is 2g"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsCHN;->isWcdmaLimitationSimInMasterSlot(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "because ctc sim is inserted in master slot, slave isn\'t  3g/2g"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private sendBroadcastCheckAndSetEnabledIntent(Z)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.phone.intent.action.locale.CHECK_AND_SET_ENABED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "updateFromRil"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendBroadcastCheckAndSetEnabledIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private setDdsChangeForNetworkMode()V
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->checkDdsChangeAfterSetPreferredNetworkMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-direct {p0, v0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->isCtcSimInsertedInOtherSlotForCtcOff(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->handleChangeNetworkTypeForCtcSimOff()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setDdsChangeForNetworkMode: data already disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mRequestedNetworkType:I

    invoke-virtual {p0, v0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->changeNetworkType(I)V

    goto :goto_0
.end method

.method private setNetworkTypeForactivesimslot(I)V
    .locals 6

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setNetworkTypeForactivesimslot mActivePhoneId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mNetworkType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkType:I

    iput p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mRequestedNetworkType:I

    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    if-nez v2, :cond_0

    iput p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim0:I

    :goto_0
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mRequestedNetworkType:I

    invoke-virtual {v2, v3}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->updateDefaultSummary(I)V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start setNetworkTypeForactivesimslot CHN sNetworkTypeSim : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_network_mode"

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    iget v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkType:I

    invoke-static {v2, v3, v4, v5}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    if-nez v2, :cond_2

    const-string/jumbo v2, "persist.radio.user.change"

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setNetworkTypeForactivesimslot: mActivePhoneId- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mRequestedNetworkType- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mRequestedNetworkType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mNetworkType- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x44e

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mPhones:[Lcom/android/internal/telephony/Phone;

    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    aget-object v2, v2, v3

    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mRequestedNetworkType:I

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    return-void

    :cond_0
    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iput p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim1:I

    goto/16 :goto_0

    :cond_1
    iput p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim2:I

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v2, "persist.radio.user.change"

    const-string/jumbo v3, "2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setNetworkTypePreStepForLSI(I)V
    .locals 8

    const/16 v7, 0x44e

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkType:I

    iput p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mRequestedNetworkType:I

    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    xor-int/lit8 v1, v2, 0x1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setNetworkTypeForLSI: set Phone.NT_MODE_GSM_ONLY to mPhones["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-boolean v6, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsChangeNetworkTypeStep2:Z

    iput p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeForStep2:I

    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    if-nez v2, :cond_0

    iput p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim0:I

    :goto_0
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mRequestedNetworkType:I

    invoke-virtual {v2, v3}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->updateDefaultSummary(I)V

    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->isWcdmaAnaGsmSetInSlaveSlot(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    invoke-virtual {v0, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    :goto_1
    invoke-direct {p0, v5}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->sendBroadcastCheckAndSetEnabledIntent(Z)V

    iput-boolean v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsEnabled:Z

    return-void

    :cond_0
    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    if-ne v2, v6, :cond_1

    iput p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim1:I

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim2:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    invoke-virtual {v0, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_1
.end method


# virtual methods
.method public changeNetworkType(I)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "changeNetworkType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mRequestedNetworkType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mRequestedNetworkType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->getPhoneCountNeedCheck()I

    move-result v0

    invoke-static {v6}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isShouldDimNetworkMode(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v5}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isShouldDimNetworkMode(I)Z

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "changeNetworkType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", activeSimNum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mIsOtherPhone3G:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsOtherPhone3G:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isShouldDimNetworkMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "sim2_2g_only"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "changeNetworkType: Network.SIM2_2G_ONLY"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->setPreferredNetworkTypeRequest(I)V

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "changeNetworkType: mNetworkType - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "disable_change_network_mode_for_none_bolt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "changeNetworkType: isShouldDimNetworkMode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->setPreferredNetworkTypeRequest(I)V

    goto :goto_1

    :cond_3
    if-gt v0, v5, :cond_4

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "changeNetworkType: activeSimNum <= 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->setPreferredNetworkTypeRequest(I)V

    goto :goto_1

    :cond_4
    if-ne v0, v7, :cond_0

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "changeNetworkType: activeSimNum == 2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "support_wcdma_in_slave"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mRequestedNetworkType:I

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mRequestedNetworkType:I

    if-ne v2, v7, :cond_6

    :cond_5
    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsCHN;->isWcdmaLimitationSimInSlaveSlot(I)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_6
    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mRequestedNetworkType:I

    if-eq v2, v5, :cond_7

    iget-boolean v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsOtherPhone3G:Z

    if-eqz v2, :cond_a

    :cond_7
    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mRequestedNetworkType:I

    if-eq v2, v5, :cond_c

    iget-boolean v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsOtherPhone3G:Z

    if-eqz v2, :cond_c

    const-string/jumbo v2, "qcom_cross_mapping"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "change_network_mode_for_sipc"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->setPreferredNetworkTypeRequest(I)V

    :goto_2
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "g3g -> 3g2g(OK)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsCHN;->isWcdmaLimitationSimInMasterSlot(I)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "[selected network is SUPPORT_WCDMA_IN_SLAVE] 4g2g -> 4g3g"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->setNetworkTypeForactivesimslot(I)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->setPreferredNetworkTypeRequest(I)V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "g2g -> 3g2g)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->setNetworkTypePreStepForLSI(I)V

    goto :goto_2

    :cond_c
    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->setNetworkTypeForactivesimslot(I)V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "When 2g only is selected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public checkAndSetEnabled(Landroid/preference/Preference;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimState(I)I

    move-result v1

    const-string/jumbo v3, "false"

    const-string/jumbo v4, "ril.SetEnabledFlag"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-ne v1, v7, :cond_2

    :cond_0
    const/4 v2, 0x1

    :goto_1
    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkAndSetEnabledForMultiSIM activePhoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", rilSetEnabledFlag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", simState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mIsEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", simStateIsNotReady: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsEnabled:Z

    if-nez v3, :cond_5

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim0:I

    invoke-virtual {v3, v4}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->updateState(I)V

    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    if-ne v3, v7, :cond_4

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim1:I

    invoke-virtual {v3, v4}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->updateState(I)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim2:I

    invoke-virtual {v3, v4}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->updateState(I)V

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_6
    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-direct {p0, v3}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->isDualSimMpsDataLock(I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_7
    const-string/jumbo v3, "support_soft_sim"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSRomaingVirtualSlot(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "According to activated Soft sim, disable to choose network mode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_8
    const-string/jumbo v3, "network_mode_cmcc"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsCHN;->isCMCCSIM(I)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_9
    const-string/jumbo v3, "network_mode_cmcc"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string/jumbo v3, "support_wcdma_fdd_lte"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_a
    const-string/jumbo v3, "network_mode_cmcc"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string/jumbo v3, "sim2_2g_only"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-static {v3}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isCmccSimAnd2gSim(I)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "According to CMCC specification, disable to choose network mode #3"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_b
    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-direct {p0, v3}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->isCmccSimInsertedInOtherSlot(I)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "According to CMCC specification, disable to choose network mode #1"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_c
    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsCHN;->isCUSIM(I)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "According to CMCC specification, disable to choose network mode #2 because CU sim is inserted in m os upgrade model."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_d
    const-string/jumbo v3, "sim2_2g_only"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    if-ne v3, v7, :cond_e

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Slot2 support 2g only. user could not choose network mode so disable it"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_e
    const-string/jumbo v3, "disable_change_network_mode_for_none_bolt"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-static {v3}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isShouldDimNetworkMode(I)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Disable change network mode for none Bolt Sim"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_f
    const-string/jumbo v3, "omadm_lte_forced_not_support_network_mode_popup"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Disable change network mode for lte only"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_10
    if-nez v0, :cond_11

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ril.SetEnabledFlag :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_11
    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "checkAndSetEnabledForMultiSIM - No reason to disable so enable this preference"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public cleanUp()V
    .locals 6

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "cleanUp..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mPhoneStateListeners:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "feature_multisim_popup_progress_for_ctc_off"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mCtcSimOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "cleanUp: unregister ctc sim off receiver"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mCtcSimOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mCtcSimOffReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cleanUp: Receiver not registered:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getActivePhoneId()I
    .locals 1

    iget v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    return v0
.end method

.method public getCurrentNetworkType()I
    .locals 1

    iget v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkType:I

    return v0
.end method

.method public getDisabledNetworkType()I
    .locals 3

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDisabledNetworkType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsEnabled:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim0:I

    return v0

    :cond_0
    iget v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim1:I

    return v0

    :cond_1
    iget v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim2:I

    return v0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public getPreferredNetworkTypeRequest()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "getPreferredNetworkTypeRequest"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v5}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimState(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "- simState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_0

    if-ne v4, v9, :cond_2

    :cond_0
    iget-object v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "- disable preference"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v5, v8}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->setPreferenceEnabled(Z)V

    :goto_0
    const/16 v5, 0x44d

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mPhones:[Lcom/android/internal/telephony/Phone;

    iget v6, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    aget-object v5, v5, v6

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    iput-boolean v8, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsOtherPhone3G:Z

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->getPhoneCountNeedCheck()I

    move-result v5

    if-le v5, v9, :cond_3

    const/4 v3, 0x0

    :goto_1
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->getPhoneCountNeedCheck()I

    move-result v5

    if-ge v3, v5, :cond_3

    iget v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    if-eq v3, v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "- simSlotNum: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v5, v5, v3

    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPreferredNetworkTypeResponse: ar.exception - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    const/4 v4, 0x0

    aget v2, v3, v4

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "get preferred network type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v3, v2}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->updateState(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "ArrayIndexOutOfBoundsException Caught"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v3, v6}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->setPreferenceEnabled(Z)V

    goto :goto_0
.end method

.method public handleDataConnectionStateChanged(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleDataConnectionStateChanged: mIsDisconnectingData - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsDisconnectingData:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mTriggerChangeNetwork - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mTriggerChangeNetwork:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsDisconnectingData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mTriggerChangeNetwork:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Data is disconnected, so start changing network mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mTriggerChangeNetwork:Z

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleDataConnectionStateChanged: mRequestedNetworkType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mRequestedNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mNetworkType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mRequestedNetworkType:I

    invoke-virtual {p0, v0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->changeNetworkType(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public prepare()V
    .locals 5

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "prepare..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "feature_multisim_popup_progress_for_ctc_off"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "prepare: register ctc sim off recceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.settings.subscription_deactivate"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mCtcSimOffReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "com.android.settings.permission.subscription"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v1, "remove_mobile_networks_preferred_network_mode"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "prepare: not remove network mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->getPreferredNetworkTypeRequest()V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v1}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->checkAndSetEnabled()V

    :cond_1
    return-void
.end method

.method public setNetworkType(I)V
    .locals 0

    iput p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkType:I

    return-void
.end method

.method public setNetworkTypeForMultisimAfterCtcSimOff()V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setNetworkTypeForMultisimAfterCtcSimOff: mNetworkTypeSim0- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim0:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mNetworkTypeSim1- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mCtcInsertedPhoneId:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsEnabledForCtcOff:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_network_mode"

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim0:I

    invoke-static {v2, v3, v6, v4}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_network_mode"

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim1:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v5, v4}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->printPreferredNetworkModeValue()V

    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    if-nez v2, :cond_1

    const-string/jumbo v2, "persist.radio.user.change"

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setNetworkTypeForMultisimAfterCtcSimOff: mActivePhoneId- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mRequestedNetworkType- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mRequestedNetworkType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mNetworkType- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x44e

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mPhones:[Lcom/android/internal/telephony/Phone;

    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    aget-object v2, v2, v3

    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mRequestedNetworkType:I

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    invoke-direct {p0, v6}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->sendBroadcastCheckAndSetEnabledIntent(Z)V

    iput-boolean v6, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsEnabled:Z

    iput-boolean v6, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsEnabledForCtcOff:Z

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "setNetworkTypeForMultisimAfterCtcSimOff: return"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v2, "persist.radio.user.change"

    const-string/jumbo v3, "2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPreferredNetworkTypeRequest(I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPreferredNetworkTypeRequest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", networkType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mNetworkType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkType:I

    iput p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mRequestedNetworkType:I

    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    if-nez v2, :cond_1

    iput p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim0:I

    iput v6, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim1:I

    iput v6, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim2:I

    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->isWcdmaAnaGsmSetInSlaveSlot(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iput v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim1:I

    iput v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim2:I

    :cond_0
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim0:I

    invoke-virtual {v2, v3}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->updateDefaultSummary(I)V

    :goto_0
    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->isCtcSimInsertedInOtherSlotForCtcOff(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    aget v2, v2, v5

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->deactivateSubId(I)V

    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "phone2_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    iput v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mCtcInsertedPhoneId:I

    iput-boolean v6, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsEnabledForCtcOff:Z

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "setPreferredNetworkTypeRequest: return"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    if-ne v2, v6, :cond_3

    iput v6, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim0:I

    iput p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim1:I

    iput v6, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim2:I

    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->isWcdmaAnaGsmSetInSlaveSlot(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim0:I

    iput v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim2:I

    :cond_2
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim1:I

    invoke-virtual {v2, v3}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->updateDefaultSummary(I)V

    goto :goto_0

    :cond_3
    iput v6, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim0:I

    iput v6, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim1:I

    iput p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim2:I

    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->isWcdmaAnaGsmSetInSlaveSlot(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iput v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim0:I

    iput v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim1:I

    :cond_4
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim2:I

    invoke-virtual {v2, v3}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->updateDefaultSummary(I)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "phone1_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPreferredNetworkTypeRequest: mNetworkTypeSim0 - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim0:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mNetworkTypeSim1 - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_network_mode"

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim0:I

    invoke-static {v2, v3, v5, v4}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_network_mode"

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeSim1:I

    invoke-static {v2, v3, v6, v4}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->printPreferredNetworkModeValue()V

    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    if-nez v2, :cond_7

    const-string/jumbo v2, "persist.radio.user.change"

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPreferredNetworkTypeRequest: mActivePhoneId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x44e

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mPhones:[Lcom/android/internal/telephony/Phone;

    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    aget-object v2, v2, v3

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    invoke-direct {p0, v5}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->sendBroadcastCheckAndSetEnabledIntent(Z)V

    iput-boolean v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsEnabled:Z

    return-void

    :cond_7
    const-string/jumbo v2, "persist.radio.user.change"

    const-string/jumbo v3, "2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPreferredNetworkTypeResponse: ar.exception - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    iput-boolean v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsEnabled:Z

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPreferredNetworkTypeResponse: getPreferredNetworkType from mPhones["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v4}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mPhones:[Lcom/android/internal/telephony/Phone;

    iget v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    aget-object v4, v4, v5

    const/16 v5, 0x44d

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    iput-boolean v8, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsChangeNetworkTypeStep2:Z

    invoke-direct {p0, v7}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->sendBroadcastCheckAndSetEnabledIntent(Z)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->handleDdsChangeAfterSetPreferredNetworkMode()V

    return-void

    :cond_1
    iget-boolean v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsChangeNetworkTypeStep2:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "setPreferredNetworkTypeResponse: mIsChangeNetworkTypeStep2 is true"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsChangeNetworkTypeStep2:Z

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkTypeForStep2:I

    invoke-virtual {p0, v4}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->setPreferredNetworkTypeRequest(I)V

    return-void

    :cond_2
    iput-boolean v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsEnabled:Z

    invoke-direct {p0, v7}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->sendBroadcastCheckAndSetEnabledIntent(Z)V

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "setPreferredNetworkTypeResponse: set preferred network type done"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "cust_network_sel_menu4_o2"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "mobile_network_settings_shared_prefs"

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mRequestedNetworkType:I

    if-ne v4, v7, :cond_3

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getMobileDataEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "setPreferredNetworkTypeResponse: MOBILE_DATA_ENABLE = 0 "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->setMobileDataEnable(Z)V

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v4, "previous_mobile_data_to_be_restored"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "previous_mobile_data_to_be_restored"

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "setPreferredNetworkTypeResponse: MOBILE_DATA_ENABLE = 1 "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->setMobileDataEnable(Z)V

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v4, "previous_mobile_data_to_be_restored"

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public setRequestedNetworkType(I)V
    .locals 0

    iput p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mRequestedNetworkType:I

    return-void
.end method

.method public setSelectedItem(I)V
    .locals 6

    const-string/jumbo v3, "force_lte_for_bolt_sim_after_device_reboot_complete"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    if-ne p1, v3, :cond_0

    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mActivePhoneId:I

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->isBoltSIM(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Override select networkType 9 => 11 for PS only Sim"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xb

    :cond_0
    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mNetworkType:I

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "setSelectedItem: return"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mRequestedNetworkType:I

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getDataState()I

    move-result v2

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getState()Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

    move-result-object v3

    sget-object v4, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;->IDLE:Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->isMultiSimIdleState()Z

    move-result v1

    :cond_2
    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSelectedItem: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", data state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isStateIdle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isMMSuse()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Because MMS is used, network mode can\'t be changed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Phone state is not IDLE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mContext:Landroid/content/Context;

    const v5, 0x7f0d0565

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mContext:Landroid/content/Context;

    const v5, 0x7f0d06af

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mContext:Landroid/content/Context;

    const v5, 0x7f0d056c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$4;

    invoke-direct {v5, p0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$4;-><init>(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mFailDialog:Landroid/app/AlertDialog;

    :goto_1
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->checkDdsChangeAfterSetPreferredNetworkMode()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->handleDdsChangeForNetworkMode()V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->setDdsChangeForNetworkMode()V

    goto :goto_1
.end method

.method public setUp()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setUp..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    const-string/jumbo v0, "feature_multisim_popup_progress_for_ctc_off"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$3;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$3;-><init>(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mCtcSimOffReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method public teardown()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "teardown..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mFailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mFailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mFailDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mDDSDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mDDSDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mDDSDialog:Landroid/app/AlertDialog;

    :cond_1
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mDialog:Landroid/app/AlertDialog;

    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsDisconnectingData:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Teardown value of mIsDisconnectingData ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsDisconnectingData:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->setMobileDataEnabled(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mIsDisconnectingData:Z

    :cond_3
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
