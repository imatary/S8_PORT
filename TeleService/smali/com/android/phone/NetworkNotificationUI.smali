.class public Lcom/android/phone/NetworkNotificationUI;
.super Ljava/lang/Object;
.source "NetworkNotificationUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl0;,
        Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl10;,
        Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl11;,
        Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl12;,
        Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl13;,
        Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl14;,
        Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl15;,
        Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl16;,
        Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl17;,
        Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl18;,
        Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl19;,
        Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl1;,
        Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl20;,
        Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl21;,
        Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl22;,
        Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl2;,
        Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl3;,
        Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl4;,
        Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl5;,
        Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl6;,
        Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl7;,
        Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl8;,
        Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl9;,
        Lcom/android/phone/NetworkNotificationUI$1;,
        Lcom/android/phone/NetworkNotificationUI$2;,
        Lcom/android/phone/NetworkNotificationUI$3;,
        Lcom/android/phone/NetworkNotificationUI$4;,
        Lcom/android/phone/NetworkNotificationUI$5;,
        Lcom/android/phone/NetworkNotificationUI$6;,
        Lcom/android/phone/NetworkNotificationUI$7;,
        Lcom/android/phone/NetworkNotificationUI$8;,
        Lcom/android/phone/NetworkNotificationUI$NetworkModePhoneStateListener;,
        Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;
    }
.end annotation


# static fields
.field private static isOTAstarted:Z

.field private static m3gwarningPopup:Z

.field private static mAutoTimesetDialog:Landroid/app/AlertDialog;

.field private static mContext:Landroid/content/Context;

.field private static mIsRegistRejectEnabled:Z


# instance fields
.field PrevLteRejectCause:I

.field PrevRtsIdleValue:I

.field currRejectMcc:Ljava/lang/String;

.field currRejectMnc:Ljava/lang/String;

.field private isCMC:Z

.field private mAirplaneMode:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAlertDialogDataKey:Landroid/app/AlertDialog;

.field private mAutoTimesetListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDataSelectionByDataKeyListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDataState:I

.field private mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

.field private mIsDisableRoamingMultiIMSI:Z

.field private mIsWifiConnected:Z

.field private mMobileDataSettingObserver:Landroid/database/ContentObserver;

.field private mMobileNetworkStatusContentObserver:Landroid/database/ContentObserver;

.field private mNetworkRegNotiDialog:Landroid/app/AlertDialog;

.field private mNewServiceState:Landroid/telephony/ServiceState;

.field private mNoServiceAndManualSelecionListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;

.field private mNoservicePopupSelectionNagativeButton:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

.field private mNotifyNetworkRegisteringListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mNotifyRTSDialog:Landroid/app/AlertDialog;

.field private mNotifyRTSListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/phone/NetworkNotificationUI$NetworkModePhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPrevDataState:I

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field prevRejectMcc:Ljava/lang/String;

.field prevRejectMnc:Ljava/lang/String;

.field rejectedPlmn:Ljava/lang/String;

.field private final roamingCurrentOperator:I

.field private final roamingNetScanNotiId:I

.field private roamingRegFailNoti:Z

.field private final roamingRegFailNotiId:I

.field private final roamingRtsNotiId:I

.field rtsCsValue:I

.field rtsIdleValue:I

.field rtsPsValue:I

.field rtsStatusValue:I


