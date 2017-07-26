.class public Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;
.super Landroid/preference/PreferenceActivity;
.source "NetworkOperatorsLGT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$10;,
        Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;,
        Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$2;,
        Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$3;,
        Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$4;,
        Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$5;,
        Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$6;,
        Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$7;,
        Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$8;,
        Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$9;,
        Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$ProgressThread;
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
.field private cOperatorInfo:Landroid/preference/Preference;

.field private isHelpMenuSelected:Z

.field private isNetworkList:Z

.field private mActionType:I

.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mAutoSelect:Landroid/preference/CheckBoxPreference;

.field private final mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

.field private mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

.field protected mDataDependencyMet:Z

.field mDialog:Landroid/app/ProgressDialog;

.field private mDisconnectAutoSelectDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDisconnectSearchDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDisconnectSelectListDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mFailDialog:Landroid/app/AlertDialog;

.field private final mHandler:Landroid/os/Handler;

.field protected mIsForeground:Z

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

.field private mNotupdateSelectionState:Z

.field private mProgressbarSearchNetwork:Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

.field private mRefreshMenu:Landroid/view/MenuItem;

.field private mRoamingNetworkLists:Landroid/preference/PreferenceCategory;

.field private mSearchButton:Landroid/preference/CheckBoxPreference;

.field private mSearchPLMNDmin:I

.field private mSearchSwitchButton:Landroid/preference/SwitchPreference;

.field private mTempPreference:Landroid/preference/Preference;

.field private mTimeToEnableData:Z

.field final pHandler:Landroid/os/Handler;

.field progressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$ProgressThread;

.field private sendStopNetworkQuery:Z


