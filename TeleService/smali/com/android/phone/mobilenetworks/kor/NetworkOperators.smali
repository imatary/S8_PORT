.class public Lcom/android/phone/mobilenetworks/kor/NetworkOperators;
.super Landroid/preference/PreferenceActivity;
.source "NetworkOperators.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/mobilenetworks/kor/NetworkOperators$10;,
        Lcom/android/phone/mobilenetworks/kor/NetworkOperators$1;,
        Lcom/android/phone/mobilenetworks/kor/NetworkOperators$2;,
        Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;,
        Lcom/android/phone/mobilenetworks/kor/NetworkOperators$4;,
        Lcom/android/phone/mobilenetworks/kor/NetworkOperators$5;,
        Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;,
        Lcom/android/phone/mobilenetworks/kor/NetworkOperators$7;,
        Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;,
        Lcom/android/phone/mobilenetworks/kor/NetworkOperators$9;,
        Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;
    }
.end annotation


# static fields
.field private static final RAT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mStartTimeoutTime:J


# instance fields
.field private isHelpMenuSelected:Z

.field private mActionType:I

.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

.field private final mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

.field private mCategoryRoamingSelect:Landroid/preference/PreferenceCategory;

.field private mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

.field private mCurrentOperator:Landroid/preference/PreferenceCategory;

.field private mCurrentOperatorInfo:Landroid/preference/Preference;

.field private mDisconnectSearchDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDisconnectSelectListDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mEfRoaming:Ljava/lang/String;

.field private mFailDialog:Landroid/app/AlertDialog;

.field private mGotoHomeAfterselection:Z

.field private final mHandler:Landroid/os/Handler;

.field protected mIsForeground:Z

.field private mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

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

.field private mNetworkSelectMsg:Ljava/lang/String;

.field private mNotupdateSelectionState:Z

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mProgressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

.field private mProgressbarSearchNetwork:Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

.field private mRoamingNetworkLists:Landroid/preference/PreferenceCategory;

.field private mSearchPLMNDmin:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTempPreference:Landroid/preference/Preference;

.field private mTimeToEnableData:Z

.field final pHandler:Landroid/os/Handler;

.field private sendStopNetworkQuery:Z


