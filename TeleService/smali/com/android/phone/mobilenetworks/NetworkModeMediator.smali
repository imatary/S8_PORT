.class public Lcom/android/phone/mobilenetworks/NetworkModeMediator;
.super Ljava/lang/Object;
.source "NetworkModeMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/mobilenetworks/NetworkModeMediator$1;
    }
.end annotation


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mLoader:Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;

.field private mNetworkModeController:Lcom/android/phone/mobilenetworks/INetworkModeController;

.field private final mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/phone/mobilenetworks/NetworkModeMediator;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/mobilenetworks/NetworkModeMediator;)Lcom/android/phone/mobilenetworks/INetworkModeController;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mNetworkModeController:Lcom/android/phone/mobilenetworks/INetworkModeController;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/mobilenetworks/NetworkModeMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->updateSelectionInternal()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "NetworkModeMediator"

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/phone/mobilenetworks/NetworkModeMediator$1;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/NetworkModeMediator$1;-><init>(Lcom/android/phone/mobilenetworks/NetworkModeMediator;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    new-instance v0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mLoader:Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;

    invoke-direct {v0, p0, p3}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;-><init>(Lcom/android/phone/mobilenetworks/NetworkModeMediator;I)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mNetworkModeController:Lcom/android/phone/mobilenetworks/INetworkModeController;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "network_mode_list_usa_type"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;

    invoke-direct {v0, p0, p3}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;-><init>(Lcom/android/phone/mobilenetworks/NetworkModeMediator;I)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mNetworkModeController:Lcom/android/phone/mobilenetworks/INetworkModeController;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;

    invoke-direct {v0, p0, p3}, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;-><init>(Lcom/android/phone/mobilenetworks/NetworkModeMediator;I)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mNetworkModeController:Lcom/android/phone/mobilenetworks/INetworkModeController;

    goto :goto_0
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

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "isCmccSimInsertedInOtherSlot: true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "isCmccSimInsertedInOtherSlot: false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private updateSelectionInternal()V
    .locals 5

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateSelectionInternal"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mNetworkModeController:Lcom/android/phone/mobilenetworks/INetworkModeController;

    invoke-interface {v3}, Lcom/android/phone/mobilenetworks/INetworkModeController;->getCurrentNetworkType()I

    move-result v1

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setSelection(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v3}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->clearSelection()V

    :cond_1
    const-string/jumbo v3, "network_mode_cmcc"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mNetworkModeController:Lcom/android/phone/mobilenetworks/INetworkModeController;

    invoke-interface {v3}, Lcom/android/phone/mobilenetworks/INetworkModeController;->getActivePhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCHN;->isCTCSIM(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateSelectionInternal: isCTCSIM && NT_MODE_GSM_ONLY"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v3}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->clearSelection()V

    :cond_2
    return-void
.end method


# virtual methods
.method public checkAndSetEnabled()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mNetworkModeController:Lcom/android/phone/mobilenetworks/INetworkModeController;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-interface {v0, v1}, Lcom/android/phone/mobilenetworks/INetworkModeController;->checkAndSetEnabled(Landroid/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public cleanUp()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mNetworkModeController:Lcom/android/phone/mobilenetworks/INetworkModeController;

    invoke-interface {v0}, Lcom/android/phone/mobilenetworks/INetworkModeController;->cleanUp()V

    return-void
.end method

.method public dismissProgressDialog()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "dismissProgressDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public fetchNetworkModeList()V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "fetchNetworkModeList..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->getActivePhoneId()I

    move-result v0

    const-string/jumbo v1, "network_mode_list_usa_type"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mLoader:Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->fetch(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;II)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "network_mode_list_lte"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mLoader:Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->fetch(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;II)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mLoader:Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->fetch(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;II)V

    goto :goto_0
.end method

.method public getActivePhoneId()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mNetworkModeController:Lcom/android/phone/mobilenetworks/INetworkModeController;

    invoke-interface {v0}, Lcom/android/phone/mobilenetworks/INetworkModeController;->getActivePhoneId()I

    move-result v0

    return v0
.end method

.method public getCaptionFromValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mLoader:Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;

    invoke-virtual {v0, p1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->getCaptionFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentNetworkType()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mNetworkModeController:Lcom/android/phone/mobilenetworks/INetworkModeController;

    invoke-interface {v0}, Lcom/android/phone/mobilenetworks/INetworkModeController;->getCurrentNetworkType()I

    move-result v0

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPreferredNetworkType()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mNetworkModeController:Lcom/android/phone/mobilenetworks/INetworkModeController;

    invoke-interface {v0}, Lcom/android/phone/mobilenetworks/INetworkModeController;->getPreferredNetworkTypeRequest()V

    return-void
.end method

.method public isPreferenceStarted()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public prepare()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mNetworkModeController:Lcom/android/phone/mobilenetworks/INetworkModeController;

    invoke-interface {v0}, Lcom/android/phone/mobilenetworks/INetworkModeController;->prepare()V

    const-string/jumbo v0, "disable_network_mode"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 4

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getDefaultDataSlotId()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMobileDataEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dataSlotID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ProxyController;->enableDataConnectivity(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/ProxyController;->disableDataConnectivity(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setPreferenceEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreferenceEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v0, p1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setSelectedItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mNetworkModeController:Lcom/android/phone/mobilenetworks/INetworkModeController;

    invoke-interface {v0, p1}, Lcom/android/phone/mobilenetworks/INetworkModeController;->setSelectedItem(I)V

    return-void
.end method

.method public setUp()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->fetchNetworkModeList()V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mNetworkModeController:Lcom/android/phone/mobilenetworks/INetworkModeController;

    invoke-interface {v0}, Lcom/android/phone/mobilenetworks/INetworkModeController;->setUp()V

    return-void
.end method

.method public showProgressDialog(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showProgressDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mProgressDialog:Landroid/app/ProgressDialog;

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d03a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public teardown()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mNetworkModeController:Lcom/android/phone/mobilenetworks/INetworkModeController;

    invoke-interface {v0}, Lcom/android/phone/mobilenetworks/INetworkModeController;->teardown()V

    return-void
.end method

.method public updateDefaultSummary(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mLoader:Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;

    invoke-virtual {v1, p1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->getSummary(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDefaultSummary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public updateGlobalSummary(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateGlobalSummary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mLoader:Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;

    invoke-virtual {v1, p1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->getGlobalSummary(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method

.method public updateSelection(I)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setSelection(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSelection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateSelection: failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public updateState(I)V
    .locals 13

    const/16 v12, 0xc

    const/16 v11, 0xb

    const/16 v10, 0x9

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-nez v7, :cond_0

    return-void

    :cond_0
    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, p1

    const-string/jumbo v7, "persist.radio.user.change"

    const-string/jumbo v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "preferred_change_by_mobile_data_exceptional_case"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "persist.radio.setnwkmode"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "networkType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", preferredNetworkType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x3

    if-ne p1, v7, :cond_9

    if-ne v4, v10, :cond_9

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "networkType is changed to NT_MODE_LTE_GSM_WCDMA"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x9

    :cond_1
    :goto_0
    move v3, p1

    :cond_2
    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mNetworkModeController:Lcom/android/phone/mobilenetworks/INetworkModeController;

    invoke-interface {v7}, Lcom/android/phone/mobilenetworks/INetworkModeController;->getActivePhoneId()I

    move-result v0

    const-string/jumbo v7, "network_mode_list_chn_type"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "network type from modem :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isLTESupportSim(I)Z

    move-result v7

    if-nez v7, :cond_a

    if-ne p1, v10, :cond_a

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "CMCC SIM card but it\'s 2g Sim, so display network mode as 3/2 auto"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "networkType is changed to NT_MODE_WCDMA_PREF"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const/4 v3, 0x0

    :cond_3
    :goto_1
    const-string/jumbo v7, "remove_network_mode_lte"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-ne p1, v10, :cond_4

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "REMOVE_NETWORK_MODE_LTE , so display network mode as 3/2 auto"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "networkType is changed to NT_MODE_WCDMA_PREF"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const/4 v3, 0x0

    :cond_4
    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mLoader:Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;

    invoke-virtual {v7, v3}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->getSummary(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", networkTypeForPreference: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", summary: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "network_mode_list_zvv"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    if-eq p1, v11, :cond_f

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->getNotificationMgr()Lcom/android/phone/NotificationMgr;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/NotificationMgr;->canceLteOnly()V

    :cond_5
    :goto_2
    const-string/jumbo v7, "network_mode_list_chn_type"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string/jumbo v7, "network_mode_list_tmo"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    :cond_6
    if-nez v6, :cond_16

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "Chn network type : current networktype isn\'t in network array. So, this type is shown only in summary"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_12

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mContext:Landroid/content/Context;

    const v9, 0x7f0d0445

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_3
    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v7}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->clearSelection()V

    :cond_8
    :goto_4
    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mNetworkModeController:Lcom/android/phone/mobilenetworks/INetworkModeController;

    invoke-interface {v7, p1}, Lcom/android/phone/mobilenetworks/INetworkModeController;->setNetworkType(I)V

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mNetworkModeController:Lcom/android/phone/mobilenetworks/INetworkModeController;

    invoke-interface {v7, p1}, Lcom/android/phone/mobilenetworks/INetworkModeController;->setRequestedNetworkType(I)V

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void

    :cond_9
    const/4 v7, 0x2

    if-ne p1, v7, :cond_1

    if-ne v4, v12, :cond_1

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "networkType is changed to NT_MODE_LTE_WCDMA"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xc

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v7, "network_mode_cmcc"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCHN;->isCMCCSIM(I)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_b
    const-string/jumbo v7, "network_mode_cmcc"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string/jumbo v7, "support_wcdma_fdd_lte"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_c
    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "don\'t need to change type here"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_d
    invoke-direct {p0, v0}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->isCmccSimInsertedInOtherSlot(I)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "it\'s not CMCC SIM card and CMCC Sim in other slot, so display network mode as 2g only"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "networkType is changed to NT_MODE_GSM_ONLY"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    goto/16 :goto_1

    :cond_e
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCHN;->isCUSIM(I)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "CU sim is inserted in m os upgrade model, so display network mode as 2g only"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "networkType is changed to NT_MODE_GSM_ONLY"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    goto/16 :goto_1

    :cond_f
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->getNotificationMgr()Lcom/android/phone/NotificationMgr;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/NotificationMgr;->notifyLteOnly()V

    goto/16 :goto_2

    :cond_10
    const-string/jumbo v7, "network_mode_list_tmo"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eq p1, v12, :cond_11

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->getNotificationMgr()Lcom/android/phone/NotificationMgr;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/NotificationMgr;->canceDisable2g()V

    goto/16 :goto_2

    :cond_11
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->getNotificationMgr()Lcom/android/phone/NotificationMgr;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/NotificationMgr;->notifyDisable2g()V

    goto/16 :goto_2

    :cond_12
    const/4 v7, 0x2

    if-ne p1, v7, :cond_13

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mContext:Landroid/content/Context;

    const v9, 0x7f0d044d

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_13
    const/4 v7, 0x1

    if-ne p1, v7, :cond_14

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mContext:Landroid/content/Context;

    const v9, 0x7f0d044e

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_14
    if-ne p1, v10, :cond_15

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mContext:Landroid/content/Context;

    const v9, 0x7f0d044b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_15
    if-ne p1, v12, :cond_7

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mContext:Landroid/content/Context;

    const v9, 0x7f0d044a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_16
    const-string/jumbo v7, "feature_india"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    if-ne p1, v11, :cond_17

    invoke-static {v0}, Lcom/android/phone/TelephonyConfig;->isRjioSIM(I)Z

    move-result v7

    if-eqz v7, :cond_18

    :cond_17
    const-string/jumbo v7, "network_mode_list_zvv"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    if-ne p1, v11, :cond_19

    if-nez v6, :cond_19

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mContext:Landroid/content/Context;

    const v9, 0x7f0d043f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v7}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->clearSelection()V

    goto/16 :goto_4

    :cond_18
    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "Do not support lte only."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mContext:Landroid/content/Context;

    const v9, 0x7f0d043f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v7}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->clearSelection()V

    goto/16 :goto_4

    :cond_19
    if-nez v6, :cond_1e

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " mode is not included in supported network mode, will be shown PREFERRED_NT_MODE mode"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "network_mode_list_lte"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    const-string/jumbo v7, "remove_network_mode_lte"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    :cond_1a
    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "networkType is changed to PREFERRED_NT_MODE"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    :goto_5
    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setSelection(Ljava/lang/String;)Z

    move-result v5

    const-string/jumbo v7, "feature_kdi"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    if-eqz v5, :cond_1d

    :cond_1b
    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    iget-object v8, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mLoader:Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;

    invoke-virtual {v8, p1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->getSummary(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_1c
    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "networkType is changed to NT_MODE_LTE_GSM_WCDMA"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x9

    goto :goto_5

    :cond_1d
    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "do nothing"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    const-string/jumbo v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mNetworkModeController:Lcom/android/phone/mobilenetworks/INetworkModeController;

    instance-of v7, v7, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mNetworkModeController:Lcom/android/phone/mobilenetworks/INetworkModeController;

    check-cast v7, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;

    invoke-virtual {v7}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->getDisabledNetworkType()I

    move-result v2

    if-lez v2, :cond_1f

    invoke-virtual {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->updateDefaultSummary(I)V

    goto/16 :goto_4

    :cond_1f
    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v7, v6}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->updateSelection(I)Z

    goto/16 :goto_4

    :cond_20
    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->mPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v7, v6}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->updateSelection(I)Z

    goto/16 :goto_4
.end method