# direct methods
.method static synthetic -get0(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mActionType:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNotupdateSelectionState:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mProgressbarSearchNetwork:Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchButton:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchPLMNDmin:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get8()J
    .locals 2

    sget-wide v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mStartTimeoutTime:J

    return-wide v0
.end method

.method static synthetic -get9(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mTempPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->isNetworkList:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mActionType:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mTempPreference:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;J)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->checkDataConnectionSearchButton()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->selectNetworkAutomatic(I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->setSearchListMenuState(I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->updateDataState()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->displayNetworkQueryTimeOut()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;Ljava/lang/Throwable;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->displayNetworkSelectionFailed(Ljava/lang/Throwable;I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->displayNetworkSelectionSucceeded()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->loadNetworksList()V

    return-void
.end method

.method static synthetic -wrap7(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->networksListLoaded(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->selectList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mStartTimeoutTime:J

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$10;

    invoke-direct {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$10;-><init>()V

    sput-object v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->RAT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNotupdateSelectionState:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchPLMNDmin:I

    iput-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mTempPreference:Landroid/preference/Preference;

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->sendStopNetworkQuery:Z

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->isNetworkList:Z

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->isHelpMenuSelected:Z

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$2;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    iput-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$3;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$3;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$4;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$4;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$5;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$5;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$6;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$6;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mDisconnectSearchDialogListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$7;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$7;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mDisconnectAutoSelectDialogListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$8;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$8;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mDisconnectSelectListDialogListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$9;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$9;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->pHandler:Landroid/os/Handler;

    return-void
.end method

.method private checkDataConnectionAutoSelect()V
    .locals 5

    const-string/jumbo v1, "NetworkOperators_Lgt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Check data call...: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getMobileDataEnabled()Z

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

    const v2, 0x7f0d06b9

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d06af

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    const v3, 0x1040013

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mFailDialog:Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    const/16 v4, 0x7d6

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private checkDataConnectionSearchButton()V
    .locals 6

    const-string/jumbo v1, "NetworkOperators_Lgt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Check data call...: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getMobileDataEnabled()Z

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

    const v2, 0x7f0d06b9

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d06af

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    const v3, 0x1040013

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mFailDialog:Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "NetworkOperators_Lgt"

    const-string/jumbo v2, "Show the Progressbar Preference."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x2bf20

    add-long/2addr v2, v4

    sput-wide v2, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mStartTimeoutTime:J

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    const/16 v4, 0x7d5

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "NetworkOperators_Lgt"

    const-string/jumbo v2, "DIALOG_NETWORK_LIST_LOAD"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->showDialog(I)V

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->loadNetworksList()V

    goto :goto_0
.end method

.method private checkDataConnectionSelectList()V
    .locals 6

    const v5, 0x7f0d06b9

    const v4, 0x1040013

    const-string/jumbo v1, "NetworkOperators_Lgt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Check data call...: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getMobileDataEnabled()Z

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

    const v2, 0x7f0d06af

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mFailDialog:Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getMobileDataEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_1
    const-string/jumbo v1, "NetworkOperators_Lgt"

    const-string/jumbo v2, "Data is still not disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0450

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mDisconnectSelectListDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    const v3, 0x1040009

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mFailDialog:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->selectList()V

    goto :goto_0
.end method

.method private convertOperatorRat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v2, "LTE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo p1, "L"

    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object p1

    :cond_0
    const-string/jumbo v2, "UMTS"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo p1, "W"

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "GERAN"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo p1, "G"

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "?"

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->RAT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    aget-object p1, v1, v2

    const/4 v0, 0x1

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_4

    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method private convertOperatorState(Lcom/android/internal/telephony/OperatorInfo;Landroid/preference/Preference;)Ljava/lang/String;
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

    sget-object v3, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/OperatorInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v2, "O"

    const v3, 0x7f0d03b7

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setSummary(I)V

    :cond_2
    :goto_0
    return-object v2

    :cond_3
    sget-object v3, Lcom/android/internal/telephony/OperatorInfo$State;->AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/OperatorInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v2, "O"

    goto :goto_0
.end method

.method private displayEmptyNetworkList(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNetworkList:Landroid/preference/PreferenceGroup;

    if-eqz p1, :cond_0

    const v0, 0x7f0d03a6

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    return-void

    :cond_0
    const v0, 0x7f0d03a3

    goto :goto_0
.end method

.method private displayNetworkQueryFailed(I)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "NetworkOperators_Lgt"

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

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d03aa

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$11;

    invoke-direct {v1, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$11;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private displayNetworkQueryTimeOut()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->removeDialog(I)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNotupdateSelectionState:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isAutoSelectNetworkSetting()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "NetworkOperators_Lgt"

    const-string/jumbo v2, "Return to auto"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mDataDependencyMet:Z

    if-nez v1, :cond_1

    const-string/jumbo v1, "NetworkOperators_Lgt"

    const-string/jumbo v2, "Re-enabling data dependency..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->setMobileDataEnabled(Z)V

    :cond_1
    const/16 v1, 0x44c

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->showDialog(I)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    const-string/jumbo v1, "NetworkOperators_Lgt"

    const-string/jumbo v2, "Return to manual"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private displayNetworkSelectionFailed(Ljava/lang/Throwable;I)V
    .locals 7

    const v6, 0x7f0d0735

    const/4 v5, 0x1

    const-string/jumbo v3, "displayNetworkSelectionFailed !!"

    invoke-static {v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mTempPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_4

    if-ne p2, v5, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mTempPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mTempPreference:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isKtSim()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "(O)"

    const-string/jumbo v4, "(X)"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mTempPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mTempPreference:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " preference.getTitle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mTempPreference:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " preference.isEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mTempPreference:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->makeToastWithCenterArrangedText(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mDataDependencyMet:Z

    if-nez v3, :cond_2

    const-string/jumbo v3, "NetworkOperators_Lgt"

    const-string/jumbo v4, "Re-enabling data dependency..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->setMobileDataEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0737

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_4
    if-eqz p1, :cond_5

    instance-of v3, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_5

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private displayNetworkSelectionSucceeded()V
    .locals 10

    const v9, 0x7f0d0cf2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string/jumbo v4, "Successfully registered on a network."

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mTempPreference:Landroid/preference/Preference;

    if-eqz v4, :cond_1

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mTempPreference:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/OperatorInfo;

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v8

    invoke-virtual {v5, v9, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$12;

    invoke-direct {v5, p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$12;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V

    const-wide/16 v6, 0x5dc

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-virtual {v5, v9, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private displayNetworkSeletionInProgress(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mIsForeground:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "showDialog___DIALOG_NETWORK_SELECTION"

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->showDialog(I)V

    :cond_0
    return-void
.end method

.method private getMobileDataEnabled()Z
    .locals 2

    const-string/jumbo v0, "NetworkOperators_Lgt"

    const-string/jumbo v1, "getMobileDataEnabled: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method private getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isKtSim()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getResources()Landroid/content/res/Resources;

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
    const-string/jumbo v3, "NetworkOperators_Lgt"

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

.method private loadNetworksList()V
    .locals 3

    const-string/jumbo v1, "Load networks list..."

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNotupdateSelectionState:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->displayEmptyNetworkList(Z)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NetworkOperators_Lgt"

    const-string/jumbo v2, "Could not delegate query request to the service."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "NetworkOperators_Lgt"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private makeToastWithCenterArrangedText(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private networksListLoaded(Ljava/util/List;I)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;I)V"
        }
    .end annotation

    const-string/jumbo v13, "Networks list loaded, hide progress panel"

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    if-eqz v13, :cond_2

    const/16 v13, 0xc8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->removeDialog(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mHandler:Landroid/os/Handler;

    const/16 v14, 0x7d3

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->progressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$ProgressThread;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->progressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$ProgressThread;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$ProgressThread;->setState(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v13, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v13, v14}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->searchCompletedNetworkOperator()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->isNetworkList:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->isHelpMenuSelected:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->invalidateOptionsMenu()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz p2, :cond_3

    const-string/jumbo v13, "Error while querying available networks"

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->displayNetworkQueryFailed(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->displayEmptyNetworkList(Z)V

    return-void

    :cond_2
    const/16 v13, 0xc8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->removeDialog(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mHandler:Landroid/os/Handler;

    const/16 v14, 0x7d3

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    :cond_3
    if-nez p1, :cond_4

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->displayEmptyNetworkList(Z)V

    return-void

    :cond_4
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->displayEmptyNetworkList(Z)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    invoke-direct {v5, v13}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "result: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/OperatorInfo;

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v11, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->convertOperatorRat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->convertOperatorRat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "filtered: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/OperatorInfo;

    new-instance v2, Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/preference/Preference;->setPersistent(Z)V

    const-string/jumbo v12, ""

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isKtSim()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v14, v16

    const/4 v15, 0x0

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2

    aput-object v15, v14, v16

    const/4 v15, 0x3

    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x3

    aput-object v15, v14, v16

    const-string/jumbo v15, "("

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->convertOperatorState(Lcom/android/internal/telephony/OperatorInfo;Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x4

    aput-object v15, v14, v16

    const v15, 0x7f0d0cf9

    invoke-virtual {v13, v15, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    :goto_3
    const v13, 0x7f070043

    invoke-virtual {v2, v13}, Landroid/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {v2, v12}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mRoamingNetworkLists:Landroid/preference/PreferenceCategory;

    invoke-virtual {v13, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v13, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_7
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isLgtSim()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string/jumbo v14, "G"

    const-string/jumbo v15, "2G"

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v13, "W"

    const-string/jumbo v14, "3G"

    invoke-virtual {v6, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v13, "L"

    const-string/jumbo v14, "LTE"

    invoke-virtual {v6, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->convertOperatorState(Lcom/android/internal/telephony/OperatorInfo;Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const-string/jumbo v15, "["

    invoke-virtual {v15, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v14, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2

    aput-object v15, v14, v16

    const-string/jumbo v15, "["

    const/16 v16, 0x0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x3

    aput-object v15, v14, v16

    const/4 v15, 0x3

    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x4

    aput-object v15, v14, v16

    const v15, 0x7f0d0cf9

    invoke-virtual {v13, v15, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v13, 0x5

    new-array v15, v13, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->convertOperatorState(Lcom/android/internal/telephony/OperatorInfo;Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x0

    aput-object v13, v15, v16

    const-string/jumbo v16, "["

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v16, "]"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x1

    aput-object v13, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x2

    aput-object v13, v15, v16

    const-string/jumbo v13, "["

    const/16 v16, 0x0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x3

    aput-object v13, v15, v16

    const/4 v13, 0x3

    invoke-virtual {v7, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v16, "]"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x4

    aput-object v13, v15, v16

    const v13, 0x7f0d0cf9

    invoke-virtual {v14, v13, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mRoamingNetworkLists:Landroid/preference/PreferenceCategory;

    invoke-virtual {v13}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v10

    const/4 v13, 0x1

    if-ge v10, v13, :cond_a

    const-string/jumbo v13, "Network list preference is empty!"

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->displayNetworkQueryFailed(I)V

    :cond_a
    return-void
.end method

.method private searchCompletedNetworkOperator()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mRoamingNetworkLists:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mRoamingNetworkLists:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->removeAll()V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mRoamingNetworkLists:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mProgressbarSearchNetwork:Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mProgressbarSearchNetwork:Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    return-void
.end method

.method private selectList()V
    .locals 12

    const/16 v11, 0xc8

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    iget-object v6, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mTempPreference:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mTempPreference:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/OperatorInfo;

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ss.getIsManualSelection()? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ss.getOperatorNumeric() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ss.getRadioTechnology() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ni.getOperatorRat(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isManualSelection()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const-string/jumbo v6, "Not same plmn --> Do selecting"

    invoke-static {v6}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    const-string/jumbo v6, "ril.network_manual_set.rat"

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v6, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_9

    const-string/jumbo v6, "mNetworkMap.get(selectedCarrier) is null"

    invoke-static {v6}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v6

    if-eq v6, v10, :cond_3

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v6

    const/16 v7, 0xe

    if-ne v6, v7, :cond_4

    :cond_3
    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "LTE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "WCDMA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_4
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v6

    if-eq v6, v8, :cond_5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v6

    if-ne v6, v9, :cond_1

    :cond_5
    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "GERAN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_6
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string/jumbo v6, "same plmn --> Do nothing"

    invoke-static {v6}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->displayNetworkSelectionSucceeded()V

    :try_start_0
    const-string/jumbo v6, "dismissDialog___EVENT_NETWORK_SELECTION_DONE"

    invoke-static {v6}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    const/16 v6, 0x64

    invoke-virtual {p0, v6}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->dismissDialog(I)V

    const/16 v6, 0x64

    invoke-virtual {p0, v6}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_7
    const-string/jumbo v6, "Manul selection and not same plmn --> Do selecting"

    invoke-static {v6}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    const-string/jumbo v6, "ril.network_manual_set.rat"

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v6, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_8

    const-string/jumbo v6, "mNetworkMap.get(selectedCarrier) is null"

    invoke-static {v6}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    iget-object v6, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/OperatorInfo;

    invoke-static {v6, v8, v1}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V

    goto :goto_2

    :cond_9
    iget-object v6, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/OperatorInfo;

    invoke-static {v6, v8, v1}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V

    goto/16 :goto_0
.end method

.method private selectNetworkAutomatic(I)V
    .locals 5

    const-string/jumbo v2, "Select network automatically..."

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    :try_start_0
    iget-boolean v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mIsForeground:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x12c

    invoke-virtual {p0, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->showDialog(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mHandler:Landroid/os/Handler;

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

    const-string/jumbo v2, "NetworkOperators_Lgt"

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

.method private setMobileDataEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mDataDependencyMet:Z

    invoke-static {p1}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setInternalMobileDataEnabled(Z)V

    return-void
.end method

.method private setSearchListMenuState(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/16 v1, 0x1388

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mRoamingNetworkLists:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mRoamingNetworkLists:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mProgressbarSearchNetwork:Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mProgressbarSearchNetwork:Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/16 v1, 0x138a

    if-ne p1, v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mRoamingNetworkLists:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mRoamingNetworkLists:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mProgressbarSearchNetwork:Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mProgressbarSearchNetwork:Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_6
    const/16 v1, 0x1389

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mProgressbarSearchNetwork:Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mProgressbarSearchNetwork:Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private final updateDataState()V
    .locals 6

    const-wide/16 v4, 0x7d0

    const/4 v3, 0x0

    const-string/jumbo v1, "Update data state"

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getDataState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v1, "NetworkOperators_Lgt"

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
    const-string/jumbo v1, "NetworkOperators_Lgt"

    const-string/jumbo v2, "Current data state: disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mActionType:I

    const/16 v2, -0x2711

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "NetworkOperators_Lgt"

    const-string/jumbo v2, "Searching..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mActionType:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mActionType:I

    const/16 v2, -0x2712

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d1

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mActionType:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mActionType:I

    const/16 v2, -0x2713

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput v3, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mActionType:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    const-string/jumbo v1, "onCancel"

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mFailDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->finish()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->sendStopNetworkQuery:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNotupdateSelectionState:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->finish()V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v7, "onCreate"

    invoke-static {v7}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    const v7, 0x7f07001d

    invoke-virtual {p0, v7}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->addPreferencesFromResource(I)V

    const-string/jumbo v7, "list_networks_key"

    invoke-virtual {p0, v7}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceGroup;

    iput-object v7, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNetworkList:Landroid/preference/PreferenceGroup;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNetworkMap:Ljava/util/HashMap;

    const-string/jumbo v7, "gsm.sim.roaming"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v7, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_0
    move v7, v8

    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "efRoaming = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, ", isSetEfRoaming = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {v0, v11}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_1
    const-string/jumbo v7, "button_srch_netwrks_key"

    invoke-virtual {p0, v7}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchButton:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v7, "button_auto_select_key"

    invoke-virtual {p0, v7}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v7, "current_operator_info_lgt"

    invoke-virtual {p0, v7}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->cOperatorInfo:Landroid/preference/Preference;

    const-string/jumbo v7, "switch_button_auto_select_key"

    invoke-virtual {p0, v7}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    const-string/jumbo v7, "roaming_network_select_list"

    invoke-virtual {p0, v7}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mRoamingNetworkLists:Landroid/preference/PreferenceCategory;

    const-string/jumbo v7, "progressbar_search_network_category"

    invoke-virtual {p0, v7}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    const-string/jumbo v7, "progressbar_search_network_info"

    invoke-virtual {p0, v7}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    iput-object v7, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mProgressbarSearchNetwork:Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v7, "NetworkOperators_Lgt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SETTING_AUTO_SELECT_NETWORK : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isAutoSelectNetworkSetting()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isAutoSelectNetworkSetting()Z

    move-result v10

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2
    const-string/jumbo v7, "roaming_manual_setting"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mRoamingNetworkLists:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mProgressbarSearchNetwork:Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    new-instance v7, Landroid/content/Intent;

    const-class v10, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v7, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v7}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v7, Landroid/content/Intent;

    const-class v10, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v7, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v10, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v7, v10, v9}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isRegisteredOnNetwork()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v12, :cond_3

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Operator: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " [ "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " ]"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->cOperatorInfo:Landroid/preference/Preference;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    return-void

    :cond_4
    move v7, v9

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const v6, 0x7f0d0cf0

    const v5, 0x1040013

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreateDialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    const/16 v2, 0x64

    if-eq p1, v2, :cond_0

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_1

    :cond_0
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    sparse-switch p1, :sswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mDialog:Landroid/app/ProgressDialog;

    return-object v0

    :cond_1
    const/16 v2, 0x12c

    if-eq p1, v2, :cond_0

    const/16 v2, 0x190

    if-eq p1, v2, :cond_0

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0cdf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :sswitch_0
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v6}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v6}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mDialog:Landroid/app/ProgressDialog;

    const v3, 0x7f0d0cdd

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mDialog:Landroid/app/ProgressDialog;

    const v3, 0x7f0d0cef

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x2bf20

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mStartTimeoutTime:J

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    const/16 v0, 0x2bc

    if-ne p1, v0, :cond_4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0ce0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_4
    const/16 v0, 0x44c

    if-ne p1, v0, :cond_5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0ced

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0cee

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_5
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_3
        0x12c -> :sswitch_1
        0x190 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x3

    const v1, 0x7f0d0cdc

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mRefreshMenu:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mRefreshMenu:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mRefreshMenu:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    const-string/jumbo v1, "onDestroy"

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The last known met: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mDataDependencyMet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mDataDependencyMet:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "NetworkOperators_Lgt"

    const-string/jumbo v2, "Re-enabling data dependency..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->setMobileDataEnabled(Z)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Service not registered"

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mTimeToEnableData:Z

    const-string/jumbo v0, "onKeyDown"

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :sswitch_0
    iput-boolean v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->isHelpMenuSelected:Z

    const-string/jumbo v1, "com.samsung.android.phone"

    const-string/jumbo v2, "com.samsung.android.phone.RoamingNetworkSelectHelp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->startActivity(Landroid/content/Intent;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :sswitch_1
    iput-boolean v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->isHelpMenuSelected:Z

    const-string/jumbo v1, "com.samsung.android.phone"

    const-string/jumbo v2, "com.samsung.android.phone.RoamingNetworkListHelp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->setMobileDataEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->progressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$ProgressThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->progressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$ProgressThread;

    invoke-virtual {v1, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$ProgressThread;->setState(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->checkDataConnectionSearchButton()V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "Show network selection mDialog"

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    const/16 v4, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->showDialog(I)V

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->checkDataConnectionSearchButton()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->finish()V

    return v2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x102002c -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    const-string/jumbo v1, "onPause"

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mIsForeground:Z

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isFinishing()? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; time to enable data? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mTimeToEnableData:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mTimeToEnableData:Z

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v1, "NetworkOperators_Lgt"

    const-string/jumbo v2, "Re-enabling data dependency..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->setMobileDataEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v1, :cond_2

    :try_start_0
    iget-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->sendStopNetworkQuery:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mNotupdateSelectionState:Z

    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->removeDialog(I)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->progressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$ProgressThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->progressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$ProgressThread;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$ProgressThread;->setState(I)V

    :cond_1
    const/16 v1, 0x1389

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->setSearchListMenuState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10

    const-wide/16 v8, 0x0

    const v6, 0x7f0d02f3

    const/16 v5, 0x1f4

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreferenceChange(). preferenece: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", value: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2bc

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->showDialog(I)V

    return v4

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v6}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d02f7

    invoke-virtual {p0, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreferenceChange, SETTING_AUTO_SELECT_NETWORK : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isAutoSelectNetworkSetting()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isAutoSelectNetworkSetting()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "SELECT_AUTOMATIC but network mode is still Automatic, so it will finish()"

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->finish()V

    :cond_1
    :goto_0
    return v4

    :cond_2
    invoke-direct {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->setMobileDataEnabled(Z)V

    invoke-direct {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->selectNetworkAutomatic(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d02f6

    invoke-virtual {p0, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->checkDisableNetworkSelection()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->showDialog(I)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return v4

    :cond_4
    invoke-direct {p0, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->setMobileDataEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->checkDataConnectionSearchButton()V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/16 v5, 0x1f4

    const/4 v2, 0x0

    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPreferenceTreeClick "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "use the switchbutton onPreferenceChange"

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    return v4

    :cond_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-static {p0}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x2bc

    invoke-virtual {p0, v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->showDialog(I)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isAutoSelectNetworkSetting()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "NetworkOperators_Lgt"

    const-string/jumbo v1, "Return to auto"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_0
    return v4

    :cond_2
    const-string/jumbo v0, "NetworkOperators_Lgt"

    const-string/jumbo v1, "Return to manual"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Network registry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ril.skt.network_regist"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->checkDisableNetworkSelection()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->showDialog(I)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return v4

    :cond_4
    const-string/jumbo v0, "Show network selection mDialog"

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->setMobileDataEnabled(Z)V

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->showDialog(I)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mTempPreference:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->checkDataConnectionAutoSelect()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->cOperatorInfo:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_7
    iput-object p2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mTempPreference:Landroid/preference/Preference;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Selected network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mTempPreference:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->checkDataConnectionSelectList()V

    goto :goto_1
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

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x12c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x190

    if-ne p1, v0, :cond_1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mRefreshMenu:Landroid/view/MenuItem;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "893 isNetworkList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->isNetworkList:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->isNetworkList:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isAutoSelectNetworkSetting()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mRefreshMenu:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isRoamingArea(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isLgtSim()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mRefreshMenu:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const v1, 0x7f0d02f3

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    const-string/jumbo v1, "onResume"

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mIsForeground:Z

    iput-boolean v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mTimeToEnableData:Z

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0ce0

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->finish()V

    :cond_0
    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v1, v5, v2}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getDataState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-ne v0, v5, :cond_2

    :cond_1
    const-string/jumbo v1, "NetworkOperators_Lgt"

    const-string/jumbo v2, "Data connected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mActionType:I

    :cond_2
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isLgtSim()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->setMobileDataEnabled(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->setMobileDataEnabled(Z)V

    const-string/jumbo v1, "mDialog.isShowing()"

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v1, "NetworkOperators_Lgt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MobileNetworkUtils.isRoamingArea(getApplicationContext())"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isRoamingArea(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isRoamingArea(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isLgtSim()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "NetworkOperators_Lgt"

    const-string/jumbo v2, "set disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :goto_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    const/16 v4, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchSwitchButton:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mSearchButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onUserLeaveHint()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->isHelpMenuSelected:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mTimeToEnableData:Z

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onUserLeaveHint()V

    const-string/jumbo v0, "onUserLeaveHint"

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->log(Ljava/lang/String;)V

    return-void
.end method
