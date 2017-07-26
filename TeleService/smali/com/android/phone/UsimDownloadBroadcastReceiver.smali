.class public Lcom/android/phone/UsimDownloadBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsimDownloadBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/UsimDownloadBroadcastReceiver$1;,
        Lcom/android/phone/UsimDownloadBroadcastReceiver$2;,
        Lcom/android/phone/UsimDownloadBroadcastReceiver$OmcStatus;
    }
.end annotation


# static fields
.field public static final SALES_CODE:Ljava/lang/String;

.field private static isOTAbysim:Z

.field private static isOTAstarted:Z


# instance fields
.field private AttacReject_121315:Z

.field private AttacReject_161722:Z

.field private AttacReject_ByPass:Z

.field private hasAttacReject:Z

.field private mBackgroundCall:Lcom/android/internal/telephony/Call;

.field private mContext:Landroid/content/Context;

.field private mForegroundCall:Lcom/android/internal/telephony/Call;

.field private mKTRefreshResetHandler:Landroid/os/Handler;

.field private mKTRefreshResetRunnable:Ljava/lang/Runnable;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRingingCall:Lcom/android/internal/telephony/Call;

.field private mSKTUsimdownloadSuccessHandler:Landroid/os/Handler;

.field private mSKTUsimdownloadSuccessRunnable:Ljava/lang/Runnable;

.field private mSendStartKtOta:Z

.field private networkRejectCauseCS:I

.field private networkRejectCauseIdle:I

.field private networkRejectCausePS:I

.field private networkStatusValue:I


