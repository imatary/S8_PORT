.class public Lcom/android/phone/mobilenetworks/BootCompleteHandler;
.super Landroid/os/HandlerThread;
.source "BootCompleteHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/mobilenetworks/BootCompleteHandler$1;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -wrap0(Lcom/android/phone/mobilenetworks/BootCompleteHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/BootCompleteHandler;->showDataOffWarningPopup()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "BootCompleteHandler"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/android/phone/mobilenetworks/BootCompleteHandler$1;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/BootCompleteHandler$1;-><init>(Lcom/android/phone/mobilenetworks/BootCompleteHandler;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/BootCompleteHandler;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/BootCompleteHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method private showDataOffWarningPopup()V
    .locals 4

    const-string/jumbo v2, "data_off_warning_popup_on_bootup"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isFactoryMode()Z

    move-result v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/BootCompleteHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isSetupWizardFinished(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isMobileDataOn()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEmergencyMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isUltraPowerSavingMode()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "BootCompleteHandler"

    const-string/jumbo v3, "mTelephonyManager showMobileDataOffDialogWhenBootup got"

    invoke-static {v2, v3}, Lcom/android/phone/mobilenetworks/MobileNetworkLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->showMobileDataOffDialogWhenBootup()V

    goto :goto_0
.end method


# virtual methods
.method public onPhoneCreated()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/BootCompleteHandler;->mHandler:Landroid/os/Handler;

    const v1, 0x1d6cc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
