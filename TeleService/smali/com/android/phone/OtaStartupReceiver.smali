.class public Lcom/android/phone/OtaStartupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OtaStartupReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/OtaStartupReceiver$1;,
        Lcom/android/phone/OtaStartupReceiver$2;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOtaspMode:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListenerRegistered:Z


# direct methods
.method static synthetic -get0(Lcom/android/phone/OtaStartupReceiver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/OtaStartupReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/OtaStartupReceiver;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/OtaStartupReceiver;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/OtaStartupReceiver;->mOtaspMode:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/phone/OtaStartupReceiver;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/OtaStartupReceiver;->mOtaspMode:I

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/OtaStartupReceiver;->mOtaspMode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/OtaStartupReceiver;->mPhoneStateListenerRegistered:Z

    new-instance v0, Lcom/android/phone/OtaStartupReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/phone/OtaStartupReceiver$1;-><init>(Lcom/android/phone/OtaStartupReceiver;)V

    iput-object v0, p0, Lcom/android/phone/OtaStartupReceiver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/phone/OtaStartupReceiver$2;

    invoke-direct {v0, p0}, Lcom/android/phone/OtaStartupReceiver$2;-><init>(Lcom/android/phone/OtaStartupReceiver;)V

    iput-object v0, p0, Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private shouldPostpone(Landroid/content/Context;)Z
    .locals 8

    const/4 v5, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.DEVICE_INITIALIZATION_WIZARD"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/high16 v7, 0x10000

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "device_provisioned"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v2, 0x1

    :goto_0
    const-string/jumbo v6, "ro.setupwizard.mode"

    const-string/jumbo v7, "REQUIRED"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "REQUIRED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "OPTIONAL"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_1
    if-eqz v3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v4, v5

    :cond_1
    return v4

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0xa

    iput-object p1, p0, Lcom/android/phone/OtaStartupReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstanceIfPrimary()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v4, "not_ota_ui_display"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "OtaStartupReceiver"

    const-string/jumbo v5, "OTA not supported, nothing to do."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v4, p0, Lcom/android/phone/OtaStartupReceiver;->mPhoneStateListenerRegistered:Z

    if-nez v4, :cond_2

    const-string/jumbo v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/phone/OtaStartupReceiver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x200

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/phone/OtaStartupReceiver;->mPhoneStateListenerRegistered:Z

    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-nez v4, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/phone/OtaStartupReceiver;->shouldPostpone(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-void

    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v4, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xb

    invoke-virtual {v2, v4, v5, v7}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void

    :cond_5
    iget-object v4, p0, Lcom/android/phone/OtaStartupReceiver;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;

    invoke-static {v4, v5, v6}, Lcom/android/phone/OtaUtils;->maybeDoOtaCall(Landroid/content/Context;Landroid/os/Handler;I)Z

    :cond_6
    :goto_0
    return-void

    :cond_7
    const-string/jumbo v4, "voiceless_ota_provisioning_action"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "com.samsung.android.phone.ACTION_VOICELESS_OTA_PROVISIONING"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "OtaStartupReceiver"

    const-string/jumbo v5, "action ACTION_VOICELESS_OTA_PROVISIONING : call OtaUtils.maybeDoOtaCall"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/OtaStartupReceiver;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;

    invoke-static {v4, v5, v6}, Lcom/android/phone/OtaUtils;->maybeDoOtaCall(Landroid/content/Context;Landroid/os/Handler;I)Z

    goto :goto_0
.end method
