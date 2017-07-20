.class public final Lcom/android/phone/operator/usa/BootBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/operator/usa/BootBroadcastReceiver$1;
    }
.end annotation


# static fields
.field private static final Content_URI:Landroid/net/Uri;

.field private static mCR:Landroid/content/ContentResolver;

.field private static mPendingNetworkManualSelection:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0()Landroid/content/ContentResolver;
    .locals 1

    sget-object v0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mCR:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/operator/usa/BootBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->handleBootCompleted()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/operator/usa/BootBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->handleSimStateChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://com.sec.ims.settings/global"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->Content_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mCR:Landroid/content/ContentResolver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/android/phone/operator/usa/BootBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/usa/BootBroadcastReceiver$1;-><init>(Lcom/android/phone/operator/usa/BootBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private chanagePreferredNetworkType()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v5, "change_network_mode_when_no_sim_bootup"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "gsm.default.channel"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-ne v5, v9, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getGlobalType()I

    move-result v1

    iget-object v5, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "pref_sim_State_absent"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string/jumbo v5, "pref_sim_State_absent"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v5, "pref_sim_State_absent"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string/jumbo v5, "BootBroadcastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "chanagePreferredNetworkType - simStateAbsent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " / prefSimStateAbsent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v5, "BootBroadcastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "chanagePreferredNetworkType - simStateAbsent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " / prefSimStateAbsent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/mobilenetworks/MobileNetworkLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "device_provisioned"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "network_mode_global_lte_gsm"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "network_mode_global_lte_wcdma"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->setPreferredNetworkType(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->setPreferredNetworkType(I)V

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->setPreferredNetworkType(I)V

    goto :goto_1
.end method

.method private getPIPSettingValueFromIMS()V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sput-object v1, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mCR:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/phone/operator/usa/BootBroadcastReceiver$2;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/operator/usa/BootBroadcastReceiver$2;-><init>(Lcom/android/phone/operator/usa/BootBroadcastReceiver;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->Content_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private handleBootCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->startPendingEmergencyDialerActivity(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->startNetworkSetting()V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->chanagePreferredNetworkType()V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->setDefaultAssistedDailingValue()V

    const-string/jumbo v0, "concept_usa_att"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->getPIPSettingValueFromIMS()V

    :cond_0
    return-void
.end method

.method private handleSimStateChanged()V
    .locals 1

    sget-boolean v0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mPendingNetworkManualSelection:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->startNetworkSetting()V

    :cond_0
    return-void
.end method

.method private setDefaultAssistedDailingValue()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "assisted_dialing_enable"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "BootBroadcastReceiver"

    const-string/jumbo v1, "assisted dialing default value is true"

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "assisted_dialing"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private setPreferredNetworkType(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "preferred_network_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private startNetworkSetting()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string/jumbo v3, "network_manual_selection_when_bootup"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BootBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startNetworkSetting(), serviceState.getIsManualSelection() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    const-string/jumbo v3, "BootBroadcastReceiver"

    const-string/jumbo v4, "IsManualSelection : start network setting"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "network_manual_selection_when_bootup"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.NetworkSetting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v7, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mPendingNetworkManualSelection:Z

    :cond_0
    :goto_1
    const-string/jumbo v3, "global_data_roaming_access_enable"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "BootBroadcastReceiver"

    const-string/jumbo v4, "startNetworkSetting - DATA_ROAM_ACCESS_NOTIFY value reset"

    invoke-static {v3, v4}, Lcom/android/phone/mobilenetworks/MobileNetworkLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "data_roam_access_notify"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v3, "BootBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startNetworkSetting - GlobalDataRoamingAccessMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getGlobalDataRoamingAccessMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/mobilenetworks/MobileNetworkLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "BootBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ActivityNotFoundException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "BootBroadcastReceiver"

    const-string/jumbo v4, "sim state is not ready pending network searching."

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v6, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mPendingNetworkManualSelection:Z

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object p1, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string/jumbo v1, "BootBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Action received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
