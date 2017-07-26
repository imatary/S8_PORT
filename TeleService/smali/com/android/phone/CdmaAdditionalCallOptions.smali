.class public Lcom/android/phone/CdmaAdditionalCallOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "CdmaAdditionalCallOptions.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaAdditionalCallOptions$1;,
        Lcom/android/phone/CdmaAdditionalCallOptions$2;,
        Lcom/android/phone/CdmaAdditionalCallOptions$3;,
        Lcom/android/phone/CdmaAdditionalCallOptions$4;,
        Lcom/android/phone/CdmaAdditionalCallOptions$5;,
        Lcom/android/phone/CdmaAdditionalCallOptions$6;,
        Lcom/android/phone/CdmaAdditionalCallOptions$AppState;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-phone-CdmaAdditionalCallOptions$AppStateSwitchesValues:[I

.field public static DBG:Z

.field public static mSimId:I


# instance fields
.field doActivate:Ljava/lang/Runnable;

.field doDeactivate:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

.field private mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mEnhancedVPHandler:Landroid/os/Handler;

.field private mErrAlertPopup:Landroid/app/AlertDialog;

.field private mFdnSetting:Landroid/preference/PreferenceScreen;

.field private mGetCallWaitingComplete:Landroid/os/Handler;

.field private mMeterialmVoicePrivacy:Landroid/preference/SwitchPreference;

.field private mNetworkServiceHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrevBusyDialog:I

.field private mQueryVoicePrivacyComplete:Landroid/os/Handler;

.field private mSetOptionComplete:Landroid/os/Handler;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private mVoiceCallVisible:Z

.field private mVoicePrivacy:Landroid/preference/CheckBoxPreference;

.field private mWaitPopup:Landroid/app/AlertDialog;


# direct methods
.method static synthetic -get0(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/CdmaAdditionalCallOptions;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/CdmaAdditionalCallOptions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallVisible:Z

    return v0
.end method

.method private static synthetic -getcom-android-phone-CdmaAdditionalCallOptions$AppStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions;->-com-android-phone-CdmaAdditionalCallOptions$AppStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions;->-com-android-phone-CdmaAdditionalCallOptions$AppStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->values()[Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/phone/CdmaAdditionalCallOptions;->-com-android-phone-CdmaAdditionalCallOptions$AppStateSwitchesValues:[I

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

.method static synthetic -wrap0(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/CdmaAdditionalCallOptions;Landroid/os/AsyncResult;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/CdmaAdditionalCallOptions;->handleGetCWMessage(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/phone/CdmaAdditionalCallOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CdmaAdditionalCallOptions;->updateAutoAreaCodeOnOff(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/phone/CdmaAdditionalCallOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CdmaAdditionalCallOptions;->updateSummaryAutoAreaCode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/CdmaAdditionalCallOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->dismissCallWaiting()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/CdmaAdditionalCallOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CdmaAdditionalCallOptions;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/CdmaAdditionalCallOptions;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CdmaAdditionalCallOptions;->handleGetVPResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/CdmaAdditionalCallOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->handleSetCWMessage()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/phone/CdmaAdditionalCallOptions;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CdmaAdditionalCallOptions;->handleSetVPMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap7(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/phone/CdmaAdditionalCallOptions;Lcom/android/phone/CdmaAdditionalCallOptions$AppState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CdmaAdditionalCallOptions;->setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/phone/CdmaAdditionalCallOptions;Lcom/android/phone/CdmaAdditionalCallOptions$AppState;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/CdmaAdditionalCallOptions;->setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    sput v0, Lcom/android/phone/CdmaAdditionalCallOptions;->mSimId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mWaitPopup:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mErrAlertPopup:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$1;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mGetCallWaitingComplete:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$2;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mSetOptionComplete:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$3;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$3;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNetworkServiceHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$4;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$4;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mEnhancedVPHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$5;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$5;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mQueryVoicePrivacyComplete:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$6;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$6;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->handler:Landroid/os/Handler;

    return-void
.end method

.method private GetDefaultNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "*74"

    return-object v0

    :cond_0
    const-string/jumbo v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "*740"

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private checkAdditionalCallMenu()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "voiceprivacy_preference"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private deleteBusyDialog()V
    .locals 2

    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " deleteBusyDialog mPrevBusyDialog:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPrevBusyDialog:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ####"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPrevBusyDialog:I

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->removeDialog(I)V

    return-void
.end method

.method private dismissCallWaiting()V
    .locals 1

    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;)V

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->finish()V

    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private handleGetCWMessage(Landroid/os/AsyncResult;)I
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "handleGetCWMessage: Error getting CW enable state."

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0xc8

    return v1

    :cond_1
    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "handleGetCWMessage: CW enable state successfully queried."

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syncCWState: Setting UI state consistent with CW enable state of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v1, v0, v6

    if-ne v1, v5, :cond_6

    const-string/jumbo v1, "ENABLED"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_3
    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Service Class = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%08X"

    new-array v3, v5, [Ljava/lang/Object;

    aget v4, v0, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_4
    aget v1, v0, v6

    if-ne v1, v5, :cond_5

    aget v1, v0, v5

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    const v1, 0x7f0d0729

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->displayToast(Ljava/lang/String;)V

    :cond_5
    const/16 v1, 0x64

    return v1

    :cond_6
    const-string/jumbo v1, "DISABLED"

    goto :goto_0
.end method

.method private handleGetVPResponse(Landroid/os/Message;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleGetVPResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mMeterialmVoicePrivacy:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mMeterialmVoicePrivacy:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-boolean v2, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "handleGetVPResponse: VP state successfully queried."

    invoke-static {v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_4
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    aget v1, v2, v4

    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_5

    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_7

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_5
    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mMeterialmVoicePrivacy:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mMeterialmVoicePrivacy:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_8

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_6
    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "enhanced_voice_privacy_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "enhanced_voice_privacy_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_7
    move v2, v4

    goto :goto_1

    :cond_8
    move v3, v4

    goto :goto_2
.end method

.method private handleSetCWMessage()V
    .locals 3

    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "handleSetCWMessage"

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mGetCallWaitingComplete:Landroid/os/Handler;

    const/16 v2, 0x190

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    return-void
.end method

.method private handleSetVPMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleSetVPResponse: ar.exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_0
    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "handleSetVPResponse: re get"

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mQueryVoicePrivacyComplete:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "CdmaAdditionalOtions"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onCreateMultiSIM()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v0

    if-ne v0, v2, :cond_3

    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "multisim CG Mode"

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_0
    sput v3, Lcom/android/phone/CdmaAdditionalCallOptions;->mSimId:I

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCreateMultiSIM : mSimId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/phone/CdmaAdditionalCallOptions;->mSimId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_2
    sget v0, Lcom/android/phone/CdmaAdditionalCallOptions;->mSimId:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    :goto_1
    return-void

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "multisim GC Mode"

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_4
    sput v2, Lcom/android/phone/CdmaAdditionalCallOptions;->mSimId:I

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "multisim CC Mode"

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_6
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v0

    if-nez v0, :cond_1

    sput v2, Lcom/android/phone/CdmaAdditionalCallOptions;->mSimId:I

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_1
.end method

.method private setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-ne p1, v0, :cond_1

    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "setAppState: illegal error state without reason."

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;I)V

    return-void
.end method

.method private setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAppState() mAppState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ,requestedState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",msgStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-ne p1, v0, :cond_2

    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "setAppState: requestedState same as current state. ignoring."

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-ne p1, v0, :cond_4

    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAppState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_3
    sparse-switch p2, :sswitch_data_0

    :goto_0
    iput-object p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->deleteBusyDialog()V

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->showDialog(I)V

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->showDialog(I)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->deleteBusyDialog()V

    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->showDialog(I)V

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAppState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/android/phone/CdmaAdditionalCallOptions;->-getcom-android-phone-CdmaAdditionalCallOptions$AppStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_6
    :goto_1
    iput-object p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    return-void

    :pswitch_0
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-eq p1, v0, :cond_6

    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "setAppState: illegal transition from NETWORK_ERROR"

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAppState: displaying busy dialog, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_8
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-ne p1, v0, :cond_9

    const/16 v0, 0x384

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->showDialog(I)V

    goto :goto_1

    :cond_9
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-ne p1, v0, :cond_6

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->showDialog(I)V

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-eq p1, v0, :cond_b

    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "setAppState: illegal transition from INITIAL_QUERY"

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->deleteBusyDialog()V

    goto :goto_1

    :pswitch_3
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-eq p1, v0, :cond_d

    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_c

    const-string/jumbo v0, "setAppState: illegal transition from BUSY_NETWORK_CONNECT"

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->deleteBusyDialog()V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_2
        0x320 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateAutoAreaCodeOnOff(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v0, "area_code_enabled"

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAutoAreaCodeOnOff : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateSummaryAutoAreaCode(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateSummaryAutoAreaCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v4, "%d"

    aput-object v4, v0, v6

    new-array v2, v7, [Ljava/lang/String;

    aput-object p1, v2, v6

    const v4, 0x7f0d0600

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v0, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    const v5, 0x7f0d0601

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto :goto_1
.end method


# virtual methods
.method public handleIAState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleIAState cmd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    const-string/jumbo v3, "CallWaiting"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p2}, Lcom/android/phone/CdmaAdditionalCallOptions;->GetDefaultNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleIAState call waiting - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.CALL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->onCreateMultiSIM()V

    const v4, 0x7f07001f

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "voiceprivacy_preference"

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v4, "meterial_voiceprivacy_preference"

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mMeterialmVoicePrivacy:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->checkAdditionalCallMenu()V

    new-instance v4, Lcom/android/phone/CdmaAdditionalCallOptions$7;

    invoke-direct {v4, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$7;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->doActivate:Ljava/lang/Runnable;

    new-instance v4, Lcom/android/phone/CdmaAdditionalCallOptions$8;

    invoke-direct {v4, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$8;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->doDeactivate:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {v1, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0d0359

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setTitle(I)V

    sget-object v4, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    iput-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mQueryVoicePrivacyComplete:Landroid/os/Handler;

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "enhanced_voice_privacy_enabled"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_b

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mMeterialmVoicePrivacy:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mMeterialmVoicePrivacy:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    :goto_0
    const-string/jumbo v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "button_fdn_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mFdnSetting:Landroid/preference/PreferenceScreen;

    :cond_3
    const-string/jumbo v4, "edittext_areacode_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    new-instance v5, Lcom/android/phone/CdmaAdditionalCallOptions$9;

    invoke-direct {v5, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$9;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    new-instance v5, Lcom/android/phone/CdmaAdditionalCallOptions$10;

    invoke-direct {v5, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$10;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_4
    const-string/jumbo v4, "chn_cdma_setting_on_all_rat"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string/jumbo v4, "cdma call setting on all rat"

    invoke-static {v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    const-string/jumbo v4, "china_cdma_call"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "remove_cdma_call_barring"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    const-string/jumbo v4, "voicecall_barring_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    const-string/jumbo v4, "button_clir_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    const-string/jumbo v4, "edittext_areacode_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-ne v4, v7, :cond_f

    :cond_9
    const-string/jumbo v4, "feature_ctc"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string/jumbo v4, "chn_cdma_setting_on_all_rat"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_a
    :goto_2
    const-string/jumbo v4, "sim card status is wrong"

    invoke-static {v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    return-void

    :cond_b
    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_c
    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mMeterialmVoicePrivacy:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mMeterialmVoicePrivacy:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v4, "button_clir_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_e
    const-string/jumbo v4, "disable_auto_area_code"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v4, "edittext_areacode_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_f
    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_9

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_9

    const-string/jumbo v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    const-string/jumbo v4, "button_cdma_voicecall_forwarding"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_10
    const-string/jumbo v4, "voicecall_barring_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_11
    const-string/jumbo v4, "button_cw_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_12
    const-string/jumbo v4, "voiceprivacy_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_13
    const-string/jumbo v4, "meterial_voiceprivacy_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_14
    const-string/jumbo v4, "button_fdn_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_15
    return-void

    :cond_16
    const/16 v4, 0xc8

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->showDialog(I)V

    goto/16 :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-boolean v5, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "displayDialog() mWaitPopup:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mWaitPopup:Landroid/app/AlertDialog;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_0
    const/16 v5, 0x64

    if-eq p1, v5, :cond_1

    const/16 v5, 0x384

    if-ne p1, v5, :cond_3

    :cond_1
    iput p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPrevBusyDialog:I

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    sparse-switch p1, :sswitch_data_0

    :cond_2
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v5

    return-object v5

    :sswitch_0
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const v5, 0x7f0d038f

    invoke-virtual {p0, v5}, Lcom/android/phone/CdmaAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object v1

    :sswitch_1
    invoke-virtual {v1, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const v5, 0x7f0d038e

    invoke-virtual {p0, v5}, Lcom/android/phone/CdmaAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v6, 0x258

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelMessage(Landroid/os/Message;)V

    return-object v1

    :cond_3
    const/16 v5, 0x12c

    if-eq p1, v5, :cond_4

    const/16 v5, 0xc8

    if-ne p1, v5, :cond_5

    :cond_4
    :goto_0
    const v4, 0x7f0d038d

    sparse-switch p1, :sswitch_data_1

    const v3, 0x7f0d0392

    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f0d056c

    invoke-virtual {p0, v5}, Lcom/android/phone/CdmaAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Lcom/android/phone/CdmaAdditionalCallOptions$11;

    invoke-direct {v6, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$11;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v5, Lcom/android/phone/CdmaAdditionalCallOptions$12;

    invoke-direct {v5, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$12;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object v0

    :cond_5
    const/16 v5, 0x320

    if-ne p1, v5, :cond_2

    goto :goto_0

    :sswitch_2
    const v3, 0x7f0d0391

    goto :goto_1

    :sswitch_3
    const v3, 0x7f0d0393

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x384 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x12c -> :sswitch_2
        0x320 -> :sswitch_3
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "MoreSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    const-string/jumbo v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mFdnSetting:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/phone/FdnSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreferenceTreeClick : mSimId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/CdmaAdditionalCallOptions;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v1, "CallSettingTab"

    sget v2, Lcom/android/phone/CdmaAdditionalCallOptions;->mSimId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallVisible:Z

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "area_code_value"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cdma_additional_setting_enable"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->updateSummaryAutoAreaCode(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v1, "support_bixby"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/phone/ia/CdmaAdditionalCallOptionsStateListener;

    invoke-direct {v1, p0}, Lcom/android/phone/ia/CdmaAdditionalCallOptionsStateListener;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    const-string/jumbo v1, "set state listener"

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "MoreSettings"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "MoreSettings"

    invoke-static {v1}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v1}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_2
    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v2, "MoreSettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "========== onSharedPreferenceChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "voiceprivacy_preference"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mQueryVoicePrivacyComplete:Landroid/os/Handler;

    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "meterial_voiceprivacy_preference"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mQueryVoicePrivacyComplete:Landroid/os/Handler;

    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallVisible:Z

    return-void
.end method