# direct methods
.method static synthetic -get0(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mActionType:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressbarSearchNetwork:Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchPLMNDmin:I

    return v0
.end method

.method static synthetic -get12()J
    .locals 2

    sget-wide v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mStartTimeoutTime:J

    return-wide v0
.end method

.method static synthetic -get13(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTempPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCurrentOperator:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mEfRoaming:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mGotoHomeAfterselection:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNotupdateSelectionState:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mActionType:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mGotoHomeAfterselection:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Landroid/telephony/ServiceState;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isManualSelection(Landroid/telephony/ServiceState;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getNetworkSelectMsg()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->networkSelectAuto()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->networksListLoaded(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->readyDestory()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->reboot()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->selectList(Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->selectNetworkAutomatic()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setAutoBandMode(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setEnableAllSelectionButtons(Z)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setEnableScreen(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;J)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap20(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->updateDataState()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->updateRadioButtons(Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->checkDataConnectionSearchButton()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayNetworkQueryTimeOut()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayNetworkSelectionSucceeded()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getSelectedBandMode()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->loadNetworksList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mStartTimeoutTime:J

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$1;

    invoke-direct {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$1;-><init>()V

    sput-object v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->RAT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mEfRoaming:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mGotoHomeAfterselection:Z

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNotupdateSelectionState:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchPLMNDmin:I

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->sendStopNetworkQuery:Z

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isHelpMenuSelected:Z

    iput-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$2;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$2;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$4;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$5;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$5;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$7;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$7;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mDisconnectSearchDialogListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$9;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$9;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mDisconnectSelectListDialogListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$10;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$10;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->pHandler:Landroid/os/Handler;

    return-void
.end method

.method private checkDataConnectionSearchButton()V
    .locals 6

    const v5, 0x7f0d0655

    const v4, 0x1040013

    const-string/jumbo v1, "NetworkOperators"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Check data call...: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getMobileDataEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getDataState()I

    move-result v0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getState()Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

    move-result-object v1

    sget-object v2, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;->IDLE:Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

    if-eq v1, v2, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d064b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mFailDialog:Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getMobileDataEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_1
    const-string/jumbo v1, "NetworkOperators"

    const-string/jumbo v2, "Data is still not disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0656

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mDisconnectSearchDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    const v3, 0x1040009

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mFailDialog:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "NetworkOperators"

    const-string/jumbo v2, "Show the Progressbar Preference."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x1d4c0

    add-long/2addr v2, v4

    sput-wide v2, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mStartTimeoutTime:J

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    const/16 v4, 0x7d5

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    const/16 v4, 0x7d0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "mobile_newtork_style_for_skt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "NetworkOperators"

    const-string/jumbo v2, "PROGRES_DIALOG_NETWORK_LIST_LOAD_ALERT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x258

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->showDialog(I)V

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "NetworkOperators"

    const-string/jumbo v2, "PROGRES_DIALOG_NETWORK_LIST_LOAD"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->showDialog(I)V

    goto :goto_1
.end method

.method private checkDataConnectionSelectList()V
    .locals 8

    const v7, 0x7f0d0655

    const v6, 0x1040013

    const-string/jumbo v3, "NetworkOperators"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Check data call...: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getMobileDataEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getDataState()I

    move-result v2

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getState()Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

    move-result-object v3

    sget-object v4, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;->IDLE:Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

    if-eq v3, v4, :cond_0

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d064b

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mFailDialog:Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getMobileDataEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    :cond_1
    const-string/jumbo v3, "NetworkOperators"

    const-string/jumbo v4, "Data is still not disconnected"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d03f0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mDisconnectSelectListDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    const v5, 0x1040009

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mFailDialog:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTempPreference:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTempPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OperatorInfo;

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->selectList(Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo;)V

    goto :goto_0
.end method

.method private displayEmptyNetworkList(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkList:Landroid/preference/PreferenceGroup;

    if-eqz p1, :cond_0

    const v0, 0x7f0d0346

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    return-void

    :cond_0
    const v0, 0x7f0d0343

    goto :goto_0
.end method

.method private displayNetworkQueryFailed(I)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "NetworkOperators"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Network query failed with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setEnableScreen(Z)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d034a

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$11;

    invoke-direct {v1, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$11;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private displayNetworkQueryTimeOut()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->removeDialog(I)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNotupdateSelectionState:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isAutoSelectNetworkCarrier()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "NetworkOperators"

    const-string/jumbo v2, "Return to auto"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setChecked(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setChecked(Z)V

    :cond_2
    :goto_0
    invoke-direct {p0, v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setEnableScreen(Z)V

    const/16 v1, 0x44c

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->showDialog(I)V

    invoke-direct {p0, v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setEnableAllSelectionButtons(Z)V

    const/16 v1, 0x258

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->removeDialog(I)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    invoke-virtual {v1, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;->setState(I)V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    const-string/jumbo v1, "NetworkOperators"

    const-string/jumbo v2, "Return to manual"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setChecked(Z)V

    :cond_5
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    .locals 8

    const/4 v7, 0x1

    if-eqz p1, :cond_2

    instance-of v3, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_2

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d034c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isDisableNetwork()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTempPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTempPreference:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "feature_ktt"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "(O)"

    const-string/jumbo v4, "(X)"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTempPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTempPreference:Landroid/preference/Preference;

    const-string/jumbo v4, "Forbidden network"

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " preference.getTitle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTempPreference:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "connect_later"

    invoke-virtual {v4, v5, v6}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "O"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mTempSubStr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    const-string/jumbo v3, "O"

    const-string/jumbo v4, "X"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private displayNetworkSelectionSucceeded()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setEnableScreen(Z)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d034f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$12;

    invoke-direct {v1, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$12;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private displayNetworkSeletionInProgress(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const v2, 0x7f0d034b

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkSelectMsg:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIsForeground:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "showDialog___DIALOG_NETWORK_SELECTION"

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->showDialog(I)V

    :cond_0
    return-void
.end method

.method private getNetworkSelectMsg()I
    .locals 1

    const-string/jumbo v0, "mobile_newtork_style_for_lgt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0d0c75

    return v0

    :cond_0
    const v0, 0x7f0d0c74

    return v0
.end method

.method private getSelectedBandMode()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getPreferredNetworkType(Landroid/os/Message;)V

    return-void
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 11

    const-wide/16 v6, 0x3e8

    div-long v4, p1, v6

    const-wide/16 v6, 0x3c

    div-long v0, v4, v6

    const-wide/16 v6, 0x3c

    rem-long/2addr v4, v6

    const-string/jumbo v2, ""

    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    long-to-int v6, v0

    const v7, 0x7f110004

    invoke-virtual {v3, v7, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    long-to-int v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-lez v3, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    long-to-int v7, v4

    const v8, 0x7f110005

    invoke-virtual {v6, v8, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    long-to-int v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string/jumbo v3, "NetworkOperators"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getTimeoutNewEntry : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private inflateActionBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
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

    const-string/jumbo v1, "Load networks list..."

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNotupdateSelectionState:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayEmptyNetworkList(Z)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NetworkOperators"

    const-string/jumbo v2, "Could not delegate query request to the service."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "NetworkOperators"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logginEfRoamingStat()V
    .locals 4

    const/4 v2, 0x0

    const-string/jumbo v3, "gsm.sim.roaming"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "efRoaming = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isSetEfRoaming = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private networkSelectAuto()V
    .locals 3

    const-string/jumbo v1, "NetworkOperators"

    const-string/jumbo v2, "networkSelectAuto"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    return-void
.end method

.method private networksListLoaded(Ljava/util/List;I)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;I)V"
        }
    .end annotation

    const-string/jumbo v17, "Networks list loaded, hide progress panel"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNotupdateSelectionState:Z

    const/16 v17, 0x258

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->removeDialog(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x7d3

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;->setState(I)V

    :cond_0
    const-string/jumbo v17, "NetworkOperators"

    const-string/jumbo v18, "remove NETWORK_SEARCH_TICK"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setEnableAllSelectionButtons(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNotupdateSelectionState:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setEnableScreen(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->searchCompletedNetworkOperator()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->clear()V

    if-eqz p2, :cond_2

    const-string/jumbo v17, "Error while querying available networks"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayNetworkQueryFailed(I)V

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayEmptyNetworkList(Z)V

    return-void

    :catch_0
    move-exception v6

    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    :cond_2
    if-nez p1, :cond_3

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayEmptyNetworkList(Z)V

    return-void

    :cond_3
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayEmptyNetworkList(Z)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "result: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/OperatorInfo;

    invoke-virtual {v10}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v14, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v14, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    sget-object v17, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->RAT_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v17

    invoke-static {v13, v9, v0}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->convertOperatorRat(Ljava/lang/String;Ljava/lang/String;Ljava/util/Comparator;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v14, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v17, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->RAT_COMPARATOR:Ljava/util/Comparator;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v13, v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->convertOperatorRat(Ljava/lang/String;Ljava/lang/String;Ljava/util/Comparator;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "operatorInfoList: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/OperatorInfo;

    new-instance v3, Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setPersistent(Z)V

    invoke-virtual {v10}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v10}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v16, ""

    const-string/jumbo v17, "feature_ktt"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v9, v18, v19

    const/16 v19, 0x1

    aput-object v8, v18, v19

    const/16 v19, 0x0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x2

    aput-object v19, v18, v20

    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x3

    aput-object v19, v18, v20

    const-string/jumbo v19, "("

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->updateOperatorState(Lcom/android/internal/telephony/OperatorInfo;Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x4

    aput-object v19, v18, v20

    const v19, 0x7f0d0c88

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    :goto_2
    const v17, 0x7f070043

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkList:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->updateOperatorState(Lcom/android/internal/telephony/OperatorInfo;Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    const-string/jumbo v19, "["

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    aput-object v19, v18, v20

    const/16 v19, 0x2

    aput-object v8, v18, v19

    const-string/jumbo v19, "["

    const/16 v20, 0x0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x3

    aput-object v19, v18, v20

    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x4

    aput-object v19, v18, v20

    const v19, 0x7f0d0c88

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkList:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v15

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getPreferenceCount : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v15, v0, :cond_8

    const-string/jumbo v17, "Network list preference is empty!"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayNetworkQueryFailed(I)V

    :cond_8
    return-void
.end method

.method private reEnableDataDependency()V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v1, "NetworkOperators"

    const-string/jumbo v2, "Re-enabling data dependency..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setInternalMobileDataEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-nez v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->sendStopNetworkQuery:Z

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNotupdateSelectionState:Z

    const-string/jumbo v1, "mobile_newtork_style_for_skt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x258

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->removeDialog(I)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;->setState(I)V

    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setEnableScreen(Z)V

    :cond_4
    const-string/jumbo v1, "mobile_newtork_style_for_ktt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->removeDialog(I)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setEnableScreen(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readyDestory()V
    .locals 3

    const-string/jumbo v1, "readyDestory"

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setInternalMobileDataEnabled(Z)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Service not registered"

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reboot()V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    const/16 v1, 0x7d4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private searchCompletedNetworkOperator()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mRoamingNetworkLists:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private selectList(Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo;)V
    .locals 10

    const/16 v9, 0xc8

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ss.getIsManualSelection() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ss.getOperatorNumeric() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ss.getRadioTechnology() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ni.getOperatorRat(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isManualSelection(Landroid/telephony/ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string/jumbo v4, "Not same plmn --> Do selecting"

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setNetworkManualSetRat(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {p2, v6, v1}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v4

    if-eq v4, v8, :cond_2

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v4

    const/16 v5, 0xe

    if-ne v4, v5, :cond_3

    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "LTE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "WCDMA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_3
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v4

    if-eq v4, v6, :cond_4

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v4

    if-ne v4, v7, :cond_0

    :cond_4
    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "GERAN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_5
    iput-boolean v6, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mGotoHomeAfterselection:Z

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "same plmn --> Do nothing"

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayNetworkSelectionSucceeded()V

    :try_start_0
    const-string/jumbo v4, "dismissDialog___EVENT_NETWORK_SELECTION_DONE"

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    const/16 v4, 0x64

    invoke-virtual {p0, v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dismissDialog(I)V

    const/16 v4, 0x64

    invoke-virtual {p0, v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_6
    const-string/jumbo v4, "Manul selection and not same plmn --> Do selecting"

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setNetworkManualSetRat(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {p2, v6, v1}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private selectNetworkAutomatic()V
    .locals 5

    const-string/jumbo v2, "Select network automatically..."

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    :try_start_0
    iget-boolean v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIsForeground:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x12c

    invoke-virtual {p0, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->showDialog(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "NetworkOperators"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "...exception in automatic network selection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setAutoBandMode(Landroid/os/AsyncResult;)V
    .locals 7

    const/16 v6, 0x3e9

    const-string/jumbo v3, "NetworkOperators"

    const-string/jumbo v4, "setAutoBandMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    const/4 v4, 0x0

    aget v2, v3, v4

    :cond_0
    const-string/jumbo v3, "support_lte_romaing"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isLteRoamingOn()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "NetworkOperators"

    const-string/jumbo v4, "setAutoBandMode :: PREFERRED_NETWORK_MODE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    :goto_0
    const-string/jumbo v3, "NetworkOperators"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAutoBandMode :: old_preferred_mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " new_preferred_mode ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v1, :cond_3

    invoke-static {v1, v0}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setPreferredNetworkType(ILandroid/os/Message;)V

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v3, "NetworkOperators"

    const-string/jumbo v4, "setAutoBandMode :: NETWORK_MODE_GSM_UMTS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    sget v1, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method private setCurrentOperatorInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x3

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isRegisteredOnNetwork()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Operator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f0d0c65

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCurrentOperatorInfo:Landroid/preference/Preference;

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCurrentOperatorInfo:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setEnableAllSelectionButtons(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-virtual {v0, p1}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-virtual {v0, p1}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private setEnableScreen(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    return-void
.end method

.method private final updateDataState()V
    .locals 6

    const-wide/16 v4, 0x7d0

    const/4 v3, 0x0

    const-string/jumbo v1, "Update data state"

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getDataState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v1, "NetworkOperators"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Current data state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v1, "NetworkOperators"

    const-string/jumbo v2, "Current data state: disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mActionType:I

    const/16 v2, -0x2711

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "NetworkOperators"

    const-string/jumbo v2, "Searching..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mActionType:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mActionType:I

    const/16 v2, -0x2712

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d1

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mActionType:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mActionType:I

    const/16 v2, -0x2713

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mActionType:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private updateOperatorState(Lcom/android/internal/telephony/OperatorInfo;Landroid/preference/Preference;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v2, "X"

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isKtSim()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "45005"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "45006"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "Forbidden network"

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string/jumbo v3, "disabled_pref_key"

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/OperatorInfo$State;->AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/OperatorInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/OperatorInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const-string/jumbo v2, "O"

    const-string/jumbo v3, "Available network"

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-object v2

    :cond_3
    sget-object v3, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/OperatorInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "Forbidden network"

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "Unknown network"

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateRadioButtons(Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_3

    const-string/jumbo v0, "updateRadioButtons : activated preference is null"

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setChecked(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    if-ne p1, v0, :cond_4

    const-string/jumbo v0, "updateRadioButtons : setChecked mAutoSelectRadioButton"

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    const-string/jumbo v0, "updateRadioButtons : setChecked mManualSelectRadioButton"

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mFailDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->finish()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->sendStopNetworkQuery:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNotupdateSelectionState:Z

    const-string/jumbo v1, "mobile_newtork_style_for_skt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;->setState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->finish()V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

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

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f07001e

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->addPreferencesFromResource(I)V

    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string/jumbo v3, "list_networks_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    iput-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkList:Landroid/preference/PreferenceGroup;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "radio_button_auto_select_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    iput-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    const-string/jumbo v3, "radio_button_manual_select_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    iput-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    const-string/jumbo v3, "roaming_network_select_list"

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mRoamingNetworkLists:Landroid/preference/PreferenceCategory;

    const-string/jumbo v3, "progressbar_search_network_category"

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    const-string/jumbo v3, "progressbar_search_network_info"

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    iput-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressbarSearchNetwork:Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    const-string/jumbo v3, "radio_button_roaming_select_category_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCategoryRoamingSelect:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mRoamingNetworkLists:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string/jumbo v3, "current_operator"

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCurrentOperator:Landroid/preference/PreferenceCategory;

    const-string/jumbo v3, "current_operator_info"

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCurrentOperatorInfo:Landroid/preference/Preference;

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setEnableAllSelectionButtons(Z)V

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setCurrentOperatorInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    const/16 v6, 0x1f4

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string/jumbo v3, "config_hide_status_bar"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->logginEfRoamingStat()V

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->inflateActionBar()V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const v6, 0x7f0b0001

    const v5, 0x1040013

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreateDialog: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressDialog:Landroid/app/ProgressDialog;

    const v3, 0x7f0d0345

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :goto_1
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0

    :cond_1
    const/16 v0, 0x12c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x190

    if-eq p1, v0, :cond_0

    const/16 v0, 0x258

    if-eq p1, v0, :cond_0

    const/16 v0, 0x384

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0c6e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkSelectMsg:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressDialog:Landroid/app/ProgressDialog;

    const v3, 0x7f0d0355

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressDialog:Landroid/app/ProgressDialog;

    const v3, 0x7f0d0c6c

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_1

    :sswitch_3
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressDialog:Landroid/app/ProgressDialog;

    const v3, 0x7f0d0c3f

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressPercentFormat(Ljava/text/NumberFormat;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressDialog:Landroid/app/ProgressDialog;

    const/16 v3, 0x4b0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchPLMNDmin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-wide/32 v4, 0x1d4c0

    invoke-direct {p0, v4, v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const v1, 0x7f0d0c63

    invoke-virtual {p0, v1, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x1d4c0

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mStartTimeoutTime:J

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->pHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;->start()V

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :sswitch_4
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressDialog:Landroid/app/ProgressDialog;

    const v3, 0x7f0d0c6d

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto/16 :goto_1

    :cond_3
    move v1, v2

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x2bc

    if-ne p1, v0, :cond_5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0c6f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_5
    const/16 v0, 0x44c

    if-ne p1, v0, :cond_6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0c7c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0c7d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_6
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x12c -> :sswitch_1
        0x190 -> :sswitch_2
        0x258 -> :sswitch_3
        0x384 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 3

    const-string/jumbo v1, "onDestroy"

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setInternalMobileDataEnabled(Z)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Service not registered"

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTimeToEnableData:Z

    const-string/jumbo v0, "onKeyDown"

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x0

    return v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->finish()V

    const/4 v1, 0x1

    return v1

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    const-string/jumbo v0, "onPause"

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIsForeground:Z

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-static {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isFinishing()? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; time to enable data? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTimeToEnableData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTimeToEnableData:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->reEnableDataDependency()V

    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const v3, 0x7f0d0293

    const/16 v5, 0x1f4

    const/4 v4, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreferenceTreeClick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-virtual {p2, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-virtual {p2, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_0
    invoke-static {p0}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x2bc

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->showDialog(I)V

    return v4

    :cond_1
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-virtual {p2, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d0297

    invoke-virtual {p0, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "select AutoSelectRadioButton"

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->updateRadioButtons(Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;)V

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->selectNetworkAutomatic()V

    :goto_0
    return v4

    :cond_2
    const-string/jumbo v1, "selected ManualSelectRadioButton"

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d0296

    invoke-virtual {p0, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkList:Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    :cond_3
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCategoryRoamingSelect:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCategoryRoamingSelect:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_4
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->updateRadioButtons(Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->checkDisableNetworkSelection()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->showDialog(I)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return v4

    :cond_5
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setEnableAllSelectionButtons(Z)V

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->checkDataConnectionSearchButton()V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCurrentOperatorInfo:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    return v4

    :cond_7
    iput-object p2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTempPreference:Landroid/preference/Preference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Selected network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTempPreference:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->checkDataConnectionSelectList()V

    return v4
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPrepareDialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setEnableScreen(Z)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x12c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x190

    if-eq p1, v0, :cond_0

    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const v1, 0x7f0d0293

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIsForeground:Z

    iput-boolean v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTimeToEnableData:Z

    invoke-static {p0}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0c6f

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->finish()V

    :cond_0
    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v1, v3, v2}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x41

    invoke-static {v1, v2}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getDataState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_2

    :cond_1
    const-string/jumbo v1, "NetworkOperators"

    const-string/jumbo v2, "Data connected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mActionType:I

    :cond_2
    invoke-static {v4}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setInternalMobileDataEnabled(Z)V

    return-void
.end method

.method public onUserLeaveHint()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isHelpMenuSelected:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTimeToEnableData:Z

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onUserLeaveHint()V

    const-string/jumbo v0, "onUserLeaveHint"

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V

    return-void
.end method