# direct methods
.method static synthetic -get0(Lcom/android/phone/NetworkNotificationUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/NetworkNotificationUI;->isCMC:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get2()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/NetworkNotificationUI;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNetworkRegNotiDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/phone/NetworkNotificationUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNoservicePopupSelectionNagativeButton:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialogDataKey:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/android/phone/NetworkNotificationUI;->mAutoTimesetDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic -set2(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->mNetworkRegNotiDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/phone/NetworkNotificationUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/NetworkNotificationUI;->mNoservicePopupSelectionNagativeButton:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->NotifyNetworkRegistering()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->addRoamingRegFailNotification()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->sendEnvelopToTriggerBipForOTA()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/NetworkNotificationUI;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->setMobileNetworkStatus(B)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->showNetworkRegNotiPopUp()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->showNoServiceAndManualSelecionDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    sput-object v0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    sput-boolean v1, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    sput-object v0, Lcom/android/phone/NetworkNotificationUI;->mAutoTimesetDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/NetworkNotificationUI;->mIsRegistRejectEnabled:Z

    sput-boolean v1, Lcom/android/phone/NetworkNotificationUI;->isOTAstarted:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/phone/NetworkNotificationUI;->mDataState:I

    iput v2, p0, Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I

    iput-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->rejectedPlmn:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->prevRejectMcc:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->prevRejectMnc:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->currRejectMcc:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->currRejectMnc:Ljava/lang/String;

    iput v2, p0, Lcom/android/phone/NetworkNotificationUI;->rtsStatusValue:I

    iput v2, p0, Lcom/android/phone/NetworkNotificationUI;->rtsIdleValue:I

    iput v2, p0, Lcom/android/phone/NetworkNotificationUI;->rtsCsValue:I

    iput v2, p0, Lcom/android/phone/NetworkNotificationUI;->rtsPsValue:I

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialogDataKey:Landroid/app/AlertDialog;

    iput v2, p0, Lcom/android/phone/NetworkNotificationUI;->PrevRtsIdleValue:I

    iput v2, p0, Lcom/android/phone/NetworkNotificationUI;->PrevLteRejectCause:I

    new-instance v0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;-><init>(Lcom/android/phone/NetworkNotificationUI;Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

    iput-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->mNoservicePopupSelectionNagativeButton:Z

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    iput-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string/jumbo v0, "ro.board.platform"

    const-string/jumbo v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "exynos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/NetworkNotificationUI;->isCMC:Z

    const-string/jumbo v0, "support_volte_during_roaming"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/NetworkNotificationUI;->mIsDisableRoamingMultiIMSI:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mPhoneStateListeners:Ljava/util/Map;

    new-instance v0, Lcom/android/phone/NetworkNotificationUI$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$1;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelecionListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v0, Lcom/android/phone/NetworkNotificationUI$2;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$2;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    new-instance v0, Lcom/android/phone/NetworkNotificationUI$3;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$3;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mDataSelectionByDataKeyListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v0, Lcom/android/phone/NetworkNotificationUI$4;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$4;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v0, Lcom/android/phone/NetworkNotificationUI$5;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$5;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v0, Lcom/android/phone/NetworkNotificationUI$6;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkNotificationUI$6;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mAutoTimesetListener:Landroid/content/DialogInterface$OnDismissListener;

    const v0, 0xd903

    iput v0, p0, Lcom/android/phone/NetworkNotificationUI;->roamingRegFailNotiId:I

    const v0, 0xd904

    iput v0, p0, Lcom/android/phone/NetworkNotificationUI;->roamingCurrentOperator:I

    const v0, 0xd905

    iput v0, p0, Lcom/android/phone/NetworkNotificationUI;->roamingRtsNotiId:I

    const v0, 0xd906

    iput v0, p0, Lcom/android/phone/NetworkNotificationUI;->roamingNetScanNotiId:I

    iput-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->roamingRegFailNoti:Z

    new-instance v0, Lcom/android/phone/NetworkNotificationUI$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NetworkNotificationUI$7;-><init>(Lcom/android/phone/NetworkNotificationUI;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mMobileDataSettingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/NetworkNotificationUI$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NetworkNotificationUI$8;-><init>(Lcom/android/phone/NetworkNotificationUI;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mMobileNetworkStatusContentObserver:Landroid/database/ContentObserver;

    sput-object p1, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->getInstance()Lcom/android/phone/mobilenetworks/controller/IntentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->registerContentObservers()V

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->registerIntentReceivers()V

    return-void
.end method

.method private final LGTRebootPopup()V
    .locals 7

    const v6, 0x7f0d08cf

    const-string/jumbo v4, "NetworkNotificationUI"

    const-string/jumbo v5, "LGTRebootPopup()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/view/ContextThemeWrapper;

    sget-object v4, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v5, 0x7f0e004e

    invoke-direct {v1, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$9;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$9;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d08d0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d08ce

    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d8

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private final NotifyNetworkRegistering()V
    .locals 9

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->refleshRTSValue()Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    const-string/jumbo v6, "NetworkNotificationUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "NotifyNetworkRegistering rtsIdleValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/phone/NetworkNotificationUI;->rtsIdleValue:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/phone/NetworkNotificationUI;->rtsIdleValue:I

    invoke-static {v6}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getRejectCauseLocationRegFail(I)I

    move-result v5

    if-gez v5, :cond_1

    return-void

    :cond_1
    sget-object v6, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v6, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    new-instance v2, Landroid/view/ContextThemeWrapper;

    sget-object v6, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0e004e

    invoke-direct {v2, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$13;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$13;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0d06a0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0d032a

    invoke-virtual {v6, v7, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v6, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d8

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private addRTSNotification(Ljava/lang/CharSequence;)V
    .locals 6

    const-string/jumbo v2, "NetworkNotificationUI"

    const-string/jumbo v3, "addRTSNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getSimType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "-1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "NetworkNotificationUI"

    const-string/jumbo v3, "addRTSNotification Sim Absent.. Skip Notification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    new-instance v3, Landroid/app/Notification$Builder;

    sget-object v4, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v5, 0x7f0d08c1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x108008a

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v2, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v0

    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Landroid/app/Notification;->flags:I

    const/4 v2, 0x2

    iput v2, v0, Landroid/app/Notification;->priority:I

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mNotificationManager:Landroid/app/NotificationManager;

    const v3, 0xd905

    invoke-virtual {v2, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private addRTSNotificationWithTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v4, "NetworkNotificationUI"

    const-string/jumbo v5, "addRTSNotificationWithTitle"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getSimType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "-1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "NetworkNotificationUI"

    const-string/jumbo v5, "addRTSNotification Sim Absent.. Skip Notification"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v4, "NetworkNotificationUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addRTSNotificationWithTitle with pIntent. rejectCause : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v4, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v4, "com.android.phone"

    const-string/jumbo v5, "com.android.phone.NetworkSetting"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v4, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :goto_0
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x108008a

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v4, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v2

    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v2, Landroid/app/Notification;->flags:I

    const/4 v4, 0x2

    iput v4, v2, Landroid/app/Notification;->priority:I

    iget-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->mNotificationManager:Landroid/app/NotificationManager;

    const v5, 0xd905

    invoke-virtual {v4, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :pswitch_1
    const-string/jumbo v4, "android.intent.action.LGT_REBOOT_POPUP"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v4, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private addRoamingCurrentOperatorNotification()V
    .locals 15

    const v14, 0x7f020176

    const v13, 0xd904

    const/4 v12, -0x2

    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getSimState()I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    :cond_0
    const-string/jumbo v7, "NetworkNotificationUI"

    const-string/jumbo v8, "Sim Absent.. Skip Notification"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v7, ""

    const-string/jumbo v8, "gsm.operator.alpha"

    const-string/jumbo v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "NetworkNotificationUI"

    const-string/jumbo v8, "gsm.operator.alpha is null.. Skip Notification"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v7, "data_roaming_style_for_kor"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v4, Landroid/app/Notification;

    const-wide/16 v8, 0x0

    invoke-direct {v4, v14, v11, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "gsm.operator.alpha"

    const-string/jumbo v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " [ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "gsm.operator.numeric"

    const-string/jumbo v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v8, 0x7f0d09db

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.settings.T_ROAMING_SETTINGS"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-static {v7, v10, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iget v7, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v4, Landroid/app/Notification;->flags:I

    iget v7, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v4, Landroid/app/Notification;->flags:I

    sget-object v7, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7, v1, v0, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput v12, v4, Landroid/app/Notification;->priority:I

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v7, v13, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const-string/jumbo v7, "NetworkNotificationUI"

    const-string/jumbo v8, "addRoamingCurrentOperatorNotification_KOR"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string/jumbo v7, "data_roaming_style_for_lgt"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->removeRoamingNetScanningNotification()V

    new-instance v2, Landroid/app/Notification$Builder;

    sget-object v7, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    sget-object v7, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0cab

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-boolean v7, p0, Lcom/android/phone/NetworkNotificationUI;->mIsDisableRoamingMultiIMSI:Z

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "gsm.operator.alpha"

    const-string/jumbo v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " [ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "gsm.operator.numeric"

    const-string/jumbo v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.MAIN"

    invoke-direct {v3, v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v7, 0x10000000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v7, "com.android.phone"

    const-string/jumbo v8, "com.android.phone.NetworkSetting"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v7, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-static {v7, v10, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v7, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v4, Landroid/app/Notification;->flags:I

    iget v7, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v4, Landroid/app/Notification;->flags:I

    iput v12, v4, Landroid/app/Notification;->priority:I

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v7, v13, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const-string/jumbo v7, "NetworkNotificationUI"

    const-string/jumbo v8, "addRoamingCurrentOperatorNotification_LGT"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "gsm.operator.alpha"

    const-string/jumbo v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->getDualImsiString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_1
.end method

.method private addRoamingNetScanningNotification()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getSimState()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    :cond_0
    const-string/jumbo v3, "NetworkNotificationUI"

    const-string/jumbo v4, "addRoamingNetScanningNotification Sim Absent.. Skip Notification"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isManualSelection()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const-string/jumbo v3, "NetworkNotificationUI"

    const-string/jumbo v4, "addRoamingNetScanningNotification Manual Mode.. Skip Notification"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string/jumbo v3, "NetworkNotificationUI"

    const-string/jumbo v4, "addRoamingNetScanningNotification"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v3, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x108008a

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    sget-object v3, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0d08c2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    sget-object v3, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0d08c3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v1, Landroid/app/Notification;->flags:I

    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/app/Notification;->flags:I

    const/4 v3, 0x2

    iput v3, v1, Landroid/app/Notification;->priority:I

    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI;->mNotificationManager:Landroid/app/NotificationManager;

    const v4, 0xd906

    invoke-virtual {v3, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const-string/jumbo v3, "NetworkNotificationUI"

    const-string/jumbo v4, "addRoamingNetScanningNotification"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private addRoamingRegFailNotification()V
    .locals 12

    const v11, 0x108008a

    const v10, 0xd903

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string/jumbo v5, "NetworkNotificationUI"

    const-string/jumbo v6, "addRoamingRegFailNotification"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getSimState()I

    move-result v4

    if-eqz v4, :cond_0

    if-ne v4, v7, :cond_1

    :cond_0
    const-string/jumbo v5, "NetworkNotificationUI"

    const-string/jumbo v6, "addRoamingRegFailNotification Sim Absent.. Skip Notification"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v5, p0, Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z

    if-nez v5, :cond_0

    const-string/jumbo v5, "mobile_newtork_style_for_skt"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v2, Landroid/app/Notification;

    const-wide/16 v6, 0x0

    invoke-direct {v2, v11, v9, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v5, "com.android.phone"

    const-string/jumbo v6, "com.android.phone.NetworkSetting"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v5, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget v5, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v2, Landroid/app/Notification;->flags:I

    sget-object v5, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0d06a0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v8, 0x7f0d09d9

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v10, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v5, "mobile_newtork_style_for_lgt"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isManualSelection()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_4
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->removeRoamingNetScanningNotification()V

    iput-boolean v7, p0, Lcom/android/phone/NetworkNotificationUI;->roamingRegFailNoti:Z

    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v5, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    sget-object v5, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0d08c1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    sget-object v5, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0d08c4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isLteModeOn()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "com.android.settings.Settings$GlobalRoamingSettingsActivity"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    sget-object v5, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v5, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v2, Landroid/app/Notification;->flags:I

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v10, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const-string/jumbo v5, "NetworkNotificationUI"

    const-string/jumbo v6, "addRoamingRegFailNotification_LGT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v5, "com.android.phone"

    const-string/jumbo v6, "com.android.phone.NetworkSetting"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private checkAndUpdateRoamingStateSKT()V
    .locals 6

    sget-object v3, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "persist_sys_rplmn"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "NetworkNotificationUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RPLMN :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , roaming :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "persist_sys_rplmn"

    const-string/jumbo v4, "domestic"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "domestic"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const-string/jumbo v3, "persist_sys_rplmn"

    const-string/jumbo v4, "oversea"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->notifyRoaming()V

    goto :goto_0
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

.method private dismissNetworkRegNotiPopUp()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNetworkRegNotiDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNetworkRegNotiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private final displayCtcSimWarningToast(I)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v3, "NetworkNotificationUI"

    const-string/jumbo v4, "displayCtcSimInSlot1WarningToast"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f0d0c4a

    const v4, 0x7f0d0c4b

    filled-new-array {v3, v4}, [I

    move-result-object v1

    sget-object v3, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    add-int/lit8 v4, p1, -0x1

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const/16 v4, 0x3e8

    invoke-static {v3, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v2, v3, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private dissmissRTSPopup()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "NetworkNotificationUI"

    const-string/jumbo v1, "dissmissRTSPopup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetworkNotificationUI"

    const-string/jumbo v1, "mNotifyRTSDialog.dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    :cond_0
    const-string/jumbo v0, "mobile_newtork_style_for_lgt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->removeRTSNotification()V

    :cond_1
    return-void
.end method

.method private final getDataSelectionMsg()I
    .locals 3

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isMobileDataOn()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v1, "mobile_newtork_style_for_skt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0d0a17

    return v1

    :cond_0
    const-string/jumbo v1, "mobile_newtork_style_for_ktt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_RIL_ForceConnectMMS"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0d0a18

    return v1

    :cond_1
    const v1, 0x7f0d0a19

    return v1

    :cond_2
    const v1, 0x7f0d0a1a

    return v1

    :cond_3
    const-string/jumbo v1, "mobile_newtork_style_for_skt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f0d0a1c

    return v1

    :cond_4
    const-string/jumbo v1, "mobile_newtork_style_for_ktt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f0d0a1d

    return v1

    :cond_5
    const v1, 0x7f0d0a1e

    return v1
.end method

.method private getDualImsiString()Ljava/lang/String;
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x5

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x3

    new-array v4, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v7, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSponImsi()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v7

    if-nez v7, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getSimType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "[]"

    if-nez v2, :cond_1

    const-string/jumbo v2, ""

    :cond_1
    if-nez v4, :cond_2

    const/4 v7, 0x3

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v7, ""

    aput-object v7, v4, v10

    const-string/jumbo v7, ""

    aput-object v7, v4, v12

    const-string/jumbo v7, ""

    aput-object v7, v4, v13

    :cond_2
    sget-object v7, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v5, ""

    const-string/jumbo v7, "NetworkNotificationUI"

    const-string/jumbo v8, "getDualImsiString(), isAirplaneModeOn is true, return"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_3
    const-string/jumbo v7, "3"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v5, ""

    const-string/jumbo v7, "NetworkNotificationUI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getDualImsiString(), SIM Type is not 3, simType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", srtingIMSI = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_4
    const-string/jumbo v7, "NetworkNotificationUI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isServiceState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_5

    const-string/jumbo v5, ""

    return-object v5

    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v7, 0x3

    invoke-virtual {v2, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "450"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v5, "[Zone1]"

    :cond_6
    :goto_0
    const-string/jumbo v7, "NetworkNotificationUI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getDualImsiString(), srtingIMSI = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_7
    aget-object v7, v4, v10

    if-eqz v7, :cond_8

    aget-object v7, v4, v10

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_8
    aget-object v7, v4, v12

    if-eqz v7, :cond_9

    aget-object v7, v4, v12

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_9
    aget-object v7, v4, v13

    if-eqz v7, :cond_a

    aget-object v7, v4, v13

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_a
    const-string/jumbo v5, "[]"

    goto :goto_0

    :cond_b
    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aget-object v8, v4, v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string/jumbo v5, "[Zone2]"

    goto :goto_0

    :cond_c
    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aget-object v8, v4, v12

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string/jumbo v5, "[Zone2]"

    goto :goto_0

    :cond_d
    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aget-object v8, v4, v13

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string/jumbo v5, "[Zone2]"

    goto :goto_0
.end method

.method private handleIntentCallBack(Landroid/content/Intent;)V
    .locals 24

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v20, "NetworkNotificationUI"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "handleIntentCallBack: onReceive - "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v20, "com.android.action.NSRI_TOAST_CMD"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    const-string/jumbo v20, "toastcmd"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v20, "ntype"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_1b

    sget-object v20, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v23, 0x7f0d0a86

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v20, "android.intent.action.ACTION_DATA_SELECTION_POPUP"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    const-string/jumbo v20, "support_data_selection_popup"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    const-string/jumbo v20, "NetworkNotificationUI"

    const-string/jumbo v21, "receive : BOOTUP_DATA_SELECTION_POPUP_KOR"

    invoke-static/range {v20 .. v21}, Lcom/android/phone/mobilenetworks/MobileNetworkLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v20, "NetworkNotificationUI"

    const-string/jumbo v21, "android.intent.action.ACTION_DATA_SELECTION_POPUP"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v20, "NetworkNotificationUI"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "NetworkProxy.isNetworkRoaming() = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->isNetworkRoaming()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v20

    const-string/jumbo v21, "CscFeature_RIL_KeepLteIconCsfb"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    const-string/jumbo v20, "ro.boot.hardware"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "qcom"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getNetworkStatus()I

    move-result v20

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/NetworkNotificationUI;->setMobileNetworkStatus(B)V

    :cond_2
    const-string/jumbo v20, "mobile_newtork_style_for_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v20

    if-eqz v20, :cond_1c

    return-void

    :cond_3
    const-string/jumbo v20, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-direct/range {p0 .. p1}, Lcom/android/phone/NetworkNotificationUI;->updateConnectivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v20, "android.intent.action.ACTION_DATA_SELECTION_POPUP_FOR_EUR"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    sget-object v20, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/NetworkNotificationUI;->showBootupDataSelectionPopupEUR(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v20, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    const-string/jumbo v20, "networkInfo"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/NetworkInfo;

    if-eqz v13, :cond_2e

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v20

    :goto_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    const/16 v20, 0x1

    sput-boolean v20, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v20, "android.intent.action.MANUAL_SET_TIME"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isRtsPopupAllowed()Z

    move-result v20

    if-eqz v20, :cond_0

    sget-object v20, Lcom/android/phone/NetworkNotificationUI;->mAutoTimesetDialog:Landroid/app/AlertDialog;

    if-nez v20, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->showAutoTimeSetDialog()V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v20, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    const-string/jumbo v20, "state"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z

    const-string/jumbo v20, "NetworkNotificationUI"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "onReceive() : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isSupportRoamingRegRoamingNoti()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->removeRoamingRegFailNotification()V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->removeRoamingCurrentOperatorNotification()V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->dismissNetworkRegNotiPopUp()V

    const-string/jumbo v20, "mobile_newtork_style_for_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->removeRTSNotification()V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->removeRoamingNetScanningNotification()V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v20, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isSupportRoamingRegRoamingNoti()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getState()I

    move-result v20

    if-nez v20, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    const-string/jumbo v20, "NetworkNotificationUI"

    const-string/jumbo v21, "addRoamingCurrentOperatorNotification"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->addRoamingCurrentOperatorNotification()V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v20, "android.intent.action.LGT_REBOOT_POPUP"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    const-string/jumbo v20, "NetworkNotificationUI"

    const-string/jumbo v21, "LGT_REBOOT_POPUP"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->LGTRebootPopup()V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v20, "com.android.server.status.regist_reject"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isSupportRtsIndication()Z

    move-result v20

    if-eqz v20, :cond_0

    const-string/jumbo v20, "NetworkNotificationUI"

    const-string/jumbo v21, "NETWORK_REGIST_REJECT_ACTION"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isRtsPopupAllowed()Z

    move-result v20

    if-eqz v20, :cond_2f

    const-string/jumbo v20, "POPUPUI"

    const-string/jumbo v21, "RTS"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2f

    invoke-direct/range {p0 .. p1}, Lcom/android/phone/NetworkNotificationUI;->notifyRTS(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v20, "com.android.server.status.regist_reject_disable"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isSupportRtsIndication()Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/phone/NetworkNotificationUI;->mIsRegistRejectEnabled:Z

    const-string/jumbo v20, "ril.reject_enabled"

    const-string/jumbo v21, "false"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v20, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const-string/jumbo v21, "RTS popup is disabled"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v20, "android.intent.action.LTE_REJECT"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isSupportRtsIndication()Z

    move-result v20

    if-eqz v20, :cond_0

    const-string/jumbo v20, "NetworkNotificationUI"

    const-string/jumbo v21, "LTE_REJECT_ACTION"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z

    move-result v20

    if-nez v20, :cond_31

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isLGTSIM()Z

    move-result v20

    if-nez v20, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isLGTUnregSIM()Z

    move-result v20

    if-eqz v20, :cond_31

    :cond_d
    const-string/jumbo v20, "5"

    const-string/jumbo v21, "CAUSE"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_e

    const-string/jumbo v20, "6"

    const-string/jumbo v21, "CAUSE"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_31

    :cond_e
    const-string/jumbo v20, "NetworkNotificationUI"

    const-string/jumbo v21, "LGT_AUTH_LOCK_ACTION - start LGTLostPhoneLock"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v20, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->updateLostPhoneLock(Landroid/content/Context;Z)V

    const/4 v11, 0x0

    sget-object v20, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    if-eqz v20, :cond_f

    sget-object v20, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x112005c

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    if-nez v20, :cond_30

    const-string/jumbo v20, "support_softphone"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    :cond_f
    :goto_2
    if-nez v11, :cond_0

    new-instance v12, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v20, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setRejectModeLocked(ZI)V

    new-instance v19, Landroid/content/Intent;

    const-string/jumbo v20, "com.samsung.android.keyguard.lte_rejectmode_changed"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v20, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v20, "android.intent.action.CDMA_MAINT_REQ"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isSupportRtsIndication()Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/NetworkNotificationUI;->notifyUserIndication(I)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v20, "android.intent.action.LGT_AUTH_LOCK"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isSupportRtsIndication()Z

    move-result v20

    if-eqz v20, :cond_0

    const-string/jumbo v20, "CDMA"

    const-string/jumbo v21, "DOMAIN"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const-string/jumbo v20, "0"

    const-string/jumbo v21, "CAUSE"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/NetworkNotificationUI;->notifyUserIndication(I)V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v20, "android.intent.action.DATA_AUTH_FAIL"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isSupportRtsIndication()Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/NetworkNotificationUI;->notifyUserIndication(I)V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v20, "android.intent.action.DATA_CONNECT_FAIL"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isSupportRtsIndication()Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/NetworkNotificationUI;->notifyUserIndication(I)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v20, "com.android.server.status.dataselect_enable"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isSupportRtsIndication()Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x1

    sput-boolean v20, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v20, "android.intent.action.SKT_ROAMING_DATA_POPUP"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isSupportRtsIndication()Z

    move-result v20

    if-eqz v20, :cond_0

    const-string/jumbo v20, "mobile_newtork_style_for_kor"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    const-string/jumbo v20, "mobile_newtork_style_for_kor_open"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->showRoamingDataSelectionPopUp()V

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v20, "android.settings.DATA_NETWORK_KEY_PRESSED"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isSupportRtsIndication()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getSimState()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NetworkNotificationUI;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/ServiceState;->getState()I

    move-result v20

    if-eqz v20, :cond_32

    return-void

    :cond_17
    const-string/jumbo v20, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_18

    const-string/jumbo v20, "ABSENT"

    const-string/jumbo v21, "ss"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/phone/NetworkNotificationUI;->isOTAstarted:Z

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v20, "com.samsung.intent.action.ACTION_CROSS_MAPPING"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_19

    const-string/jumbo v20, "change_network_mode_with_ctc_card_for_six_mode"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    const-string/jumbo v20, "state"

    const/16 v21, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    const-string/jumbo v20, "NetworkNotificationUI"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "ACTION_CROSS_MAPPING state="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/NetworkNotificationUI;->displayCtcSimWarningToast(I)V

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v20, "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    const-string/jumbo v20, "policyData"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    const-string/jumbo v20, "NetworkNotificationUI"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "DATAUSAGE_REACH_TO_LIMIT : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v20, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string/jumbo v22, "dataUsageReachToLimit"

    if-eqz v10, :cond_37

    const/16 v20, 0x1

    :goto_3
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0xc9

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v20, "android.intent.action.ACTION_MOBILE_DATA_SUSPEND"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const-string/jumbo v20, "NetworkNotificationUI"

    const-string/jumbo v21, "android.intent.action.ACTION_MOBILE_DATA_SUSPEND"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v5, Landroid/content/Intent;

    sget-object v20, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const-class v21, Lcom/android/phone/mobilenetworks/usa/MobileDataSuspended;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v20, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_1b
    sget-object v20, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v23, 0x7f0d0a87

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_1c
    sget-object v20, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-static/range {v20 .. v20}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isOtaRegistering(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_1d

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V

    goto/16 :goto_0

    :cond_1d
    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->isNetworkRoaming()Z

    move-result v20

    if-nez v20, :cond_20

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getDoNotShowDataSelectionPopupIsSet()Z

    move-result v20

    if-eqz v20, :cond_1e

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->showDataSelectionPopUp()V

    goto/16 :goto_0

    :cond_1e
    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isMobileDataOn()Z

    move-result v20

    if-eqz v20, :cond_1f

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V

    goto/16 :goto_0

    :cond_1f
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V

    goto/16 :goto_0

    :cond_20
    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->isNetworkRoaming()Z

    move-result v20

    if-eqz v20, :cond_22

    sget-object v20, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-static/range {v20 .. v20}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/NetworkNotificationUI;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NetworkNotificationUI;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v20

    if-eqz v20, :cond_21

    const-string/jumbo v20, "NetworkNotificationUI"

    const-string/jumbo v21, "RestrictBackground OFF"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v20, "kr.co.uplus.RESTRICT_BACKGROUND"

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v20, "ENABLED"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v20, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_21
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setDataRoamingEnable(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->showRoamingDataSelectionPopUp()V

    goto/16 :goto_0

    :cond_22
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V

    goto/16 :goto_0

    :cond_23
    const-string/jumbo v20, "prompt_to_data_roaming"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_28

    const-string/jumbo v20, "feature_multisim"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_26

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtilsMultiSIM;->isNetworkRoaming(I)Z

    move-result v20

    if-nez v20, :cond_24

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtilsMultiSIM;->isNetworkRoaming(I)Z

    move-result v20

    if-eqz v20, :cond_25

    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->showRoamingDataSelectionPopUp()V

    goto/16 :goto_0

    :cond_25
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V

    goto/16 :goto_0

    :cond_26
    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->isNetworkRoaming()Z

    move-result v20

    if-eqz v20, :cond_27

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->showRoamingDataSelectionPopUp()V

    goto/16 :goto_0

    :cond_27
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V

    goto/16 :goto_0

    :cond_28
    sget-object v20, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-static/range {v20 .. v20}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isOtaRegistering(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_29

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V

    goto/16 :goto_0

    :cond_29
    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->isNetworkRoaming()Z

    move-result v20

    if-nez v20, :cond_2c

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getDoNotShowDataSelectionPopupIsSet()Z

    move-result v20

    if-eqz v20, :cond_2a

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->showDataSelectionPopUp()V

    goto/16 :goto_0

    :cond_2a
    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isMobileDataOn()Z

    move-result v20

    if-eqz v20, :cond_2b

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V

    goto/16 :goto_0

    :cond_2b
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V

    goto/16 :goto_0

    :cond_2c
    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->isNetworkRoaming()Z

    move-result v20

    if-eqz v20, :cond_2d

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->showRoamingDataSelectionPopUp()V

    goto/16 :goto_0

    :cond_2d
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V

    goto/16 :goto_0

    :cond_2e
    const/16 v20, 0x0

    goto/16 :goto_1

    :cond_2f
    const-string/jumbo v20, "DISMISS"

    const-string/jumbo v21, "RTS"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->dissmissRTSPopup()V

    goto/16 :goto_0

    :cond_30
    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_31
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isRtsPopupAllowed()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/phone/NetworkNotificationUI;->notifyLTEReject(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_32
    sget-object v20, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-static/range {v20 .. v20}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isOtaRegistering(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_33

    return-void

    :cond_33
    if-eqz v16, :cond_34

    const/16 v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_35

    :cond_34
    new-instance v9, Landroid/app/AlertDialog$Builder;

    sget-object v20, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v20, 0x7f0d0a20

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    const v21, 0x7f0d0a21

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    const v21, 0x104000a

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v20

    const/16 v21, 0x7d8

    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_35
    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->isNetworkRoaming()Z

    move-result v20

    if-eqz v20, :cond_36

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->showRoamingDataSelectionPopUp()V

    goto/16 :goto_0

    :cond_36
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->showDataSelectionPopUpByDataKey()V

    goto/16 :goto_0

    :cond_37
    const/16 v20, 0x0

    goto/16 :goto_3
.end method

.method private final isLGTUnregSIM()Z
    .locals 4

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getSimType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NetworkNotificationUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isLGTUnregSIM : simtype "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "18"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isRegisteredServiceState(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private final isRoamingArea()Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->isNetworkRoaming()Z

    move-result v3

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getCurrentPlmn()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string/jumbo v4, "oversea"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v8

    :cond_0
    const-string/jumbo v4, "domestic"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v7

    :cond_1
    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getRejectedPlmn()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "NetworkNotificationUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rejected PLMN = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "450"

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isLGTSIM()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isSKTSIM()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    return v8

    :cond_3
    return v7

    :catch_0
    move-exception v1

    const-string/jumbo v4, "NetworkNotificationUI"

    const-string/jumbo v5, "isRoamingArea NullPointerException : "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method private isRtsPopupAllowed()Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "NetworkNotificationUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsRegistRejectEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/NetworkNotificationUI;->mIsRegistRejectEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "NetworkNotificationUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MobileNetworkUtils.isDefaultImei:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isDefaultImei(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "NetworkNotificationUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MobileNetworkUtils.isOtaRegistering:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isOtaRegistering(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/phone/NetworkNotificationUI;->mIsRegistRejectEnabled:Z

    if-nez v0, :cond_0

    return v3

    :cond_0
    sget-object v0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isDefaultImei(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    sget-object v0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isOtaRegistering(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private isSupportRoamingRegRoamingNoti()Z
    .locals 1

    const-string/jumbo v0, "product_ril_roaming_reg_warning_noti"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "csc_ril_roaming_reg_warning_noti"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSupportRtsIndication()Z
    .locals 1

    const-string/jumbo v0, "mobile_newtork_style_for_kor"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private final notifyLTEReject(Landroid/content/Intent;)V
    .locals 20

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getCurrentPlmn()Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->refleshRTSValue()Z

    move-result v17

    if-nez v17, :cond_0

    return-void

    :cond_0
    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v8, 0x1

    const-string/jumbo v17, "CAUSE"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string/jumbo v17, "DOMAIN"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string/jumbo v17, "NetworkNotificationUI"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "domain = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", reject cause = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", prev cause :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NetworkNotificationUI;->PrevLteRejectCause:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v17, "mobile_newtork_style_for_lgt"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getRejectedPlmn()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/NetworkNotificationUI;->rejectedPlmn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NetworkNotificationUI;->rejectedPlmn:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NetworkNotificationUI;->rejectedPlmn:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x3

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/NetworkNotificationUI;->currRejectMcc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NetworkNotificationUI;->rejectedPlmn:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NetworkNotificationUI;->rejectedPlmn:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/NetworkNotificationUI;->currRejectMnc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NetworkNotificationUI;->prevRejectMcc:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NetworkNotificationUI;->prevRejectMnc:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NetworkNotificationUI;->currRejectMcc:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/NetworkNotificationUI;->prevRejectMcc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NetworkNotificationUI;->currRejectMnc:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/NetworkNotificationUI;->prevRejectMnc:Ljava/lang/String;

    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    if-eqz v10, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->removeRTSNotification()V

    :cond_2
    const-string/jumbo v17, "mobile_newtork_style_for_skt"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isSKTSIM()Z

    move-result v5

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z

    move-result v17

    if-eqz v17, :cond_5

    move v7, v5

    :goto_1
    packed-switch v10, :pswitch_data_0

    :pswitch_0
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NetworkNotificationUI;->currRejectMcc:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NetworkNotificationUI;->prevRejectMcc:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NetworkNotificationUI;->currRejectMnc:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NetworkNotificationUI;->prevRejectMnc:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NetworkNotificationUI;->currRejectMcc:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/NetworkNotificationUI;->prevRejectMcc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NetworkNotificationUI;->currRejectMnc:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/NetworkNotificationUI;->prevRejectMnc:Ljava/lang/String;

    const/4 v6, 0x1

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    :pswitch_1
    const v14, 0x7f0d089d

    if-nez v5, :cond_6

    const v14, 0x7f0d08a2

    :cond_6
    :goto_2
    :pswitch_2
    const-string/jumbo v13, ""

    if-eqz v14, :cond_7

    sget-object v17, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    :cond_7
    const-string/jumbo v15, ""

    if-eqz v16, :cond_8

    sget-object v17, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    :cond_8
    const-string/jumbo v17, "mobile_newtork_style_for_skt"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isSKTSIM()Z

    move-result v5

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z

    move-result v17

    if-eqz v17, :cond_10

    move v7, v5

    :goto_3
    const-string/jumbo v17, "NetworkNotificationUI"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "intae : in RIL_RTS_POPUP_SKT_LTE  === "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_11

    sget-object v17, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_9
    :goto_4
    const-string/jumbo v17, "mobile_newtork_style_for_lgt"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z

    move-result v17

    if-nez v17, :cond_13

    const/16 v17, 0x13

    move/from16 v0, v17

    if-eq v10, v0, :cond_13

    sget-object v17, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_a
    :goto_5
    const-string/jumbo v17, "NetworkNotificationUI"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "lgt_LTE_rts text "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-string/jumbo v17, "mobile_newtork_style_for_lgt"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z

    move-result v17

    if-eqz v17, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/NetworkNotificationUI;->mIsDisableRoamingMultiIMSI:Z

    move/from16 v17, v0

    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15, v10}, Lcom/android/phone/NetworkNotificationUI;->addRTSNotificationWithTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    :goto_6
    return-void

    :pswitch_3
    const v14, 0x7f0d089e

    if-nez v5, :cond_6

    const v14, 0x7f0d08a3

    goto/16 :goto_2

    :pswitch_4
    const v14, 0x7f0d089f

    if-nez v5, :cond_6

    const v14, 0x7f0d08a4

    goto/16 :goto_2

    :pswitch_5
    const v14, 0x7f0d08a5

    if-nez v5, :cond_6

    const v14, 0x7f0d08a6

    goto/16 :goto_2

    :pswitch_6
    const v14, 0x7f0d08a7

    goto/16 :goto_2

    :pswitch_7
    const v14, 0x7f0d08a6

    goto/16 :goto_2

    :pswitch_8
    const v14, 0x7f0d08a8

    goto/16 :goto_2

    :cond_c
    const-string/jumbo v17, "mobile_newtork_style_for_lgt"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isLGTSIM()Z

    move-result v5

    const-string/jumbo v17, "NetworkNotificationUI"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "currentplmn = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z

    move-result v17

    if-nez v17, :cond_d

    if-eqz v10, :cond_d

    const-string/jumbo v17, "LTE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    const v14, 0x7f0d08b7

    packed-switch v10, :pswitch_data_1

    :pswitch_9
    return-void

    :pswitch_a
    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/phone/NetworkNotificationUI;->mIsRegistRejectEnabled:Z

    goto/16 :goto_2

    :pswitch_b
    const v14, 0x7f0d08b8

    goto/16 :goto_2

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z

    move-result v17

    if-eqz v17, :cond_f

    if-eqz v10, :cond_f

    const-string/jumbo v17, "LTE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/NetworkNotificationUI;->mIsDisableRoamingMultiIMSI:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    packed-switch v10, :pswitch_data_2

    :pswitch_c
    const v16, 0x7f0d08c1

    const v14, 0x7f0d08c4

    const/4 v8, 0x0

    goto/16 :goto_2

    :pswitch_d
    return-void

    :pswitch_e
    const v16, 0x7f0d08c1

    const v14, 0x7f0d08d1

    goto/16 :goto_2

    :pswitch_f
    const v16, 0x7f0d08d3

    const v14, 0x7f0d08d4

    goto/16 :goto_2

    :pswitch_10
    const v16, 0x7f0d08c1

    const v14, 0x7f0d08c4

    goto/16 :goto_2

    :pswitch_11
    const v16, 0x7f0d08d6

    const v14, 0x7f0d08d7

    goto/16 :goto_2

    :cond_e
    packed-switch v10, :pswitch_data_3

    :pswitch_12
    const v14, 0x7f0d08be

    if-nez v5, :cond_6

    const v14, 0x7f0d08c7

    goto/16 :goto_2

    :pswitch_13
    return-void

    :pswitch_14
    const v14, 0x7f0d08bc

    if-nez v5, :cond_6

    const v14, 0x7f0d08c5

    goto/16 :goto_2

    :pswitch_15
    const v14, 0x7f0d08bd

    if-nez v5, :cond_6

    const v14, 0x7f0d08c6

    goto/16 :goto_2

    :pswitch_16
    const v14, 0x7f0d08be

    if-nez v5, :cond_6

    const v14, 0x7f0d08c7

    goto/16 :goto_2

    :pswitch_17
    const v14, 0x7f0d08bf

    if-nez v5, :cond_6

    const v14, 0x7f0d08c8

    goto/16 :goto_2

    :cond_f
    return-void

    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_11
    if-eqz v7, :cond_12

    const-string/jumbo v12, "+82-2-6343-9000"

    sget-object v17, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v12, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    :cond_12
    if-nez v7, :cond_9

    const-string/jumbo v12, "1599-0011"

    sget-object v17, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v12, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z

    move-result v17

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/NetworkNotificationUI;->mIsDisableRoamingMultiIMSI:Z

    move/from16 v17, v0

    if-eqz v17, :cond_14

    if-eqz v8, :cond_a

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NetworkNotificationUI;->rtsIdleValue:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5

    :cond_14
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isLGTSIM()Z

    move-result v5

    if-eqz v5, :cond_15

    const-string/jumbo v9, "+82-2-3416-7010"

    sget-object v17, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v9, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    :goto_7
    sget-object v17, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v18, 0x7f0d08c0

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ": "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    :cond_15
    sget-object v17, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    goto :goto_7

    :cond_16
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/NetworkNotificationUI;->addRTSNotification(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    if-eqz v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void

    :cond_18
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v13, v1}, Lcom/android/phone/NetworkNotificationUI;->notifyRTSDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_9
        :pswitch_2
        :pswitch_9
        :pswitch_2
        :pswitch_2
        :pswitch_9
        :pswitch_2
        :pswitch_2
        :pswitch_9
        :pswitch_b
        :pswitch_2
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_2
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_e
        :pswitch_c
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_e
        :pswitch_c
        :pswitch_c
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_10
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_f
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_14
        :pswitch_14
        :pswitch_12
        :pswitch_12
        :pswitch_14
        :pswitch_15
        :pswitch_14
        :pswitch_12
        :pswitch_12
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_17
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_17
    .end packed-switch
.end method

.method private final notifyRTS(Landroid/content/Intent;)V
    .locals 18

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->refleshRTSValue()Z

    move-result v14

    if-nez v14, :cond_0

    return-void

    :cond_0
    const/4 v8, 0x0

    :try_start_0
    const-string/jumbo v14, "CAUSE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    :goto_0
    const-string/jumbo v14, "NetworkNotificationUI"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "notifyRTS - reject cause = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "mobile_newtork_style_for_lgt"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getRejectedPlmn()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/NetworkNotificationUI;->rejectedPlmn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/NetworkNotificationUI;->rejectedPlmn:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/NetworkNotificationUI;->rejectedPlmn:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x3

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/NetworkNotificationUI;->currRejectMcc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/NetworkNotificationUI;->rejectedPlmn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/NetworkNotificationUI;->rejectedPlmn:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/NetworkNotificationUI;->currRejectMnc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/NetworkNotificationUI;->prevRejectMcc:Ljava/lang/String;

    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/NetworkNotificationUI;->prevRejectMnc:Ljava/lang/String;

    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/NetworkNotificationUI;->currRejectMcc:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/NetworkNotificationUI;->prevRejectMcc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/NetworkNotificationUI;->currRejectMnc:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/NetworkNotificationUI;->prevRejectMnc:Ljava/lang/String;

    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    if-eqz v8, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->removeRTSNotification()V

    :cond_2
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string/jumbo v14, "NetworkNotificationUI"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "rtsIdleValue = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NetworkNotificationUI;->rtsIdleValue:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "mobile_newtork_style_for_skt"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isSKTSIM()Z

    move-result v3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/NetworkNotificationUI;->rtsIdleValue:I

    packed-switch v14, :pswitch_data_0

    :pswitch_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/phone/NetworkNotificationUI;->rtsIdleValue:I

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/NetworkNotificationUI;->currRejectMcc:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/NetworkNotificationUI;->prevRejectMcc:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-ne v14, v15, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/NetworkNotificationUI;->currRejectMnc:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/NetworkNotificationUI;->prevRejectMnc:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-eq v14, v15, :cond_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/NetworkNotificationUI;->currRejectMcc:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/NetworkNotificationUI;->prevRejectMcc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/NetworkNotificationUI;->currRejectMnc:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/NetworkNotificationUI;->prevRejectMnc:Ljava/lang/String;

    const/4 v4, 0x1

    goto :goto_1

    :pswitch_1
    const v11, 0x7f0d089d

    if-nez v3, :cond_5

    const v11, 0x7f0d0898

    :cond_5
    :goto_2
    const-string/jumbo v10, ""

    if-eqz v11, :cond_6

    sget-object v14, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    :cond_6
    const-string/jumbo v12, ""

    if-eqz v13, :cond_7

    sget-object v14, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    :cond_7
    const-string/jumbo v14, "mobile_newtork_style_for_skt"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isSKTSIM()Z

    move-result v3

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z

    move-result v14

    if-eqz v14, :cond_16

    move v5, v3

    :goto_3
    const-string/jumbo v14, "NetworkNotificationUI"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "intae : in RIL_RTS_POPUP_SKT2  === "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NetworkNotificationUI;->rtsIdleValue:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_17

    sget-object v14, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/phone/NetworkNotificationUI;->rtsIdleValue:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_8
    :goto_4
    const-string/jumbo v14, "mobile_newtork_style_for_ktt"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    sget-object v14, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_9
    const-string/jumbo v14, "mobile_newtork_style_for_lgt"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/phone/NetworkNotificationUI;->mIsDisableRoamingMultiIMSI:Z

    if-eqz v14, :cond_19

    if-eqz v6, :cond_a

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_a
    :goto_5
    const-string/jumbo v14, "NetworkNotificationUI"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "lgt_rts text "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-string/jumbo v14, "mobile_newtork_style_for_kor_open"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    sget-object v14, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NetworkNotificationUI;->rtsIdleValue:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-virtual {v14, v11, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :cond_c
    const-string/jumbo v14, "mobile_newtork_style_for_lgt"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1d

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z

    move-result v14

    if-eqz v14, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/phone/NetworkNotificationUI;->mIsDisableRoamingMultiIMSI:Z

    if-eqz v14, :cond_1c

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v12, v8}, Lcom/android/phone/NetworkNotificationUI;->addRTSNotificationWithTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    :goto_6
    return-void

    :pswitch_2
    const v11, 0x7f0d089e

    if-nez v3, :cond_5

    const v11, 0x7f0d0899

    goto/16 :goto_2

    :pswitch_3
    const v11, 0x7f0d089f

    if-nez v3, :cond_5

    const v11, 0x7f0d089a

    goto/16 :goto_2

    :pswitch_4
    const v11, 0x7f0d08a0

    if-nez v3, :cond_5

    const v11, 0x7f0d089b

    goto/16 :goto_2

    :pswitch_5
    const v11, 0x7f0d0897

    goto/16 :goto_2

    :pswitch_6
    const v11, 0x7f0d08a1

    if-nez v3, :cond_5

    const v11, 0x7f0d089c

    goto/16 :goto_2

    :pswitch_7
    const v11, 0x7f0d0895

    goto/16 :goto_2

    :pswitch_8
    const v11, 0x7f0d0896

    goto/16 :goto_2

    :cond_d
    const-string/jumbo v14, "mobile_newtork_style_for_ktt"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/NetworkNotificationUI;->rtsIdleValue:I

    sparse-switch v14, :sswitch_data_0

    return-void

    :sswitch_0
    const v11, 0x7f0d08ab

    goto/16 :goto_2

    :sswitch_1
    const v11, 0x7f0d08ac

    goto/16 :goto_2

    :sswitch_2
    const v11, 0x7f0d08a9

    goto/16 :goto_2

    :sswitch_3
    const v11, 0x7f0d08b0

    goto/16 :goto_2

    :sswitch_4
    const v11, 0x7f0d08b1

    goto/16 :goto_2

    :sswitch_5
    const v11, 0x7f0d08aa

    goto/16 :goto_2

    :sswitch_6
    const v11, 0x7f0d08ad

    goto/16 :goto_2

    :sswitch_7
    const v11, 0x7f0d08ab

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v14, "mobile_newtork_style_for_lgt"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isLGTSIM()Z

    move-result v3

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/phone/NetworkNotificationUI;->mIsDisableRoamingMultiIMSI:Z

    if-eqz v14, :cond_f

    packed-switch v8, :pswitch_data_1

    :pswitch_9
    const v13, 0x7f0d08c1

    const v11, 0x7f0d08c4

    const/4 v6, 0x0

    goto/16 :goto_2

    :pswitch_a
    return-void

    :pswitch_b
    const v13, 0x7f0d08c1

    const v11, 0x7f0d08d1

    goto/16 :goto_2

    :pswitch_c
    const v13, 0x7f0d08d3

    const v11, 0x7f0d08d4

    goto/16 :goto_2

    :pswitch_d
    const v13, 0x7f0d08c1

    const v11, 0x7f0d08c4

    goto/16 :goto_2

    :pswitch_e
    const v13, 0x7f0d08d6

    const v11, 0x7f0d08d7

    goto/16 :goto_2

    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z

    move-result v14

    if-eqz v14, :cond_10

    packed-switch v8, :pswitch_data_2

    :pswitch_f
    const v11, 0x7f0d08be

    if-nez v3, :cond_5

    const v11, 0x7f0d08c7

    goto/16 :goto_2

    :pswitch_10
    return-void

    :pswitch_11
    const v11, 0x7f0d08bc

    if-nez v3, :cond_5

    const v11, 0x7f0d08c5

    goto/16 :goto_2

    :pswitch_12
    const v11, 0x7f0d08bd

    if-nez v3, :cond_5

    const v11, 0x7f0d08c6

    goto/16 :goto_2

    :pswitch_13
    const v11, 0x7f0d08be

    if-nez v3, :cond_5

    const v11, 0x7f0d08c7

    goto/16 :goto_2

    :pswitch_14
    const v11, 0x7f0d08bf

    if-nez v3, :cond_5

    const v11, 0x7f0d08c8

    goto/16 :goto_2

    :cond_10
    sparse-switch v8, :sswitch_data_1

    const v11, 0x7f0d08b9

    goto/16 :goto_2

    :sswitch_8
    const v11, 0x7f0d08b2

    if-nez v3, :cond_5

    const v11, 0x7f0d08cd

    goto/16 :goto_2

    :sswitch_9
    const v11, 0x7f0d08b3

    if-nez v3, :cond_5

    const v11, 0x7f0d08ca

    goto/16 :goto_2

    :sswitch_a
    const v11, 0x7f0d08b4

    if-nez v3, :cond_5

    const v11, 0x7f0d08cb

    goto/16 :goto_2

    :sswitch_b
    const v11, 0x7f0d0895

    goto/16 :goto_2

    :sswitch_c
    const v11, 0x7f0d08b5

    if-nez v3, :cond_5

    const v11, 0x7f0d08cc

    goto/16 :goto_2

    :sswitch_d
    const v11, 0x7f0d0896

    goto/16 :goto_2

    :sswitch_e
    const v11, 0x7f0d08b9

    if-nez v3, :cond_5

    const v11, 0x7f0d08c9

    goto/16 :goto_2

    :sswitch_f
    const v11, 0x7f0d08b6

    goto/16 :goto_2

    :sswitch_10
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/NetworkNotificationUI;->rtsCsValue:I

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/NetworkNotificationUI;->rtsPsValue:I

    if-eqz v14, :cond_11

    const v11, 0x7f0d08b9

    if-nez v3, :cond_5

    const v11, 0x7f0d08c9

    goto/16 :goto_2

    :cond_11
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/NetworkNotificationUI;->rtsCsValue:I

    if-eqz v14, :cond_12

    const v11, 0x7f0d08ba

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/NetworkNotificationUI;->rtsPsValue:I

    if-eqz v14, :cond_13

    const v11, 0x7f0d08bb

    goto/16 :goto_2

    :cond_13
    const v11, 0x7f0d08b9

    if-nez v3, :cond_5

    const v11, 0x7f0d08c9

    goto/16 :goto_2

    :sswitch_11
    return-void

    :cond_14
    const-string/jumbo v14, "mobile_newtork_style_for_kor_open"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_15

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/NetworkNotificationUI;->rtsIdleValue:I

    sparse-switch v14, :sswitch_data_2

    const v11, 0x7f0d08db

    goto/16 :goto_2

    :sswitch_12
    return-void

    :sswitch_13
    const v11, 0x7f0d08d8

    goto/16 :goto_2

    :sswitch_14
    const v11, 0x7f0d08d9

    goto/16 :goto_2

    :sswitch_15
    const v11, 0x7f0d08da

    goto/16 :goto_2

    :cond_15
    return-void

    :cond_16
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_17
    if-eqz v5, :cond_18

    const-string/jumbo v9, "+82-2-6343-9000"

    sget-object v14, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v9, v15, v16

    invoke-virtual {v14, v11, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/phone/NetworkNotificationUI;->rtsIdleValue:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_4

    :cond_18
    if-nez v5, :cond_8

    const-string/jumbo v9, "1599-0011"

    sget-object v14, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v9, v15, v16

    invoke-virtual {v14, v11, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/phone/NetworkNotificationUI;->rtsIdleValue:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_4

    :cond_19
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isLGTSIM()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z

    move-result v14

    if-eqz v14, :cond_1a

    const-string/jumbo v7, "+82-2-3416-7010"

    :goto_7
    sget-object v14, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v7, v15, v16

    invoke-virtual {v14, v11, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :goto_8
    sget-object v14, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v15, 0x7f0d08c0

    invoke-virtual {v14, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_5

    :cond_1a
    const-string/jumbo v7, "02-3416-7010"

    goto :goto_7

    :cond_1b
    sget-object v14, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    goto :goto_8

    :cond_1c
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/phone/NetworkNotificationUI;->addRTSNotification(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_1d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_1f

    const-string/jumbo v14, "mobile_newtork_style_for_lgt"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/phone/NetworkNotificationUI;->mIsDisableRoamingMultiIMSI:Z

    if-eqz v14, :cond_1e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14, v12}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14, v10}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_9
    return-void

    :cond_1e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14, v10}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_1f
    const-string/jumbo v14, "mobile_newtork_style_for_lgt"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_20

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/phone/NetworkNotificationUI;->mIsDisableRoamingMultiIMSI:Z

    if-eqz v14, :cond_20

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v12}, Lcom/android/phone/NetworkNotificationUI;->notifyRTSDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :goto_a
    return-void

    :cond_20
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v14}, Lcom/android/phone/NetworkNotificationUI;->notifyRTSDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_a

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_6
        0x8 -> :sswitch_5
        0xb -> :sswitch_5
        0xc -> :sswitch_5
        0xd -> :sswitch_5
        0xe -> :sswitch_6
        0xf -> :sswitch_5
        0x10 -> :sswitch_7
        0x11 -> :sswitch_7
        0x16 -> :sswitch_7
        0xfe -> :sswitch_0
        0xff -> :sswitch_1
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_9
        :pswitch_9
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_d
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_c
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_11
        :pswitch_11
        :pswitch_f
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_11
        :pswitch_f
        :pswitch_f
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_14
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_14
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_11
        0x2 -> :sswitch_8
        0x3 -> :sswitch_9
        0x6 -> :sswitch_a
        0x7 -> :sswitch_b
        0x8 -> :sswitch_c
        0xa -> :sswitch_e
        0xb -> :sswitch_c
        0xc -> :sswitch_c
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_c
        0x10 -> :sswitch_f
        0x11 -> :sswitch_f
        0x16 -> :sswitch_f
        0x5f -> :sswitch_10
        0x60 -> :sswitch_10
        0x61 -> :sswitch_10
        0x63 -> :sswitch_10
        0x6f -> :sswitch_10
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_12
        0x2 -> :sswitch_13
        0x3 -> :sswitch_13
        0x6 -> :sswitch_13
        0x7 -> :sswitch_14
        0xe -> :sswitch_14
        0x10 -> :sswitch_15
        0x11 -> :sswitch_15
        0x16 -> :sswitch_15
    .end sparse-switch
.end method

.method private notifyRTSDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6

    new-instance v1, Landroid/view/ContextThemeWrapper;

    sget-object v4, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v5, 0x7f0e004e

    invoke-direct {v1, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/android/phone/NetworkNotificationUI$14;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkNotificationUI$14;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    const-string/jumbo v4, "NetworkNotificationUI"

    const-string/jumbo v5, "notifyRTSDialog()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "mobile_newtork_style_for_lgt"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/phone/NetworkNotificationUI;->mIsDisableRoamingMultiIMSI:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0d032a

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d8

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    return-void

    :cond_0
    const v4, 0x7f0d06a0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private final notifyRoaming()V
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0758

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private final notifyUserIndication(I)V
    .locals 9

    const/4 v5, 0x0

    const-string/jumbo v6, "NetworkNotificationUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifyUserIndication() - noti:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const v5, 0x7f0d0759

    :goto_0
    sget-object v6, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v6, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_1
    const v5, 0x7f0d075a

    goto :goto_0

    :pswitch_2
    const v5, 0x7f0d075b

    goto :goto_0

    :pswitch_3
    const v5, 0x7f0d075c

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/phone/NetworkNotificationUI$16;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkNotificationUI$16;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-object v6, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0d06a0

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0d032a

    invoke-virtual {v6, v7, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v6, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d8

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyRTSDialog:Landroid/app/AlertDialog;

    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_4
    new-instance v3, Lcom/android/phone/NetworkNotificationUI$17;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$17;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_4
    .end packed-switch
.end method

.method private refleshRTSValue()Z
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string/jumbo v6, "ril.skt.network_regist"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "Idle"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_1

    :cond_0
    const-string/jumbo v6, "NetworkNotificationUI"

    const-string/jumbo v7, "ril is empty or error"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_1
    const-string/jumbo v6, "NetworkNotificationUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "RTSValues="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, ";"

    const/4 v7, 0x4

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    aget-object v6, v4, v10

    const-string/jumbo v7, "Status"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v4, v9

    const-string/jumbo v7, "Idle"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x2

    aget-object v6, v4, v6

    const-string/jumbo v7, "CS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x3

    aget-object v6, v4, v6

    const-string/jumbo v7, "PS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v6, v5, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/android/phone/NetworkNotificationUI;->rtsStatusValue:I

    aget-object v6, v1, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/android/phone/NetworkNotificationUI;->rtsIdleValue:I

    aget-object v6, v0, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/android/phone/NetworkNotificationUI;->rtsCsValue:I

    aget-object v6, v2, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/android/phone/NetworkNotificationUI;->rtsPsValue:I

    return v9
.end method

.method private registerContentObservers()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "mobile_data"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mMobileDataSettingObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v2, v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_RIL_KeepLteIconCsfb"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ro.boot.hardware"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    sget-object v1, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    const-string/jumbo v0, "mobile_network_status"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mMobileNetworkStatusContentObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v2, v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    const-string/jumbo v0, "mobile_newtork_style_for_kor"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "support_data_selection_popup"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    :cond_2
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    :cond_3
    return-void
.end method

.method private registerIntentReceivers()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v2, "com.samsung.intent.action.ACTION_CROSS_MAPPING"

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl0;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl0;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v2, "com.android.action.NSRI_TOAST_CMD"

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl1;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl1;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v2, "android.intent.action.ACTION_DATA_SELECTION_POPUP"

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl2;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl2;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl3;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl3;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v2, "com.android.server.status.regist_reject"

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl4;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl4;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v2, "com.android.server.status.regist_reject_disable"

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl5;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl5;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl6;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl6;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v2, "android.net.wifi.STATE_CHANGE"

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl7;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl7;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl8;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl8;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl9;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl9;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v2, "android.intent.action.SKT_ROAMING_DATA_POPUP"

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl10;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl10;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v2, "android.settings.DATA_NETWORK_KEY_PRESSED"

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl11;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl11;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v2, "android.intent.action.MANUAL_SET_TIME"

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl12;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl12;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v2, "android.intent.action.LGT_AUTH_LOCK"

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl13;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl13;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v2, "android.intent.action.CDMA_MAINT_REQ"

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl14;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl14;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v2, "android.intent.action.DATA_AUTH_FAIL"

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl15;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl15;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v2, "android.intent.action.DATA_CONNECT_FAIL"

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl16;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl16;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v2, "com.android.server.status.dataselect_enable"

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl17;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl17;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v2, "android.intent.action.LGT_REBOOT_POPUP"

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl18;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl18;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v2, "android.intent.action.LTE_REJECT"

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl19;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl19;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v2, "android.intent.action.ACTION_DATA_SELECTION_POPUP_FOR_EUR"

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl20;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl20;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v2, "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl21;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl21;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v2, "android.intent.action.ACTION_MOBILE_DATA_SUSPEND"

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl22;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$-void_registerIntentReceivers__LambdaImpl22;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    return-void
.end method

.method private removeRTSNotification()V
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->refleshRTSValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "NetworkNotificationUI"

    const-string/jumbo v1, "removeRTSNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0xd905

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private removeRoamingCurrentOperatorNotification()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0xd904

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private removeRoamingNetScanningNotification()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0xd906

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private removeRoamingRegFailNotification()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0xd903

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NetworkNotificationUI;->roamingRegFailNoti:Z

    return-void
.end method

.method public static sendDataConnectionIntent(ZZ)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTION_DATA_SELECTION_POPUP_PRESSED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "DataEnable"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "Roaming"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "NetworkNotificationUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendDataConnectionIntent = enable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " roaming : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "NetworkNotificationUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendDataConnectionIntent = enable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " roaming : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworkLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v1, "mobile_newtork_style_for_lgt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    goto :goto_0
.end method

.method public static sendDataRoamingEnabledIntent(Landroid/content/Context;ZZ)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTION_DATA_SELECTION_POPUP_PRESSED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "DataEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "Roaming"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "NetworkNotificationUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendDataConnectionIntent = enable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " roaming : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "NetworkNotificationUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendDataConnectionIntent = enable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " roaming : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworkLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendEnvelopToTriggerBipForOTA()V
    .locals 5

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCatService()Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "NetworkNotificationUI"

    const-string/jumbo v2, "getCatService returned null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    const/16 v4, 0x66

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "NetworkNotificationUI"

    const-string/jumbo v2, "Sent envelope to trigger BIP for OTA..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/cat/AppInterface;->sendEnvelopeToTriggerBipforOTA(Z)V

    goto :goto_0
.end method

.method public static sendRoamingOffIntentKOR(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.settings.ACTION_DATA_ROAMING_NEGATIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setMobileNetworkStatus(B)V
    .locals 7

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string/jumbo v4, "NetworkNotificationUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMobileNetworkStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x16

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v4, "NetworkNotificationUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exception occured during setMobileNetworkStatus"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v3

    const-string/jumbo v4, "LOG_TAG"

    const-string/jumbo v5, "close fail!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private showAutoTimeSetDialog()V
    .locals 6

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$15;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$15;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    new-instance v2, Landroid/view/ContextThemeWrapper;

    sget-object v4, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v5, 0x7f0e004e

    invoke-direct {v2, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d075f

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d0760

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d075d

    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d075e

    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->mAutoTimesetListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d8

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    sput-object v1, Lcom/android/phone/NetworkNotificationUI;->mAutoTimesetDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private showBootupDataSelectionPopupEUR(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "bootup_data_tariff_rate_popup"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->showBootupDataSelectionPopupTariff(Landroid/content/Context;)V

    return-void

    :cond_0
    const-string/jumbo v0, "bootup_data_connection_popup"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->showBootupDataSelectionPopupXEO(Landroid/content/Context;)V

    return-void

    :cond_1
    return-void
.end method

.method private final showDataSelectionPopUpByDataKey()V
    .locals 6

    new-instance v1, Landroid/view/ContextThemeWrapper;

    sget-object v4, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v5, 0x7f0e004e

    invoke-direct {v1, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/android/phone/NetworkNotificationUI$10;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkNotificationUI$10;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    iget-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialogDataKey:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    return-void

    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d07ba

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->getDataSelectionMsg()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->mDataSelectionByDataKeyListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v4, Lcom/android/phone/NetworkNotificationUI$11;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/NetworkNotificationUI$11;-><init>(Lcom/android/phone/NetworkNotificationUI;Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d8

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialogDataKey:Landroid/app/AlertDialog;

    return-void
.end method

.method private showNetworkRegNotiPopUp()V
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getSimState()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    :cond_0
    const-string/jumbo v5, "NetworkNotificationUI"

    const-string/jumbo v6, "addRTSNotification Sim Absent.. Skip Notification"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v5, p0, Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z

    if-nez v5, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    sget-object v5, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0e004e

    invoke-direct {v1, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/android/phone/NetworkNotificationUI$18;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkNotificationUI$18;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d06a0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0d09da

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0d032a

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0d0327

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v5, Lcom/android/phone/NetworkNotificationUI$19;

    invoke-direct {v5, p0}, Lcom/android/phone/NetworkNotificationUI$19;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iput-object v0, p0, Lcom/android/phone/NetworkNotificationUI;->mNetworkRegNotiDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private showNoServiceAndManualSelecionDialog()V
    .locals 6

    new-instance v2, Landroid/view/ContextThemeWrapper;

    sget-object v4, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v5, 0x7f0e004e

    invoke-direct {v2, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v3, Lcom/android/phone/NetworkNotificationUI$12;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkNotificationUI$12;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d08ae

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d08af

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d075d

    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d075e

    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelecionListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d8

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iput-object v1, p0, Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private final showRoamingDataSelectionPopUp()V
    .locals 4

    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget-object v2, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const v3, 0x7f0e004e

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    sget-object v2, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "enterprise_policy_new"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRoamingPolicy()Lcom/samsung/android/knox/restriction/RoamingPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    const-string/jumbo v2, "mobile_newtork_style_for_skt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->showRoamingDataSelectionPopUpSKT()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;

    return-void

    :cond_2
    const-string/jumbo v2, "NetworkNotificationUI"

    const-string/jumbo v3, "Roaming Data disabled by admin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string/jumbo v2, "mobile_newtork_style_for_ktt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->showRoamingDataSelectionPopupKTT()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;

    return-void

    :cond_4
    const-string/jumbo v2, "mobile_newtork_style_for_lgt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->showRoamingDataSelectionPopupLGT()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;

    return-void

    :cond_5
    const-string/jumbo v2, "mobile_newtork_style_for_kor_open"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->needToRunLteRoaming()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->showKorOpenRoamingDataSelectionPopUp(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;

    return-void

    :cond_6
    invoke-static {v0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->showRoamingDataSelectionPopupCommon(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private updateConnectivity(Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v1, "networkInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "NetworkNotificationUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateConnectivity : network info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->notify3gWarning(Landroid/content/Context;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method synthetic -com_android_phone_NetworkNotificationUI_lambda$1(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NetworkNotificationUI_lambda$10(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NetworkNotificationUI_lambda$11(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NetworkNotificationUI_lambda$12(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NetworkNotificationUI_lambda$13(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NetworkNotificationUI_lambda$14(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NetworkNotificationUI_lambda$15(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NetworkNotificationUI_lambda$16(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NetworkNotificationUI_lambda$17(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NetworkNotificationUI_lambda$18(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NetworkNotificationUI_lambda$19(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NetworkNotificationUI_lambda$2(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NetworkNotificationUI_lambda$20(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NetworkNotificationUI_lambda$21(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NetworkNotificationUI_lambda$22(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NetworkNotificationUI_lambda$23(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NetworkNotificationUI_lambda$3(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NetworkNotificationUI_lambda$4(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NetworkNotificationUI_lambda$5(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NetworkNotificationUI_lambda$6(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NetworkNotificationUI_lambda$7(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NetworkNotificationUI_lambda$8(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NetworkNotificationUI_lambda$9(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method public dataConnectionStateChanged(I)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const-string/jumbo v0, "NetworkNotificationUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataConnectionStateChanged-S:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/phone/NetworkNotificationUI;->mDataState:I

    const-string/jumbo v0, "feature_kor"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "NetworkNotificationUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NetworkNotificationUI;->mDataState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mPrevDataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "NetworkNotificationUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsWifiConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " m3gwarningPopup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/phone/NetworkNotificationUI;->mDataState:I

    if-ne v0, v4, :cond_3

    iget-boolean v0, p0, Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->isWifiConnectedInvaildated()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    sget-boolean v0, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I

    if-nez v0, :cond_3

    :cond_1
    sget-object v0, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->notify3gWarning(Landroid/content/Context;)V

    sput-boolean v3, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/phone/NetworkNotificationUI;->mDataState:I

    iput v0, p0, Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/phone/NetworkNotificationUI;->mDataState:I

    if-ne v0, v4, :cond_2

    sput-boolean v3, Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z

    goto :goto_0
.end method

.method public serviceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 12

    const-string/jumbo v8, "NetworkNotificationUI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onServiceStateChanged-S:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->mNewServiceState:Landroid/telephony/ServiceState;

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI;->mNewServiceState:Landroid/telephony/ServiceState;

    invoke-direct {p0, v8, v9}, Lcom/android/phone/NetworkNotificationUI;->isRegisteredServiceState(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z

    move-result v2

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mNewServiceState:Landroid/telephony/ServiceState;

    iput-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mServiceState:Landroid/telephony/ServiceState;

    const-string/jumbo v8, "mobile_newtork_style_for_lgt"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "NetworkNotificationUI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "NetworkProxy.isNetworkRoaming() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->isNetworkRoaming()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->isNetworkRoaming()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "true"

    const-string/jumbo v9, "persist.sys.restrict_background"

    const-string/jumbo v10, "false"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "NetworkNotificationUI"

    const-string/jumbo v9, "RestrictBackground OFF"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v8, "kr.co.uplus.RESTRICT_BACKGROUND"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "ENABLED"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v8, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    const-string/jumbo v8, "mobile_newtork_style_for_skt"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->checkAndUpdateRoamingStateSKT()V

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isSupportRoamingRegRoamingNoti()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z

    if-eqz v8, :cond_e

    :cond_2
    :goto_0
    const-string/jumbo v8, "mobile_newtork_style_for_ktt"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "20"

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getSimType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v2, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v8, "com.samsung.intent.action.REGIST_HOME"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isManualSelection()Z

    move-result v8

    if-eqz v8, :cond_18

    :goto_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z

    if-eqz v8, :cond_19

    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_9

    const-string/jumbo v8, "mobile_newtork_style_for_kor_open"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->dissmissRTSPopup()V

    :cond_5
    :goto_3
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

    if-eqz v8, :cond_6

    const-string/jumbo v8, "NetworkNotificationUI"

    const-string/jumbo v9, "mNotifyNetworkRegisteringDialog.dismiss"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;

    :cond_6
    const-string/jumbo v8, "mobile_newtork_style_for_ktt"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/phone/NetworkNotificationUI;->mNoservicePopupSelectionNagativeButton:Z

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    :cond_7
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;

    if-eqz v8, :cond_8

    const-string/jumbo v8, "NetworkNotificationUI"

    const-string/jumbo v9, "mNoServiceAndManualSelectionDialog.dismiss"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;

    :cond_8
    const-string/jumbo v8, "hd_voice_network_prefer"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->checkKTHDVoice()V

    :cond_9
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string/jumbo v9, "CscFeature_RIL_BIPOTAUsimRegistration"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string/jumbo v8, "feature_kor_open"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_a

    sget-boolean v8, Lcom/android/phone/NetworkNotificationUI;->isOTAstarted:Z

    if-eqz v8, :cond_1c

    :cond_a
    :goto_4
    const-string/jumbo v8, "lost_phone_lock"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isLostPhoneLock()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v8

    const/16 v9, 0xe

    if-ne v8, v9, :cond_d

    const/4 v3, 0x0

    sget-object v8, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_b

    sget-object v8, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x112005c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_1d

    const-string/jumbo v8, "support_softphone"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    :cond_b
    :goto_5
    if-nez v3, :cond_c

    sget-object v8, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_c

    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v8, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v8}, Lcom/android/internal/widget/LockPatternUtils;->setRejectModeLocked(ZI)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v8, "com.samsung.android.keyguard.lte_rejectmode_changed"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_c
    sget-object v8, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_d

    sget-object v8, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->updateLostPhoneLock(Landroid/content/Context;Z)V

    sget-object v8, Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "statusbar"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/StatusBarManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/StatusBarManager;->disable(I)V

    const-string/jumbo v8, "NetworkNotificationUI"

    const-string/jumbo v9, "onServiceStateChanged : ACTION_LOST_PHONE_UNLOCK"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void

    :cond_e
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-eqz v8, :cond_15

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z

    move-result v8

    if-eqz v8, :cond_15

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x65

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_13

    const-string/jumbo v8, "NetworkNotificationUI"

    const-string/jumbo v9, "EVENT_OUT_OF_SERVICE_IN_ROAMING_AREA is In the Msg queue"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_6
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_16

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z

    move-result v8

    if-eqz v8, :cond_16

    const-string/jumbo v8, "NetworkNotificationUI"

    const-string/jumbo v9, "addRoamingCurrentOperatorNotification"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->addRoamingCurrentOperatorNotification()V

    :goto_7
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_17

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z

    move-result v8

    if-eqz v8, :cond_17

    :goto_8
    const-string/jumbo v8, "mobile_newtork_style_for_lgt"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v8

    if-nez v8, :cond_10

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isManualSelection()Z

    move-result v8

    if-eqz v8, :cond_11

    :cond_10
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->removeRoamingNetScanningNotification()V

    :cond_11
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_2

    :cond_12
    const-string/jumbo v8, "NetworkNotificationUI"

    const-string/jumbo v9, "removeRoamingRegFailNotification"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->removeRoamingNetScanningNotification()V

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->removeRoamingRegFailNotification()V

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->dismissNetworkRegNotiPopUp()V

    goto/16 :goto_0

    :cond_13
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x65

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-string/jumbo v8, "mobile_newtork_style_for_skt"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;

    const-wide/32 v10, 0x1d4c0

    invoke-virtual {v8, v6, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6

    :cond_14
    const-string/jumbo v8, "mobile_newtork_style_for_lgt"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-boolean v8, p0, Lcom/android/phone/NetworkNotificationUI;->roamingRegFailNoti:Z

    if-nez v8, :cond_f

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->addRoamingNetScanningNotification()V

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;

    const-wide/32 v10, 0xea60

    invoke-virtual {v8, v6, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_6

    :cond_15
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x65

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x65

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    const-string/jumbo v8, "NetworkNotificationUI"

    const-string/jumbo v9, "removeMessages EVENT_OUT_OF_SERVICE_IN_ROAMING_AREA"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_16
    const-string/jumbo v8, "NetworkNotificationUI"

    const-string/jumbo v9, "removeRoamingCurrentOperatorNotification"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->removeRoamingCurrentOperatorNotification()V

    goto/16 :goto_7

    :cond_17
    const-string/jumbo v8, "NetworkNotificationUI"

    const-string/jumbo v9, "removeRoamingCurrentOperatorNotification"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->removeRoamingCurrentOperatorNotification()V

    goto/16 :goto_8

    :cond_18
    const-string/jumbo v8, "NetworkNotificationUI"

    const-string/jumbo v9, "Reset mNoservicePopupSelectionNagativeButton for Switching to Automatic Selection"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/phone/NetworkNotificationUI;->mNoservicePopupSelectionNagativeButton:Z

    goto/16 :goto_1

    :cond_19
    const-string/jumbo v8, "NetworkNotificationUI"

    const-string/jumbo v9, "send EVENT_MANUAL_SELECTION_NO_SVC msg"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x61a8

    invoke-virtual {v8, v4, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    :cond_1a
    const-string/jumbo v8, "mobile_newtork_style_for_kor"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->refleshRTSValue()Z

    move-result v8

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/android/phone/NetworkNotificationUI;->rtsStatusValue:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1b

    iget v8, p0, Lcom/android/phone/NetworkNotificationUI;->rtsStatusValue:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_5

    :cond_1b
    iget v8, p0, Lcom/android/phone/NetworkNotificationUI;->rtsIdleValue:I

    if-nez v8, :cond_5

    iget v8, p0, Lcom/android/phone/NetworkNotificationUI;->rtsCsValue:I

    if-nez v8, :cond_5

    iget v8, p0, Lcom/android/phone/NetworkNotificationUI;->rtsPsValue:I

    if-nez v8, :cond_5

    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->dissmissRTSPopup()V

    goto/16 :goto_3

    :cond_1c
    invoke-direct {p0}, Lcom/android/phone/NetworkNotificationUI;->isLGTUnregSIM()Z

    move-result v8

    if-eqz v8, :cond_a

    const-string/jumbo v8, "NetworkNotificationUI"

    const-string/jumbo v9, "send EVENT_LGT_BIP_OTA_USIM_REGISTRATION"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/phone/NetworkNotificationUI;->isOTAstarted:Z

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x66

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    :cond_1d
    const/4 v3, 0x1

    goto/16 :goto_5
.end method

.method public updatePhoneStateListeners()V
    .locals 7

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI;->mPhoneStateListeners:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v4, :cond_1

    invoke-direct {p0, v4, v3}, Lcom/android/phone/NetworkNotificationUI;->containsSubId(Ljava/util/List;I)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/PhoneStateListener;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v2, Lcom/android/phone/NetworkNotificationUI$NetworkModePhoneStateListener;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/NetworkNotificationUI$NetworkModePhoneStateListener;-><init>(Lcom/android/phone/NetworkNotificationUI;I)V

    const/16 v5, 0x41

    invoke-static {v2, v5}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method
