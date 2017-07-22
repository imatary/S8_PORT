.class public Lcom/android/phone/mobilenetworks/NetworkModeCommonController;
.super Ljava/lang/Object;
.source "NetworkModeCommonController.java"

# interfaces
.implements Lcom/android/phone/mobilenetworks/INetworkModeController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/mobilenetworks/NetworkModeCommonController$1;,
        Lcom/android/phone/mobilenetworks/NetworkModeCommonController$2;,
        Lcom/android/phone/mobilenetworks/NetworkModeCommonController$3;
    }
.end annotation


# instance fields
.field private mActivePhoneId:I

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDisconnectDataConnectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDisconnectNetworkAlertDialog:Landroid/app/AlertDialog;

.field private mFailDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mIsDisconnectingData:Z

.field private mLteOnlyWarningAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mLteOnlyWarningDialog:Landroid/app/AlertDialog;

.field private final mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

.field private mNetworkType:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field public mPrevNetworkType:[I

.field private mRequestedNetworkType:I

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTriggerChangeNetwork:Z


# direct methods
.method static synthetic -get0(Lcom/android/phone/mobilenetworks/NetworkModeCommonController;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mDisconnectNetworkAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/mobilenetworks/NetworkModeCommonController;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mFailDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/mobilenetworks/NetworkModeCommonController;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mLteOnlyWarningDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/mobilenetworks/NetworkModeCommonController;)Lcom/android/phone/mobilenetworks/NetworkModeMediator;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/mobilenetworks/NetworkModeCommonController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mIsDisconnectingData:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/mobilenetworks/NetworkModeCommonController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mTriggerChangeNetwork:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/mobilenetworks/NetworkModeCommonController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->handleDataConnectionStateChanged(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/mobilenetworks/NetworkModeMediator;I)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    iput v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mNetworkType:I

    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    iput v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mRequestedNetworkType:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    const/4 v2, 0x0

    aput v1, v0, v2

    aput v3, v0, v3

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mPrevNetworkType:[I

    new-instance v0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController$1;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/NetworkModeCommonController$1;-><init>(Lcom/android/phone/mobilenetworks/NetworkModeCommonController;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController$2;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/NetworkModeCommonController$2;-><init>(Lcom/android/phone/mobilenetworks/NetworkModeCommonController;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mLteOnlyWarningAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController$3;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/NetworkModeCommonController$3;-><init>(Lcom/android/phone/mobilenetworks/NetworkModeCommonController;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mDisconnectDataConnectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    iput p2, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mActivePhoneId:I

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private handleDataConnectionStateChanged(I)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mDisconnectNetworkAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mDisconnectNetworkAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "NetworkModeCommonController"

    const-string/jumbo v2, "Should not be here! Do cancel operation!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->getPreferredNetworkTypeRequest()V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mDisconnectNetworkAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NetworkModeCommonController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDataConnectionStateChanged exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "NetworkModeCommonController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleDataConnectionStateChanged: mIsDisconnectingData - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mIsDisconnectingData:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mTriggerChangeNetwork - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mTriggerChangeNetwork:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mIsDisconnectingData:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mTriggerChangeNetwork:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "NetworkModeCommonController"

    const-string/jumbo v2, "Data is disconnected, so start changing network mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mTriggerChangeNetwork:Z

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v1}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->dismissProgressDialog()V

    const-string/jumbo v1, "NetworkModeCommonController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleDataConnectionStateChanged: mRequestedNetworkType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mRequestedNetworkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mNetworkType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mNetworkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mRequestedNetworkType:I

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->changeNetworkType(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public changeNetworkType(I)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "NetworkModeCommonController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "changeNetworkType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v0, v3}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->setPreferenceEnabled(Z)V

    if-eqz p1, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    :cond_0
    const-string/jumbo v0, "NetworkModeCommonController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[LTEON ] Network mode is Automode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<< current mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "persist.radio.netmode.auto"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v0, "NetworkModeCommonController"

    const-string/jumbo v1, "[LTEON ]User change YES"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "persist.radio.user.change"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "preferred_change_by_mobile_data_exceptional_case"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NetworkModeCommonController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "changeNetworkType: persist.radio.setnwkmode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "persist.radio.setnwkmode"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->setPreferredNetworkTypeRequest(I)V

    return-void

    :cond_2
    const-string/jumbo v0, "NetworkModeCommonController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[LTEON ] Network mode is G or W only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<< current mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "persist.radio.netmode.auto"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkAndSetEnabled(Landroid/preference/Preference;)V
    .locals 0

    return-void
.end method

.method public cleanUp()V
    .locals 2

    const-string/jumbo v0, "NetworkModeCommonController"

    const-string/jumbo v1, "cleanUp..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public getActivePhoneId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentNetworkType()I
    .locals 1

    iget v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mNetworkType:I

    return v0
.end method

.method public getPreferredNetworkTypeRequest()V
    .locals 4

    const-string/jumbo v2, "NetworkModeCommonController"

    const-string/jumbo v3, "requestGetPreferredNetworkType"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x44d

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getPreferredNetworkType(Landroid/os/Message;)V

    return-void
.end method

.method public getPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    const-string/jumbo v3, "NetworkModeCommonController"

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

    const-string/jumbo v3, "NetworkModeCommonController"

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

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v3, v2}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->updateState(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "NetworkModeCommonController"

    const-string/jumbo v4, "ArrayIndexOutOfBoundsException Caught"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v3, v6}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->setPreferenceEnabled(Z)V

    goto :goto_0
.end method

.method public prepare()V
    .locals 2

    const-string/jumbo v0, "NetworkModeCommonController"

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

    const-string/jumbo v0, "NetworkModeCommonController"

    const-string/jumbo v1, "prepare: NETWORK_MODE_CMCC"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "1"

    iget v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mActivePhoneId:I

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSimIccType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mActivePhoneId:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCHN;->isChinaSIM(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mActivePhoneId:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCHN;->isCMCCSIM(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->setPreferenceEnabled(Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "NetworkModeCommonController"

    const-string/jumbo v1, "prepare: getPreferredNetworkTypeRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->getPreferredNetworkTypeRequest()V

    goto :goto_0
.end method

.method public setNetworkType(I)V
    .locals 0

    iput p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mNetworkType:I

    return-void
.end method

.method public setPreferredNetworkTypeRequest(I)V
    .locals 5

    const-string/jumbo v2, "NetworkModeCommonController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestPreferredNetworkType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x44e

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setPreferredNetworkType(ILandroid/os/Message;)V

    return-void
.end method

.method public setPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    const-string/jumbo v3, "NetworkModeCommonController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPreferredNetworkTypeResponse: ar.exception - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v3, v7}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->setPreferenceEnabled(Z)V

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->getPreferredNetworkTypeRequest()V

    :cond_0
    :goto_0
    const-string/jumbo v3, "NetworkModeCommonController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPreferredNetworkTypeResponse: mIsDisconnectingData - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mIsDisconnectingData:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mIsDisconnectingData:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v3, v7}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->setMobileDataEnabled(Z)V

    iput-boolean v6, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mIsDisconnectingData:Z

    iput-boolean v6, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mTriggerChangeNetwork:Z

    :cond_1
    const-string/jumbo v3, "cust_network_sel_menu4_o2"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "mobile_network_settings_shared_prefs"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mRequestedNetworkType:I

    if-ne v3, v7, :cond_4

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getMobileDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "NetworkModeCommonController"

    const-string/jumbo v4, "setPreferredNetworkTypeResponse: MOBILE_DATA_ENABLE = 0 "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->setMobileDataEnable(Z)V

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v3, "previous_mobile_data_to_be_restored"

    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "preferred_network_mode"

    iget v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mRequestedNetworkType:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mRequestedNetworkType:I

    invoke-virtual {v3, v4}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->updateState(I)V

    const-string/jumbo v3, "NetworkModeCommonController"

    const-string/jumbo v4, "setPreferredNetworkTypeResponse: done"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "feature_chn"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "NetworkModeCommonController"

    const-string/jumbo v4, "setPreferredNetworkTypeResponse: getPreferredNetworkTypeRequest"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->getPreferredNetworkTypeRequest()V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v3, "previous_mobile_data_to_be_restored"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "NetworkModeCommonController"

    const-string/jumbo v4, "setPreferredNetworkTypeResponse: MOBILE_DATA_ENABLE = 1 "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->setMobileDataEnable(Z)V

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v3, "previous_mobile_data_to_be_restored"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method public setRequestedNetworkType(I)V
    .locals 0

    iput p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mRequestedNetworkType:I

    return-void
.end method

.method public setSelectedItem(I)V
    .locals 8

    const/16 v5, 0x9

    if-ne p1, v5, :cond_0

    iget v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mActivePhoneId:I

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsMultiSIM;->isBoltSIM(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "NetworkModeCommonController"

    const-string/jumbo v6, "Override select networkType 9 => 11 for PS only Sim"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xb

    :cond_0
    iget v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mNetworkType:I

    if-ne p1, v5, :cond_1

    const-string/jumbo v5, "NetworkModeCommonController"

    const-string/jumbo v6, "setSelectedItem: return"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mRequestedNetworkType:I

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v6, :cond_2

    const/4 v3, 0x1

    :goto_0
    const-string/jumbo v5, "NetworkModeCommonController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSelectedItem: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", data state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", isStateIdle: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isMMSuse()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v5, "NetworkModeCommonController"

    const-string/jumbo v6, "Because MMS is used, network mode can\'t be changed"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    :cond_4
    const/4 v0, 0x1

    :goto_1
    if-nez v3, :cond_6

    const-string/jumbo v5, "NetworkModeCommonController"

    const-string/jumbo v6, "Phone state is not IDLE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mContext:Landroid/content/Context;

    const v7, 0x7f0d0505

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mContext:Landroid/content/Context;

    const v7, 0x7f0d064b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mContext:Landroid/content/Context;

    const v7, 0x7f0d050c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/phone/mobilenetworks/NetworkModeCommonController$4;

    invoke-direct {v7, p0}, Lcom/android/phone/mobilenetworks/NetworkModeCommonController$4;-><init>(Lcom/android/phone/mobilenetworks/NetworkModeCommonController;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1010355

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mFailDialog:Landroid/app/AlertDialog;

    :goto_2
    return-void

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->changeNetworkType(I)V

    goto :goto_2
.end method

.method public setUp()V
    .locals 2

    const-string/jumbo v0, "NetworkModeCommonController"

    const-string/jumbo v1, "setUp..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public teardown()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "NetworkModeCommonController"

    const-string/jumbo v1, "teardown..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mIsDisconnectingData:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetworkModeCommonController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Teardown value of mIsDisconnectingData is ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mIsDisconnectingData:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->setMobileDataEnabled(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mIsDisconnectingData:Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mDisconnectNetworkAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mDisconnectNetworkAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mDisconnectNetworkAlertDialog:Landroid/app/AlertDialog;

    :cond_1
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeCommonController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
