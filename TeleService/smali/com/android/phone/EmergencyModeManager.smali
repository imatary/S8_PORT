.class public Lcom/android/phone/EmergencyModeManager;
.super Ljava/lang/Object;
.source "EmergencyModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EmergencyModeManager$Worker;
    }
.end annotation


# static fields
.field private static mRetry:Z


# instance fields
.field private final EXTRA_VOLUME:I

.field private final NATRUAL_SOUND:I

.field private final NOISE_REDUCTION:I

.field private final RJILALPHA:Ljava/lang/String;

.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mEmergencyMode:I

.field private mHotSwapFilter:Landroid/content/IntentFilter;

.field private mHotSwapReceiver:Landroid/content/BroadcastReceiver;

.field public mIsDisconnectingData:Z

.field private mIsHotSwapRegister:Z

.field private mNetworkChangeSlotId:I

.field private mNetworkType:I

.field private mOldEmergencyMode:I

.field private mOriginalNetworkMode:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhone1:Lcom/android/internal/telephony/Phone;

.field private mPhone2:Lcom/android/internal/telephony/Phone;

.field private mPopupDuringCall:Z

.field private mRetryTimer:I

.field private mSafetyHandler:Landroid/os/Handler;

.field private mSafetyWorker:Lcom/android/phone/EmergencyModeManager$Worker;

.field public showToast:Z


