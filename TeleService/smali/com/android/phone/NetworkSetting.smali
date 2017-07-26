.class public Lcom/android/phone/NetworkSetting;
.super Landroid/preference/PreferenceActivity;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NetworkSetting$-void_registerIntentReceivers__LambdaImpl0;,
        Lcom/android/phone/NetworkSetting$-void_registerIntentReceivers__LambdaImpl1;,
        Lcom/android/phone/NetworkSetting$-void_registerIntentReceivers__LambdaImpl2;,
        Lcom/android/phone/NetworkSetting$-void_registerIntentReceivers__LambdaImpl3;,
        Lcom/android/phone/NetworkSetting$-void_registerIntentReceivers__LambdaImpl4;,
        Lcom/android/phone/NetworkSetting$10;,
        Lcom/android/phone/NetworkSetting$11;,
        Lcom/android/phone/NetworkSetting$1;,
        Lcom/android/phone/NetworkSetting$2;,
        Lcom/android/phone/NetworkSetting$3;,
        Lcom/android/phone/NetworkSetting$4;,
        Lcom/android/phone/NetworkSetting$5;,
        Lcom/android/phone/NetworkSetting$6;,
        Lcom/android/phone/NetworkSetting$7;,
        Lcom/android/phone/NetworkSetting$8;,
        Lcom/android/phone/NetworkSetting$9;,
        Lcom/android/phone/NetworkSetting$NetworkModePhoneStateListener;,
        Lcom/android/phone/NetworkSetting$userSelectionType;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-phone-NetworkSetting$userSelectionTypeSwitchesValues:[I

.field private static Operator_Alphalong:Ljava/lang/String;

.field private static Operator_Numeric:Ljava/lang/String;

.field private static mInitialValue:Ljava/lang/String;


# instance fields
.field private final ACTION_PLMN:Ljava/lang/String;

.field private ActionType:I

.field private LOG_TAG:Ljava/lang/String;

.field private checkForbiddenNetwork:Z

.field private mActivePhone:I

.field private mActivePhoneSelected:I

.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mAlertDialogListenerNegative:Landroid/content/DialogInterface$OnClickListener;

.field private mAutoManualSelected:Ljava/lang/String;

.field private mAutoSelect:Lcom/android/phone/ProgressButtonPreference;

.field private mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

.field private mBootUpAutoSearh:Z

.field private mBootUpExtra:Z

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallActiveDialog:Landroid/app/AlertDialog;

.field private final mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

.field private mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

.field private mConnectivityMgr:Landroid/net/ConnectivityManager;

.field private mConnectivityService:Landroid/net/IConnectivityManager;

.field mContResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field private mDefaultSetup:Lcom/android/phone/ProgressButtonListPreference;

.field private mDisconnectAutoSelectDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDisconnectSearchDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDisconnectSelectListDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field mFailDialog:Landroid/app/AlertDialog;

.field private mFromDisconnectSelectListDialog:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

.field private mIsAirplainModeObserverRegister:Z

.field private mIsEmptyNetworkList:Z

.field protected mIsForeground:Z

.field private mIsNetworkSettingStatusRegister:Z

.field private mIsSearching:Z

.field private mManualModeSuccess:Z

.field private mNetworkList:Landroid/preference/PreferenceGroup;

.field private mNetworkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/preference/Preference;",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

.field private final mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

.field mNetworkSelectMsg:Ljava/lang/String;

.field private mOnBroadcastRecieve:Z

.field private mOnPauseTransition:Z

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field mPLMN:Z

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/phone/NetworkSetting$NetworkModePhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressbarSearchNetwork:Landroid/preference/Preference;

.field private mSearchButton:Lcom/android/phone/ProgressButtonPreference;

.field private mSearchFemto:Landroid/preference/Preference;

.field private mSearchNow:Z

.field private mSearchRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

.field private mSearchSwitchButton:Landroid/preference/SwitchPreference;

.field mSelectAutomatically:Z

.field private mSetAuto:Z

.field mSetToAutomaticMode:Z

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTempPreference:Landroid/preference/Preference;

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field public ss:Landroid/telephony/ServiceState;


# direct methods
.method static synthetic -get0(Lcom/android/phone/NetworkSetting;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/phone/NetworkSetting;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/phone/NetworkSetting;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mCallActiveDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/phone/NetworkSetting;)Landroid/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/ProgressButtonListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Lcom/android/phone/ProgressButtonListPreference;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/phone/NetworkSetting;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mFromDisconnectSelectListDialog:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get15()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/phone/NetworkSetting;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsSearching:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/INetworkQueryService;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mProgressbarSearchNetwork:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/ProgressButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/android/phone/ProgressButtonPreference;

    return-object v0
.end method

.method static synthetic -get2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/NetworkSetting;->Operator_Numeric:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchFemto:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/phone/NetworkSetting;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/phone/NetworkSetting;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSetAuto:Z

    return v0
.end method

.method static synthetic -get24(Lcom/android/phone/NetworkSetting;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mTempPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/NetworkSetting;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/phone/NetworkSetting;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/NetworkSetting;->mActivePhoneSelected:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/phone/NetworkSetting;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mAutoManualSelected:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/ProgressButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/android/phone/ProgressButtonPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/phone/NetworkSetting;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mBootUpExtra:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/phone/NetworkSetting;)Lcom/android/internal/telephony/CallManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method private static synthetic -getcom-android-phone-NetworkSetting$userSelectionTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/phone/NetworkSetting;->-com-android-phone-NetworkSetting$userSelectionTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/NetworkSetting;->-com-android-phone-NetworkSetting$userSelectionTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/NetworkSetting$userSelectionType;->values()[Lcom/android/phone/NetworkSetting$userSelectionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/phone/NetworkSetting$userSelectionType;->AUTOSELECT:Lcom/android/phone/NetworkSetting$userSelectionType;

    invoke-virtual {v1}, Lcom/android/phone/NetworkSetting$userSelectionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/phone/NetworkSetting$userSelectionType;->FEMTO_SEARCH:Lcom/android/phone/NetworkSetting$userSelectionType;

    invoke-virtual {v1}, Lcom/android/phone/NetworkSetting$userSelectionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/phone/NetworkSetting$userSelectionType;->SEARCH:Lcom/android/phone/NetworkSetting$userSelectionType;

    invoke-virtual {v1}, Lcom/android/phone/NetworkSetting$userSelectionType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/phone/NetworkSetting$userSelectionType;->SELECTLIST:Lcom/android/phone/NetworkSetting$userSelectionType;

    invoke-virtual {v1}, Lcom/android/phone/NetworkSetting$userSelectionType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/phone/NetworkSetting;->-com-android-phone-NetworkSetting$userSelectionTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/phone/NetworkSetting;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/NetworkSetting;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->checkForbiddenNetwork:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/phone/NetworkSetting;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->mBootUpAutoSearh:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/phone/NetworkSetting;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->mBootUpExtra:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/phone/NetworkSetting;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkSetting;->mCallActiveDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/phone/NetworkSetting;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->mFromDisconnectSelectListDialog:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/phone/NetworkSetting;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->mIsSearching:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/phone/NetworkSetting;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->mManualModeSuccess:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/phone/NetworkSetting;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/phone/NetworkSetting;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->mSetAuto:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/NetworkSetting;Lcom/android/phone/NetworkSetting$userSelectionType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->checkDataConnection(Lcom/android/phone/NetworkSetting$userSelectionType;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/NetworkSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->clearList()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/phone/NetworkSetting;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/NetworkSetting;->networksListLoaded(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/phone/NetworkSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->selectListPopUp()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/phone/NetworkSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->selectList()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/phone/NetworkSetting;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic(I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/phone/NetworkSetting;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/phone/NetworkSetting;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->setPreferenceEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/phone/NetworkSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->stopLoadNetworksList()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/phone/NetworkSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->updateDataState()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic -wrap20(Lcom/android/phone/NetworkSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->updatePLMNmode()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/phone/NetworkSetting;Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/NetworkSetting;->updateRadioButton(Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/NetworkSetting;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/NetworkSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->goBackToPreviousManualNetwork()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/phone/NetworkSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->handleManualFailCase()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/phone/NetworkSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->handleManualSuccessCase()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/phone/NetworkSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->loadNetworksList()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "0"

    sput-object v0, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    sput-object v1, Lcom/android/phone/NetworkSetting;->Operator_Numeric:Ljava/lang/String;

    sput-object v1, Lcom/android/phone/NetworkSetting;->Operator_Alphalong:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const-string/jumbo v0, "NetworkSetting"

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "com.android.settings.PLMNACTION"

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->ACTION_PLMN:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mManualModeSuccess:Z

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mOnPauseTransition:Z

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mOnBroadcastRecieve:Z

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mSelectAutomatically:Z

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mSetAuto:Z

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mSearchNow:Z

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mIsSearching:Z

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mFromDisconnectSelectListDialog:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsEmptyNetworkList:Z

    iput v1, p0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    iput v1, p0, Lcom/android/phone/NetworkSetting;->mActivePhoneSelected:I

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->checkForbiddenNetwork:Z

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mBootUpExtra:Z

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mBootUpAutoSearh:Z

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mIsAirplainModeObserverRegister:Z

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mIsNetworkSettingStatusRegister:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mPhoneStateListeners:Ljava/util/Map;

    new-instance v0, Lcom/android/phone/NetworkSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$1;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    new-instance v0, Lcom/android/phone/NetworkSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$2;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/phone/NetworkSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$3;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    new-instance v0, Lcom/android/phone/NetworkSetting$4;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$4;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/phone/NetworkSetting$5;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$5;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    new-instance v0, Lcom/android/phone/NetworkSetting$6;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$6;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/NetworkSetting$7;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$7;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mAlertDialogListenerNegative:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/NetworkSetting$8;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$8;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mDisconnectSearchDialogListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/NetworkSetting$9;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$9;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mDisconnectAutoSelectDialogListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/NetworkSetting$10;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$10;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mDisconnectSelectListDialogListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/NetworkSetting$11;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NetworkSetting$11;-><init>(Lcom/android/phone/NetworkSetting;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private backToAutoMode()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mContResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "VALUE_OF_CURRENT_SELECTION_MODE"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mManualModeSuccess:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "1"

    sget-object v1, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const-string/jumbo v0, "1"

    sget-object v1, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSelectAutomatically:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "backToAutoMode() set AUTOMATIC_MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "0"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSelectAutomatically:Z

    :goto_0
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "backToAutoMode : Keep Manual Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string/jumbo v0, "0"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "backToAutoMode(), mManualModeSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mManualModeSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Setting to Automatic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "backToAutoMode() set MANUAL_MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "1"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkCspPlmn()V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "[CSP] Enabling Operator Selection menu."

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CSP support - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set PLMN - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set setToAutomaticMode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v0, "[CSP] Disabling Operator Selection menu."

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isSupportENSFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    goto :goto_0
.end method

.method private checkDataConnection(Lcom/android/phone/NetworkSetting$userSelectionType;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Check Data call, userSelectionType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    sget-object v1, Lcom/android/phone/NetworkSetting$userSelectionType;->AUTOSELECT:Lcom/android/phone/NetworkSetting$userSelectionType;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mSelectAutomatically:Z

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->setSelectedActionType(Lcom/android/phone/NetworkSetting$userSelectionType;)V

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_1

    const/16 v1, 0x1f4

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->isDataConnectedNow(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mBootUpAutoSearh:Z

    if-eqz v1, :cond_4

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->displayProgressDialogForNetworkSetting(Lcom/android/phone/NetworkSetting$userSelectionType;)V

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkDataConnection : Mobile data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->semGetDataEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " userSelectionType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->semGetDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setInternalMobileDataEnabled(Z)V

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->updateDataState()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "DATA_IS_NOW_CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/NetworkSetting;->-getcom-android-phone-NetworkSetting$userSelectionTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/phone/NetworkSetting$userSelectionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x2bc

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x258

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x320

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    goto :goto_0

    :pswitch_3
    invoke-static {v4}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setInternalMobileDataEnabled(Z)V

    const/16 v1, 0x384

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private clearList()V
    .locals 3

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    return-void
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

.method private createForUSAGSM()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "usa_gsm_support_femto_cell_network"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "network_setting_att"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "network_setting_aio"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/android/phone/ProgressButtonPreference;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/android/phone/ProgressButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v2, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/android/phone/ProgressButtonPreference;

    :cond_1
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/android/phone/ProgressButtonPreference;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/android/phone/ProgressButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v2, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/android/phone/ProgressButtonPreference;

    :cond_2
    const-string/jumbo v0, "network_setting_tmo"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/android/phone/ProgressButtonPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/android/phone/ProgressButtonPreference;

    const v1, 0x7f0d03a9

    invoke-virtual {v0, v1}, Lcom/android/phone/ProgressButtonPreference;->setTitle(I)V

    :cond_3
    const-string/jumbo v0, "button_default_setup_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ProgressButtonListPreference;

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Lcom/android/phone/ProgressButtonListPreference;

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mContResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "VALUE_OF_CURRENT_SELECTION_MODE"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    sget-object v0, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->ss:Landroid/telephony/ServiceState;

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "0"

    sput-object v0, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mContResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "VALUE_OF_CURRENT_SELECTION_MODE"

    sget-object v2, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Inital Prefs Value -: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Lcom/android/phone/ProgressButtonListPreference;

    sget-object v1, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/ProgressButtonListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Lcom/android/phone/ProgressButtonListPreference;

    new-instance v1, Lcom/android/phone/NetworkSetting$17;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkSetting$17;-><init>(Lcom/android/phone/NetworkSetting;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/ProgressButtonListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isSupportENSFeature()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Lcom/android/phone/ProgressButtonListPreference;

    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    invoke-virtual {v0, v1}, Lcom/android/phone/ProgressButtonListPreference;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->clearList()V

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Menu is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "0"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SetToAutomaticMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mDefaultSetup setting to Automatic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string/jumbo v0, "support_ens_network_setting_for_mvno"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isAttMvnoSim()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/android/phone/ProgressButtonPreference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/android/phone/ProgressButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/phone/ProgressButtonPreference;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/android/phone/ProgressButtonPreference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/android/phone/ProgressButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/phone/ProgressButtonPreference;->setEnabled(Z)V

    :cond_7
    const-string/jumbo v0, "enabled"

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mContResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "FAKE_PLMN_MODE"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iput-boolean v4, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Lcom/android/phone/ProgressButtonListPreference;

    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    invoke-virtual {v0, v1}, Lcom/android/phone/ProgressButtonListPreference;->setEnabled(Z)V

    :cond_8
    const-string/jumbo v0, "usa_gsm_support_femto_cell_network"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "button_srch_femto_cell_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchFemto:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchFemto:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_9
    return-void

    :cond_a
    const-string/jumbo v0, "1"

    sput-object v0, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private displayEmptyNetworkList(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "displayEmptyNetworkList flag :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->mIsEmptyNetworkList:Z

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    if-eqz p1, :cond_0

    const v0, 0x7f0d03a6

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    return-void

    :cond_0
    const v0, 0x7f0d03a3

    goto :goto_0
.end method

.method private displayNetworkQueryFailed()V
    .locals 3

    const-string/jumbo v1, "displayNetworkQueryFailed"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    const-string/jumbo v1, "network_setting_tmo"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "0"

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "isplayNetworkQueryFailed: defaultSetupLp setting to Automatic"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d03aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    .locals 6

    const v4, 0x7f0d03ac

    const-string/jumbo v2, "displayNetworkSelectionFailed"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkForbiddenNetwork = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/NetworkSetting;->checkForbiddenNetwork:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "NetworkSelectionFailed because of ILLEGAL_SIM_OR_ME"

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const-string/jumbo v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "displayNetworkSelectionFailed mActivePhone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    iget v4, p0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSubIdUsingPhoneId(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/NotificationMgr;->updateNetworkSelection(II)V

    :goto_1
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->checkForbiddenNetwork:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "NetworkSelectionFailed because of ForbiddenNetwork"

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "connect_later"

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/phone/NotificationMgr;->updateNetworkSelection(I)V

    goto :goto_1
.end method

.method private displayNetworkSelectionSucceeded(I)V
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "displayNetworkSelectionSucceeded - reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d03af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/phone/NetworkSetting$13;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/NetworkSetting$13;-><init>(Lcom/android/phone/NetworkSetting;Landroid/content/Intent;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private displayNetworkSeletionInProgress(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "displayNetworkSeletionInProgress mIsForeground :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const v2, 0x7f0d03ab

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkSelectMsg:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "displayNetworkSeletionInProgress mNetworkSelectMsg :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkSelectMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    :cond_0
    return-void
.end method

.method private displayProgressDialogForNetworkSetting(Lcom/android/phone/NetworkSetting$userSelectionType;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/phone/NetworkSetting;->-getcom-android-phone-NetworkSetting$userSelectionTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/phone/NetworkSetting$userSelectionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "use_switch_preference_network_search"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mProgressbarSearchNetwork:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mProgressbarSearchNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mProgressbarSearchNetwork:Landroid/preference/Preference;

    const v1, 0x7f0400ae

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->setPreferenceEnabled(Z)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "hide_popup_progress_view"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/android/phone/ProgressButtonPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/android/phone/ProgressButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/phone/ProgressButtonPreference;->setProgressVisible(Z)V

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->setPreferenceEnabled(Z)V

    :cond_4
    const-string/jumbo v0, "usa_gsm_network_setting"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Lcom/android/phone/ProgressButtonListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Lcom/android/phone/ProgressButtonListPreference;

    invoke-virtual {v0, v3}, Lcom/android/phone/ProgressButtonListPreference;->setProgressVisible(Z)V

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->setPreferenceEnabled(Z)V

    goto :goto_0

    :cond_5
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "use_switch_preference_network_search"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mProgressbarSearchNetwork:Landroid/preference/Preference;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mProgressbarSearchNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->setPreferenceEnabled(Z)V

    goto/16 :goto_0

    :pswitch_2
    const/16 v0, 0x384

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNetworkTitleIUS(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "334050"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "334090"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_0
    const-string/jumbo v0, "AT&T"

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x9

    if-lt v4, v5, :cond_1

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_1

    if-eqz v3, :cond_1

    const-string/jumbo v4, "334050"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v0, "UNEFON"

    :cond_1
    const-string/jumbo v4, "LTE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "4G"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    const-string/jumbo v1, " LTE"

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "UMTS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "3G"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    const-string/jumbo v1, " 3G"

    goto :goto_1

    :cond_6
    const-string/jumbo v1, " 2G"

    goto :goto_1

    :cond_7
    const-string/jumbo v4, "UMTS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string/jumbo v4, "3G"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    const-string/jumbo v1, " (3G)"

    goto :goto_1

    :cond_9
    const-string/jumbo v4, "4G"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string/jumbo v4, "LTE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    const-string/jumbo v1, " (4G)"

    goto :goto_1

    :cond_b
    const-string/jumbo v1, " (2G)"

    goto :goto_1
.end method

.method private goBackToPreviousManualNetwork()V
    .locals 6

    const/4 v4, 0x0

    const-string/jumbo v3, "Manual_Selected_Operator"

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/NetworkSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v3, "Operator_Numeric"

    const-string/jumbo v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Operator_AlphaLong"

    const-string/jumbo v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "goBackToPreviousManualNetwork operatorNumeric: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " operatorAlphaLong: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "I am going back with out calling selectNetworkManually"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    return-void
.end method

.method private handleIntentCallBack(Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, -0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "subscription"

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    const-string/jumbo v8, "state"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "apnType"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getDefaultDataSlotId()I

    move-result v2

    const-string/jumbo v8, "DISCONNECTED"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "default"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getDefaultDataSlotId()I

    move-result v8

    if-ne v8, v4, :cond_0

    iget v8, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "TelephonyIntents.ACTION_ANY_DATA_CONNECTION_STATE_CHANGED : updateDataState()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->updateDataState()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v8, "com.samsung.android.action.START_DOCK_OR_HOME"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "stop_network_searching_on_pause"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/android/phone/NetworkSetting;->mIsSearching:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/NetworkSetting;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v8}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "ACTION_HOME_PRESSED : stopLoadNetworksList()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->stopLoadNetworksList()V

    goto :goto_0

    :cond_2
    const-string/jumbo v8, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->finish()V

    goto :goto_0

    :cond_3
    const-string/jumbo v8, "com.android.settings.PLMNACTION"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/android/phone/NetworkSetting;->mOnBroadcastRecieve:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[NetworkSetting] mOnPauseTransition: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/phone/NetworkSetting;->mOnPauseTransition:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", mOnBroadcastRecieve: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/phone/NetworkSetting;->mOnBroadcastRecieve:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[NetworkSetting] isCspPlmnEnabled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/phone/NetworkSetting;->mOnBroadcastRecieve:Z

    iget-boolean v8, p0, Lcom/android/phone/NetworkSetting;->mOnPauseTransition:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    :cond_4
    iget-object v8, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x384

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v8, "com.samsung.phone.locale.ACTION_NETWORK_SETTING_STATUS_UPDATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "status"

    invoke-virtual {p1, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string/jumbo v8, "phoneId"

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v8, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mNetworkSettingStatusReceiver status"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", mPhoneId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, p0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    if-eq v3, v8, :cond_0

    invoke-direct {p0, v6}, Lcom/android/phone/NetworkSetting;->updatePreferenceStatus(Z)V

    goto/16 :goto_0
.end method

.method private handleManualFailCase()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "1"

    sget-object v1, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "0"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSearchNow:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "0"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "EVENT_NETWORK_SELECTION_DONE, Set Automatic"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    iput-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mManualModeSuccess:Z

    iput-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mSearchNow:Z

    return-void

    :cond_1
    const-string/jumbo v0, "1"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSearchNow:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->goBackToPreviousManualNetwork()V

    goto :goto_1
.end method

.method private handleManualSuccessCase()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v4, "network_setting_tmo"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "1"

    invoke-direct {p0, v4}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v4, "network_setting_tmo"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/phone/NetworkSetting;->mSearchNow:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "1"

    sget-object v5, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    :goto_0
    sget-object v3, Lcom/android/phone/NetworkSetting;->Operator_Numeric:Ljava/lang/String;

    sget-object v2, Lcom/android/phone/NetworkSetting;->Operator_Alphalong:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Network Registered- selectedOperatorNumeric: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "selectedOperatorAlphaLong"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "Manual_Selected_Operator"

    invoke-virtual {p0, v4, v7}, Lcom/android/phone/NetworkSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v4, "Operator_Numeric"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v4, "Operator_AlphaLong"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string/jumbo v4, "network_setting_tmo"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-boolean v8, p0, Lcom/android/phone/NetworkSetting;->mManualModeSuccess:Z

    :cond_2
    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/phone/NetworkSetting$16;

    invoke-direct {v5, p0}, Lcom/android/phone/NetworkSetting$16;-><init>(Lcom/android/phone/NetworkSetting;)V

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    iput-boolean v8, p0, Lcom/android/phone/NetworkSetting;->mSetAuto:Z

    invoke-direct {p0, v7}, Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic(I)V

    iput-boolean v7, p0, Lcom/android/phone/NetworkSetting;->mSearchNow:Z

    const-string/jumbo v4, "0"

    invoke-direct {p0, v4}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isDataConnectedNow(I)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->semGetDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private isManualSelection(Landroid/telephony/ServiceState;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isManualSelection()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadNetworksList()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v1, "load networks list..."

    invoke-direct {p0, v1, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mIsSearching:Z

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[NetworksList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[NetworksList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private networksListLoaded(Ljava/util/List;I)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;I)V"
        }
    .end annotation

    const-string/jumbo v4, "networks list loaded"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v4, v5}, Lcom/android/phone/INetworkQueryService;->unregisterCallback(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v4, "DIALOG_NETWORK_LIST_LOAD : hideProgressPanel"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    const/16 v4, 0xc8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NetworkSetting;->setPreferenceEnabled(Z)V

    const-string/jumbo v4, "usa_gsm_network_setting"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Lcom/android/phone/ProgressButtonListPreference;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    invoke-virtual {v4, v5}, Lcom/android/phone/ProgressButtonListPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isSupportENSFeature()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    if-eqz v4, :cond_3

    :cond_0
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkSetting;->clearList()V

    if-eqz p2, :cond_5

    const-string/jumbo v4, "error while querying available networks"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NetworkSetting;->displayNetworkQueryFailed()V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    :cond_1
    :goto_2
    const-string/jumbo v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v4, v5}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/phone/NetworkSetting;->mIsSearching:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    return-void

    :catch_0
    move-exception v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "networksListLoaded: exception from unregisterCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v4, "support_ens_network_setting_for_mvno"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isAttMvnoSim()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/android/phone/ProgressButtonPreference;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/android/phone/ProgressButtonPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/phone/ProgressButtonPreference;->setEnabled(Z)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/android/phone/ProgressButtonPreference;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/android/phone/ProgressButtonPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/phone/ProgressButtonPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_37

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    const/4 v13, 0x0

    const/16 v27, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/OperatorInfo;

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_6
    new-array v9, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    new-instance v20, Ljava/util/HashSet;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_7
    :goto_4
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/telephony/OperatorInfo;

    new-instance v12, Landroid/preference/Preference;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v4, "usa_gsm_network_setting"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v13

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v13, :cond_8

    aget-object v4, v9, v15

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    :goto_6
    if-eqz v27, :cond_b

    const/16 v27, 0x0

    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NetworkSetting: Skipped!: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    const/16 v27, 0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_b
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_d

    :cond_c
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_8
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setPersistent(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v12}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v4, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_e
    const-string/jumbo v4, "feature_chn"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v10, " (2G)"

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[Network List] check rat : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    if-eqz v11, :cond_10

    const-string/jumbo v4, "UMTS"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string/jumbo v4, "TD"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_f
    const-string/jumbo v10, " (3G)"

    :cond_10
    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v4, v5, :cond_12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FORBIDDEN Network : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    const v4, 0x7f0d06b6

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setSummary(I)V

    :goto_a
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setPersistent(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v12}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v4, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "  "

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_11
    const-string/jumbo v4, "LTE"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string/jumbo v10, " (4G)"

    goto :goto_9

    :cond_12
    const v4, 0x7f0d06b8

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_a

    :cond_13
    const-string/jumbo v4, "network_rat_info_during_plmn_selection"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string/jumbo v4, "IUS"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string/jumbo v4, "UNE"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/NetworkSetting;->getNetworkTitleIUS(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_15
    const-string/jumbo v4, "UMTS"

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "(3G)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "(2G)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_17
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_RIL_DisplayRatInfoInManualNetSearchList"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    const/4 v10, 0x0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "inside TAG_CSCFEATURE_RIL_DISPLAY_RATINFO_MANUALSEARCH: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[Netowkr list] network_state_temp : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    const-string/jumbo v4, "feature_can"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    sget-object v4, Lcom/android/internal/telephony/OperatorInfo$State;->AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AVAILABLE Network : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    const v4, 0x7f0d06b8

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setSummary(I)V

    :cond_18
    :goto_b
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "50506"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string/jumbo v4, "feature_vau"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    :cond_19
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "50501"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string/jumbo v4, "feature_vau"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    :cond_1a
    const-string/jumbo v4, "IUS"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string/jumbo v4, "UNE"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/NetworkSetting;->getNetworkTitleIUS(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[legna01] getOperatorNumeric is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[Netowkr list] ni.getOperatorAlphaLong() + actStr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_1c
    sget-object v4, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_1d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CURRENT Network : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    const v4, 0x7f0d06b7

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    :cond_1d
    sget-object v4, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FORBIDDEN Network : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    const v4, 0x7f0d06b6

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    :cond_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "3Telstra("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    :cond_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Telstra("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    :cond_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    :cond_21
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_RIL_IgnoreWrongNITZInformation"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "COMCERL"

    const-string/jumbo v4, "COMCERL"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_22

    const-string/jumbo v4, "TIGO"

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_22
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/NetworkSetting;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_23
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_RIL_PLMNFaking4Mvno"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    const-string/jumbo v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSubIdUsingPhoneId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v18

    :goto_d
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v26

    new-instance v19, Lcom/android/internal/telephony/MVNOSupportList;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/MVNOSupportList;-><init>()V

    if-nez v19, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "mMVNOSupportList null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v19, Lcom/android/internal/telephony/MVNOSupportList;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/MVNOSupportList;-><init>()V

    :cond_24
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MVNOSupportList;->getMVNOName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mvnoPLMN="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v21, :cond_26

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v18

    goto :goto_d

    :cond_26
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/NetworkSetting;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_27
    const-string/jumbo v4, "dcm_show_network_info_in_manual_search_list"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "44010"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    if-nez v27, :cond_28

    const-string/jumbo v28, "[4G/3G] "

    const/16 v27, 0x1

    :cond_28
    :goto_e
    if-eqz v28, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v4, v5, :cond_2c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FORBIDDEN Network : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    const v4, 0x7f0d06b6

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_a

    :cond_29
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "LTE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    const-string/jumbo v28, "[4G] "

    goto :goto_e

    :cond_2a
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "UMTS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const-string/jumbo v28, "[3G] "

    goto :goto_e

    :cond_2b
    const-string/jumbo v28, "[GSM] "

    goto :goto_e

    :cond_2c
    const v4, 0x7f0d06b8

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_a

    :cond_2d
    const-string/jumbo v4, "kdi_show_network_info_in_manual_search_list"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "LTE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const-string/jumbo v28, "[LTE] "

    :goto_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_2e
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "UMTS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const-string/jumbo v28, "[3G] "

    goto :goto_f

    :cond_2f
    const-string/jumbo v28, "[GSM] "

    goto :goto_f

    :cond_30
    const-string/jumbo v4, "network_state_manual_search"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "inside NETWORK_STATE_MANUAL_SEARCH"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[Netowkr list] network_state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    sget-object v4, Lcom/android/internal/telephony/OperatorInfo$State;->AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

    move-object/from16 v0, v22

    if-ne v0, v4, :cond_32

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AVAILABLE Network : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    const v4, 0x7f0d06b8

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setSummary(I)V

    :cond_31
    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/NetworkSetting;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_32
    sget-object v4, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    move-object/from16 v0, v22

    if-ne v0, v4, :cond_33

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CURRENT Network : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    const v4, 0x7f0d06b7

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_10

    :cond_33
    sget-object v4, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    move-object/from16 v0, v22

    if-ne v0, v4, :cond_31

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FORBIDDEN Network : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    const v4, 0x7f0d06b6

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_10

    :cond_34
    const-string/jumbo v4, "override_name_network_search_for_sun_operator"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSimNumeric(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "51505"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "51503"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    const-string/jumbo v4, "Override Sun instead Smart for Smart Network"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    const-string/jumbo v4, "Sun"

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_35
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/NetworkSetting;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_36
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/NetworkSetting;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_37
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    goto/16 :goto_2

    :catch_1
    move-exception v14

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private onCreateMultiSim()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "sim_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "sim_id"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NetworkSetting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mActivePhone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    iget v2, p0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/NetworkSetting;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dataPreferSlotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    if-nez v0, :cond_3

    iput v4, p0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    goto :goto_0

    :cond_3
    if-ne v0, v5, :cond_0

    iput v5, p0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    goto :goto_0
.end method

.method private onProCreate()Z
    .locals 6

    const/4 v5, 0x1

    const-string/jumbo v2, "data_roaming_style_for_kor"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.phone"

    const-string/jumbo v3, "com.android.phone.mobilenetworks.kor.NetworkOperators"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ActivityNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    :cond_1
    const-string/jumbo v2, "data_roaming_style_for_lgt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.mobilenetworks.kor.NetworkOperatorsLGT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->finish()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return v5

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ActivityNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onResumeMultiSim()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "onResumeMultiSim"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    const-string/jumbo v0, "hide_popup_progress_view"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/phone/MobileNetworkSettingsTab;->mNetworkSettingStatus2:Z

    if-nez v0, :cond_7

    const-string/jumbo v0, "onResumeMultiSim : SIM_SLOT_1 disable!"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    :goto_0
    const-string/jumbo v0, "chn_cdma_network_on_all_rat"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "onResumeMultiSim : set enable first"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/android/phone/ProgressButtonPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/android/phone/ProgressButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/ProgressButtonPreference;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/android/phone/ProgressButtonPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/android/phone/ProgressButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/ProgressButtonPreference;->setEnabled(Z)V

    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v0

    if-le v0, v2, :cond_6

    const-string/jumbo v0, "chn_cdma_network_on_all_rat"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCHN;->isCTCSIM(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->isNetworkRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    :cond_4
    const-string/jumbo v0, "onResumeMultiSim : operator disable"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/android/phone/ProgressButtonPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/android/phone/ProgressButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/phone/ProgressButtonPreference;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/android/phone/ProgressButtonPreference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/android/phone/ProgressButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/phone/ProgressButtonPreference;->setEnabled(Z)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    iget v0, p0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    if-ne v0, v2, :cond_8

    sget-boolean v0, Lcom/android/phone/MobileNetworkSettingsTab;->mNetworkSettingStatus1:Z

    if-nez v0, :cond_8

    const-string/jumbo v0, "onResumeMultiSim : SIM_SLOT_2 disable!"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_8
    sget-boolean v0, Lcom/android/phone/MobileNetworkSettingsTab;->mNetworkSettingStatus1:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/phone/MobileNetworkSettingsTab;->mNetworkSettingStatus2:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "onResumeMultiSim : SIM_SLOT enabled!!"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/android/phone/ProgressButtonPreference;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/android/phone/ProgressButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/phone/ProgressButtonPreference;->setEnabled(Z)V

    :cond_a
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/android/phone/ProgressButtonPreference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/android/phone/ProgressButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/phone/ProgressButtonPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private reScanManualSelection(Landroid/os/Bundle;)V
    .locals 7

    if-eqz p1, :cond_0

    const-string/jumbo v0, "search-type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "manual"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "search-type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    new-instance v0, Lcom/android/phone/NetworkSetting$18;

    const-wide/16 v2, 0x5dc

    const-wide/16 v4, 0x64

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/NetworkSetting$18;-><init>(Lcom/android/phone/NetworkSetting;JJ)V

    invoke-virtual {v0}, Lcom/android/phone/NetworkSetting$18;->start()Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method private registerContentObservers()V
    .locals 3

    const-string/jumbo v0, "airplane_mode_on"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerIntentReceivers()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v1, "android.intent.action.ANY_DATA_STATE"

    new-instance v2, Lcom/android/phone/NetworkSetting$-void_registerIntentReceivers__LambdaImpl0;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkSetting$-void_registerIntentReceivers__LambdaImpl0;-><init>(Lcom/android/phone/NetworkSetting;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v1, "com.samsung.android.action.START_DOCK_OR_HOME"

    new-instance v2, Lcom/android/phone/NetworkSetting$-void_registerIntentReceivers__LambdaImpl1;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkSetting$-void_registerIntentReceivers__LambdaImpl1;-><init>(Lcom/android/phone/NetworkSetting;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v1, "com.samsung.intent.action.SIMHOTSWAP"

    new-instance v2, Lcom/android/phone/NetworkSetting$-void_registerIntentReceivers__LambdaImpl2;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkSetting$-void_registerIntentReceivers__LambdaImpl2;-><init>(Lcom/android/phone/NetworkSetting;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v1, "com.android.settings.PLMNACTION"

    new-instance v2, Lcom/android/phone/NetworkSetting$-void_registerIntentReceivers__LambdaImpl3;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkSetting$-void_registerIntentReceivers__LambdaImpl3;-><init>(Lcom/android/phone/NetworkSetting;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v1, "com.samsung.phone.locale.ACTION_NETWORK_SETTING_STATUS_UPDATE"

    new-instance v2, Lcom/android/phone/NetworkSetting$-void_registerIntentReceivers__LambdaImpl4;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkSetting$-void_registerIntentReceivers__LambdaImpl4;-><init>(Lcom/android/phone/NetworkSetting;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    return-void
.end method

.method private removeAllDialog()V
    .locals 2

    const-string/jumbo v0, "removeAllDialog"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    const/16 v0, 0x384

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    return-void
.end method

.method private removePhoneStateListeners()V
    .locals 4

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mPhoneStateListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private selectList()V
    .locals 8

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->mTempPreference:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "selected network: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mTempPreference:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/OperatorInfo;

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/phone/NetworkSetting;->checkForbiddenNetwork:Z

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v4, v5, :cond_0

    iput-boolean v7, p0, Lcom/android/phone/NetworkSetting;->checkForbiddenNetwork:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkForbiddenNetwork: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/phone/NetworkSetting;->checkForbiddenNetwork:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_RIL_DisplayRatInfoInManualNetSearchList"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "feature_chn"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_1
    const-string/jumbo v4, "2G"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "GERAN"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "Iusacell GSM"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_2
    const-string/jumbo v4, "ril.network_manual_set.rat"

    const-string/jumbo v5, "2G"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "2G"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    const-string/jumbo v4, "dcm_show_network_info_in_manual_search_list"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string/jumbo v4, "LTE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string/jumbo v4, "ril.network_manual_set.rat"

    const-string/jumbo v5, "4G"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "4G"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz v2, :cond_5

    iget v4, p0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    invoke-static {v2, v7, v0, v4}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;I)V

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "TD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v4, "old_cp_select_network"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "ril.network_manual_set.rat"

    const-string/jumbo v5, "3G"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "3G-TDSCDMA"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    const-string/jumbo v4, "ril.network_manual_set.rat"

    const-string/jumbo v5, "TD"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string/jumbo v4, "3G"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string/jumbo v4, "UMTS"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string/jumbo v4, "Iusacell 4G"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    const-string/jumbo v4, "ril.network_manual_set.rat"

    const-string/jumbo v5, "3G"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "3G"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v4, "4G"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string/jumbo v4, "LTE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_b
    const-string/jumbo v4, "ril.network_manual_set.rat"

    const-string/jumbo v5, "4G"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "4G"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v4, "network_rat_info_during_plmn_selection"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "2G"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string/jumbo v4, "GSM"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string/jumbo v4, "GERAN"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_d
    const-string/jumbo v4, "ril.network_manual_set.rat"

    const-string/jumbo v5, "2G"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "2G"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v4, "ril.network_manual_set.rat"

    const-string/jumbo v5, "3G"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "3G"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v4, "3G"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string/jumbo v4, "ril.network_manual_set.rat"

    const-string/jumbo v5, "3G"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "3G"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v4, "GSM"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "ril.network_manual_set.rat"

    const-string/jumbo v5, "2G"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "2G"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v4, "kdi_show_network_info_in_manual_search_list"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "GSM"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string/jumbo v4, "ril.network_manual_set.rat"

    const-string/jumbo v5, "2G"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "2G"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_12
    const-string/jumbo v4, "3G"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-string/jumbo v4, "ril.network_manual_set.rat"

    const-string/jumbo v5, "3G"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "3G"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_13
    const-string/jumbo v4, "LTE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "ril.network_manual_set.rat"

    const-string/jumbo v5, "4G"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "4G"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private selectListPopUp()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d09d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/NetworkSetting$14;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkSetting$14;-><init>(Lcom/android/phone/NetworkSetting;)V

    const v3, 0x7f0d09d4

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/NetworkSetting$15;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkSetting$15;-><init>(Lcom/android/phone/NetworkSetting;)V

    const v3, 0x7f0d09d7

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private selectNetworkAutomatic(I)V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v2, "select network automatically..."

    invoke-direct {p0, v2, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    if-ne p1, v4, :cond_1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x190

    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x190

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    :goto_0
    iget v2, p0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    invoke-static {v1, v2}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setNetworkSelectionModeAutomatic(Landroid/os/Message;I)V

    :goto_1
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mSetAuto:Z

    if-nez v2, :cond_3

    const-string/jumbo v2, "use_switch_preference_network_search"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_2
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mProgressbarSearchNetwork:Landroid/preference/Preference;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mProgressbarSearchNetwork:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "hide_popup_progress_view"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/android/phone/ProgressButtonPreference;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/android/phone/ProgressButtonPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/ProgressButtonPreference;->setProgressVisible(Z)V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->setPreferenceEnabled(Z)V

    :cond_5
    const-string/jumbo v2, "usa_gsm_network_setting"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Lcom/android/phone/ProgressButtonListPreference;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Lcom/android/phone/ProgressButtonListPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/ProgressButtonListPreference;->setProgressVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "...........exception occured when select network automatically, exception is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_6
    const/16 v2, 0x12c

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSetting;->showDialog(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private sendBroadcastStatusIntent(Z)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.phone.locale.ACTION_NETWORK_SETTING_STATUS_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "phoneId"

    iget v2, p0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendBroadcastStatusIntent status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private setMobileDataEnabled(Z)V
    .locals 3

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getDefaultDataSlotId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMobileDataEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mActivePhone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dataSlotID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ProxyController;->enableDataConnectivity(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/ProxyController;->disableDataConnectivity(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private setMode(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Lcom/android/phone/ProgressButtonListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Lcom/android/phone/ProgressButtonListPreference;

    invoke-virtual {v0, p1}, Lcom/android/phone/ProgressButtonListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mContResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "VALUE_OF_CURRENT_SELECTION_MODE"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private setPreferenceEnabled(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPreferenceEnabled status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "hide_popup_progress_view"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    if-nez v0, :cond_2

    sput-boolean p1, Lcom/android/phone/MobileNetworkSettingsTab;->mNetworkSettingStatus1:Z

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->sendBroadcastStatusIntent(Z)V

    :cond_1
    return-void

    :cond_2
    sput-boolean p1, Lcom/android/phone/MobileNetworkSettingsTab;->mNetworkSettingStatus2:Z

    goto :goto_0
.end method

.method private setSelectedActionType(Lcom/android/phone/NetworkSetting$userSelectionType;)V
    .locals 2

    invoke-static {}, Lcom/android/phone/NetworkSetting;->-getcom-android-phone-NetworkSetting$userSelectionTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/phone/NetworkSetting$userSelectionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/16 v0, -0x2711

    iput v0, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    goto :goto_0

    :pswitch_1
    const/16 v0, -0x2712

    iput v0, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    goto :goto_0

    :pswitch_2
    const/16 v0, -0x2713

    iput v0, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    goto :goto_0

    :pswitch_3
    const/16 v0, -0x2714

    iput v0, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private stopLoadNetworksList()V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v1, "stop load networks list..."

    invoke-direct {p0, v1, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    const-string/jumbo v1, "data_roaming_style_for_kor"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Feature is on, stopLoadNetworksList canceled."

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mIsSearching:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-static {v3}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setInternalMobileDataEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->finish()V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    invoke-static {v3}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setInternalMobileDataEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->finish()V

    throw v1
.end method

.method private unregisterContentObservers()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterIntentReceivers()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    invoke-virtual {v0, p0}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method private final updateDataState()V
    .locals 6

    const/16 v5, 0xbb9

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[NetworksList] current data state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "[NetworksList] DATA DISCONNECTED !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mFailDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mFailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "[NetworksList] Should not be here! Do cancel operation!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->finish()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[NetworksList] updateDataState() ActionType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    const/16 v2, -0x2711

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "[NetworksList] searching ..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput v4, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    const/16 v2, -0x2712

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput v4, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    const/16 v2, -0x2713

    if-ne v1, v2, :cond_6

    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mFromDisconnectSelectListDialog:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput v4, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    goto/16 :goto_0

    :cond_6
    iget v1, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    const/16 v2, -0x2714

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->selectCsg(Landroid/os/Message;)V

    iput v4, p0, Lcom/android/phone/NetworkSetting;->ActionType:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private updatePLMNmode()V
    .locals 1

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isSupportENSFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->onResume()V

    :cond_0
    return-void
.end method

.method private updatePreferenceStatus(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePreferenceStatus status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private updateRadioButton(Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->isManualSelection(Landroid/telephony/ServiceState;)Z

    move-result v0

    iget-boolean v4, p0, Lcom/android/phone/NetworkSetting;->mIsEmptyNetworkList:Z

    if-nez v4, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setChecked(Z)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, v2}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setChecked(Z)V

    :cond_3
    if-eqz p2, :cond_1

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {p2, v2}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method private updateSearchSwitchButton()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mContResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "VALUE_OF_CURRENT_SELECTION_MODE"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    sget-object v0, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->ss:Landroid/telephony/ServiceState;

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "0"

    sput-object v0, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    const-string/jumbo v0, "0"

    sget-object v2, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void

    :cond_1
    const-string/jumbo v0, "1"

    sput-object v0, Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method synthetic -com_android_phone_NetworkSetting_lambda$1(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NetworkSetting_lambda$2(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NetworkSetting_lambda$3(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NetworkSetting_lambda$4(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NetworkSetting_lambda$5(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    const/16 v2, 0x7d0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mFailDialog:Landroid/app/AlertDialog;

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->finish()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mIsSearching:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-static {v3}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setInternalMobileDataEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->finish()V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    invoke-static {v3}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setInternalMobileDataEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->finish()V

    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "config_hide_status_bar"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v3, "user"

    invoke-virtual {p0, v3}, Lcom/android/phone/NetworkSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, Lcom/android/phone/NetworkSetting;->mUm:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mUm:Landroid/os/UserManager;

    const-string/jumbo v4, "no_config_mobile_networks"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f0400f4

    invoke-virtual {p0, v3}, Lcom/android/phone/NetworkSetting;->setContentView(I)V

    iput-boolean v6, p0, Lcom/android/phone/NetworkSetting;->mUnavailable:Z

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->onProCreate()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/NetworkSetting;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->getInstance()Lcom/android/phone/mobilenetworks/controller/IntentManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/NetworkSetting;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const v3, 0x7f07001c

    invoke-virtual {p0, v3}, Lcom/android/phone/NetworkSetting;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    invoke-static {p0}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->removePreferenceActivityPadding(Landroid/preference/PreferenceActivity;)V

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "list_networks_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    iput-object v3, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    const-string/jumbo v3, "use_radio_preference_network_search"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string/jumbo v3, "radio_button_manual_select_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/NetworkSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    iput-object v3, p0, Lcom/android/phone/NetworkSetting;->mSearchRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    const-string/jumbo v3, "radio_button_auto_select_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/NetworkSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    iput-object v3, p0, Lcom/android/phone/NetworkSetting;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->onCreateMultiSim()V

    const-string/jumbo v3, "onCreate"

    invoke-direct {p0, v3, v6}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/phone/NetworkSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string/jumbo v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/NetworkSetting;->mContResolver:Landroid/content/ContentResolver;

    iput-object p0, p0, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "usa_gsm_network_setting"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->checkCspPlmn()V

    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->createForUSAGSM()V

    :goto_2
    const-string/jumbo v3, "usa_gsm_support_femto_cell_network"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "button_srch_femto_cell_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v5, p0, Lcom/android/phone/NetworkSetting;->mSearchFemto:Landroid/preference/Preference;

    :cond_3
    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Lcom/android/phone/NetworkSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/phone/NetworkSetting;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v3, "switch_button_auto_select_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/NetworkSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/phone/NetworkSetting;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    const-string/jumbo v3, "progressbar_search_network_category"

    invoke-virtual {p0, v3}, Lcom/android/phone/NetworkSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/phone/NetworkSetting;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    const-string/jumbo v3, "progressbar_search_network_info"

    invoke-virtual {p0, v3}, Lcom/android/phone/NetworkSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/NetworkSetting;->mProgressbarSearchNetwork:Landroid/preference/Preference;

    const-string/jumbo v3, "use_switch_preference_network_search"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isSupportENSFeature()Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_4
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mProgressbarSearchNetwork:Landroid/preference/Preference;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mProgressbarSearchNetwork:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    :goto_3
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/android/phone/NetworkSetting;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/android/phone/NetworkSetting;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    const-string/jumbo v3, "connectivity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/NetworkSetting;->mConnectivityService:Landroid/net/IConnectivityManager;

    const-string/jumbo v3, "network_manual_selection_when_bootup"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "network_manual_selection_when_bootup"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "network_manual_selection_when_bootup"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mBootUpExtra:Z

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getIntent NETWORK_MANUAL_SELECTION_WHEN_BOOTUP, mBootUpExtra : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/phone/NetworkSetting;->mBootUpExtra:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "network_setting_tmo"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "0"

    invoke-direct {p0, v3}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    :cond_8
    const-string/jumbo v3, "network_setting_tmo"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->reScanManualSelection(Landroid/os/Bundle;)V

    :cond_9
    const-string/jumbo v3, "feature_zvv"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string/jumbo v3, "1"

    iput-object v3, p0, Lcom/android/phone/NetworkSetting;->mAutoManualSelected:Ljava/lang/String;

    iget v3, p0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    iput v3, p0, Lcom/android/phone/NetworkSetting;->mActivePhoneSelected:I

    :cond_a
    const-string/jumbo v3, "config_hide_status_bar"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_b
    return-void

    :cond_c
    const-string/jumbo v3, "button_srch_netwrks_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/NetworkSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/ProgressButtonPreference;

    iput-object v3, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/android/phone/ProgressButtonPreference;

    const-string/jumbo v3, "button_auto_select_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/NetworkSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/ProgressButtonPreference;

    iput-object v3, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/android/phone/ProgressButtonPreference;

    goto/16 :goto_0

    :cond_d
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x60

    invoke-static {v3, v4}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v3, "button_default_setup_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v5, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Lcom/android/phone/ProgressButtonListPreference;

    goto/16 :goto_2

    :cond_f
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_7

    const-string/jumbo v3, "mSearchSwitchButton IS NOT NULL"

    invoke-direct {p0, v3, v6}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    new-instance v4, Lcom/android/phone/NetworkSetting$12;

    invoke-direct {v4, p0}, Lcom/android/phone/NetworkSetting$12;-><init>(Lcom/android/phone/NetworkSetting;)V

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->updateSearchSwitchButton()V

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    const-string/jumbo v3, "progressbar_search_network_category"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string/jumbo v3, "button_srch_netwrks_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string/jumbo v3, "button_auto_select_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9

    const/16 v8, 0x320

    const v7, 0x7f0d032a

    const v4, 0x7f0d0327

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreateDialog id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    const/16 v2, 0x64

    if-eq p1, v2, :cond_0

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_1

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    sparse-switch p1, :sswitch_data_0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "default Message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d03a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :goto_1
    return-object v0

    :cond_1
    const/16 v2, 0x12c

    if-eq p1, v2, :cond_0

    const/16 v2, 0x190

    if-eq p1, v2, :cond_0

    const/16 v2, 0x384

    if-eq p1, v2, :cond_0

    const/16 v2, 0x1f4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x258

    if-ne p1, v2, :cond_4

    :cond_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d06b9

    invoke-virtual {p0, v3}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x1f4

    if-ne p1, v2, :cond_5

    const-string/jumbo v2, "DIALOG_PHONE_STATE_NOT_IDLE CASE"

    invoke-direct {p0, v2, v5}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    const v2, 0x7f0d06af

    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0, v7}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    :goto_2
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/NetworkSetting;->mFailDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mFailDialog:Landroid/app/AlertDialog;

    return-object v2

    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DIALOG_NETWORK_SELECTION Message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mNetworkSelectMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkSelectMsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_1

    :sswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DIALOG_NETWORK_AUTO_SELECT Message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d03b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto/16 :goto_1

    :sswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DIALOG_NETWORK_AUTO_SELECT_AFTER_FAIL Message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d06bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d06bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto/16 :goto_1

    :sswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DIALOG_NETWORK_SEARCH_FEMTO_CELL Message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d06ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d06ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto/16 :goto_1

    :sswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DIALOG_NETWORK_LIST_LOAD Message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x2bc

    if-eq p1, v2, :cond_2

    if-eq p1, v8, :cond_2

    const/4 v2, 0x0

    return-object v2

    :cond_5
    const-string/jumbo v2, "DATA_CONNECTED CASE"

    invoke-direct {p0, v2, v5}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    if-ne p1, v8, :cond_7

    const-string/jumbo v2, "network_manual_selection_when_bootup"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7f0d0450

    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_3
    const v2, 0x7f0d0451

    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v2, 0x258

    if-ne p1, v2, :cond_9

    invoke-virtual {p0, v7}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mDisconnectSearchDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    :cond_6
    const v2, 0x7f0d0450

    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->mAlertDialogListenerNegative:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    :cond_7
    const-string/jumbo v2, "network_manual_selection_when_bootup"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const v2, 0x7f0d06ba

    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    :cond_8
    const v2, 0x7f0d06ba

    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->mAlertDialogListenerNegative:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    :cond_9
    const/16 v2, 0x2bc

    if-ne p1, v2, :cond_a

    invoke-virtual {p0, v7}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mDisconnectAutoSelectDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    :cond_a
    if-ne p1, v8, :cond_3

    invoke-virtual {p0, v7}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mDisconnectSelectListDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_4
        0x12c -> :sswitch_1
        0x190 -> :sswitch_2
        0x384 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 8

    const/16 v7, 0x1f4

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string/jumbo v2, "onDestroy"

    invoke-direct {p0, v2, v5}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->stopLoadNetworksList()V

    const-string/jumbo v2, "network_setting_tmo"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->backToAutoMode()V

    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mUnavailable:Z

    if-nez v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSetting;->stopService(Landroid/content/Intent;)Z

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-string/jumbo v2, "network_manual_selection_when_bootup"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v6, p0, Lcom/android/phone/NetworkSetting;->mBootUpExtra:Z

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    const-string/jumbo v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "hide_popup_progress_view"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    if-nez v2, :cond_4

    sput-boolean v5, Lcom/android/phone/MobileNetworkSettingsTab;->mNetworkSettingStatus1:Z

    :cond_3
    :goto_1
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :try_start_1
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->removePhoneStateListeners()V

    :goto_3
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->removeAllDialog()V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDestroy(): Receiver not registered:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    if-ne v2, v5, :cond_3

    sput-boolean v5, Lcom/android/phone/MobileNetworkSettingsTab;->mNetworkSettingStatus2:Z

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "failed to removeOnSubscriptionsChangedListener : mOnSubscriptionsChangeListener"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-static {v2, v6}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->finish()V

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    const-string/jumbo v0, "onPause"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUserLeaveHint"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isSupportENSFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mOnPauseTransition:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->unregisterContentObservers()V

    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->unregisterIntentReceivers()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const v1, 0x7f0d02f3

    const/16 v4, 0x1f4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-object p2, p0, Lcom/android/phone/NetworkSetting;->mTempPreference:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "use the switchbutton onPreferenceChange"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/android/phone/ProgressButtonPreference;

    if-ne p2, v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d02f6

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "network_setting_tmo"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mSearchNow:Z

    :cond_1
    const-string/jumbo v0, "feature_zvv"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mAutoManualSelected:Ljava/lang/String;

    iget v0, p0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    iput v0, p0, Lcom/android/phone/NetworkSetting;->mActivePhoneSelected:I

    :cond_2
    sget-object v0, Lcom/android/phone/NetworkSetting$userSelectionType;->SEARCH:Lcom/android/phone/NetworkSetting$userSelectionType;

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->checkDataConnection(Lcom/android/phone/NetworkSetting$userSelectionType;)V

    :cond_3
    :goto_0
    const-string/jumbo v0, "network_manual_selection_when_bootup"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    return v2

    :cond_5
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/android/phone/ProgressButtonPreference;

    if-ne p2, v0, :cond_7

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d02f7

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "feature_zvv"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mAutoManualSelected:Ljava/lang/String;

    iget v0, p0, Lcom/android/phone/NetworkSetting;->mActivePhone:I

    iput v0, p0, Lcom/android/phone/NetworkSetting;->mActivePhoneSelected:I

    :cond_6
    sget-object v0, Lcom/android/phone/NetworkSetting$userSelectionType;->AUTOSELECT:Lcom/android/phone/NetworkSetting$userSelectionType;

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->checkDataConnection(Lcom/android/phone/NetworkSetting$userSelectionType;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Lcom/android/phone/ProgressButtonListPreference;

    if-ne p2, v0, :cond_8

    const-string/jumbo v0, "network_setting_tmo"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mSearchNow:Z

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchFemto:Landroid/preference/Preference;

    if-ne p2, v0, :cond_a

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getOCSGLAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/phone/NetworkSetting$userSelectionType;->FEMTO_SEARCH:Lcom/android/phone/NetworkSetting$userSelectionType;

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->checkDataConnection(Lcom/android/phone/NetworkSetting$userSelectionType;)V

    goto :goto_0

    :cond_9
    const-string/jumbo v0, "mSearchFemto.. !getOCSGLAvailable()... fail"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    const v1, 0x7f0d06ad

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/android/phone/NetworkSetting$userSelectionType;->SELECTLIST:Lcom/android/phone/NetworkSetting$userSelectionType;

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->checkDataConnection(Lcom/android/phone/NetworkSetting$userSelectionType;)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPrepareDialog id :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " // dialog : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2

    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setPreferenceEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x12c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x190

    if-eq p1, v0, :cond_0

    const/16 v0, 0x384

    if-ne p1, v0, :cond_1

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const v0, 0x7f0d02f3

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    const-string/jumbo v0, "onResume"

    invoke-direct {p0, v0, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    iput-boolean v4, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    const-string/jumbo v0, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isGlobalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->finish()V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isSupportENSFeature()Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mOnPauseTransition:Z

    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mOnBroadcastRecieve:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mOnBroadcastRecieve:Z

    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->checkCspPlmn()V

    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume - Menu is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "0"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResume - setToAutomaticMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " defaultSetupLp setting to Automatic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Lcom/android/phone/ProgressButtonListPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDefaultSetup:Lcom/android/phone/ProgressButtonListPreference;

    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    invoke-virtual {v0, v1}, Lcom/android/phone/ProgressButtonListPreference;->setEnabled(Z)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->clearList()V

    const-string/jumbo v0, "support_ens_network_setting_for_mvno"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isAttMvnoSim()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/android/phone/ProgressButtonPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/android/phone/ProgressButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/phone/ProgressButtonPreference;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/android/phone/ProgressButtonPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/android/phone/ProgressButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/phone/ProgressButtonPreference;->setEnabled(Z)V

    :cond_5
    const-string/jumbo v0, "enabled"

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mContResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "FAKE_PLMN_MODE"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v4, p0, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    :cond_6
    const-string/jumbo v0, "use_switch_preference_network_search"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->updateSearchSwitchButton()V

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mProgressbarSearchNetwork:Landroid/preference/Preference;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mProgressbarSearchNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->onResumeMultiSim()V

    const-string/jumbo v0, "use_radio_preference_network_search"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NetworkSetting;->updateRadioButton(Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;)V

    :cond_9
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->registerContentObservers()V

    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->registerIntentReceivers()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    const-string/jumbo v0, "onStop"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public updatePhoneStateListeners()V
    .locals 7

    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mPhoneStateListeners:Ljava/util/Map;

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

    invoke-direct {p0, v4, v3}, Lcom/android/phone/NetworkSetting;->containsSubId(Ljava/util/List;I)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mPhoneStateListeners:Ljava/util/Map;

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

    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v2, Lcom/android/phone/NetworkSetting$NetworkModePhoneStateListener;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/NetworkSetting$NetworkModePhoneStateListener;-><init>(Lcom/android/phone/NetworkSetting;I)V

    const/16 v5, 0x60

    invoke-static {v2, v5}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method
