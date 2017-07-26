.class public Lcom/android/phone/PhoneGlobals;
.super Landroid/content/ContextWrapper;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneGlobals$1;,
        Lcom/android/phone/PhoneGlobals$2;,
        Lcom/android/phone/PhoneGlobals$3;,
        Lcom/android/phone/PhoneGlobals$4;,
        Lcom/android/phone/PhoneGlobals$5;,
        Lcom/android/phone/PhoneGlobals$6;,
        Lcom/android/phone/PhoneGlobals$NetworkModePhoneStateListener;,
        Lcom/android/phone/PhoneGlobals$NotificationBroadcastReceiver;,
        Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;,
        Lcom/android/phone/PhoneGlobals$WakeState;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-phone-PhoneGlobals$WakeStateSwitchesValues:[I

.field private static final DBG:Z

.field private static mIsDisplayedDataCallFailNoti:Z

.field public static mSmartCallMccSupported:Z

.field private static mStatusBarManager:Landroid/app/StatusBarManager;

.field public static mUCEToggleEnabled:Z

.field public static mVIDEOCALLToggleEnabled:Z

.field private static sMe:Lcom/android/phone/PhoneGlobals;

.field static sVoiceCapable:Z


# instance fields
.field callController:Lcom/android/phone/CallController;

.field private callGatewayManager:Lcom/android/phone/CallGatewayManager;

.field callerInfoCache:Lcom/android/phone/CallerInfoCache;

.field public cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

.field public cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

.field public cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

.field public cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

.field cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

.field configLoader:Lcom/android/phone/CarrierConfigLoader;

.field inCallUiState:Lcom/android/phone/ota/InCallUiState;

.field private isUsimPersonalization:Z

.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mBluetoothVoIP:Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP;

.field private final mBluetoothVoIPConnection:Landroid/content/ServiceConnection;

.field mBootCompleteHandler:Lcom/android/phone/mobilenetworks/BootCompleteHandler;

.field public mCM:Lcom/android/internal/telephony/CallManager;

.field mComponentManager:Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;

.field private mDataDisconnectedDueToRoaming:Z

.field private mEmergencyModeMgr:Lcom/android/phone/EmergencyModeManager;

.field mErrorDialogActivity:Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;

.field mHandler:Landroid/os/Handler;

.field public mHotSwapHappen:Z

.field mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

.field private final mIsIMSreg:I

.field public mIsSim1Locked:Z

.field public mIsSim2Locked:Z

.field protected mIsWifiConnected:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMergeCallTriggered:Z

.field mMobileNetworkDialogManager:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

.field private mNeedDataFromNetwork:Z

.field mNetworkNotificationUI:Lcom/android/phone/NetworkNotificationUI;

.field mNetworkProxy:Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mOperatorCallNotifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/phone/operator/OperatorCallNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private mPUKEntryActivity:Landroid/app/Activity;

.field private mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPhoneProxy:Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/phone/PhoneGlobals$NetworkModePhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreferredNetworksCount:I

.field private mPreviousMcc:Ljava/lang/String;

.field private mPreviousRoaming:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistrationStateObserver:Landroid/database/ContentObserver;

.field mSettingProxy:Lcom/android/phone/mobilenetworks/boundary/SettingProxy;

.field mSim1Handler:Landroid/os/Handler;

.field mSim2Handler:Landroid/os/Handler;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mUpdateLock:Landroid/os/UpdateLock;

.field private mWFCEnableObserver:Landroid/database/ContentObserver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeState:Lcom/android/phone/PhoneGlobals$WakeState;

.field private ndpPanel:Lcom/android/phone/IccNetworkDepersonalizationPanel;

.field notificationMgr:Lcom/android/phone/NotificationMgr;

.field notifier:Lcom/android/phone/CallNotifier;

.field public otaUtils:Lcom/android/phone/OtaUtils;

.field private phone1:Lcom/android/internal/telephony/Phone;

.field private phone2:Lcom/android/internal/telephony/Phone;

.field private phoneInEcm:Lcom/android/internal/telephony/Phone;

.field public phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

.field public simActivationManager:Lcom/android/services/telephony/activation/SimActivationManager;

.field smartNotificationMgr:Lcom/android/phone/SmartCallNotificationMgr;

.field wfcWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0(Lcom/android/phone/PhoneGlobals;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->isUsimPersonalization:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/EmergencyModeManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mEmergencyModeMgr:Lcom/android/phone/EmergencyModeManager;

    return-object v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->mIsDisplayedDataCallFailNoti:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/phone/PhoneGlobals;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/PhoneGlobals;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get5()Landroid/app/StatusBarManager;
    .locals 1

    sget-object v0, Lcom/android/phone/PhoneGlobals;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IccNetworkDepersonalizationPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->ndpPanel:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/phone/PhoneGlobals;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/phone/PhoneGlobals;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phoneInEcm:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -get9()Lcom/android/phone/PhoneGlobals;
    .locals 1

    sget-object v0, Lcom/android/phone/PhoneGlobals;->sMe:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method private static synthetic -getcom-android-phone-PhoneGlobals$WakeStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/phone/PhoneGlobals;->-com-android-phone-PhoneGlobals$WakeStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/PhoneGlobals;->-com-android-phone-PhoneGlobals$WakeStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals$WakeState;->values()[Lcom/android/phone/PhoneGlobals$WakeState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/phone/PhoneGlobals$WakeState;->FULL:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals$WakeState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/phone/PhoneGlobals$WakeState;->PARTIAL:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals$WakeState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals$WakeState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/phone/PhoneGlobals;->-com-android-phone-PhoneGlobals$WakeStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/phone/PhoneGlobals;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/PhoneGlobals;->mDataDisconnectedDueToRoaming:Z

    return p1
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/phone/PhoneGlobals;->mIsDisplayedDataCallFailNoti:Z

    return p0
.end method

.method static synthetic -set2(Lcom/android/phone/PhoneGlobals;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/phone/PhoneGlobals;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic -set4(Landroid/app/StatusBarManager;)Landroid/app/StatusBarManager;
    .locals 0

    sput-object p0, Lcom/android/phone/PhoneGlobals;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object p0
.end method

.method static synthetic -set5(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/IccNetworkDepersonalizationPanel;)Lcom/android/phone/IccNetworkDepersonalizationPanel;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->ndpPanel:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->phoneInEcm:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/PhoneGlobals;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals;->changeSmartCallEnableInRoaming(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/PhoneGlobals;Landroid/telephony/ServiceState;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/PhoneGlobals;->changeWifiPrefModeInRoaming(Landroid/telephony/ServiceState;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/PhoneGlobals;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/PhoneGlobals;->disableMobileNetworkSettings()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/PhoneGlobals;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals;->handleAirplaneModeChange(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/PhoneGlobals;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals;->handleServiceStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/PhoneGlobals;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals;->initForNewRadioTechnology(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/phone/PhoneGlobals;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals;->onMMICompleteSecondary(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/phone/PhoneGlobals;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals;->onMMIComplete(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/phone/PhoneGlobals;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals;->updateChargingCutoff(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    sput-boolean v0, Lcom/android/phone/PhoneGlobals;->mIsDisplayedDataCallFailNoti:Z

    sput-boolean v1, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    sput-boolean v1, Lcom/android/phone/PhoneGlobals;->mUCEToggleEnabled:Z

    sput-boolean v1, Lcom/android/phone/PhoneGlobals;->mVIDEOCALLToggleEnabled:Z

    sput-boolean v0, Lcom/android/phone/PhoneGlobals;->mSmartCallMccSupported:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_RIL_USIMPersonalizationKOR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->isUsimPersonalization:Z

    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mOperatorCallNotifiers:Ljava/util/Set;

    iput-boolean v2, p0, Lcom/android/phone/PhoneGlobals;->mDataDisconnectedDueToRoaming:Z

    iput-boolean v2, p0, Lcom/android/phone/PhoneGlobals;->mIsWifiConnected:Z

    sget-object v0, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeState:Lcom/android/phone/PhoneGlobals$WakeState;

    iput v2, p0, Lcom/android/phone/PhoneGlobals;->mPreferredNetworksCount:I

    new-instance v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/PhoneGlobals;->mPreviousRoaming:I

    iput-object v3, p0, Lcom/android/phone/PhoneGlobals;->mRegistrationStateObserver:Landroid/database/ContentObserver;

    iput-object v3, p0, Lcom/android/phone/PhoneGlobals;->mWFCEnableObserver:Landroid/database/ContentObserver;

    iput v4, p0, Lcom/android/phone/PhoneGlobals;->mIsIMSreg:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPreviousMcc:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/phone/PhoneGlobals;->mMergeCallTriggered:Z

    iput-boolean v4, p0, Lcom/android/phone/PhoneGlobals;->mNeedDataFromNetwork:Z

    iput-boolean v2, p0, Lcom/android/phone/PhoneGlobals;->mIsSim1Locked:Z

    iput-boolean v2, p0, Lcom/android/phone/PhoneGlobals;->mIsSim2Locked:Z

    iput-boolean v2, p0, Lcom/android/phone/PhoneGlobals;->mHotSwapHappen:Z

    iput-object v3, p0, Lcom/android/phone/PhoneGlobals;->ndpPanel:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPhoneStateListeners:Ljava/util/Map;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "WFC worker thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->wfcWorkerThread:Landroid/os/HandlerThread;

    new-instance v0, Lcom/android/phone/PhoneGlobals$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneGlobals$1;-><init>(Lcom/android/phone/PhoneGlobals;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mSim1Handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/PhoneGlobals$2;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneGlobals$2;-><init>(Lcom/android/phone/PhoneGlobals;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mSim2Handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/PhoneGlobals$3;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneGlobals$3;-><init>(Lcom/android/phone/PhoneGlobals;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/PhoneGlobals$4;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneGlobals$4;-><init>(Lcom/android/phone/PhoneGlobals;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    new-instance v0, Lcom/android/phone/PhoneGlobals$5;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneGlobals$5;-><init>(Lcom/android/phone/PhoneGlobals;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/phone/PhoneGlobals$6;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneGlobals$6;-><init>(Lcom/android/phone/PhoneGlobals;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothVoIPConnection:Landroid/content/ServiceConnection;

    sput-object p0, Lcom/android/phone/PhoneGlobals;->sMe:Lcom/android/phone/PhoneGlobals;

    return-void
.end method

.method private bindBTforVoIP()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothVoIPConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/phone/PhoneGlobals;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v2, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothVoIP:Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP;

    goto :goto_0
.end method

.method private changeSmartCallEnableInRoaming(Landroid/telephony/ServiceState;)V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "smart_call_prev_roaming_status"

    invoke-static {v6, v5}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    const-string/jumbo v6, "smart_call_roaming_backup"

    invoke-static {v6, v5}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "spam_call_enable"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v6, "PhoneApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onServiceStateChanged prevRoaming : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", roaming : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "PhoneApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onServiceStateChanged backupEnableValue : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mSmartCallEnabled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v3, :cond_2

    if-eqz v3, :cond_4

    if-eq v0, v1, :cond_0

    const-string/jumbo v6, "smart_call_roaming_backup"

    invoke-static {v6, v1}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "spam_call_enable"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_1
    const-string/jumbo v6, "smart_call_prev_roaming_status"

    if-eqz v3, :cond_6

    :goto_2
    invoke-static {v6, v4}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    :cond_2
    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const-string/jumbo v6, "support_smart_call_mcc"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, "support_smart_call_mcc"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportMccSmartCall()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_5
    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "spam_call_enable"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    move v4, v5

    goto :goto_2
.end method

.method private changeWifiPrefModeInRoaming(Landroid/telephony/ServiceState;I)V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "wfc_prev_roaming_state"

    invoke-static {v6, v5}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    const-string/jumbo v6, "PhoneApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "changeWifiPrefModeInRoaming prevRoaming "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " -> current "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v1, :cond_2

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "wifi_call_preferred"

    invoke-static {v6, v7, v4}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez p2, :cond_4

    const/4 v3, 0x2

    :cond_0
    :goto_1
    const-string/jumbo v6, "wfc_preferred_domestic_backup"

    invoke-static {v6, v0}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    :goto_2
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "wifi_call_preferred"

    invoke-static {v6, v7, v3}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    const-string/jumbo v6, "wfc_prev_roaming_state"

    if-eqz v1, :cond_6

    :goto_3
    invoke-static {v6, v4}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    :cond_2
    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    if-ne p2, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const-string/jumbo v6, "wfc_preferred_domestic_backup"

    invoke-static {v6, v5}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v3

    goto :goto_2

    :cond_6
    move v4, v5

    goto :goto_3
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

.method private createOperatorCallNotifiers()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->mOperatorCallNotifiers:Ljava/util/Set;

    new-instance v3, Lcom/android/phone/operator/sec/SecCallNotifier;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/operator/sec/SecCallNotifier;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "feature_chn"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->mOperatorCallNotifiers:Ljava/util/Set;

    new-instance v3, Lcom/android/phone/operator/chn/ChnCallNotifier;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/operator/chn/ChnCallNotifier;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string/jumbo v2, "feature_hktw"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->mOperatorCallNotifiers:Ljava/util/Set;

    new-instance v3, Lcom/android/phone/operator/hktw/HktwCallNotifier;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/operator/hktw/HktwCallNotifier;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string/jumbo v2, "feature_dcm"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "PhoneApp"

    const-string/jumbo v3, "JpnCallNotifier created.."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->mOperatorCallNotifiers:Ljava/util/Set;

    new-instance v3, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/operator/jpn/dcm/JpnCallNotifier;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string/jumbo v2, "feature_kor"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->mOperatorCallNotifiers:Ljava/util/Set;

    new-instance v3, Lcom/android/phone/operator/kor/KorCallNotifier;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/operator/kor/KorCallNotifier;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private disableMobileNetworkSettings()V
    .locals 6

    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.android.phone"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v2, "PhoneApp"

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

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

.method public static getInstance()Lcom/android/phone/PhoneGlobals;
    .locals 2

    sget-object v0, Lcom/android/phone/PhoneGlobals;->sMe:Lcom/android/phone/PhoneGlobals;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No PhoneGlobals here!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/phone/PhoneGlobals;->sMe:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static getInstanceIfPrimary()Lcom/android/phone/PhoneGlobals;
    .locals 1

    sget-object v0, Lcom/android/phone/PhoneGlobals;->sMe:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method private getIntentFilter()Landroid/content/IntentFilter;
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.motion.PALM_DOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.phone.action.DISABLE_UCE_TOGGLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.phone.action.DISABLE_VIDEOCALL_TOGGLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.conn.SwitchDataNetworkDuringVoiceCall"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.conn.SwitchDataNetworkDuringMMS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.intent.action.ACTION_BACKGROUND_SWITCH_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.smartcallprovider.ACTION_SUPPORT_NOTI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "action_wfc_switch_profile_broadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v1, "support_safetycare"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v1, "enabled"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "feature_kor"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "android.intent.action.ECMP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v1, "hot_swap_type_sim"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v1, "data_usage_limit"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_5
    const-string/jumbo v1, "jansky_info_for_tmo"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "com.samsung.nsds.action.DEVICE_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_6
    const-string/jumbo v1, "feature_usa"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->getInstance()Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->addPhoneIntentFilter(Landroid/content/IntentFilter;)V

    :cond_7
    invoke-static {}, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->getInstance()Lcom/android/phone/operator/kor/KorTelephonyReceiver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->addActionToIntentFilter(Landroid/content/IntentFilter;)V

    const-string/jumbo v1, "feature_kor"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->getInstance()Lcom/android/phone/operator/kor/KorTelephonyReceiver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->addActionToIntentFilter(Landroid/content/IntentFilter;)V

    :cond_8
    const-string/jumbo v1, "vowifi_in_can"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_9
    return-object v0
.end method

.method public static getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public static getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method static getRoamingPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.phone.ACTION_ROAMING_ENABLE_FROM_NOTIFICATION"

    const-class v2, Lcom/android/phone/PhoneGlobals$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v3, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const/high16 v1, 0x8000000

    invoke-static {p0, v4, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.phone.ACTION_ROAMING_DISABLE_FROM_NOTIFICATION"

    const-class v2, Lcom/android/phone/PhoneGlobals$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v3, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.phone.ACTION_ROAMING_SETTING_FROM_NOTIFICATION"

    const-class v2, Lcom/android/phone/PhoneGlobals$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v3, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private handleAirplaneModeChange(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isInEmergencyCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    const v0, 0x7f0d04d5

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string/jumbo v0, "PhoneApp"

    const-string/jumbo v1, "Ignoring airplane mode: emergency call. Turning airplane off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "PhoneApp"

    const-string/jumbo v1, "Turning radio off - airplane"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->setRadioPower(Z)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "PhoneApp"

    const-string/jumbo v1, "Turning radio on - airplane"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setRadioPower(Z)V

    goto :goto_0
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;)V
    .locals 20

    const/4 v14, 0x0

    const-string/jumbo v17, "feature_multisim"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    const-string/jumbo v17, "subscription"

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v14

    invoke-static {v14}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v14, 0x0

    :cond_0
    const-string/jumbo v17, "PhoneApp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "handleServiceStateChanged : simSlot : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-static {v5}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v15

    if-eqz v15, :cond_7

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getState()I

    move-result v16

    const-string/jumbo v17, "force_lte_for_bolt_sim_after_device_reboot_complete"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-static {v14}, Lcom/android/phone/PhoneUtilsMultiSIM;->isBoltSIM(I)Z

    move-result v17

    if-eqz v17, :cond_2

    const-string/jumbo v17, "PhoneApp"

    const-string/jumbo v18, "get data service state instead voice service state for PS only Sim"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v16

    :cond_2
    const-string/jumbo v17, "PhoneApp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "handleServiceStateChanged State "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v17, "feature_multisim"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v17, v0

    invoke-static {v14}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSubIdUsingPhoneId(I)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/NotificationMgr;->updateNetworkSelection(II)V

    :goto_0
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string/jumbo v17, "national_roaming_mode_menu_play"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    const-string/jumbo v17, "mobile_network_settings_shared_prefs"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getDefaultDataSlotId()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TelephonyConfig;->isPlaySIM(I)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string/jumbo v17, "PhoneApp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "isPlay = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v17, "national_roaming_menu_by_playsim"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_4

    const-string/jumbo v17, "national_roaming_mode_menu"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    :cond_4
    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getPLMNOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const-string/jumbo v17, "data_roaming_option_national"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "data_national_roaming_mode"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    :goto_2
    const-string/jumbo v17, "PhoneApp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "roamingMode = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", isPlay = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_5

    const/16 v17, 0x0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_e

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setDataRoamingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    const-string/jumbo v17, "global_data_roaming_access_enable"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string/jumbo v17, "support_international_roaming_notification"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string/jumbo v17, "roaming_enhancement"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    :cond_6
    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->getInstance()Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->handleServiceStateChanged(I)V

    :cond_7
    const-string/jumbo v17, "roaming_auto_dial"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    const-string/jumbo v17, "feature_lgt"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    const-string/jumbo v17, "PhoneApp"

    const-string/jumbo v18, "Receive ACTION_SERVICE_STATE_CHANGED - setAutoDialState"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->setAutoDialState()V

    :cond_8
    return-void

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr;->updateNetworkSelection(I)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v17, "national_roaming_menu_by_playsim"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_3

    const-string/jumbo v17, "PhoneApp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "ACTION_SIM_STATE_CHANGED : Because non play sim is inserted, Dataroam is false - simSlotID : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setDataRoamingEnabled(Z)V

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v17, "national_roaming_menu_by_playsim"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "data_national_roaming_mode"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v17, "data_roaming_option_all"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "data_national_roaming_mode"

    const/16 v19, 0x2

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    goto/16 :goto_2

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "data_national_roaming_mode"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    goto/16 :goto_2

    :cond_d
    const/16 v17, 0x0

    :try_start_1
    invoke-static/range {v17 .. v17}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setDataRoamingEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v4

    const-string/jumbo v17, "PhoneApp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "simMCC or  plmnMCC error:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_e
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v11, v0, :cond_f

    const/16 v17, 0x1

    :try_start_2
    invoke-static/range {v17 .. v17}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setDataRoamingEnabled(Z)V

    goto/16 :goto_3

    :cond_f
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setDataRoamingEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :cond_10
    const-string/jumbo v17, "data_roaming_noti_tray"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    const-string/jumbo v17, "PhoneApp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Create Roaming Notification : Data Roaming status is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getDataRoamingEnabled()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getDataRoamingEnabled()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/phone/NotificationMgr;->updateRoamingNotification(Z)V

    goto/16 :goto_3
.end method

.method private initForNewRadioTechnology(I)V
    .locals 7

    const/4 v4, 0x0

    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "PhoneApp"

    const-string/jumbo v6, "initForNewRadioTechnology..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier;->updateCallNotifierRegistrationsAfterRadioTechnologyChange()V

    iget-object v5, p0, Lcom/android/phone/PhoneGlobals;->mOperatorCallNotifiers:Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/operator/OperatorCallNotifier;

    invoke-interface {v0}, Lcom/android/phone/operator/OperatorCallNotifier;->updateAfterRadioTechnologyChange()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->clearOtaState()V

    goto :goto_0

    :cond_2
    if-nez v2, :cond_5

    move-object v3, v4

    :goto_2
    if-eqz v3, :cond_4

    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "PhoneApp"

    const-string/jumbo v6, "Update registration for ICC status..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IccCard;->unregisterForAbsent(Landroid/os/Handler;)V

    iget-object v5, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IccCard;->unregisterForNetworkLocked(Landroid/os/Handler;)V

    iget-object v5, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IccCard;->unregisterForNetworkSubsetLocked(Landroid/os/Handler;)V

    iget-object v5, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IccCard;->unregisterForSPLocked(Landroid/os/Handler;)V

    iget-object v5, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    invoke-interface {v3, v5, v6, v4}, Lcom/android/internal/telephony/IccCard;->registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-interface {v3, v5, v6, v4}, Lcom/android/internal/telephony/IccCard;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-interface {v3, v5, v6, v4}, Lcom/android/internal/telephony/IccCard;->registerForNetworkSubsetLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    invoke-interface {v3, v5, v6, v4}, Lcom/android/internal/telephony/IccCard;->registerForSPLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_4
    invoke-direct {p0}, Lcom/android/phone/PhoneGlobals;->registerForMmi()V

    return-void

    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    goto :goto_2
.end method

.method private notifyCallFunctionsFilter()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x3

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "spam_calls_dialog_do_not_show"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v8, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "tencent_pnl_dialog_do_not_show"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v8, :cond_4

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "spamcall_legal_info_disagree_times"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "tencent_pnl_legal_info_disagree_times"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "support_spam_call"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "support_spam_call_smartmanager"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_0
    const-string/jumbo v4, "support_spam_call"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "support_spam_call_smartmanager"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_1
    const-string/jumbo v4, "phone_number_locator_tencent"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isUltraPowerSavingMode()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const-string/jumbo v4, "phone_number_locator_tencent"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isUltraPowerSavingMode()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEmergencyMode()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    if-ge v2, v7, :cond_0

    if-eqz v1, :cond_0

    if-ge v3, v7, :cond_0

    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->showTencentFunctionsFilterNotification()V

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isUltraPowerSavingMode()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEmergencyMode()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    if-ge v2, v7, :cond_1

    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->showSpamCallsFilterNotification()V

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEmergencyMode()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    if-ge v3, v7, :cond_2

    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->showTencentPNLFilterNotification()V

    goto :goto_2
.end method

.method private onMMIComplete(Landroid/os/AsyncResult;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "PhoneApp"

    const-string/jumbo v2, "onMMIComplete()..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    invoke-interface {v0}, Lcom/android/internal/telephony/MmiCode;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v1, v2, v0, v3, v3}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    return-void
.end method

.method private onMMICompleteSecondary(Landroid/os/AsyncResult;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "PhoneApp"

    const-string/jumbo v2, "onMMICompleteSecondary()..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v1, v2, v0, v3, v3}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    return-void
.end method

.method private registerForMmi()V
    .locals 5

    const-string/jumbo v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "PhoneApp"

    const-string/jumbo v2, "registerForMmi()..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v1, "PhoneApp"

    const-string/jumbo v2, "FEATURE_MULTISIM"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PhoneApp"

    const-string/jumbo v2, "phone1 = null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "PhoneApp"

    const-string/jumbo v2, "phone2 = null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PhoneApp"

    const-string/jumbo v2, "registerForMmi() Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private registerIccCard()V
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const-string/jumbo v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    new-array v0, v3, [Lcom/android/internal/telephony/Phone;

    aput-object v5, v0, v4

    const/4 v3, 0x1

    aput-object v5, v0, v3

    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    aput-object v3, v0, v2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->mSim1Handler:Landroid/os/Handler;

    invoke-interface {v1, v3, v8, v5}, Lcom/android/internal/telephony/IccCard;->registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->mSim1Handler:Landroid/os/Handler;

    invoke-interface {v1, v3, v6, v5}, Lcom/android/internal/telephony/IccCard;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->mSim1Handler:Landroid/os/Handler;

    invoke-interface {v1, v3, v7, v5}, Lcom/android/internal/telephony/IccCard;->registerForNetworkSubsetLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->mSim2Handler:Landroid/os/Handler;

    invoke-interface {v1, v3, v8, v5}, Lcom/android/internal/telephony/IccCard;->registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->mSim2Handler:Landroid/os/Handler;

    invoke-interface {v1, v3, v6, v5}, Lcom/android/internal/telephony/IccCard;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->mSim2Handler:Landroid/os/Handler;

    invoke-interface {v1, v3, v7, v5}, Lcom/android/internal/telephony/IccCard;->registerForNetworkSubsetLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/PhoneGlobals;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v3, "PhoneApp"

    const-string/jumbo v4, "register for ICC status"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v3, v8, v5}, Lcom/android/internal/telephony/IccCard;->registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v3, v6, v5}, Lcom/android/internal/telephony/IccCard;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v3, v7, v5}, Lcom/android/internal/telephony/IccCard;->registerForNetworkSubsetLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-interface {v1, v3, v4, v5}, Lcom/android/internal/telephony/IccCard;->registerForSPLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_2
.end method

.method private registerMMI()V
    .locals 4

    const/16 v2, 0x34

    const/4 v3, 0x0

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private registerWFCMenuEnableObserver()V
    .locals 4

    new-instance v0, Lcom/android/phone/PhoneGlobals$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneGlobals$8;-><init>(Lcom/android/phone/PhoneGlobals;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWFCEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vowifi_menu_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->mWFCEnableObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerWFCObserver()V
    .locals 8

    const/4 v5, 0x2

    const/4 v7, 0x0

    const-string/jumbo v1, "popup_incoming_call"

    const-string/jumbo v0, "gsm_popup_incoming_call"

    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    const-string/jumbo v4, "PhoneApp"

    const-string/jumbo v5, "updatePopupIncomingCallPreference : Enable SUPPORT_INCOMINGCALL_POPUP"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Enable SUPPORT_INCOMINGCALL_POPUP value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->wfcWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    new-instance v4, Lcom/android/phone/PhoneGlobals$7;

    new-instance v5, Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/phone/PhoneGlobals;->wfcWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v4, p0, v5, v1, v0}, Lcom/android/phone/PhoneGlobals$7;-><init>(Lcom/android/phone/PhoneGlobals;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/phone/PhoneGlobals;->mRegistrationStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/phone/PhoneGlobals;->mRegistrationStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_0
    const-string/jumbo v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Gsm incoming popup value after reboot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private setTelephonyManagerListener()V
    .locals 3

    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string/jumbo v1, "support_smart_call"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "support_wfc"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    :cond_1
    :goto_0
    const-string/jumbo v1, "global_data_roaming_access_enable"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->getInstance()Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->telephonyManager(Landroid/content/Context;)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method private showTtyNotification()V
    .locals 4

    const/4 v2, 0x0

    const-string/jumbo v1, "preferred_tty_mode"

    invoke-static {v1, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSecureSettingDB(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreate() : showTtyNoti = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->showVzwTtyNotification()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateChargingCutoff(Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v2, "apnType"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    const-string/jumbo v2, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "CONNECTED"

    const-string/jumbo v3, "state"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    :cond_0
    :goto_0
    new-instance v2, Lcom/android/phone/utils/FileWriteThread;

    invoke-direct {v2, v1}, Lcom/android/phone/utils/FileWriteThread;-><init>(I)V

    invoke-virtual {v2}, Lcom/android/phone/utils/FileWriteThread;->start()V

    return-void

    :cond_1
    if-eqz v0, :cond_0

    const-string/jumbo v2, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "DISCONNECTED"

    const-string/jumbo v3, "state"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0
.end method


# virtual methods
.method public clearMwiIndicator(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/phone/NotificationMgr;->updateMwi(IZ)V

    return-void
.end method

.method public clearOtaState()V
    .locals 2

    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PhoneApp"

    const-string/jumbo v1, "- clearOtaState ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "PhoneApp"

    const-string/jumbo v1, "  - clearOtaState clears OTA screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public dismissOtaDialogs()V
    .locals 2

    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PhoneApp"

    const-string/jumbo v1, "- dismissOtaDialogs ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->dismissAllOtaDialogs()V

    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "PhoneApp"

    const-string/jumbo v1, "  - dismissOtaDialogs clears OTA dialogs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method getBluetoothVoIPService()Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothVoIP:Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP;

    return-object v0
.end method

.method public getCallManager()Lcom/android/internal/telephony/CallManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method public getCarrierConfig()Landroid/os/PersistableBundle;
    .locals 1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->configLoader:Lcom/android/phone/CarrierConfigLoader;

    invoke-virtual {v0, p1}, Lcom/android/phone/CarrierConfigLoader;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPhoneCallState()Lcom/android/phone/CdmaPhoneCallState;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v0}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    return-object v0
.end method

.method public getErrorDialogActivityInstance()Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mErrorDialogActivity:Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;

    return-object v0
.end method

.method public getInCallUiState()Lcom/android/phone/ota/InCallUiState;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/ota/InCallUiState;

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method public getMergeCallTriggered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mMergeCallTriggered:Z

    return v0
.end method

.method public getNeedDataFromNetwork()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mNeedDataFromNetwork:Z

    return v0
.end method

.method public getNotificationMgr()Lcom/android/phone/NotificationMgr;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    return-object v0
.end method

.method getPUKEntryActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getPhoneInEcm()Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phoneInEcm:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getPreferredNetworksListCount()I
    .locals 1

    iget v0, p0, Lcom/android/phone/PhoneGlobals;->mPreferredNetworksCount:I

    return v0
.end method

.method public getSmartCallNotificationMgr()Lcom/android/phone/SmartCallNotificationMgr;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->smartNotificationMgr:Lcom/android/phone/SmartCallNotificationMgr;

    return-object v0
.end method

.method handleOtaspEvent(Landroid/os/Message;)V
    .locals 3

    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleOtaspEvent(message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v0, :cond_1

    const-string/jumbo v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleOtaEvents: got an event but otaUtils is null! message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Lcom/android/phone/OtaUtils;->onOtaProvisionStatusChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public onCreate()V
    .locals 22

    const-string/jumbo v18, "PhoneApp"

    const-string/jumbo v19, "onCreate()..."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "PhoneApp"

    const-string/jumbo v19, "!@Boot_SVC : PhoneApp OnCrate"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "PhoneGlobals is created"

    const v19, 0x1129c

    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x112005c

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-nez v18, :cond_0

    const-string/jumbo v18, "support_softphone"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    :goto_0
    sput-boolean v18, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    if-nez v18, :cond_d

    const-string/jumbo v18, "PhoneApp"

    const-string/jumbo v19, "onCreate() : PhoneFactory.makeDefaultPhones"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhones(Landroid/content/Context;)V

    const-string/jumbo v18, "makeDefaultPhones is called"

    const v19, 0x1129c

    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/TeleServiceSystemDB;->initialize(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/TeleServiceFeature;->makeFeature(Landroid/content/Context;)V

    new-instance v11, Landroid/content/Intent;

    const-class v18, Lcom/android/phone/TelephonyDebugService;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/phone/PhoneGlobals;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v19

    const/16 v18, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    aget-object v13, v19, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_0
    const/16 v18, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v18, "support_smart_call_mcc"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    const-string/jumbo v18, "support_search_nearby_places_mcc"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->setSupportMccSmartCall()V

    :cond_3
    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getInstance()Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->mNetworkProxy:Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getInstance()Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->mPhoneProxy:Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getInstance()Lcom/android/phone/mobilenetworks/boundary/SettingProxy;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->mSettingProxy:Lcom/android/phone/mobilenetworks/boundary/SettingProxy;

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->mMobileNetworkDialogManager:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    invoke-static/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->init(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/NotificationMgr;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-static {}, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->getInstance()Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->mComponentManager:Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;

    invoke-static {}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->getInstance()Lcom/android/phone/mobilenetworks/controller/IntentManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v18, "support_smart_call"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-static/range {p0 .. p0}, Lcom/android/phone/SmartCallNotificationMgr;->init(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/SmartCallNotificationMgr;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->smartNotificationMgr:Lcom/android/phone/SmartCallNotificationMgr;

    :cond_4
    const-string/jumbo v18, "support_tphone"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    const/16 v16, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "tphone_api_version"

    const/16 v20, 0x3

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v18, "PhoneApp"

    const-string/jumbo v19, "onCreate() : tphone_api_version=3"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->notifyCallFunctionsFilter()V

    const-string/jumbo v18, "vzw_volte_ui"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->showTtyNotification()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0xd

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v18, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct/range {v18 .. v18}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->bindBTforVoIP()V

    const-string/jumbo v18, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/PowerManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v18, v0

    const-string/jumbo v19, "PhoneApp"

    const/16 v20, 0x1a

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v18, v0

    const-string/jumbo v19, "PhoneApp"

    const v20, 0x20000001

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string/jumbo v18, "keyguard"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/KeyguardManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->mKeyguardManager:Landroid/app/KeyguardManager;

    new-instance v18, Landroid/os/UpdateLock;

    const-string/jumbo v19, "phone"

    invoke-direct/range {v18 .. v19}, Landroid/os/UpdateLock;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    sget-boolean v18, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v18, :cond_7

    const-string/jumbo v18, "PhoneApp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "onCreate: mUpdateLock: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    new-instance v5, Lcom/android/phone/CallLogger;

    new-instance v18, Lcom/android/phone/common/CallLogAsync;

    invoke-direct/range {v18 .. v18}, Lcom/android/phone/common/CallLogAsync;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Lcom/android/phone/CallLogger;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/common/CallLogAsync;)V

    invoke-static {}, Lcom/android/phone/CallGatewayManager;->getInstance()Lcom/android/phone/CallGatewayManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->callGatewayManager:Lcom/android/phone/CallGatewayManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->callGatewayManager:Lcom/android/phone/CallGatewayManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v5, v1}, Lcom/android/phone/CallController;->init(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/CallLogger;Lcom/android/phone/CallGatewayManager;)Lcom/android/phone/CallController;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->createOperatorCallNotifiers()V

    invoke-static/range {p0 .. p0}, Lcom/android/phone/ota/InCallUiState;->init(Landroid/content/Context;)Lcom/android/phone/ota/InCallUiState;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/ota/InCallUiState;

    invoke-static/range {p0 .. p0}, Lcom/android/phone/CallerInfoCache;->init(Landroid/content/Context;)Lcom/android/phone/CallerInfoCache;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->callerInfoCache:Lcom/android/phone/CallerInfoCache;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->init(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/PhoneInterfaceManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-static/range {p0 .. p0}, Lcom/android/phone/CarrierConfigLoader;->init(Landroid/content/Context;)Lcom/android/phone/CarrierConfigLoader;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->configLoader:Lcom/android/phone/CarrierConfigLoader;

    invoke-static/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->init(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/CallNotifier;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v18

    const-string/jumbo v19, "CscFeature_RIL_ConfigOperatorLock"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->registerIccCard()V

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->registerMMI()V

    const-string/jumbo v18, "feature_multisim"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "dsa_init_process"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_9

    const-string/jumbo v18, "dsa_phone_number"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string/jumbo v18, "dsa_phone_number_sim1"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v18, "dsa_phone_number_sim2"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string/jumbo v18, "dsa_main"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string/jumbo v18, "dsa_result_dialog_success_is_checked"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string/jumbo v18, "dsa_Initial"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string/jumbo v18, "dsa_IsFirst"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "dsa_is_activate"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "dsa_is_first"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Lcom/android/phone/PhoneGlobals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v18, "feature_kor"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-static {}, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->getInstance()Lcom/android/phone/operator/kor/KorTelephonyReceiver;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->registerHDVReceiver(Landroid/content/Context;)V

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->setTelephonyManagerListener()V

    const v18, 0x7f070046

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    const v18, 0x7f070058

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    const-string/jumbo v18, "support_uwa"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isGuestMode()Z

    move-result v18

    if-eqz v18, :cond_16

    :cond_b
    :goto_2
    const-string/jumbo v18, "support_sync_call"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-static {}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->getInstance()Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->registerCallServiceMgr()V

    :cond_c
    const-string/jumbo v18, "ims_capability_service"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-static {}, Lcom/android/phone/ims/IMSCapabilityService;->getInstance()Lcom/android/phone/ims/IMSCapabilityService;

    move-result-object v6

    if-nez v6, :cond_d

    invoke-static/range {p0 .. p0}, Lcom/android/phone/ims/IMSCapabilityService;->init(Landroid/content/Context;)Lcom/android/phone/ims/IMSCapabilityService;

    :cond_d
    new-instance v18, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-direct/range {v18 .. v18}, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    new-instance v18, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    invoke-direct/range {v18 .. v18}, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    new-instance v18, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    invoke-direct/range {v18 .. v18}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    new-instance v18, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    invoke-direct/range {v18 .. v18}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    new-instance v18, Lcom/android/services/telephony/activation/SimActivationManager;

    invoke-direct/range {v18 .. v18}, Lcom/android/services/telephony/activation/SimActivationManager;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->simActivationManager:Lcom/android/services/telephony/activation/SimActivationManager;

    new-instance v18, Lcom/android/phone/NetworkNotificationUI;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/NetworkNotificationUI;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->mNetworkNotificationUI:Lcom/android/phone/NetworkNotificationUI;

    const-string/jumbo v18, "content://icc/adn"

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    const-string/jumbo v18, "support_safetycare"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_e

    new-instance v18, Lcom/android/phone/EmergencyModeManager;

    invoke-direct/range {v18 .. v18}, Lcom/android/phone/EmergencyModeManager;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->mEmergencyModeMgr:Lcom/android/phone/EmergencyModeManager;

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0b0007

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-nez v18, :cond_f

    const-string/jumbo v18, "tty_enable"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_f

    const-string/jumbo v18, "hac_enable"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_10

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "hearing_aid"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v18, "PhoneApp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "HAC_KEY setting hac:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    const-string/jumbo v19, "HACSetting"

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_17

    const-string/jumbo v18, "ON"

    :goto_3
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    const-string/jumbo v18, "automatic_answering_machine"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-static {}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->getInstance()Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->updateAMNotificationAtStartUp()V

    :cond_11
    const-string/jumbo v18, "roaming_enhancement"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_12

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    if-eqz v18, :cond_12

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->getInstance()Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    move-result-object v18

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->registerDataRoamingSettingsContentObserver(Lcom/android/internal/telephony/Phone;)V

    :cond_12
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v18

    const-string/jumbo v19, "CscFeature_Common_SupportSecWFC"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->registerWFCObserver()V

    :cond_13
    const-string/jumbo v18, "show_wfc_help_noti"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_14

    const-string/jumbo v18, "wfc_help_noti_first_time"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/phone/TeleServiceSystemDB;->getSecureSettingDB(Ljava/lang/String;I)I

    move-result v18

    if-nez v18, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->registerWFCMenuEnableObserver()V

    :cond_14
    const-string/jumbo v18, "GEAR_VOICEMAIL_ENABLED"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    if-nez v18, :cond_15

    const-string/jumbo v18, "network_auto_selection_when_bootup"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_15

    const-string/jumbo v18, "PhoneApp"

    const-string/jumbo v19, " NETWORK_AUTO_SELECTION_WHEN_BOOTUP:"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "VALUE_OF_CURRENT_SELECTION_MODE"

    const-string/jumbo v19, "0"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_15
    const-string/jumbo v18, "feature_vzw"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_19

    const-string/jumbo v18, "ecid_enable"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    if-nez v7, :cond_18

    return-void

    :cond_16
    invoke-static {}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->getInstance()Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->registerCallServiceMgr()V

    goto/16 :goto_2

    :cond_17
    const-string/jumbo v18, "OFF"

    goto/16 :goto_3

    :cond_18
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Lcom/android/phone/InCallImsListener;->getInstance(Landroid/content/Context;Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/InCallImsListener;

    move-result-object v10

    if-eqz v10, :cond_19

    invoke-virtual {v10}, Lcom/android/phone/InCallImsListener;->registerCallStatusListener()V

    :cond_19
    new-instance v18, Lcom/android/phone/mobilenetworks/BootCompleteHandler;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/BootCompleteHandler;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->mBootCompleteHandler:Lcom/android/phone/mobilenetworks/BootCompleteHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mBootCompleteHandler:Lcom/android/phone/mobilenetworks/BootCompleteHandler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/BootCompleteHandler;->onPhoneCreated()V

    return-void
.end method

.method pokeUserActivity()V
    .locals 4

    const-string/jumbo v0, "PhoneApp"

    const-string/jumbo v1, "pokeUserActivity()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    return-void
.end method

.method public refreshMwiIndicator(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr;->refreshMwi(I)V

    return-void
.end method

.method public requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V
    .locals 3

    const-string/jumbo v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestWakeState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeState:Lcom/android/phone/PhoneGlobals$WakeState;

    if-eq v0, p1, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->-getcom-android-phone-PhoneGlobals$WakeStateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/phone/PhoneGlobals$WakeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mWakeState:Lcom/android/phone/PhoneGlobals$WakeState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setErrorDialogActivityInstance(Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mErrorDialogActivity:Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;

    return-void
.end method

.method public setMergeCallTriggered(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/PhoneGlobals;->mMergeCallTriggered:Z

    return-void
.end method

.method public setNeedDataFromNetwork(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/PhoneGlobals;->mNeedDataFromNetwork:Z

    return-void
.end method

.method public setPreferredNetworksListCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/phone/PhoneGlobals;->mPreferredNetworksCount:I

    return-void
.end method

.method setPukEntryActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;

    return-void
.end method

.method setPukEntryProgressDialog(Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public updatePhoneStateListeners()V
    .locals 8

    iget-object v6, p0, Lcom/android/phone/PhoneGlobals;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhoneGlobals;->mPhoneStateListeners:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

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

    invoke-direct {p0, v5, v4}, Lcom/android/phone/PhoneGlobals;->containsSubId(Ljava/util/List;I)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_1
    iget-object v6, p0, Lcom/android/phone/PhoneGlobals;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/PhoneStateListener;

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

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

    iget-object v6, p0, Lcom/android/phone/PhoneGlobals;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v2, Lcom/android/phone/PhoneGlobals$NetworkModePhoneStateListener;

    invoke-direct {v2, p0, v4}, Lcom/android/phone/PhoneGlobals$NetworkModePhoneStateListener;-><init>(Lcom/android/phone/PhoneGlobals;I)V

    const/4 v6, 0x1

    invoke-virtual {v3, v2, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v6, p0, Lcom/android/phone/PhoneGlobals;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public updateRequestWakeState()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    return-void
.end method

.method updateWakeState()V
    .locals 6

    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-nez v1, :cond_2

    move v2, v0

    :goto_2
    if-eqz v2, :cond_3

    sget-object v4, Lcom/android/phone/PhoneGlobals$WakeState;->FULL:Lcom/android/phone/PhoneGlobals$WakeState;

    :goto_3
    invoke-virtual {p0, v4}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    sget-object v4, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    goto :goto_3
.end method

.method public userActivity()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->pokeUserActivity()V

    return-void
.end method

.method public wakeUpScreen()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeState:Lcom/android/phone/PhoneGlobals$WakeState;

    sget-object v1, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PhoneApp"

    const-string/jumbo v1, "pulse screen lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
