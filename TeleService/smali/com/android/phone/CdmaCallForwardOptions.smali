.class public Lcom/android/phone/CdmaCallForwardOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "CdmaCallForwardOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaCallForwardOptions$1;,
        Lcom/android/phone/CdmaCallForwardOptions$2;,
        Lcom/android/phone/CdmaCallForwardOptions$AppState;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-phone-CdmaCallForwardOptions$AppStateSwitchesValues:[I

.field private static final NUM_PROJECTION:[Ljava/lang/String;

.field private static final SRC_TAGS:[Ljava/lang/String;


# instance fields
.field private accountHandle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end field

.field private mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

.field private mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFBUSYExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFNOREPLYExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCFNOTRECHABLEExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFUNCONDITIONALExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mCFBDataStale:Z

.field private mCFDataStale:Z

.field private mCFNRcDataStale:Z

.field private mCFNRyDataStale:Z

.field private mCFUDataStale:Z

.field private mCancelDataStale:Z

.field private mContactListIntent:Landroid/content/Intent;

.field private mDialingNumCFB:Ljava/lang/String;

.field private mDialingNumCFNRc:Ljava/lang/String;

.field private mDialingNumCFNRy:Ljava/lang/String;

.field private mDialingNumCFU:Ljava/lang/String;

.field private mDisplayMode:I

.field private mGetAllCFOptionsComplete:Landroid/os/Handler;

.field private mIsBusyDialogAvailable:Z

.field private mMaxFontScale:F

.field private mNetworkServiceHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSetState_check:Z

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private mpreference:Landroid/preference/Preference;

.field private mpreferenceint:I

.field private telecommManager:Landroid/telecom/TelecomManager;


# direct methods
.method static synthetic -get0(Lcom/android/phone/CdmaCallForwardOptions;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDisplayMode:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/phone/CdmaCallForwardOptions;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/CdmaCallForwardOptions;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private static synthetic -getcom-android-phone-CdmaCallForwardOptions$AppStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions;->-com-android-phone-CdmaCallForwardOptions$AppStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions;->-com-android-phone-CdmaCallForwardOptions$AppStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/CdmaCallForwardOptions$AppState;->values()[Lcom/android/phone/CdmaCallForwardOptions$AppState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaCallForwardOptions$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaCallForwardOptions$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaCallForwardOptions$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaCallForwardOptions$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaCallForwardOptions$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaCallForwardOptions$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/android/phone/CdmaCallForwardOptions;->-com-android-phone-CdmaCallForwardOptions$AppStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFBDataStale:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFDataStale:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRcDataStale:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRyDataStale:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFUDataStale:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCancelDataStale:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/CdmaCallForwardOptions;Landroid/os/AsyncResult;I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/phone/CdmaCallForwardOptions;->handleGetCFMessage(Landroid/os/AsyncResult;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/CdmaCallForwardOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CdmaCallForwardOptions;->queryAllCFOptions()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/CdmaCallForwardOptions;Lcom/android/phone/CdmaCallForwardOptions$AppState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/CdmaCallForwardOptions;Lcom/android/phone/CdmaCallForwardOptions$AppState;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "data1"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/CdmaCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "{0}"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/CdmaCallForwardOptions;->SRC_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mMaxFontScale:F

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDisplayMode:I

    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFDataStale:Z

    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFUDataStale:Z

    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRyDataStale:Z

    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRcDataStale:Z

    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFBDataStale:Z

    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCancelDataStale:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mIsBusyDialogAvailable:Z

    new-instance v0, Lcom/android/phone/CdmaCallForwardOptions$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaCallForwardOptions$1;-><init>(Lcom/android/phone/CdmaCallForwardOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mNetworkServiceHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/CdmaCallForwardOptions$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaCallForwardOptions$2;-><init>(Lcom/android/phone/CdmaCallForwardOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mGetAllCFOptionsComplete:Landroid/os/Handler;

    return-void
.end method

.method private adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, ""

    if-eqz p2, :cond_2

    if-eqz p4, :cond_1

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    invoke-virtual {p0, p3}, Lcom/android/phone/CdmaCallForwardOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaCallForwardOptions;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;

    :cond_2
    invoke-virtual {p1, p4}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    return-void
.end method

.method private final dismissBusyDialog()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mIsBusyDialogAvailable:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->dismissDialog(I)V

    :cond_0
    return-void
.end method

.method private handleGetCFMessage(Landroid/os/AsyncResult;I)I
    .locals 5

    const/16 v4, 0x12c

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    const/16 v3, 0xc8

    return v3

    :cond_0
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    return v4

    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    array-length v3, v0

    if-nez v3, :cond_2

    return v4

    :cond_2
    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    aget-object v3, v0, v1

    invoke-direct {p0, p2, v3}, Lcom/android/phone/CdmaCallForwardOptions;->syncCFUIState(ILcom/android/internal/telephony/CallForwardInfo;)V

    :cond_3
    const/16 v3, 0x64

    return v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "CdmaCallForwardOptions"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private queryAllCFOptions()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mGetAllCFOptionsComplete:Landroid/os/Handler;

    const/16 v2, 0x190

    invoke-static {v1, v2, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    return-void
.end method

.method private setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;I)V

    return-void
.end method

.method private setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/16 v3, 0x64

    const/16 v2, 0x384

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_3

    sparse-switch p2, :sswitch_data_0

    :goto_0
    iput-object p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallForwardOptions;->dismissDialog(I)V

    :goto_1
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->showDialog(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/CdmaCallForwardOptions;->dismissBusyDialog()V

    goto :goto_1

    :sswitch_1
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->showDialog(I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallForwardOptions;->dismissDialog(I)V

    :goto_2
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->showDialog(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/CdmaCallForwardOptions;->dismissBusyDialog()V

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/android/phone/CdmaCallForwardOptions;->-getcom-android-phone-CdmaCallForwardOptions$AppStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaCallForwardOptions$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_4
    :goto_3
    iput-object p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    return-void

    :pswitch_0
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq p1, v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallForwardOptions;->showDialog(I)V

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_6

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallForwardOptions;->showDialog(I)V

    goto :goto_3

    :cond_6
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "illegal transition from INPUT_READY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq p1, v0, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallForwardOptions;->showDialog(I)V

    goto :goto_3

    :pswitch_3
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq p1, v0, :cond_7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallForwardOptions;->dismissDialog(I)V

    goto :goto_3

    :pswitch_4
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq p1, v0, :cond_8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-direct {p0}, Lcom/android/phone/CdmaCallForwardOptions;->dismissBusyDialog()V

    goto :goto_3

    :pswitch_5
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq p1, v0, :cond_9

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "illegal transition from WAITING_NUMBER_SELECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-direct {p0}, Lcom/android/phone/CdmaCallForwardOptions;->dismissBusyDialog()V

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_2
        0x320 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private syncCFUIState(ILcom/android/internal/telephony/CallForwardInfo;)V
    .locals 4

    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    const v3, 0x7f0d0315

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/phone/CdmaCallForwardOptions;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    iget-object v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDialingNumCFU:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    const v3, 0x7f0d031a

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/phone/CdmaCallForwardOptions;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    iget-object v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDialingNumCFB:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    const v3, 0x7f0d0322

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/phone/CdmaCallForwardOptions;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    iget-object v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDialingNumCFNRy:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    const v3, 0x7f0d0328

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/phone/CdmaCallForwardOptions;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    iget-object v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDialingNumCFNRc:Ljava/lang/String;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-void

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "*72"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "*90"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "*92"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "*68"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    :goto_0
    :pswitch_1
    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x2

    const v6, 0x7f0d0310

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "telecom"

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallForwardOptions;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    iput-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->telecommManager:Landroid/telecom/TelecomManager;

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->telecommManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->accountHandle:Ljava/util/List;

    const v2, 0x7f070023

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallForwardOptions;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "button_cfu_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    const-string/jumbo v2, "button_cfb_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    const-string/jumbo v2, "button_cfnry_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    const-string/jumbo v2, "button_cfnrc_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    const-string/jumbo v2, "button_cfu_dis_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const-string/jumbo v2, "button_cfb_dis_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const-string/jumbo v2, "button_cfnry_dis_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const-string/jumbo v2, "button_cfnrc_dis_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const-string/jumbo v2, "cdma_cf_cancelall_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    const-string/jumbo v2, "cdma_cf_busy_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFBUSYExpand:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "cdma_cf_noreply_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOREPLYExpand:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "cdma_cf_notrechable_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOTRECHABLEExpand:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "cdma_cf_unconditional_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFUNCONDITIONALExpand:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0, v4, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v6}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    const v3, 0x7f0d0313

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0, v4, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v6}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const v3, 0x7f0d0313

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0, v5, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v6}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    const v3, 0x7f0d0319

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0, v5, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v6}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const v3, 0x7f0d0319

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0, v7, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v6}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    const v3, 0x7f0d0321

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    :cond_4
    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0, v7, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v6}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const v3, 0x7f0d0321

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    :cond_5
    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v3, 0x3

    invoke-virtual {v2, p0, v3, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v6}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    const v3, 0x7f0d0327

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    :cond_6
    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v3, 0x3

    invoke-virtual {v2, p0, v3, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v6}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const v3, 0x7f0d0327

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    :cond_7
    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v3, 0x6

    invoke-virtual {v2, p0, v3, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v6}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    const v3, 0x7f0d06bb

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    :cond_8
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mContactListIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mContactListIntent:Landroid/content/Intent;

    const-string/jumbo v3, "vnd.android.cursor.item/phone"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    iput-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eqz p1, :cond_c

    const-string/jumbo v2, "app_state_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CdmaCallForwardOptions$AppState;

    iput-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    const-string/jumbo v2, "cdma_cf_busy_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    const-string/jumbo v2, "cdma_cf_noreply_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    const-string/jumbo v2, "cdma_cf_notrechable_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    const-string/jumbo v2, "cdma_cf_unconditional_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    const-string/jumbo v2, "cdma_cf_cancelall_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    const-string/jumbo v2, "MSET_STATE_CHECK_KEY"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    const-string/jumbo v2, "mpreference_int"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreferenceint:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_9
    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v5, :cond_d

    :cond_a
    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setEnabled(Z)V

    :cond_b
    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFBUSYExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOREPLYExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOTRECHABLEExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFUNCONDITIONALExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    return-void

    :cond_c
    iput-boolean v5, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFDataStale:Z

    iput-boolean v5, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFBDataStale:Z

    iput-boolean v5, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFUDataStale:Z

    iput-boolean v5, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRcDataStale:Z

    iput-boolean v5, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRyDataStale:Z

    iput-boolean v5, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCancelDataStale:Z

    iput-boolean v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    goto :goto_0

    :cond_d
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9

    const/4 v8, 0x0

    const v7, 0x7f0d0334

    const/4 v6, 0x1

    const/16 v5, 0x64

    if-eq p1, v5, :cond_0

    const/16 v5, 0x384

    if-ne p1, v5, :cond_1

    :cond_0
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d032c

    invoke-virtual {p0, v5}, Lcom/android/phone/CdmaCallForwardOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    return-object v2

    :sswitch_0
    iput-boolean v6, p0, Lcom/android/phone/CdmaCallForwardOptions;->mIsBusyDialogAvailable:Z

    invoke-virtual {v2, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const v5, 0x7f0d032f

    invoke-virtual {p0, v5}, Lcom/android/phone/CdmaCallForwardOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v5, p0, Lcom/android/phone/CdmaCallForwardOptions;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v6, 0x258

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelMessage(Landroid/os/Message;)V

    const v5, 0x7f0d032e

    invoke-virtual {p0, v5}, Lcom/android/phone/CdmaCallForwardOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v5, 0x12c

    if-eq p1, v5, :cond_2

    const/16 v5, 0xc8

    if-ne p1, v5, :cond_3

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d032d

    sparse-switch p1, :sswitch_data_1

    const v3, 0x7f0d0332

    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaCallForwardOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallForwardOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    return-object v1

    :cond_3
    const/16 v5, 0x320

    if-eq p1, v5, :cond_2

    const/4 v5, 0x0

    return-object v5

    :sswitch_2
    const v3, 0x7f0d0331

    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :sswitch_3
    const v3, 0x7f0d0333

    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

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

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v5, Lcom/android/phone/CdmaCallForwardOptions$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq v4, v5, :cond_0

    return-void

    :cond_0
    const/4 v4, -0x2

    if-ne p2, v4, :cond_1

    sget-object v4, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-direct {p0, v4}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    return-void

    :cond_1
    instance-of v4, p1, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v4, :cond_3

    move-object v0, p1

    const-string/jumbo v3, ""

    invoke-virtual {p1}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.CALL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    const/4 v2, 0x0

    :cond_2
    :goto_0
    const-string/jumbo v5, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->accountHandle:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaCallForwardOptions;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void

    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const-string/jumbo v5, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->accountHandle:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "*72"

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_1

    const-string/jumbo v0, "*720"

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_2

    const-string/jumbo v0, "*90"

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_3

    const-string/jumbo v0, "*900"

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_4

    const-string/jumbo v0, "*68"

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_5

    const-string/jumbo v0, "*680"

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_6

    const-string/jumbo v0, "*92"

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_7

    const-string/jumbo v0, "*920"

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_8

    const-string/jumbo v0, "*74"

    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_9

    const-string/jumbo v0, "*740"

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_a

    const-string/jumbo v0, "*730"

    return-object v0

    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->finish()V

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    iget-object v8, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFBUSYExpand:Landroid/preference/PreferenceScreen;

    if-ne p2, v8, :cond_5

    iput v11, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreferenceint:I

    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFBUSYExpand:Landroid/preference/PreferenceScreen;

    if-eq p2, v8, :cond_1

    iget-object v8, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOREPLYExpand:Landroid/preference/PreferenceScreen;

    if-ne p2, v8, :cond_8

    :cond_1
    :goto_1
    move-object v8, p2

    check-cast v8, Landroid/preference/PreferenceScreen;

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const v8, 0x7f04002b

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setCustomView(I)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f1000a2

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFBUSYExpand:Landroid/preference/PreferenceScreen;

    if-ne p2, v8, :cond_9

    const v8, 0x7f0d06c0

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_2
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    iget-object v8, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0205

    invoke-virtual {v8, v9, v4, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v8, v4, Landroid/util/TypedValue;->data:I

    invoke-static {v8}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v5

    iget-object v8, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v2, v8, Landroid/content/res/Configuration;->fontScale:F

    iget v8, p0, Lcom/android/phone/CdmaCallForwardOptions;->mMaxFontScale:F

    cmpl-float v8, v2, v8

    if-lez v8, :cond_3

    iget v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mMaxFontScale:F

    :cond_3
    mul-float v8, v5, v2

    invoke-virtual {v6, v10, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f10009f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->semSetHoverPopupType(I)V

    new-instance v8, Lcom/android/phone/CdmaCallForwardOptions$3;

    invoke-direct {v8, p0, v1}, Lcom/android/phone/CdmaCallForwardOptions$3;-><init>(Lcom/android/phone/CdmaCallForwardOptions;Landroid/app/Dialog;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v8, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v9, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq v8, v9, :cond_c

    return v11

    :cond_5
    iget-object v8, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOREPLYExpand:Landroid/preference/PreferenceScreen;

    if-ne p2, v8, :cond_6

    iput v10, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreferenceint:I

    goto/16 :goto_0

    :cond_6
    iget-object v8, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOTRECHABLEExpand:Landroid/preference/PreferenceScreen;

    if-ne p2, v8, :cond_7

    const/4 v8, 0x2

    iput v8, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreferenceint:I

    goto/16 :goto_0

    :cond_7
    iget-object v8, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFUNCONDITIONALExpand:Landroid/preference/PreferenceScreen;

    if-ne p2, v8, :cond_0

    const/4 v8, 0x3

    iput v8, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreferenceint:I

    goto/16 :goto_0

    :cond_8
    iget-object v8, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOTRECHABLEExpand:Landroid/preference/PreferenceScreen;

    if-eq p2, v8, :cond_1

    iget-object v8, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFUNCONDITIONALExpand:Landroid/preference/PreferenceScreen;

    if-ne p2, v8, :cond_4

    goto/16 :goto_1

    :cond_9
    iget-object v8, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOREPLYExpand:Landroid/preference/PreferenceScreen;

    if-ne p2, v8, :cond_a

    const v8, 0x7f0d06c1

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_a
    iget-object v8, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOTRECHABLEExpand:Landroid/preference/PreferenceScreen;

    if-ne p2, v8, :cond_b

    const v8, 0x7f0d06c2

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_b
    iget-object v8, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFUNCONDITIONALExpand:Landroid/preference/PreferenceScreen;

    if-ne p2, v8, :cond_2

    const v8, 0x7f0d06c3

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_c
    sget-object v3, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    instance-of v8, p2, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v8, :cond_d

    iget-object v8, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p2, v8, :cond_f

    :cond_d
    :goto_3
    sget-object v3, Lcom/android/phone/CdmaCallForwardOptions$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    :cond_e
    sget-object v8, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq v3, v8, :cond_10

    invoke-direct {p0, v3}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    return v10

    :cond_f
    iget-object v8, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v8, :cond_d

    iget-object v8, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v8, :cond_d

    iget-object v8, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v8, :cond_d

    iget-object v8, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v8, :cond_d

    iget-object v8, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v8, :cond_d

    iget-object v8, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v8, :cond_d

    iget-object v8, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p2, v8, :cond_e

    goto :goto_3

    :cond_10
    return v11
.end method

.method public onResume()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    iget v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreferenceint:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFBUSYExpand:Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreference:Landroid/preference/Preference;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOREPLYExpand:Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreference:Landroid/preference/Preference;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOTRECHABLEExpand:Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreference:Landroid/preference/Preference;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFUNCONDITIONALExpand:Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreference:Landroid/preference/Preference;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "app_state_key"

    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v0, "cdma_cf_busy_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "cdma_cf_busy_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFBDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "cdma_cf_noreply_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRyDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "cdma_cf_notrechable_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRcDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "cdma_cf_cancelall_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCancelDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "cdma_cf_unconditional_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFUDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "display_mode_key"

    iget v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDisplayMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    const-string/jumbo v0, "MSET_STATE_CHECK_KEY"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "mpreference_int"

    iget v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreferenceint:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v2, Lcom/android/phone/CdmaCallForwardOptions$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq v1, v2, :cond_1

    return-void

    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-direct {p0, v1}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    return-void

    :catch_1
    move-exception v0

    goto :goto_1
.end method
