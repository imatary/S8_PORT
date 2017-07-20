.class public Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;
.super Ljava/lang/Object;
.source "NetworkModeGlobalController.java"

# interfaces
.implements Lcom/android/phone/mobilenetworks/INetworkModeController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$-void_showGlobalNetworkDialog_int_networkType_LambdaImpl0;,
        Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_PREFERRED_NETWORK_TYPE:I


# instance fields
.field private mActivePhoneId:I

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

.field private mNetworkType:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRequestedNetworkType:I

.field private mShowGlobalNetworkDialog:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;)Lcom/android/phone/mobilenetworks/NetworkModeMediator;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mNetworkType:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->rebootDevice()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->setGlobalMode(Lcom/android/phone/MobileNetworkSettings;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;Lcom/android/phone/MobileNetworkSettings;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->setGsmOperatorSelectionExpandEnabled(Lcom/android/phone/MobileNetworkSettings;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->showGsmUmtsDialog(Lcom/android/phone/MobileNetworkSettings;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    sput v0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->DEFAULT_PREFERRED_NETWORK_TYPE:I

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/mobilenetworks/NetworkModeMediator;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    iput v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mNetworkType:I

    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    iput v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mRequestedNetworkType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mShowGlobalNetworkDialog:Z

    new-instance v0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$1;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$1;-><init>(Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    iput p2, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mActivePhoneId:I

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private checkAbsentSimStateAndDisplayToast()Z
    .locals 4

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isAbsentSimState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mContext:Landroid/content/Context;

    const v2, 0x7f0d088a

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    const-string/jumbo v1, "NetworkModeGlobalController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkAbsentSimStateAndDisplayToast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private rebootDevice()V
    .locals 3

    const-string/jumbo v1, "NetworkModeGlobalController"

    const-string/jumbo v2, "rebootDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startSafeActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private resetNetworkModeToDefault()V
    .locals 5

    const-string/jumbo v2, "NetworkModeGlobalController"

    const-string/jumbo v3, "resetNetworkModeToDefault"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->DEFAULT_PREFERRED_NETWORK_TYPE:I

    iput v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mNetworkType:I

    sget v2, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->DEFAULT_PREFERRED_NETWORK_TYPE:I

    iput v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mRequestedNetworkType:I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mNetworkType:I

    invoke-virtual {v2, v3}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->updateSelection(I)Z

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mNetworkType:I

    invoke-virtual {v2, v3}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->updateDefaultSummary(I)V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_network_mode"

    sget v4, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->DEFAULT_PREFERRED_NETWORK_TYPE:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x44e

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget v2, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->DEFAULT_PREFERRED_NETWORK_TYPE:I

    invoke-static {v2, v1}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setPreferredNetworkType(ILandroid/os/Message;)V

    return-void
.end method

.method private setGlobalMode(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 4

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getGlobalType()I

    move-result v0

    const-string/jumbo v1, "NetworkModeGlobalController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setGlobalMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v1, v0}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->updateSelection(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->setPreferredNetworkTypeRequest(I)V

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->setGsmOperatorSelectionExpandEnabled(Lcom/android/phone/MobileNetworkSettings;Z)V

    return-void
.end method

.method private setGsmOperatorSelectionExpandEnabled(Lcom/android/phone/MobileNetworkSettings;Z)V
    .locals 3

    const-string/jumbo v0, "NetworkModeGlobalController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGsmOperatorSelectionExpandEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/phone/MobileNetworkSettings;->getGsmUmtsOptions()Lcom/android/phone/GsmUmtsOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/phone/MobileNetworkSettings;->getGsmUmtsOptions()Lcom/android/phone/GsmUmtsOptions;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/phone/GsmUmtsOptions;->setOperatorSelectionExpandEnabled(Z)V

    :cond_0
    return-void
.end method

.method private showGlobalNetworkDialog(I)V
    .locals 10

    const/16 v9, 0xb

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "NetworkModeGlobalController"

    const-string/jumbo v8, "showGlobalNetworkDialog"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mRequestedNetworkType:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mContext:Landroid/content/Context;

    instance-of v7, v7, Lcom/android/phone/MobileNetworkSettings;

    if-eqz v7, :cond_0

    const-string/jumbo v7, "NetworkModeGlobalController"

    const-string/jumbo v8, "showGlobalNetworkDialog: context is MobileNetworkSettings"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/phone/MobileNetworkSettings;

    :cond_0
    if-nez v3, :cond_1

    return-void

    :cond_1
    const-string/jumbo v7, "global_network_cdma_gsm_enable"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0xa

    if-eq v7, p1, :cond_2

    const/16 v7, 0x16

    if-ne v7, p1, :cond_4

    :cond_2
    move v2, v5

    :goto_0
    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->checkAbsentSimStateAndDisplayToast()Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "NetworkModeGlobalController"

    const-string/jumbo v7, "showGlobalNetworkDialog: 1"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    new-instance v4, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$-void_showGlobalNetworkDialog_int_networkType_LambdaImpl0;

    invoke-direct {v4, p0, v1, p1}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$-void_showGlobalNetworkDialog_int_networkType_LambdaImpl0;-><init>(Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;Lcom/android/phone/MobileNetworkSettings;I)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->showGlobalNetworkDialogforUSC(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-direct {p0, v3, v6}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->setGsmOperatorSelectionExpandEnabled(Lcom/android/phone/MobileNetworkSettings;Z)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    move v2, v6

    goto :goto_0

    :cond_5
    const/16 v7, 0x8

    if-ne v7, p1, :cond_7

    const-string/jumbo v5, "global_network_cdma_gsm_enable_for_usc"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "NetworkModeGlobalController"

    const-string/jumbo v6, "showGlobalNetworkDialog: 2"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/phone/MobileNetworkSettings;->getButtonDataRoam()Landroid/preference/TwoStatePreference;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_6
    const-string/jumbo v5, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->checkAbsentSimStateAndDisplayToast()Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "NetworkModeGlobalController"

    const-string/jumbo v6, "showGlobalNetworkDialog: 3"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x7f0d0886

    invoke-direct {p0, v3, p1, v5}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->showSearchingForDialog(Lcom/android/phone/MobileNetworkSettings;II)V

    goto :goto_1

    :cond_7
    const/4 v7, 0x3

    if-ne v7, p1, :cond_9

    const-string/jumbo v5, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string/jumbo v5, "NetworkModeGlobalController"

    const-string/jumbo v6, "showGlobalNetworkDialog: 4"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x7f0d0887

    invoke-direct {p0, v3, p1, v5}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->showSearchingForDialog(Lcom/android/phone/MobileNetworkSettings;II)V

    goto :goto_1

    :cond_8
    const-string/jumbo v5, "NetworkModeGlobalController"

    const-string/jumbo v6, "showGlobalNetworkDialog: 5"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->showGsmUmtsDialog(Lcom/android/phone/MobileNetworkSettings;)V

    goto :goto_1

    :cond_9
    const-string/jumbo v7, "network_mode_global_lte_cdma_gsm_umts"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/16 v7, 0x9

    if-ne v7, p1, :cond_b

    const-string/jumbo v5, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string/jumbo v5, "NetworkModeGlobalController"

    const-string/jumbo v6, "showGlobalNetworkDialog: 6"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x7f0d0888

    invoke-direct {p0, v3, p1, v5}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->showSearchingForDialog(Lcom/android/phone/MobileNetworkSettings;II)V

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v5, "NetworkModeGlobalController"

    const-string/jumbo v6, "showGlobalNetworkDialog: 7"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->showGsmUmtsDialog(Lcom/android/phone/MobileNetworkSettings;)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v7, "network_mode_global_lte_wcdma"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string/jumbo v7, "NetworkModeGlobalController"

    const-string/jumbo v8, "showGlobalNetworkDialog: 8"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v9, p1, :cond_c

    const-string/jumbo v7, "NetworkModeGlobalController"

    const-string/jumbo v8, "displayed lte network change popup"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->getInstance()Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->resetSendGlobalNetworkDialogMessageDelayed()V

    :cond_c
    const/4 v7, 0x2

    if-ne v7, p1, :cond_d

    :goto_2
    invoke-direct {p0, v3, v5}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->setGsmOperatorSelectionExpandEnabled(Lcom/android/phone/MobileNetworkSettings;Z)V

    goto/16 :goto_1

    :cond_d
    move v5, v6

    goto :goto_2

    :cond_e
    const-string/jumbo v5, "network_mode_global_lte_gsm"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    if-ne v9, p1, :cond_f

    const-string/jumbo v5, "NetworkModeGlobalController"

    const-string/jumbo v7, "showGlobalNetworkDialog: 9"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "NetworkModeGlobalController"

    const-string/jumbo v7, "displayed lte network change popup"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->getInstance()Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->resetSendGlobalNetworkDialogMessageDelayed()V

    invoke-direct {p0, v3, v6}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->setGsmOperatorSelectionExpandEnabled(Lcom/android/phone/MobileNetworkSettings;Z)V

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v5, "NetworkModeGlobalController"

    const-string/jumbo v7, "showGlobalNetworkDialog..."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "global_network_cdma_gsm_enable_for_usc"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x4

    if-ne v5, p1, :cond_10

    invoke-virtual {v3}, Lcom/android/phone/MobileNetworkSettings;->getButtonDataRoam()Landroid/preference/TwoStatePreference;

    move-result-object v5

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v7

    invoke-virtual {v5, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_10
    invoke-direct {p0, v3, v6}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->setGsmOperatorSelectionExpandEnabled(Lcom/android/phone/MobileNetworkSettings;Z)V

    goto/16 :goto_1
.end method

.method private showGsmUmtsDialog(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 5

    const/4 v1, 0x1

    const-string/jumbo v2, "NetworkModeGlobalController"

    const-string/jumbo v3, "showGsmUmtsDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/phone/MobileNetworkSettings;->getGsmUmtsOptions()Lcom/android/phone/GsmUmtsOptions;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/phone/MobileNetworkSettings;->getGsmUmtsOptions()Lcom/android/phone/GsmUmtsOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/GsmUmtsOptions;->showGlobalGsmSystemSelectDialog()V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const-string/jumbo v2, "NetworkModeGlobalController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v1, :cond_1

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->setGsmOperatorSelectionExpandEnabled(Lcom/android/phone/MobileNetworkSettings;Z)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showRebootDialog(I)V
    .locals 3

    const-string/jumbo v0, "NetworkModeGlobalController"

    const-string/jumbo v1, "showRebootDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d087c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$2;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$2;-><init>(Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;I)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$3;

    invoke-direct {v1, p0}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$3;-><init>(Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showSearchingForDialog(Lcom/android/phone/MobileNetworkSettings;II)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$4;-><init>(Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;ILcom/android/phone/MobileNetworkSettings;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$5;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$5;-><init>(Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;Lcom/android/phone/MobileNetworkSettings;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method synthetic -com_android_phone_mobilenetworks_NetworkModeGlobalController_lambda$1(Lcom/android/phone/MobileNetworkSettings;ILandroid/content/DialogInterface;I)V
    .locals 3

    const/4 v1, 0x0

    packed-switch p4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-interface {p3}, Landroid/content/DialogInterface;->cancel()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/phone/MobileNetworkSettings;->getButtonDataRoam()Landroid/preference/TwoStatePreference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setDataRoamingEnabled(Z)V

    invoke-virtual {p0, p2}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->setPreferredNetworkTypeRequest(I)V

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mNetworkType:I

    const/16 v2, 0xa

    if-eq v2, v1, :cond_1

    iget v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mNetworkType:I

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->setPreferredNetworkTypeRequest(I)V

    :cond_1
    invoke-interface {p3}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public changeNetworkType(I)V
    .locals 5

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_network_mode"

    sget v4, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->DEFAULT_PREFERRED_NETWORK_TYPE:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "NetworkModeGlobalController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "changeNetworkType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", settingsNetworkMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v0, :cond_0

    const-string/jumbo v2, "preferred_network_mode_reboot_enable"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isCdmaIncluded(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->showRebootDialog(I)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->showGlobalNetworkDialog(I)V

    return-void

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mShowGlobalNetworkDialog:Z

    invoke-virtual {p0, p1}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->setPreferredNetworkTypeRequest(I)V

    return-void
.end method

.method public checkAndSetEnabled(Landroid/preference/Preference;)V
    .locals 0

    return-void
.end method

.method public cleanUp()V
    .locals 0

    return-void
.end method

.method public getActivePhoneId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentNetworkType()I
    .locals 1

    iget v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mNetworkType:I

    return v0
.end method

.method public getPreferredNetworkTypeRequest()V
    .locals 4

    const-string/jumbo v2, "NetworkModeGlobalController"

    const-string/jumbo v3, "getPreferredNetworkTypeRequest"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x44d

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getPreferredNetworkType(Landroid/os/Message;)V

    return-void
.end method

.method public getPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 8

    const/16 v7, 0x16

    const/4 v6, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    const-string/jumbo v3, "NetworkModeGlobalController"

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

    if-nez v3, :cond_4

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    aget v1, v3, v6

    const-string/jumbo v3, "NetworkModeGlobalController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPreferredNetworkTypeResponse: newNetworkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "preferred_network_mode"

    sget v5, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->DEFAULT_PREFERRED_NETWORK_TYPE:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "NetworkModeGlobalController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPreferredNetworkTypeResponse: settingsNetworkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    :cond_0
    const-string/jumbo v3, "NetworkModeGlobalController"

    const-string/jumbo v4, "getPreferredNetworkTypeResponse: accepted value"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isSupportTdscdma()Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "network_mode_global_tdscdma"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne v1, v7, :cond_1

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getGlobalType()I

    move-result v1

    :cond_1
    const-string/jumbo v3, "NetworkModeGlobalController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPreferredNetworkTypeResponse: changed into globalmode. newNetworkType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eq v1, v2, :cond_3

    const-string/jumbo v3, "NetworkModeGlobalController"

    const-string/jumbo v4, "handleGetPreferredNetworkTypeResponse: newNetworkType != settingsNetworkMode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "preferred_network_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    iput v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mNetworkType:I

    iput v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mRequestedNetworkType:I

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v3, v1}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->updateGlobalSummary(I)V

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v3, v1}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->updateSelection(I)Z

    :cond_4
    :goto_0
    return-void

    :cond_5
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

    const/16 v3, 0x9

    if-eq v1, v3, :cond_0

    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    const/16 v3, 0xb

    if-eq v1, v3, :cond_0

    const/16 v3, 0xc

    if-eq v1, v3, :cond_0

    const/16 v3, 0xd

    if-eq v1, v3, :cond_0

    const/16 v3, 0xe

    if-eq v1, v3, :cond_0

    const/16 v3, 0xf

    if-eq v1, v3, :cond_0

    const/16 v3, 0x10

    if-eq v1, v3, :cond_0

    const/16 v3, 0x11

    if-eq v1, v3, :cond_0

    const/16 v3, 0x12

    if-eq v1, v3, :cond_0

    const/16 v3, 0x13

    if-eq v1, v3, :cond_0

    const/16 v3, 0x14

    if-eq v1, v3, :cond_0

    const/16 v3, 0x15

    if-eq v1, v3, :cond_0

    if-eq v1, v7, :cond_0

    const-string/jumbo v3, "NetworkModeGlobalController"

    const-string/jumbo v4, "getPreferredNetworkTypeResponse: reset to default"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->resetNetworkModeToDefault()V

    goto :goto_0
.end method

.method public prepare()V
    .locals 2

    const-string/jumbo v0, "NetworkModeGlobalController"

    const-string/jumbo v1, "prepare..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "remove_mobile_networks_preferred_network_mode"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "network_mode_cmcc"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "NetworkModeGlobalController"

    const-string/jumbo v1, "prepare: NETWORK_MODE_CMCC"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "1"

    iget v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mActivePhoneId:I

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSimIccType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mActivePhoneId:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCHN;->isChinaSIM(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mActivePhoneId:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCHN;->isCMCCSIM(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->setPreferenceEnabled(Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "NetworkModeGlobalController"

    const-string/jumbo v1, "prepare: getPreferredNetworkTypeRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->getPreferredNetworkTypeRequest()V

    goto :goto_0
.end method

.method public setNetworkType(I)V
    .locals 0

    iput p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mNetworkType:I

    return-void
.end method

.method public setPreferredNetworkTypeRequest(I)V
    .locals 6

    const-string/jumbo v3, "NetworkModeGlobalController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPreferredNetworkTypeRequest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, p1

    if-ltz p1, :cond_0

    const/16 v3, 0x16

    if-le p1, v3, :cond_1

    :cond_0
    sget v2, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->setRequestedNetworkType(I)V

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v3, p1}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->updateGlobalSummary(I)V

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "preferred_network_mode"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v3, "NetworkModeGlobalController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPreferredNetworkType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v3}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v3, 0x44e

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setPreferredNetworkType(ILandroid/os/Message;)V

    return-void
.end method

.method public setPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    const-string/jumbo v1, "NetworkModeGlobalController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreferredNetworkTypeResponse: ar.exception - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mShowGlobalNetworkDialog:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "NetworkModeGlobalController"

    const-string/jumbo v2, "when only user change network mode, global network dialog should be shown in response"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mRequestedNetworkType:I

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->showGlobalNetworkDialog(I)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mShowGlobalNetworkDialog:Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->getPreferredNetworkTypeRequest()V

    goto :goto_0
.end method

.method public setRequestedNetworkType(I)V
    .locals 0

    iput p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mRequestedNetworkType:I

    return-void
.end method

.method public setSelectedItem(I)V
    .locals 2

    iget v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mNetworkType:I

    if-ne p1, v0, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "NetworkModeGlobalController"

    const-string/jumbo v1, "setSelectedItem: return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "global_network_cdma_gsm_enable"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NetworkModeGlobalController"

    const-string/jumbo v1, "onPreferenceTreeClick: preference == mButtonPreferredNetworkMode. so popup timer reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->getInstance()Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->resetSendGlobalNetworkDialogMessageDelayed()V

    :cond_1
    iput p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->mRequestedNetworkType:I

    invoke-virtual {p0, p1}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->changeNetworkType(I)V

    return-void
.end method

.method public setUp()V
    .locals 0

    return-void
.end method

.method public teardown()V
    .locals 2

    const-string/jumbo v0, "NetworkModeGlobalController"

    const-string/jumbo v1, "teardown..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
