.class public Lcom/android/phone/callsettings/VideoCallBarring;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "VideoCallBarring.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/VideoCallBarring$1;,
        Lcom/android/phone/callsettings/VideoCallBarring$2;,
        Lcom/android/phone/callsettings/VideoCallBarring$3;,
        Lcom/android/phone/callsettings/VideoCallBarring$AppState;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-phone-callsettings-VideoCallBarring$AppStateSwitchesValues:[I

.field private static final DBG:Z

.field private static mBlockOutgoing:Z

.field private static mCheckAllIncoming:Z

.field private static mCheckAllOutgoing:Z

.field public static mSimId:I

.field private static mVCB_Checked:Z


# instance fields
.field private callbarring_password:Ljava/lang/String;

.field doActivate:Ljava/lang/Runnable;

.field doCheckStatus:Ljava/lang/Runnable;

.field doConfirm:Ljava/lang/Runnable;

.field doDeactivate:Ljava/lang/Runnable;

.field editText:Landroid/widget/EditText;

.field factory:Landroid/view/LayoutInflater;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private isDisableCB:Z

.field private mAppState:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

.field private mCallBarringList1Pref:Landroid/preference/TwoStatePreference;

.field private mCallBarringList2Pref:Landroid/preference/TwoStatePreference;

.field private mCallBarringList3Pref:Landroid/preference/TwoStatePreference;

.field private mCallBarringList4Pref:Landroid/preference/TwoStatePreference;

.field private mCallBarringList5Pref:Landroid/preference/TwoStatePreference;

.field private mCheckAllCB:Z

.field private mConfirmPW:Z

.field private mConfirmPassword:Landroid/widget/EditText;

.field private mDialog:Landroid/app/AlertDialog;

.field mErrorText:Landroid/widget/TextView;

.field private mHotSwapFilter:Landroid/content/IntentFilter;

.field private mHotSwapReceiver:Landroid/content/BroadcastReceiver;

.field private mIsHotSwapRegister:Z

.field private mIsVoLTE:Z

.field private mMeterialPreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/SwitchPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkServiceHandler:Landroid/os/Handler;

.field private mNewPW:Z

.field private mNewPassword:Landroid/widget/EditText;

.field private mOldPW:Z

.field private mOldPassword:Landroid/widget/EditText;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevBusyDialog:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mPwdChangeSubmit:Z

.field private mSelectedIndex:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSkipCallBarringReq:Z

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private mVCBVisible:Z

.field private passwordDialog:Landroid/app/AlertDialog;

.field responseCBHandler:Landroid/os/Handler;

.field textEntryView:Landroid/view/View;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/phone/callsettings/VideoCallBarring;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->callbarring_password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/phone/callsettings/VideoCallBarring;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNewPW:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNewPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/phone/callsettings/VideoCallBarring;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mOldPW:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mOldPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/phone/callsettings/VideoCallBarring;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/phone/callsettings/VideoCallBarring;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    return v0
.end method

.method static synthetic -get18()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCB_Checked:Z

    return v0
.end method

.method static synthetic -get19(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->passwordDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/callsettings/VideoCallBarring;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/phone/callsettings/VideoCallBarring;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mConfirmPW:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mConfirmPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/phone/callsettings/VideoCallBarring;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mIsVoLTE:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/phone/callsettings/VideoCallBarring;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static synthetic -getcom-android-phone-callsettings-VideoCallBarring$AppStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring;->-com-android-phone-callsettings-VideoCallBarring$AppStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring;->-com-android-phone-callsettings-VideoCallBarring$AppStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->values()[Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/phone/callsettings/VideoCallBarring;->-com-android-phone-callsettings-VideoCallBarring$AppStateSwitchesValues:[I

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

.method static synthetic -set0(Lcom/android/phone/callsettings/VideoCallBarring;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->callbarring_password:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/phone/callsettings/VideoCallBarring;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/phone/callsettings/VideoCallBarring;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mConfirmPW:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/phone/callsettings/VideoCallBarring;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNewPW:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/phone/callsettings/VideoCallBarring;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mOldPW:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/phone/callsettings/VideoCallBarring;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/phone/callsettings/VideoCallBarring;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSkipCallBarringReq:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/callsettings/VideoCallBarring;Landroid/os/AsyncResult;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/VideoCallBarring;->handleQueryCBMessage(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/callsettings/VideoCallBarring;Landroid/os/AsyncResult;I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/VideoCallBarring;->handleSetCBMessage(Landroid/os/AsyncResult;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/phone/callsettings/VideoCallBarring;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/VideoCallBarring;->setCallBarringState(Z)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/phone/callsettings/VideoCallBarring;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/VideoCallBarring;->setCallBarring(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/callsettings/VideoCallBarring;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/callsettings/VideoCallBarring;->changePasswordCallBarring(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/callsettings/VideoCallBarring;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/callsettings/VideoCallBarring;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->dismissCallWaiting()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/callsettings/VideoCallBarring;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/VideoCallBarring;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/phone/callsettings/VideoCallBarring;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getCallBarring()V

    return-void
.end method

.method static synthetic -wrap7(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/phone/callsettings/VideoCallBarring;Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/phone/callsettings/VideoCallBarring;Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    sput-boolean v1, Lcom/android/phone/callsettings/VideoCallBarring;->mVCB_Checked:Z

    sput-boolean v1, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllOutgoing:Z

    sput-boolean v1, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllIncoming:Z

    sput-boolean v1, Lcom/android/phone/callsettings/VideoCallBarring;->mBlockOutgoing:Z

    sput v1, Lcom/android/phone/callsettings/VideoCallBarring;->mSimId:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mIsHotSwapRegister:Z

    iput v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mOldPassword:Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNewPassword:Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mConfirmPassword:Landroid/widget/EditText;

    iput-boolean v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPwdChangeSubmit:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mOldPW:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNewPW:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mConfirmPW:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mIsVoLTE:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSkipCallBarringReq:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->passwordDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mDialog:Landroid/app/AlertDialog;

    iput-boolean v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->isDisableCB:Z

    new-instance v0, Lcom/android/phone/callsettings/VideoCallBarring$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/VideoCallBarring$1;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/callsettings/VideoCallBarring$2;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/VideoCallBarring$2;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/callsettings/VideoCallBarring$3;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/VideoCallBarring$3;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->handler:Landroid/os/Handler;

    return-void
.end method

.method private changePasswordCallBarring(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableMoreMenu4VoWiFi()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    sget-object v1, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "changePasswordCallBarring() radioState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPhone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoWIFI()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "STATE_IN_SERVICE"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/callsettings/VideoCallBarring;->requestCBChangePassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "STATE_POWER_OFF"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "onCreate: radio not ready, waiting for signal."

    invoke-static {v1}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MSG_EXCEPTION"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    const/16 v2, 0xc8

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    goto :goto_0

    :cond_5
    sget-boolean v1, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "setDisplayMode: radio is off!"

    invoke-static {v1}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    :cond_6
    sget-object v1, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    const/16 v2, 0x320

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    goto :goto_0
.end method

.method private checkPassword(Landroid/app/Dialog;)Z
    .locals 8

    const/4 v7, 0x4

    iget-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mOldPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNewPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v4, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v4, :cond_0

    const-class v4, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[##### View l_oldPasswordStr #####] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-class v4, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[##### View l_newPasswordStr #####] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-class v4, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[##### View l_confirmPasswordStr #####] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    if-eqz v3, :cond_1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v7, :cond_2

    :cond_1
    const v4, 0x7f0d05cc

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->showError(Landroid/app/Dialog;Ljava/lang/String;)V

    const/4 v4, 0x0

    return v4

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v7, :cond_4

    :cond_3
    const v4, 0x7f0d05cd

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v7, :cond_6

    :cond_5
    const v4, 0x7f0d05ce

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const v4, 0x7f0d05d0

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    const v4, 0x7f0d050c

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->doConfirm:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v4, 0x1

    return v4
.end method

.method private deleteBusyDialog()V
    .locals 3

    const-string/jumbo v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCheckAllCB : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mSelectedIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mPrevBusyDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPrevBusyDialog:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    iget v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPrevBusyDialog:I

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->removeDialog(I)V

    return-void
.end method

.method private dismissCallWaiting()V
    .locals 1

    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->finish()V

    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private getCallBarring()V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableMoreMenu4VoWiFi()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    sget-object v1, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCallBarring() radioState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPhone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoWIFI()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "STATE_IN_SERVICE"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->requestCBQueryCommand()V

    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "STATE_POWER_OFF"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "onCreate: radio not ready, waiting for signal."

    invoke-static {v1}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MSG_EXCEPTION"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    const/16 v2, 0xc8

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    goto :goto_0

    :cond_5
    sget-boolean v1, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "setDisplayMode: radio is off!"

    invoke-static {v1}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    :cond_6
    sget-object v1, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    const/16 v2, 0x320

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    goto :goto_0
.end method

.method private getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    const-string/jumbo v3, "CheckBoxPreference"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v2, Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_0
    const-string/jumbo v3, "SwitchPreference"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v2, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method private handleQueryCBMessage(Landroid/os/AsyncResult;)I
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/16 v7, 0xc8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleQueryCBMessage() ar:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v3, :cond_1

    const/16 v3, 0x384

    return v3

    :cond_1
    return v7

    :cond_2
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    sget-boolean v3, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleQueryCBMessage() ints.length:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v6, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    :cond_3
    sget-boolean v3, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mSelectedItem = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_4

    const-string/jumbo v3, "ints["

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "]:"

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aget v6, v2, v1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableMoreMenu4VoWiFi()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_5
    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->isDisableCB:Z

    array-length v3, v2

    if-eqz v3, :cond_14

    sget-boolean v3, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleQueryCBMessage() ints[0]:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v6, v2, v4

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    :cond_6
    aget v3, v2, v4

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_f

    iget-boolean v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z

    if-nez v3, :cond_7

    const v3, 0x7f0d05c2

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/VideoCallBarring;->displayToast(Ljava/lang/String;)V

    :cond_7
    iget v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iget-boolean v6, p0, Lcom/android/phone/callsettings/VideoCallBarring;->isDisableCB:Z

    if-eqz v6, :cond_c

    move v6, v4

    :goto_2
    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iget-boolean v6, p0, Lcom/android/phone/callsettings/VideoCallBarring;->isDisableCB:Z

    if-eqz v6, :cond_d

    move v6, v4

    :goto_3
    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    sput-boolean v4, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllOutgoing:Z

    :cond_8
    iget v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    if-ne v3, v9, :cond_9

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iget-boolean v6, p0, Lcom/android/phone/callsettings/VideoCallBarring;->isDisableCB:Z

    if-eqz v6, :cond_e

    move v6, v4

    :goto_4
    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    sput-boolean v4, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllIncoming:Z

    :cond_9
    iget v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    const/4 v6, 0x5

    if-ge v3, v6, :cond_a

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_a

    iput-boolean v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSkipCallBarringReq:Z

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_a
    :goto_5
    const/16 v3, 0x64

    return v3

    :cond_b
    move v3, v5

    goto/16 :goto_1

    :cond_c
    move v6, v5

    goto :goto_2

    :cond_d
    move v6, v5

    goto :goto_3

    :cond_e
    move v6, v5

    goto :goto_4

    :cond_f
    aget v3, v2, v4

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_13

    iget-boolean v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z

    if-nez v3, :cond_10

    const v3, 0x7f0d05c1

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/VideoCallBarring;->displayToast(Ljava/lang/String;)V

    :cond_10
    iget v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    sput-boolean v5, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllOutgoing:Z

    :cond_11
    iget v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    if-ne v3, v9, :cond_12

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    sput-boolean v5, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllIncoming:Z

    :cond_12
    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_a

    iput-boolean v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSkipCallBarringReq:Z

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_5

    :cond_13
    return v7

    :cond_14
    return v7
.end method

.method private handleSetCBMessage(Landroid/os/AsyncResult;I)I
    .locals 4

    const/16 v3, 0xc8

    const/16 v2, 0x64

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleSetCBMessage() ar:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_1

    const/16 v1, 0x190

    return v1

    :cond_1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_2

    const-string/jumbo v1, "SIM_PUK2"

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->displayToast(Ljava/lang/String;)V

    return v3

    :cond_2
    iget v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    packed-switch v1, :pswitch_data_0

    return v3

    :pswitch_0
    const/16 v1, 0x258

    return v1

    :pswitch_1
    const/16 v1, 0x1f4

    return v1

    :cond_3
    return v3

    :cond_4
    if-nez p2, :cond_6

    sget-boolean v1, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "handleSetCBMessage() has been processed ACTIVATE"

    invoke-static {v1}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->requestCBQueryCommand()V

    return v2

    :cond_6
    const/4 v1, 0x1

    if-ne p2, v1, :cond_7

    sget-boolean v1, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "handleSetCBMessage() has been processed DEACTIVATE"

    invoke-static {v1}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    if-ne p2, v1, :cond_9

    sget-boolean v1, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v1, :cond_8

    const-string/jumbo v1, "handleSetCBMessage() has been processed CANCELALL"

    invoke-static {v1}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    :cond_8
    return v2

    :cond_9
    const/4 v1, 0x3

    if-ne p2, v1, :cond_5

    sget-boolean v1, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v1, :cond_a

    const-string/jumbo v1, "handleSetCBMessage() has been processed CONFIRM"

    invoke-static {v1}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    :cond_a
    const v1, 0x7f0d05cf

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->displayToast(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "## VideoCallBarring ##"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onCreateMultiSIM()V
    .locals 2

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mSimId:I

    sput v0, Lcom/android/phone/callsettings/VideoCallBarring;->mSimId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSimId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/phone/callsettings/VideoCallBarring;->mSimId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    sget v0, Lcom/android/phone/callsettings/VideoCallBarring;->mSimId:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method

.method private requestCBChangePassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v1, "AB"

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, p1, v5, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    return-void
.end method

.method private requestCBQueryCommand()V
    .locals 5

    const/4 v4, 0x5

    const-string/jumbo v0, "AO"

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->setCallBarringState(Z)V

    iget v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    const-string/jumbo v1, "support_additional_ss_query"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isSINSIM()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/phone/TelephonyConfig;->isSINSIM(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-virtual {v1, v0, v3, v4, v2}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    :goto_1
    return-void

    :pswitch_0
    const-string/jumbo v0, "AO"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "OI"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "OX"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "AI"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "IR"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "AB"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private requestCBSetCommand(I)V
    .locals 9

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->callbarring_password:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string/jumbo v3, ""

    :cond_0
    const-string/jumbo v2, "AO"

    const/4 v1, 0x0

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "requestCBSetCommand (process) Exception!"

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    :goto_0
    iget v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    packed-switch v0, :pswitch_data_1

    :goto_1
    const/16 v4, 0x10

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/phone/callsettings/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v7, p1, v8, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z

    return-void

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_3
    const-string/jumbo v2, "AO"

    goto :goto_1

    :pswitch_4
    const-string/jumbo v2, "OI"

    goto :goto_1

    :pswitch_5
    const-string/jumbo v2, "OX"

    goto :goto_1

    :pswitch_6
    const-string/jumbo v2, "AI"

    goto :goto_1

    :pswitch_7
    const-string/jumbo v2, "IR"

    goto :goto_1

    :pswitch_8
    const-string/jumbo v2, "AB"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    if-ne p1, v0, :cond_1

    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "setAppState: illegal error state without reason."

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    return-void
.end method

.method private setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/16 v7, 0x258

    const/16 v6, 0x1f4

    const/16 v5, 0x12c

    const/16 v4, 0xc8

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAppState() mAppState:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mAppState:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ,requestedState:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ",msgStatus:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mAppState:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    if-ne p1, v0, :cond_1

    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "setAppState: requestedState same as current state. ignoring."

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    if-ne p1, v0, :cond_a

    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_2

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

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    if-nez v0, :cond_3

    const-string/jumbo v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mVCBVisible : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " so, we try remove busy dialog"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    if-eqz v0, :cond_7

    sparse-switch p2, :sswitch_data_0

    :goto_0
    iget v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z

    if-nez v0, :cond_4

    iput-boolean v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSkipCallBarringReq:Z

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_4
    if-eq p2, v4, :cond_5

    const/16 v0, 0x320

    if-ne p2, v0, :cond_9

    :cond_5
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/VideoCallBarring;->setCallBarringState(Z)V

    :cond_6
    iput-object p1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mAppState:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/VideoCallBarring;->showDialog(I)V

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->showDialog(I)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/VideoCallBarring;->showDialog(I)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->showDialog(I)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/VideoCallBarring;->showDialog(I)V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/VideoCallBarring;->showDialog(I)V

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    const/16 v0, 0x2bc

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->showDialog(I)V

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "VideoCallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mVCBVisible : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " so, skip displaying error dialog"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    goto/16 :goto_0

    :cond_8
    move v1, v2

    goto :goto_1

    :cond_9
    if-eq p2, v5, :cond_5

    if-eq p2, v6, :cond_5

    const/16 v0, 0x384

    if-eq p2, v0, :cond_5

    if-ne p2, v7, :cond_6

    goto :goto_2

    :cond_a
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAppState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mAppState:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    :cond_b
    invoke-static {}, Lcom/android/phone/callsettings/VideoCallBarring;->-getcom-android-phone-callsettings-VideoCallBarring$AppStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mAppState:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_c
    :goto_3
    iput-object p1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mAppState:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    return-void

    :pswitch_0
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    if-eq p1, v0, :cond_c

    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "setAppState: illegal transition from NETWORK_ERROR"

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAppState: displaying busy dialog, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    :cond_e
    iget-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    if-ne p1, v0, :cond_f

    const/16 v0, 0x384

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->showDialog(I)V

    goto :goto_3

    :cond_f
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    if-ne p1, v0, :cond_c

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->showDialog(I)V

    goto :goto_3

    :cond_10
    const-string/jumbo v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mVCBVisible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " so, skip displaying init dialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_2
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    if-eq p1, v0, :cond_12

    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_11

    const-string/jumbo v0, "setAppState: illegal transition from INITIAL_QUERY"

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    goto/16 :goto_3

    :pswitch_3
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    if-eq p1, v0, :cond_14

    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_13

    const-string/jumbo v0, "setAppState: illegal transition from BUSY_NETWORK_CONNECT"

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_4
        0x258 -> :sswitch_5
        0x320 -> :sswitch_1
        0x384 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setCallBarring(I)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableMoreMenu4VoWiFi()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    sget-object v1, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCallBarring() radioState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPhone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoWIFI()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "STATE_IN_SERVICE"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/VideoCallBarring;->requestCBSetCommand(I)V

    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "STATE_POWER_OFF"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "onCreate: radio not ready, waiting for signal."

    invoke-static {v1}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MSG_EXCEPTION"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    const/16 v2, 0xc8

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    goto :goto_0

    :cond_5
    sget-boolean v1, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "setDisplayMode: radio is off!"

    invoke-static {v1}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    :cond_6
    sget-object v1, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    const/16 v2, 0x320

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    goto :goto_0
.end method

.method private setCallBarringState(Z)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->setHoldstate()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setHoldstate()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "setHoldstate()"

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableMoreMenu4VoWiFi()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->isDisableCB:Z

    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->mBlockOutgoing:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :goto_1
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllIncoming:Z

    if-eqz v0, :cond_c

    const-string/jumbo v0, "disable_call_barring"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->isDisableCB:Z

    if-eqz v3, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :goto_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllOutgoing:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "disable_call_barring"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->isDisableCB:Z

    if-eqz v3, :cond_6

    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    move v3, v2

    goto :goto_3

    :cond_7
    const-string/jumbo v0, "disable_call_barring"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->isDisableCB:Z

    if-eqz v3, :cond_9

    move v3, v1

    :goto_4
    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->isDisableCB:Z

    if-eqz v3, :cond_a

    move v3, v1

    :goto_5
    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->isDisableCB:Z

    if-eqz v3, :cond_b

    move v3, v1

    :goto_6
    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_9
    move v3, v2

    goto :goto_4

    :cond_a
    move v3, v2

    goto :goto_5

    :cond_b
    move v3, v2

    goto :goto_6

    :cond_c
    const-string/jumbo v0, "disable_call_barring"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->isDisableCB:Z

    if-eqz v3, :cond_e

    move v3, v1

    :goto_7
    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_d
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->isDisableCB:Z

    if-eqz v3, :cond_f

    :goto_8
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_e
    move v3, v2

    goto :goto_7

    :cond_f
    move v1, v2

    goto :goto_8
.end method

.method private showError(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 2

    const v1, 0x7f100070

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showPasswordDialog()V
    .locals 7

    const/4 v6, 0x0

    const v5, 0x7f0d05d9

    const v4, 0x7f0d0210

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f04001e

    invoke-static {v2, v3, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d0229

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f100072

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mOldPassword:Landroid/widget/EditText;

    const v2, 0x7f100073

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNewPassword:Landroid/widget/EditText;

    const v2, 0x7f100074

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mConfirmPassword:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mOldPassword:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mOldPassword:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mOldPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    sget-object v2, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->passwordDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->passwordDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->passwordDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/phone/callsettings/VideoCallBarring$21;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/VideoCallBarring$21;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->passwordDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/android/phone/callsettings/VideoCallBarring$22;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/VideoCallBarring$22;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPwdChangeSubmit:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f070065

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/VideoCallBarring;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->registerAirplainModeObserver()V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->onCreateMultiSIM()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string/jumbo v6, "vcallbarring_baoc_pref"

    const-string/jumbo v7, "SwitchPreference"

    invoke-direct {p0, v3, v6, v7}, Lcom/android/phone/callsettings/VideoCallBarring;->getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList1Pref:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string/jumbo v6, "vcallbarring_baoic_pref"

    const-string/jumbo v7, "SwitchPreference"

    invoke-direct {p0, v3, v6, v7}, Lcom/android/phone/callsettings/VideoCallBarring;->getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList2Pref:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string/jumbo v6, "vcallbarring_baoicxh_pref"

    const-string/jumbo v7, "SwitchPreference"

    invoke-direct {p0, v3, v6, v7}, Lcom/android/phone/callsettings/VideoCallBarring;->getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList3Pref:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string/jumbo v6, "vcallbarring_baic_pref"

    const-string/jumbo v7, "SwitchPreference"

    invoke-direct {p0, v3, v6, v7}, Lcom/android/phone/callsettings/VideoCallBarring;->getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList4Pref:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string/jumbo v6, "vcallbarring_baicr_pref"

    const-string/jumbo v7, "SwitchPreference"

    invoke-direct {p0, v3, v6, v7}, Lcom/android/phone/callsettings/VideoCallBarring;->getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList5Pref:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "vcallbarring_baoc_pref"

    const-string/jumbo v8, "CheckBoxPreference"

    invoke-direct {p0, v6, v7, v8}, Lcom/android/phone/callsettings/VideoCallBarring;->getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "vcallbarring_baoic_pref"

    const-string/jumbo v8, "CheckBoxPreference"

    invoke-direct {p0, v6, v7, v8}, Lcom/android/phone/callsettings/VideoCallBarring;->getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "vcallbarring_baoicxh_pref"

    const-string/jumbo v8, "CheckBoxPreference"

    invoke-direct {p0, v6, v7, v8}, Lcom/android/phone/callsettings/VideoCallBarring;->getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "vcallbarring_baic_pref"

    const-string/jumbo v8, "CheckBoxPreference"

    invoke-direct {p0, v6, v7, v8}, Lcom/android/phone/callsettings/VideoCallBarring;->getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "vcallbarring_baicr_pref"

    const-string/jumbo v8, "CheckBoxPreference"

    invoke-direct {p0, v6, v7, v8}, Lcom/android/phone/callsettings/VideoCallBarring;->getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v6, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList1Pref:Landroid/preference/TwoStatePreference;

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList2Pref:Landroid/preference/TwoStatePreference;

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList3Pref:Landroid/preference/TwoStatePreference;

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList4Pref:Landroid/preference/TwoStatePreference;

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList5Pref:Landroid/preference/TwoStatePreference;

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "disable_call_barring"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mMeterialPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->showCBPassword()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->factory:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->factory:Landroid/view/LayoutInflater;

    const v6, 0x7f040007

    invoke-virtual {v3, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->textEntryView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->textEntryView:Landroid/view/View;

    const v6, 0x7f100024

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->editText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->textEntryView:Landroid/view/View;

    const v6, 0x7f100025

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mErrorText:Landroid/widget/TextView;

    const-string/jumbo v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/VideoCallBarring;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->imm:Landroid/view/inputmethod/InputMethodManager;

    new-instance v3, Lcom/android/phone/callsettings/VideoCallBarring$4;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/VideoCallBarring$4;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    iput-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->doActivate:Ljava/lang/Runnable;

    new-instance v3, Lcom/android/phone/callsettings/VideoCallBarring$5;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/VideoCallBarring$5;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    iput-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->doDeactivate:Ljava/lang/Runnable;

    new-instance v3, Lcom/android/phone/callsettings/VideoCallBarring$6;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/VideoCallBarring$6;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    iput-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->doCheckStatus:Ljava/lang/Runnable;

    new-instance v3, Lcom/android/phone/callsettings/VideoCallBarring$7;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/VideoCallBarring$7;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    iput-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->doConfirm:Ljava/lang/Runnable;

    sget-object v3, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    iput-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mAppState:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    if-ne v3, v4, :cond_6

    :cond_3
    const/16 v3, 0xc8

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/VideoCallBarring;->showDialog(I)V

    const-string/jumbo v3, "## VideoCallBarring ##"

    const-string/jumbo v6, "skip set or get CallBarring"

    invoke-static {v3, v6, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/VideoCallBarring;->setCallBarringState(Z)V

    return-void

    :cond_4
    sget v3, Lcom/android/phone/callsettings/VideoCallBarring;->mSimId:I

    const-string/jumbo v6, "ril.ss.routing"

    const-string/jumbo v7, "0"

    invoke-static {v3, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "## VideoCallBarring ##"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "routing = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    if-ne v2, v4, :cond_5

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mIsVoLTE:Z

    goto/16 :goto_0

    :cond_5
    move v3, v5

    goto :goto_1

    :cond_6
    iput-boolean v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mHotSwapFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mHotSwapFilter:Landroid/content/IntentFilter;

    const-string/jumbo v6, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mHotSwapFilter:Landroid/content/IntentFilter;

    const-string/jumbo v6, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v3, Lcom/android/phone/callsettings/VideoCallBarring$8;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/VideoCallBarring$8;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    iput-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v6, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mHotSwapFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v6, v7}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mIsHotSwapRegister:Z

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v3

    if-eqz v3, :cond_9

    sget v3, Lcom/android/phone/callsettings/VideoCallBarring;->mSimId:I

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsCHN;->isCMCCUSIM(I)Z

    move-result v3

    if-nez v3, :cond_7

    sget v3, Lcom/android/phone/callsettings/VideoCallBarring;->mSimId:I

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsCHN;->isCUSIM(I)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_7
    sput-boolean v4, Lcom/android/phone/callsettings/VideoCallBarring;->mBlockOutgoing:Z

    iput v10, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    sget-boolean v3, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "For volte setting mSelectedIndex:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    :cond_8
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getCallBarring()V

    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/VideoCallBarring;->setHasOptionsMenu(Z)V

    return-void

    :cond_9
    sput-boolean v5, Lcom/android/phone/callsettings/VideoCallBarring;->mBlockOutgoing:Z

    if-eqz p1, :cond_a

    move-object v1, p1

    const-string/jumbo v3, "mVCB_Checked"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/phone/callsettings/VideoCallBarring;->mVCB_Checked:Z

    const-string/jumbo v3, "mSelectedIndex"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    goto :goto_2

    :cond_a
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getCallBarring()V

    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 11

    const v10, 0x7f0d0210

    const/16 v6, 0x3e8

    const v9, 0x7f0d050c

    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-boolean v4, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreateDialog id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    :cond_0
    iput-boolean v8, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    sparse-switch p1, :sswitch_data_0

    const v2, 0x7f0d05c9

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/VideoCallBarring;->displayToast(Ljava/lang/String;)V

    const/4 v4, 0x0

    return-object v4

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->factory:Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->factory:Landroid/view/LayoutInflater;

    const v5, 0x7f040007

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->textEntryView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->textEntryView:Landroid/view/View;

    const v5, 0x7f100024

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->editText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->textEntryView:Landroid/view/View;

    const v5, 0x7f100025

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mErrorText:Landroid/widget/TextView;

    const/16 v4, 0x190

    if-ne p1, v4, :cond_1

    invoke-direct {p0, v7}, Lcom/android/phone/callsettings/VideoCallBarring;->setCallBarringState(Z)V

    iget-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d05c9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/VideoCallBarring;->showErrorText(Z)V

    sget-object v4, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    iput-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mAppState:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    :goto_0
    iget-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->editText:Landroid/widget/EditText;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->editText:Landroid/widget/EditText;

    const v5, 0x7f0d05d8

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(I)V

    invoke-virtual {p0, v10}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0d0229

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0d05d7

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d05d7

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->textEntryView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/phone/callsettings/VideoCallBarring$14;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/VideoCallBarring$14;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    invoke-virtual {v0, v9, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/phone/callsettings/VideoCallBarring$15;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/VideoCallBarring$15;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    const v5, 0x7f0d050d

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/VideoCallBarring;->setCancelable(Z)V

    new-instance v4, Lcom/android/phone/callsettings/VideoCallBarring$16;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/VideoCallBarring$16;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/VideoCallBarring;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/phone/callsettings/VideoCallBarring$17;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/VideoCallBarring$17;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mDialog:Landroid/app/AlertDialog;

    return-object v4

    :cond_1
    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/VideoCallBarring;->showErrorText(Z)V

    goto :goto_0

    :sswitch_1
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    iput p1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPrevBusyDialog:I

    sparse-switch p1, :sswitch_data_1

    :sswitch_2
    const v3, 0x7f0d032d

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sparse-switch p1, :sswitch_data_2

    const v2, 0x7f0d0332

    :cond_2
    :goto_1
    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/VideoCallBarring;->setCancelable(Z)V

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/VideoCallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/VideoCallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/VideoCallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/phone/callsettings/VideoCallBarring$20;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/VideoCallBarring$20;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :sswitch_3
    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/VideoCallBarring;->setCancelable(Z)V

    iget-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v4

    :sswitch_4
    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/VideoCallBarring;->setCancelable(Z)V

    iget-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    new-instance v4, Lcom/android/phone/callsettings/VideoCallBarring$18;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/VideoCallBarring$18;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/VideoCallBarring;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v4

    :sswitch_5
    const v2, 0x7f0d0331

    goto :goto_1

    :sswitch_6
    const v2, 0x7f0d0333

    goto :goto_1

    :sswitch_7
    const v2, 0x7f0d05ca

    goto :goto_1

    :sswitch_8
    const v2, 0x7f0d05cb

    const-string/jumbo v4, "feature_org"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "feature_sbm"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/VideoCallBarring;->setCancelable(Z)V

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/VideoCallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/VideoCallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/VideoCallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/phone/callsettings/VideoCallBarring$19;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/VideoCallBarring$19;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :sswitch_9
    const v3, 0x7f0d0505

    const v2, 0x7f0d05b6

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_2
        0x190 -> :sswitch_0
        0x1f4 -> :sswitch_2
        0x258 -> :sswitch_2
        0x2bc -> :sswitch_2
        0x320 -> :sswitch_2
        0x384 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_3
        0x384 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x12c -> :sswitch_5
        0x1f4 -> :sswitch_7
        0x258 -> :sswitch_8
        0x2bc -> :sswitch_9
        0x320 -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoLTE()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mIsVoLTE:Z

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "feature_sbm"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "## VideoCallBarring ##"

    const-string/jumbo v1, "Skip the options menu."

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_0
    const v0, 0x7f0d0202

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d0218

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const v0, 0x7f0d05d9

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200bc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    iget-boolean v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mIsHotSwapRegister:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mIsHotSwapRegister:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "## VideoCallBarring ##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IllegalArgumentException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPwdChangeSubmit:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPwdChangeSubmit:Z

    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->checkPassword(Landroid/app/Dialog;)Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    const v0, 0x7f0d0202

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d026d

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->showPasswordDialog()V

    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    const-wide/16 v2, 0xc8

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    const v0, 0x7f0d0202

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/VideoCallBarring$9;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/VideoCallBarring$9;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->passwordDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/VideoCallBarring$10;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/VideoCallBarring$10;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/VideoCallBarring$11;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/VideoCallBarring$11;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/VideoCallBarring$12;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/VideoCallBarring$12;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/android/phone/callsettings/VideoCallBarring;->mSimId:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCHN;->isCMCCUSIM(I)Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/android/phone/callsettings/VideoCallBarring;->mSimId:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCHN;->isCUSIM(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->mBlockOutgoing:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->setHoldstate()V

    :cond_3
    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "ShowVideoCallBarring"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "ShowVideoCallBarring"

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_4
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_5
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "mVCB_Checked"

    sget-boolean v1, Lcom/android/phone/callsettings/VideoCallBarring;->mVCB_Checked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "mSelectedIndex"

    iget v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 9

    const v8, 0x7f0d0202

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "========== onSharedPreferenceChanged : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "vcallbarring_baoc_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f0d026e

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_5

    move v1, v2

    :goto_0
    int-to-long v6, v1

    invoke-static {v4, v5, v6, v7}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    iput v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    sput-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCB_Checked:Z

    :cond_0
    const-string/jumbo v1, "vcallbarring_baoic_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f0d026f

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_6

    move v1, v2

    :goto_1
    int-to-long v6, v1

    invoke-static {v4, v5, v6, v7}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    iput v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    sput-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCB_Checked:Z

    :cond_1
    const-string/jumbo v1, "vcallbarring_baoicxh_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f0d0270

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_7

    move v1, v2

    :goto_2
    int-to-long v6, v1

    invoke-static {v4, v5, v6, v7}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    sput-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCB_Checked:Z

    :cond_2
    const-string/jumbo v1, "vcallbarring_baic_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f0d0271

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_8

    move v1, v2

    :goto_3
    int-to-long v6, v1

    invoke-static {v4, v5, v6, v7}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    sput-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCB_Checked:Z

    :cond_3
    const-string/jumbo v1, "vcallbarring_baicr_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f0d0272

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_9

    :goto_4
    int-to-long v6, v2

    invoke-static {v1, v4, v6, v7}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    sput-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCB_Checked:Z

    :cond_4
    iget-boolean v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSkipCallBarringReq:Z

    if-eqz v1, :cond_a

    iput-boolean v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSkipCallBarringReq:Z

    :goto_5
    return-void

    :cond_5
    move v1, v3

    goto/16 :goto_0

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v1, v3

    goto :goto_2

    :cond_8
    move v1, v3

    goto :goto_3

    :cond_9
    move v2, v3

    goto :goto_4

    :cond_a
    sget-object v1, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    iput-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mAppState:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoLTE()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mIsVoLTE:Z

    if-eqz v1, :cond_c

    sget-boolean v1, Lcom/android/phone/callsettings/VideoCallBarring;->mVCB_Checked:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->doActivate:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_b
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->doDeactivate:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_c
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->showDialog(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/callsettings/VideoCallBarring$13;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/VideoCallBarring$13;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5
.end method

.method public showErrorText(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mErrorText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mErrorText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