# direct methods
.method static synthetic -get0(Lcom/android/phone/UsimDownloadBroadcastReceiver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/UsimDownloadBroadcastReceiver;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/UsimDownloadBroadcastReceiver;->ShowUsimdownloadSuccess(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/UsimDownloadBroadcastReceiver;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/UsimDownloadBroadcastReceiver;->StartRefreshReset(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->isOTAstarted:Z

    sput-boolean v0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->isOTAbysim:Z

    const-string/jumbo v0, "ro.csc.omcnw_code"

    const-string/jumbo v1, "ro.csc.sales_code"

    const-string/jumbo v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->SALES_CODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-boolean v1, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->mSendStartKtOta:Z

    iput v1, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkStatusValue:I

    iput v1, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCauseIdle:I

    iput v1, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCauseCS:I

    iput v1, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCausePS:I

    iput-boolean v1, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->hasAttacReject:Z

    iput-boolean v1, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->AttacReject_121315:Z

    iput-boolean v1, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->AttacReject_ByPass:Z

    iput-boolean v1, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->AttacReject_161722:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->mSKTUsimdownloadSuccessHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/UsimDownloadBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/phone/UsimDownloadBroadcastReceiver$1;-><init>(Lcom/android/phone/UsimDownloadBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->mSKTUsimdownloadSuccessRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->mKTRefreshResetHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/UsimDownloadBroadcastReceiver$2;

    invoke-direct {v0, p0}, Lcom/android/phone/UsimDownloadBroadcastReceiver$2;-><init>(Lcom/android/phone/UsimDownloadBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->mKTRefreshResetRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private CheckCallisAlive()Z
    .locals 2

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->mRingingCall:Lcom/android/internal/telephony/Call;

    iget-object v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->mForegroundCall:Lcom/android/internal/telephony/Call;

    iget-object v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    iget-object v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "UsimDownloadReceiver"

    const-string/jumbo v1, "CheckCallisAlive : true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "UsimDownloadReceiver"

    const-string/jumbo v1, "CheckCallisAlive : false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private OTAProgressing()Z
    .locals 2

    const-string/jumbo v0, "UsimDownload"

    const-string/jumbo v1, "ril.domesticOta"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "UsimDownloadReceiver"

    const-string/jumbo v1, "OTAProgressing : true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "UsimDownloadReceiver"

    const-string/jumbo v1, "OTAProgressing : false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private ShowUsimdownloadSuccess(Landroid/content/Context;)V
    .locals 6

    const-string/jumbo v1, "UsimDownloadReceiver"

    const-string/jumbo v2, "StartUsimdownloadSuccess"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/UsimDownloadBroadcastReceiver;->OTAProgressing()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.sktota.usim.SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "UsimDownloadReceiver"

    const-string/jumbo v2, "OTA success was delayed because usimdownload activity is not created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->mSKTUsimdownloadSuccessHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->mSKTUsimdownloadSuccessRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private StartRefreshReset(Landroid/content/Context;)V
    .locals 6

    const-string/jumbo v1, "UsimDownloadReceiver"

    const-string/jumbo v2, "StartRefreshReset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/UsimDownloadBroadcastReceiver;->CheckCallisAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "UsimDownloadReceiver"

    const-string/jumbo v2, "RefreshReset was delayed because Voice call or Video call is alive."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->mKTRefreshResetHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->mKTRefreshResetRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/android/phone/UsimDownload;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "ACTION"

    const-string/jumbo v2, "REFRESHRESTART"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "UsimDownloadReceiver"

    const-string/jumbo v2, "Start UsimDwonload"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private checkOmcEnabled()Lcom/android/phone/UsimDownloadBroadcastReceiver$OmcStatus;
    .locals 5

    const-string/jumbo v3, "UsimDownloadReceiver"

    const-string/jumbo v4, "checkOmcEnabled()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "/efs/sec_efs/omc_enabler"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "/system/omc/omc_disabler"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/system/omc/omc_half_disabler"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/phone/UsimDownloadBroadcastReceiver$OmcStatus;->ENABLED:Lcom/android/phone/UsimDownloadBroadcastReceiver$OmcStatus;

    return-object v3

    :cond_0
    const-string/jumbo v3, "UsimDownloadReceiver"

    const-string/jumbo v4, "OMC half disabler is exist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/phone/UsimDownloadBroadcastReceiver$OmcStatus;->HALF_DISABLED:Lcom/android/phone/UsimDownloadBroadcastReceiver$OmcStatus;

    return-object v3

    :cond_1
    const-string/jumbo v3, "UsimDownloadReceiver"

    const-string/jumbo v4, "OMC disabler is exist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/phone/UsimDownloadBroadcastReceiver$OmcStatus;->DISABLED:Lcom/android/phone/UsimDownloadBroadcastReceiver$OmcStatus;

    return-object v3

    :cond_2
    const-string/jumbo v3, "UsimDownloadReceiver"

    const-string/jumbo v4, "OMC enabler is exist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/phone/UsimDownloadBroadcastReceiver$OmcStatus;->ENABLED:Lcom/android/phone/UsimDownloadBroadcastReceiver$OmcStatus;

    return-object v3
.end method

.method private isRejectCause121315()Z
    .locals 4

    const/16 v3, 0xf

    const/16 v2, 0xd

    const/16 v1, 0xc

    iget v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCausePS:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCausePS:I

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCausePS:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCauseCS:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCauseCS:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCauseCS:I

    if-eq v0, v3, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method private isRejectCause161722()Z
    .locals 6

    const/16 v5, 0xff

    const/16 v4, 0xfe

    const/16 v3, 0x16

    const/16 v2, 0x11

    const/16 v1, 0x10

    iget v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCausePS:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCausePS:I

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCausePS:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCausePS:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCausePS:I

    if-eq v0, v5, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCauseCS:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCauseCS:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCauseCS:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCauseCS:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCauseCS:I

    if-eq v0, v5, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method private isRejectCauseByPass()Z
    .locals 6

    const/16 v5, 0x28

    const/16 v4, 0xa

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCauseCS:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCauseCS:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCausePS:I

    if-nez v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    iget v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCauseCS:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    :cond_3
    iget v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCausePS:I

    if-eq v0, v3, :cond_4

    iget v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCausePS:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    :cond_4
    :goto_0
    iget v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCauseCS:I

    if-eqz v0, :cond_1

    :cond_5
    iget v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCauseCS:I

    if-eq v0, v4, :cond_1

    iget v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCausePS:I

    if-eq v0, v4, :cond_1

    iget v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCauseCS:I

    if-eq v0, v5, :cond_1

    iget v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCausePS:I

    if-eq v0, v5, :cond_1

    return v2

    :cond_6
    iget v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCausePS:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_5

    goto :goto_0
.end method

.method private isSecretCodeAction(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.samsung.android.Telephony.SECRET_CODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showUsimDownload(Landroid/content/Context;)V
    .locals 10

    const/high16 v9, 0x10000000

    const/4 v8, 0x1

    const/4 v1, 0x0

    const-string/jumbo v5, "UsimDownload"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string/jumbo v5, "Download"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v5, "ril.simtype"

    const-string/jumbo v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_Common_AutoConfigurationType"

    const-string/jumbo v7, "DISABLE"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "SKC"

    sget-object v6, Lcom/android/phone/UsimDownloadBroadcastReceiver;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "KTC"

    sget-object v6, Lcom/android/phone/UsimDownloadBroadcastReceiver;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "LUC"

    sget-object v6, Lcom/android/phone/UsimDownloadBroadcastReceiver;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    sget-boolean v5, Lcom/android/phone/UsimDownloadBroadcastReceiver;->isOTAstarted:Z

    if-eqz v5, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x4

    if-eq v6, v5, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x13

    if-ne v6, v5, :cond_4

    :cond_3
    sput-boolean v8, Lcom/android/phone/UsimDownloadBroadcastReceiver;->isOTAstarted:Z

    if-eqz v1, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v5, Lcom/android/phone/UsimDownload;

    invoke-virtual {v2, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x14

    if-ne v6, v5, :cond_9

    const-string/jumbo v5, "SIMBASED_OMC"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0}, Lcom/android/phone/UsimDownloadBroadcastReceiver;->checkOmcEnabled()Lcom/android/phone/UsimDownloadBroadcastReceiver$OmcStatus;

    move-result-object v5

    sget-object v6, Lcom/android/phone/UsimDownloadBroadcastReceiver$OmcStatus;->DISABLED:Lcom/android/phone/UsimDownloadBroadcastReceiver$OmcStatus;

    if-eq v5, v6, :cond_5

    const-string/jumbo v5, "KTC"

    sget-object v6, Lcom/android/phone/UsimDownloadBroadcastReceiver;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_5
    sput-boolean v8, Lcom/android/phone/UsimDownloadBroadcastReceiver;->isOTAstarted:Z

    invoke-direct {p0}, Lcom/android/phone/UsimDownloadBroadcastReceiver;->updateNetworkStatus()V

    iget-boolean v5, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->hasAttacReject:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->AttacReject_ByPass:Z

    if-eqz v5, :cond_8

    :cond_6
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v5, Lcom/android/phone/UsimDownload;

    invoke-virtual {v2, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v5, "ACTION"

    const-string/jumbo v6, "KtRegisterMode"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v5, "UsimDownloadReceiver"

    const-string/jumbo v6, "do not activate usimdownload for ktt netcode change"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    iget-boolean v5, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->AttacReject_161722:Z

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->AttacReject_121315:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "ril.reject_121315"

    const-string/jumbo v6, "rejected"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x12

    if-ne v6, v5, :cond_1

    const-string/jumbo v5, "SIMBASED_OMC"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-direct {p0}, Lcom/android/phone/UsimDownloadBroadcastReceiver;->checkOmcEnabled()Lcom/android/phone/UsimDownloadBroadcastReceiver$OmcStatus;

    move-result-object v5

    sget-object v6, Lcom/android/phone/UsimDownloadBroadcastReceiver$OmcStatus;->DISABLED:Lcom/android/phone/UsimDownloadBroadcastReceiver$OmcStatus;

    if-eq v5, v6, :cond_a

    const-string/jumbo v5, "LUC"

    sget-object v6, Lcom/android/phone/UsimDownloadBroadcastReceiver;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_a
    sput-boolean v8, Lcom/android/phone/UsimDownloadBroadcastReceiver;->isOTAstarted:Z

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v5, Lcom/android/phone/UsimDownload;

    invoke-virtual {v2, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_RIL_BIPOTAUsimRegistration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string/jumbo v5, "oversea"

    const-string/jumbo v6, "ril.currentplmn"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string/jumbo v5, "ACTION"

    const-string/jumbo v6, "LGTOverseaMode"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v5, "UsimDownloadReceiver"

    const-string/jumbo v6, "do not activate usimdownload for lgu netcode change"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v5, "ACTION"

    const-string/jumbo v6, "LGTRegisterMain"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_d
    const-string/jumbo v5, "ACTION"

    const-string/jumbo v6, "LGTRegisterMain"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private updateNetworkStatus()V
    .locals 13

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string/jumbo v9, "ril.skt.network_regist"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    const-string/jumbo v9, "Status"

    invoke-virtual {v4, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, ";Idle"

    invoke-virtual {v4, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v9, v8, 0x6

    invoke-virtual {v4, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkStatusValue:I

    const-string/jumbo v9, "UsimDownloadReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateNetworkStatus : networkStatusValue = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkStatusValue:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "Idle"

    invoke-virtual {v4, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, ";CS"

    invoke-virtual {v4, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v9, v8, 0x4

    invoke-virtual {v4, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCauseIdle:I

    const-string/jumbo v9, "UsimDownloadReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "networkRejectCauseIdle = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCauseIdle:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "CS"

    invoke-virtual {v4, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, ";PS"

    invoke-virtual {v4, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v9, v8, 0x2

    invoke-virtual {v4, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCauseCS:I

    const-string/jumbo v9, "UsimDownloadReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "networkRejectCauseCS = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCauseCS:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "PS"

    invoke-virtual {v4, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v9, v8, 0x2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCausePS:I

    const-string/jumbo v9, "UsimDownloadReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "networkRejectCausePS = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCausePS:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCauseIdle:I

    const/16 v10, 0xfe

    if-ne v9, v10, :cond_0

    const-string/jumbo v9, "UsimDownloadReceiver"

    const-string/jumbo v10, "networkRejectCauseIdle = 0xFE -> 0x00"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCauseIdle:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCauseCS:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCausePS:I

    :cond_0
    iget v9, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCauseCS:I

    if-nez v9, :cond_1

    iget v9, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkRejectCausePS:I

    if-eqz v9, :cond_2

    :cond_1
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->hasAttacReject:Z

    :goto_0
    invoke-direct {p0}, Lcom/android/phone/UsimDownloadBroadcastReceiver;->isRejectCause121315()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->AttacReject_121315:Z

    invoke-direct {p0}, Lcom/android/phone/UsimDownloadBroadcastReceiver;->isRejectCauseByPass()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->AttacReject_ByPass:Z

    invoke-direct {p0}, Lcom/android/phone/UsimDownloadBroadcastReceiver;->isRejectCause161722()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->AttacReject_161722:Z

    :goto_1
    return-void

    :cond_2
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->hasAttacReject:Z
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v9, "UsimDownloadReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "StringIndexOutOfBoundsException = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v12, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkStatusValue:I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v9, "UsimDownloadReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "NumberFormatException = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v12, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkStatusValue:I

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    iput-object p1, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string/jumbo v8, "ril.simtype"

    const-string/jumbo v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string/jumbo v9, "CscFeature_RIL_OTAUsimRegistration"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "UsimDownloadReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onReceive -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " IsGlobalOta is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/phone/UsimDownloadBroadcastReceiver;->isSecretCodeAction(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v0, :cond_5

    :cond_1
    :goto_0
    const-string/jumbo v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v0, :cond_c

    :cond_2
    :goto_1
    const-string/jumbo v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v0, :cond_f

    :cond_3
    :goto_2
    const-string/jumbo v8, "com.samsung.intent.action.REGIST_HOME"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "rejected"

    const-string/jumbo v9, "ril.reject_121315"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x14

    if-ne v9, v8, :cond_4

    if-eqz v0, :cond_11

    :cond_4
    :goto_3
    const-string/jumbo v8, "com.samsung.intent.action.NO_SIM_NOTY"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    const-string/jumbo v8, "sys.deviceOffReq"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "LUC"

    sget-object v9, Lcom/android/phone/UsimDownloadBroadcastReceiver;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    return-void

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "147359"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x2

    if-eq v9, v8, :cond_6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x14

    if-ne v9, v8, :cond_7

    :cond_6
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.MAIN"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v8, Lcom/android/phone/UsimDownload;

    invoke-virtual {v4, p1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v8, 0x10000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v8, "ACTION"

    const-string/jumbo v9, "KtRegisterInIdle"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v8, "5487587"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x3

    if-eq v9, v8, :cond_8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x12

    if-ne v9, v8, :cond_9

    :cond_8
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.MAIN"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v8, Lcom/android/phone/UsimDownloadDialog;

    invoke-virtual {v4, p1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v8, 0x10000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v8, "758353266"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x4

    if-eq v9, v8, :cond_a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x13

    if-ne v9, v8, :cond_b

    :cond_a
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.MAIN"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v8, Lcom/android/phone/UsimDownloadDialog;

    invoke-virtual {v4, p1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v8, 0x10000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v8, "288683785399"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.server.status.regist_reject_disable"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x10000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v8, "gsm.sim.state"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "UsimDownloadReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "simState : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " isOTAstarted is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/phone/UsimDownloadBroadcastReceiver;->isOTAstarted:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "trigger_restart_min_framework"

    const-string/jumbo v9, "vold.decrypt"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    const-string/jumbo v8, "UsimDownloadReceiver"

    const-string/jumbo v9, "do not activate usimdownload because of enabled Decrypt"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v8, "READY"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-direct {p0, p1}, Lcom/android/phone/UsimDownloadBroadcastReceiver;->showUsimDownload(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v8, "UsimDownloadReceiver"

    const-string/jumbo v9, "do not activate usimdownload because of sim state"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/phone/UsimDownloadBroadcastReceiver;->isOTAbysim:Z

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v8, "ss"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "UsimDownloadReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "iccState is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/ isOTAbysim : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/phone/UsimDownloadBroadcastReceiver;->isOTAbysim:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " / isOTAstarted is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/phone/UsimDownloadBroadcastReceiver;->isOTAstarted:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v8, Lcom/android/phone/UsimDownloadBroadcastReceiver;->isOTAbysim:Z

    if-eqz v8, :cond_10

    const-string/jumbo v8, "READY"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/phone/UsimDownloadBroadcastReceiver;->isOTAbysim:Z

    invoke-direct {p0, p1}, Lcom/android/phone/UsimDownloadBroadcastReceiver;->showUsimDownload(Landroid/content/Context;)V

    :cond_10
    const-string/jumbo v8, "ABSENT"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/phone/UsimDownloadBroadcastReceiver;->isOTAstarted:Z

    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/phone/UsimDownloadBroadcastReceiver;->isOTAbysim:Z

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "com.sec.android.ota.usim.FINISH"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_11
    invoke-direct {p0}, Lcom/android/phone/UsimDownloadBroadcastReceiver;->updateNetworkStatus()V

    iget v8, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkStatusValue:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_12

    iget v8, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->networkStatusValue:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_4

    :cond_12
    const-string/jumbo v8, "UsimDownloadReceiver"

    const-string/jumbo v9, "REGISTERED_HOME - reject_121315"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "ril.reject_121315"

    const-string/jumbo v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.MAIN"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v8, Lcom/android/phone/UsimDownload;

    invoke-virtual {v4, p1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v8, 0x10000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v8, "ACTION"

    const-string/jumbo v9, "KtRegisterMode"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->mSendStartKtOta:Z

    goto/16 :goto_3

    :cond_13
    const-string/jumbo v8, "1"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.MAIN"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v8, Lcom/android/phone/UsimDownload;

    invoke-virtual {v4, p1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v8, 0x10000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v8, "SKC"

    sget-object v9, Lcom/android/phone/UsimDownloadBroadcastReceiver;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    const-string/jumbo v8, "ACTION"

    const-string/jumbo v9, "SIMREMOVEDRESET"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_14
    :goto_4
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_15
    const-string/jumbo v8, "com.samsung.intent.action.REFRESH_RESET_FAIL"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    const-string/jumbo v8, "UsimDownloadReceiver"

    const-string/jumbo v9, "onReceive : REFRESH_RESET_FAIL"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8}, Lcom/android/phone/UsimDownloadBroadcastReceiver;->StartRefreshReset(Landroid/content/Context;)V

    :cond_16
    const-string/jumbo v8, "com.samsung.intent.action.REFRESHRESET"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    const-string/jumbo v8, "SKC"

    sget-object v9, Lcom/android/phone/UsimDownloadBroadcastReceiver;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-direct {p0, p1}, Lcom/android/phone/UsimDownloadBroadcastReceiver;->ShowUsimdownloadSuccess(Landroid/content/Context;)V

    :cond_17
    :goto_5
    return-void

    :cond_18
    const-string/jumbo v8, "KTC"

    sget-object v9, Lcom/android/phone/UsimDownloadBroadcastReceiver;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const-string/jumbo v8, "ACTION"

    const-string/jumbo v9, "KTSIMREMOVED"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    :cond_19
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.MAIN"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v8, Lcom/android/phone/UsimDownload;

    invoke-virtual {v4, p1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v8, 0x10000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v8, "ACTION"

    const-string/jumbo v9, "REFRESHRESTART"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "UsimDownloadReceiver"

    const-string/jumbo v9, "Start UsimDwonload"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5
.end method