# direct methods
.method static synthetic -get0(Lcom/android/phone/EmergencyModeManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/EmergencyModeManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/EmergencyModeManager;->checkNetworkTypeAndChange(II)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/EmergencyModeManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/EmergencyModeManager;->disableMobileNetworkSettings()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/EmergencyModeManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/EmergencyModeManager;->enableMobileNetworkSettings()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/EmergencyModeManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/EmergencyModeManager;->initNetworkPrefMode()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/EmergencyModeManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyModeManager;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/EmergencyModeManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyModeManager;->setNetworkInfo(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/EmergencyModeManager;->mRetry:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/phone/EmergencyModeManager;->EXTRA_VOLUME:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/EmergencyModeManager;->NATRUAL_SOUND:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/EmergencyModeManager;->NOISE_REDUCTION:I

    iput-boolean v1, p0, Lcom/android/phone/EmergencyModeManager;->mIsHotSwapRegister:Z

    iput-boolean v2, p0, Lcom/android/phone/EmergencyModeManager;->mPopupDuringCall:Z

    iput v2, p0, Lcom/android/phone/EmergencyModeManager;->mOldEmergencyMode:I

    iput-boolean v1, p0, Lcom/android/phone/EmergencyModeManager;->showToast:Z

    iput-boolean v1, p0, Lcom/android/phone/EmergencyModeManager;->mIsDisconnectingData:Z

    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/phone/EmergencyModeManager;->mRetryTimer:I

    const-string/jumbo v0, "Jio 4G"

    iput-object v0, p0, Lcom/android/phone/EmergencyModeManager;->RJILALPHA:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyWorker:Lcom/android/phone/EmergencyModeManager$Worker;

    iput-object v3, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mPhone1:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mPhone2:Lcom/android/internal/telephony/Phone;

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/EmergencyModeManager;->makeSafetyLooper()V

    return-void
.end method

.method private StartQcomCrossMapping(II)V
    .locals 4

    const/4 v3, 0x1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/phone/EmergencyModeManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "preferred_network_mode"

    invoke-static {v1, v2, p1, p2}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getDefaultDataSlotId()I

    move-result v1

    if-ne p1, v1, :cond_1

    const-string/jumbo v1, "EmergencyModeManager"

    const-string/jumbo v2, "skip to set otherSlotId"

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->printPreferredNetworkModeValue()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "EmergencyModeManager"

    const-string/jumbo v2, "set otherSlotId"

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/EmergencyModeManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "preferred_network_mode"

    invoke-static {v1, v2, v0, v3}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1
.end method

.method private changeNetworkType4LongLife(I)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iput p1, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    iget-object v4, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    const-string/jumbo v4, "EmergencyModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "changeNetworkType4LongLife : change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " , Data state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    if-ne v2, v7, :cond_3

    :cond_0
    if-ne v2, v7, :cond_2

    const-string/jumbo v4, "EmergencyModeManager"

    const-string/jumbo v5, "Currently Data is connecting!"

    invoke-static {v4, v5, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-direct {p0, v8}, Lcom/android/phone/EmergencyModeManager;->setMobileDataEnabled(Z)V

    iput-boolean v7, p0, Lcom/android/phone/EmergencyModeManager;->mIsDisconnectingData:Z

    iget-object v4, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyHandler:Landroid/os/Handler;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/phone/EmergencyModeManager$3;

    invoke-direct {v5, p0}, Lcom/android/phone/EmergencyModeManager$3;-><init>(Lcom/android/phone/EmergencyModeManager;)V

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v4, "EmergencyModeManager"

    const-string/jumbo v5, "Currently Data is conncected!"

    invoke-static {v4, v5, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-direct {p0, v8}, Lcom/android/phone/EmergencyModeManager;->setMobileDataEnabled(Z)V

    iput-boolean v7, p0, Lcom/android/phone/EmergencyModeManager;->mIsDisconnectingData:Z

    const-string/jumbo v4, "EmergencyModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "changeNetworkType4LongLife : mIsDisconnectingData ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/phone/EmergencyModeManager;->mIsDisconnectingData:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/EmergencyModeManager;->changeNetworkType()V

    goto :goto_0
.end method

.method private checkNetworkTypeAndChange(II)V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    const-string/jumbo v2, "EmergencyModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkNetworkTypeAndChange : netType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " changeNetType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/EmergencyModeManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_2

    const-string/jumbo v2, "EmergencyModeManager"

    const-string/jumbo v3, "Phone State is Not IDLE during UPS enable!"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v2, "EmergencyModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Show message during active call = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/EmergencyModeManager;->mPopupDuringCall:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_0
    :goto_1
    return-void

    :sswitch_0
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "network_mode_automatic_cdma_lte_gsm"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    if-ltz v0, :cond_0

    const-string/jumbo v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput p2, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkChangeSlotId:I

    iput p1, p0, Lcom/android/phone/EmergencyModeManager;->mOriginalNetworkMode:I

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyModeManager;->changeNetworkType4LongLife(I)V

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "preferred_network_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0xc -> :sswitch_3
        0x16 -> :sswitch_1
    .end sparse-switch
.end method

.method private disableMobileNetworkSettings()V
    .locals 6

    const/4 v5, 0x2

    iget-object v2, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.android.phone"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v2, "EmergencyModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "disable MobileNetwork Setting: appState["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v5, :cond_0

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_0
    return-void
.end method

.method private enableMobileNetworkSettings()V
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.android.phone"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v2, "EmergencyModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Receiver Enable MobileNetwork Setting: appState["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v5, :cond_0

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_0
    return-void
.end method

.method private initNetworkPrefMode()V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    const-string/jumbo v4, "EmergencyModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initNetworkPrefMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "preferred_network_mode"

    invoke-static {v0, v4, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    iget v4, p0, Lcom/android/phone/EmergencyModeManager;->mOriginalNetworkMode:I

    add-int/lit16 v1, v4, 0x7d0

    :cond_0
    :goto_0
    const-string/jumbo v4, "EmergencyModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setNetworkInfo netType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "backup_network_pref_mode"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_1
    if-nez v2, :cond_0

    iget v4, p0, Lcom/android/phone/EmergencyModeManager;->mOriginalNetworkMode:I

    add-int/lit16 v1, v4, 0x3e8

    goto :goto_0
.end method

.method private makeSafetyLooper()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyWorker:Lcom/android/phone/EmergencyModeManager$Worker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/EmergencyModeManager$Worker;

    const-string/jumbo v1, "emergencymodemanager"

    invoke-direct {v0, v1}, Lcom/android/phone/EmergencyModeManager$Worker;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyWorker:Lcom/android/phone/EmergencyModeManager$Worker;

    new-instance v0, Lcom/android/phone/EmergencyModeManager$2;

    iget-object v1, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyWorker:Lcom/android/phone/EmergencyModeManager$Worker;

    invoke-virtual {v1}, Lcom/android/phone/EmergencyModeManager$Worker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/EmergencyModeManager$2;-><init>(Lcom/android/phone/EmergencyModeManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private setMobileDataEnabled(Z)V
    .locals 4

    iget-object v2, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setNetworkInfo(I)V
    .locals 7

    const/4 v2, 0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "EmergencyModeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setNetworkInfo slotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v3, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v3, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_a

    :cond_0
    const-string/jumbo v3, "EmergencyModeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[LTEON ] Network mode is Automode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "<< current mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "persist.radio.netmode.auto"

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v3, "EmergencyModeManager"

    const-string/jumbo v4, "[LTEON ] User change YES"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "persist.radio.user.change"

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "qcom_cross_mapping"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "feature_chn"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "feature_hktw"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    if-nez p1, :cond_b

    const-string/jumbo v3, "persist.radio.user.change"

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const-string/jumbo v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-ne p1, v2, :cond_c

    const-string/jumbo v3, "slot2_netType"

    iget v4, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/EmergencyModeManager;->getEmergencyMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/EmergencyModeManager;->getEmergencyMode()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_e

    :cond_4
    const-string/jumbo v3, "preferred_network_mode"

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-ne p1, v2, :cond_d

    iget v3, p0, Lcom/android/phone/EmergencyModeManager;->mOriginalNetworkMode:I

    add-int/lit16 v1, v3, 0x7d0

    :cond_5
    :goto_3
    const-string/jumbo v3, "EmergencyModeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setNetworkInfo netType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string/jumbo v3, "backup_network_pref_mode"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7
    :goto_4
    const-string/jumbo v3, "qcom_cross_mapping"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "feature_chn"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v2, "feature_hktw"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    :cond_8
    if-nez v2, :cond_9

    const-string/jumbo v2, "preferred_network_mode"

    iget v3, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    return-void

    :cond_a
    const-string/jumbo v3, "EmergencyModeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[LTEON ] Network mode is G or W only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "<< current mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "persist.radio.netmode.auto"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v3, "persist.radio.user.change"

    const-string/jumbo v4, "2"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    if-nez p1, :cond_3

    const-string/jumbo v3, "slot1_netType"

    iget v4, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_d
    if-nez p1, :cond_5

    iget v3, p0, Lcom/android/phone/EmergencyModeManager;->mOriginalNetworkMode:I

    add-int/lit16 v1, v3, 0x3e8

    goto/16 :goto_3

    :cond_e
    invoke-virtual {p0}, Lcom/android/phone/EmergencyModeManager;->getEmergencyMode()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_f

    invoke-virtual {p0}, Lcom/android/phone/EmergencyModeManager;->getEmergencyMode()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_7

    :cond_f
    sget-boolean v3, Lcom/android/phone/EmergencyModeManager;->mRetry:Z

    if-eqz v3, :cond_7

    sput-boolean v6, Lcom/android/phone/EmergencyModeManager;->mRetry:Z

    const-string/jumbo v3, "backup_network_pref_mode"

    const/4 v4, -0x1

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4
.end method


# virtual methods
.method public changeNetworkType()V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v0, "EmergencyModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "changeNetworkType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "EmergencyModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "changeNetworkType - mNetworkChangeSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkChangeSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mNetworkType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v0, "qcom_cross_mapping"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "feature_chn"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "feature_hktw"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkChangeSlotId:I

    iget v1, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/EmergencyModeManager;->StartQcomCrossMapping(II)V

    :cond_1
    iget v0, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkChangeSlotId:I

    if-ne v4, v0, :cond_3

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mPhone2:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    iget-object v2, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyHandler:Landroid/os/Handler;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->printPreferredNetworkModeValue()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mPhone1:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    iget-object v2, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    iget-object v2, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyHandler:Landroid/os/Handler;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_1
.end method

.method public getEmergencyMode()I
    .locals 3

    const-string/jumbo v0, "EmergencyModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getEmergencyMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/EmergencyModeManager;->mEmergencyMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/phone/EmergencyModeManager;->mEmergencyMode:I

    return v0
.end method

.method public onChange(Landroid/content/Intent;)V
    .locals 14

    const-string/jumbo v11, "reason"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v11, "EmergencyModeManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setEmergencyMode : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, p0, Lcom/android/phone/EmergencyModeManager;->mEmergencyMode:I

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/phone/EmergencyModeManager;->mPopupDuringCall:Z

    const-string/jumbo v11, "automatic_answering_machine"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->getInstance()Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->updateAMNotificationAtStartUp()V

    const/4 v11, 0x2

    if-eq v7, v11, :cond_0

    const/4 v11, 0x3

    if-ne v7, v11, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->getInstance()Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->cancelAnswerMsgNotification()V

    :cond_1
    const/4 v11, 0x3

    if-ne v7, v11, :cond_11

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isMaximumPowerSavingMode()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEmergencyMode()Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    iget-object v11, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isAbsentSimState(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-direct {p0}, Lcom/android/phone/EmergencyModeManager;->disableMobileNetworkSettings()V

    :cond_3
    const-string/jumbo v11, "us_volte_ui"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string/jumbo v11, "canada_volte_ui"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string/jumbo v11, "enabled"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string/jumbo v11, "feature_chn"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_4
    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isMaximumPowerSavingMode()Z

    move-result v11

    if-nez v11, :cond_d

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isUltraPowerSavingMode()Z

    move-result v3

    :goto_0
    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEmergencyMode()Z

    move-result v11

    if-eqz v11, :cond_5

    if-eqz v3, :cond_e

    :cond_5
    const/4 v2, 0x0

    :goto_1
    iget-object v11, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "volteVTEnabled"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v2, :cond_6

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    const-string/jumbo v11, "EmergencyModeManager"

    const-string/jumbo v12, "Emergency mode enabled, setLTEVideoCallDisable!"

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->setLTEVideoCallDisable()V

    :cond_6
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    iput-object v11, p0, Lcom/android/phone/EmergencyModeManager;->mHotSwapFilter:Landroid/content/IntentFilter;

    iget-object v11, p0, Lcom/android/phone/EmergencyModeManager;->mHotSwapFilter:Landroid/content/IntentFilter;

    const-string/jumbo v12, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-virtual {v11, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v11, Lcom/android/phone/EmergencyModeManager$1;

    invoke-direct {v11, p0}, Lcom/android/phone/EmergencyModeManager$1;-><init>(Lcom/android/phone/EmergencyModeManager;)V

    iput-object v11, p0, Lcom/android/phone/EmergencyModeManager;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    iget-object v11, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/phone/EmergencyModeManager;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    iget-object v13, p0, Lcom/android/phone/EmergencyModeManager;->mHotSwapFilter:Landroid/content/IntentFilter;

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/phone/EmergencyModeManager;->mIsHotSwapRegister:Z

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isSafetyAssistanceMode()Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v9, 0x0

    iget-object v11, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/phone/PhoneUtilsCommon;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v9, 0x1

    iget-object v11, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "audio"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string/jumbo v11, "extraVolume=false"

    invoke-virtual {v0, v11}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_7
    iget-object v11, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "call_natural_sound"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v11, 0x1

    if-ne v4, v11, :cond_8

    or-int/lit8 v9, v9, 0x2

    iget-object v11, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/phone/PhoneUtilsCommon;->naturalSoundBroadcast(Landroid/content/Context;I)V

    :cond_8
    iget-object v11, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "call_noise_reduction"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_9

    or-int/lit8 v9, v9, 0x4

    iget-object v11, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/phone/PhoneUtilsCommon;->noiseReductionBroadcast(Landroid/content/Context;I)V

    :cond_9
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/phone/PhoneUtilsCommon;->setVoiceCallEq(ZZ)V

    iget-object v11, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "safety_sound_effect_values"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_a
    const-string/jumbo v11, "support_spam_call"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    const-string/jumbo v11, "phone_number_locator_tencent"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v11}, Lcom/android/phone/NotificationMgr;->cancelTencentFunctionsFilterNotificationForEM()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v11}, Lcom/android/phone/NotificationMgr;->cancelSpamCallsFilterNotificationForEM()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v11}, Lcom/android/phone/NotificationMgr;->cancelTencentPNLFilterNotificationForEM()V

    :cond_b
    :goto_2
    const-string/jumbo v11, "support_smart_call"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isShowingSmartCallNoti()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->smartNotificationMgr:Lcom/android/phone/SmartCallNotificationMgr;

    invoke-virtual {v11}, Lcom/android/phone/SmartCallNotificationMgr;->cancelSmartCallsFilterNotification()V

    :cond_c
    :goto_3
    return-void

    :cond_d
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v11, "support_spam_call"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v11}, Lcom/android/phone/NotificationMgr;->cancelSpamCallsFilterNotificationForEM()V

    :cond_10
    const-string/jumbo v11, "phone_number_locator_tencent"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v11}, Lcom/android/phone/NotificationMgr;->cancelTencentPNLFilterNotificationForEM()V

    goto :goto_2

    :cond_11
    const/4 v11, 0x5

    if-ne v7, v11, :cond_c

    invoke-direct {p0}, Lcom/android/phone/EmergencyModeManager;->enableMobileNetworkSettings()V

    const-string/jumbo v11, "us_volte_ui"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_12

    const-string/jumbo v11, "canada_volte_ui"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_12

    const-string/jumbo v11, "enabled"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13

    const-string/jumbo v11, "feature_chn"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13

    :cond_12
    iget-object v11, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "volteVTEnabled"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_13

    const-string/jumbo v11, "EmergencyModeManager"

    const-string/jumbo v12, "Emergency mode disabled, setLTEVideoCallEnable!"

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->setLTEVideoCallEnable()V

    :cond_13
    iget-boolean v11, p0, Lcom/android/phone/EmergencyModeManager;->mIsHotSwapRegister:Z

    if-eqz v11, :cond_14

    iget-object v11, p0, Lcom/android/phone/EmergencyModeManager;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v11, :cond_14

    :try_start_0
    iget-object v11, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/phone/EmergencyModeManager;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v11, v12}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/phone/EmergencyModeManager;->mIsHotSwapRegister:Z

    :cond_14
    iget-object v11, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "safety_sound_effect_values"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    and-int/lit8 v11, v9, 0x1

    const/4 v12, 0x1

    if-ne v12, v11, :cond_15

    iget-object v11, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "audio"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string/jumbo v11, "extraVolume=true"

    invoke-virtual {v0, v11}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_15
    and-int/lit8 v11, v9, 0x2

    const/4 v12, 0x2

    if-ne v12, v11, :cond_16

    iget-object v11, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/phone/PhoneUtilsCommon;->naturalSoundBroadcast(Landroid/content/Context;I)V

    :cond_16
    and-int/lit8 v11, v9, 0x4

    const/4 v12, 0x4

    if-ne v12, v11, :cond_17

    iget-object v11, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/phone/PhoneUtilsCommon;->noiseReductionBroadcast(Landroid/content/Context;I)V

    :cond_17
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/phone/PhoneUtilsCommon;->setVoiceCallEq(ZZ)V

    const-string/jumbo v11, "support_spam_call"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a

    const-string/jumbo v11, "phone_number_locator_tencent"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v11}, Lcom/android/phone/NotificationMgr;->showTencentFunctionsFilterNotificationForEM()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v11}, Lcom/android/phone/NotificationMgr;->showSpamCallsFilterNotificationForEM()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v11}, Lcom/android/phone/NotificationMgr;->showTencentPNLFilterNotificationForEM()V

    :cond_18
    :goto_5
    const-string/jumbo v11, "support_smart_call"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    const-string/jumbo v11, "smart_call_privacy_notice_donotshow"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_1c

    const/4 v8, 0x1

    :goto_6
    const-string/jumbo v11, "smart_call_privacy_notice_agree"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1d

    const/4 v6, 0x1

    :goto_7
    const-string/jumbo v11, "support_smart_call_mcc"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_19

    const-string/jumbo v11, "support_smart_call_mcc"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    sget-boolean v11, Lcom/android/phone/PhoneGlobals;->mSmartCallMccSupported:Z

    if-eqz v11, :cond_c

    :cond_19
    if-eqz v8, :cond_c

    if-nez v6, :cond_c

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->needShowSmartCallNoti()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->smartNotificationMgr:Lcom/android/phone/SmartCallNotificationMgr;

    invoke-virtual {v11}, Lcom/android/phone/SmartCallNotificationMgr;->showSmartCallsFilterNotification()V

    goto/16 :goto_3

    :catch_0
    move-exception v1

    const-string/jumbo v11, "EmergencyModeManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "IllegalArgumentException"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_1a
    const-string/jumbo v11, "support_spam_call"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1b

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v11}, Lcom/android/phone/NotificationMgr;->showSpamCallsFilterNotificationForEM()V

    goto :goto_5

    :cond_1b
    const-string/jumbo v11, "phone_number_locator_tencent"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v11}, Lcom/android/phone/NotificationMgr;->showTencentPNLFilterNotificationForEM()V

    goto/16 :goto_5

    :cond_1c
    const/4 v8, 0x0

    goto :goto_6

    :cond_1d
    const/4 v6, 0x0

    goto :goto_7
.end method
