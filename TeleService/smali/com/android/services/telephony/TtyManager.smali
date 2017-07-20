.class final Lcom/android/services/telephony/TtyManager;
.super Ljava/lang/Object;
.source "TtyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/TtyManager$1;,
        Lcom/android/services/telephony/TtyManager$2;,
        Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private final mReceiver:Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;

.field private mRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

.field private mTtyMode:I

.field private mUiTtyMode:I


# direct methods
.method static synthetic -get0(Lcom/android/services/telephony/TtyManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TtyManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/services/telephony/TtyManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TtyManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/services/telephony/TtyManager;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TtyManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/services/telephony/TtyManager;)I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/TtyManager;->mTtyMode:I

    return v0
.end method

.method static synthetic -wrap0(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/services/telephony/TtyManager;->phoneModeToTelecomMode(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/services/telephony/TtyManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/TtyManager;->updateTtyMode(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/services/telephony/TtyManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/TtyManager;->updateUiTtyMode(I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 6

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;

    invoke-direct {v3, p0, v4}, Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;-><init>(Lcom/android/services/telephony/TtyManager;Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;)V

    iput-object v3, p0, Lcom/android/services/telephony/TtyManager;->mReceiver:Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/services/telephony/TtyManager;->mUiTtyMode:I

    new-instance v3, Lcom/android/services/telephony/TtyManager$1;

    invoke-direct {v3, p0}, Lcom/android/services/telephony/TtyManager$1;-><init>(Lcom/android/services/telephony/TtyManager;)V

    iput-object v3, p0, Lcom/android/services/telephony/TtyManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/services/telephony/TtyManager$2;

    invoke-direct {v3, p0}, Lcom/android/services/telephony/TtyManager$2;-><init>(Lcom/android/services/telephony/TtyManager;)V

    iput-object v3, p0, Lcom/android/services/telephony/TtyManager;->mRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    iput-object p2, p0, Lcom/android/services/telephony/TtyManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object p1, p0, Lcom/android/services/telephony/TtyManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/services/telephony/TtyManager;->registerForIMSCallback()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/services/telephony/TtyManager;->mReceiver:Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getCurrentTtyMode()I

    move-result v2

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/services/telephony/TtyManager;->updateTtyMode(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "preferred_tty_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/services/telephony/TtyManager;->updateUiTtyMode(I)V

    return-void
.end method

.method private static phoneModeToTelecomMode(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x3

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private registerForIMSCallback()V
    .locals 2

    invoke-direct {p0}, Lcom/android/services/telephony/TtyManager;->registerForIms()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "registerForIMSCallback"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TtyManager;->mRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsManager;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    :cond_0
    return-void
.end method

.method private registerForIms()Z
    .locals 1

    const-string/jumbo v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mpcs_volte_ui"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "canada_volte_ui"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "tfn_volte_ui"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static telecomModeToPhoneMode(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x3

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateTtyMode(I)V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v0, "updateTtyMode %d -> %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/services/telephony/TtyManager;->mTtyMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/android/services/telephony/TtyManager;->mTtyMode:I

    iget-object v0, p0, Lcom/android/services/telephony/TtyManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {p1}, Lcom/android/services/telephony/TtyManager;->telecomModeToPhoneMode(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/services/telephony/TtyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    return-void
.end method

.method private updateUiTtyMode(I)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "updateUiTtyMode %d -> %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/services/telephony/TtyManager;->mUiTtyMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/services/telephony/TtyManager;->mUiTtyMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/services/telephony/TtyManager;->mUiTtyMode:I

    iget-object v0, p0, Lcom/android/services/telephony/TtyManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {p1}, Lcom/android/services/telephony/TtyManager;->telecomModeToPhoneMode(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setUiTTYMode(ILandroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ui tty mode didnt change"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
