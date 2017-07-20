.class public Lcom/android/phone/CdmaCallBarring;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "CdmaCallBarring.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaCallBarring$1;,
        Lcom/android/phone/CdmaCallBarring$AppState;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-phone-CdmaCallBarring$AppStateSwitchesValues:[I


# instance fields
.field private mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

.field private mButtonCDMAMoreExpand:Landroid/preference/PreferenceScreen;

.field private mButtonDS:Landroid/preference/ListPreference;

.field private mButtonIncoming:Landroid/preference/ListPreference;

.field private mButtonOutgoing:Landroid/preference/ListPreference;

.field private mButtonPasswd:Lcom/android/phone/EditPinPreference;

.field private mDisplayMode:I

.field private mIsBusyDialogAvailable:Z

.field private mMoreDataStale:Z

.field private mNetworkServiceHandler:Landroid/os/Handler;

.field private mNewIncoming:Ljava/lang/String;

.field private mNewOutgoing:Ljava/lang/String;

.field private mNewPassWD:Ljava/lang/String;

.field private mOldIncoming:Ljava/lang/String;

.field private mOldOutgoing:Ljava/lang/String;

.field private mPassWD:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPwState:I

.field private mSetState:I

.field private mSetState_check:Z

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private temp_NewPassWD:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/phone/CdmaCallBarring;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/CdmaCallBarring;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private static synthetic -getcom-android-phone-CdmaCallBarring$AppStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/phone/CdmaCallBarring;->-com-android-phone-CdmaCallBarring$AppStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/CdmaCallBarring;->-com-android-phone-CdmaCallBarring$AppStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/CdmaCallBarring$AppState;->values()[Lcom/android/phone/CdmaCallBarring$AppState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/phone/CdmaCallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaCallBarring$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaCallBarring$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/phone/CdmaCallBarring$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallBarring$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaCallBarring$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/phone/CdmaCallBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallBarring$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaCallBarring$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaCallBarring$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/phone/CdmaCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallBarring$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaCallBarring$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/phone/CdmaCallBarring$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallBarring$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaCallBarring$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/android/phone/CdmaCallBarring;->-com-android-phone-CdmaCallBarring$AppStateSwitchesValues:[I

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

.method static synthetic -wrap0(Lcom/android/phone/CdmaCallBarring;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CdmaCallBarring;->dismissExpandedDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallBarring;->mMoreDataStale:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallBarring;->mIsBusyDialogAvailable:Z

    new-instance v0, Lcom/android/phone/CdmaCallBarring$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaCallBarring$1;-><init>(Lcom/android/phone/CdmaCallBarring;)V

    iput-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    return-void
.end method

.method private changeCallBarringValue()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v2, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/CdmaCallBarring;->saveCallBarringOutgoing(I)V

    invoke-direct {p0, v1}, Lcom/android/phone/CdmaCallBarring;->updateCBOutgoingSummary(I)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mOldOutgoing:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    iput v5, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    :goto_1
    iput v4, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    return-void

    :cond_1
    iget v2, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallBarring;->saveCallBarringIncoming(I)V

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallBarring;->updateCBIncomingSummary(I)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mOldIncoming:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iput v4, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    goto :goto_1
.end method

.method private checkCallBarringPassword(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    invoke-direct {p0, v1, p1}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    invoke-direct {p0, v1, p1}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    goto :goto_0
.end method

.method private final dismissBusyDialog()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/CdmaCallBarring;->mIsBusyDialogAvailable:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallBarring;->dismissDialog(I)V

    :cond_0
    return-void
.end method

.method private dismissExpandedDialog()V
    .locals 1

    iget v0, p0, Lcom/android/phone/CdmaCallBarring;->mDisplayMode:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, -0x3

    iput v0, p0, Lcom/android/phone/CdmaCallBarring;->mDisplayMode:I

    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallBarring;->setAppState(Lcom/android/phone/CdmaCallBarring$AppState;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mButtonCDMAMoreExpand:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mButtonCDMAMoreExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
    .end packed-switch
.end method

.method private final displayPasswdDialog(IZ)V
    .locals 4

    iget v1, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    packed-switch v1, :pswitch_data_0

    const v0, 0x7f0d05d7

    :goto_0
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/phone/CdmaCallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    :goto_1
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    :cond_0
    return-void

    :pswitch_0
    const v0, 0x7f0d05d4

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0d05d2

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0d06b4

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPinPreference;->setDialogMessage(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final getCallBarringPasswd()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "cb_passwd_key"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initCallBarringPassword(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    if-eq v0, v3, :cond_0

    iput v1, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->temp_NewPassWD:Ljava/lang/String;

    if-nez v0, :cond_2

    iput v2, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    :cond_1
    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    return-void

    :cond_2
    iput-object v4, p0, Lcom/android/phone/CdmaCallBarring;->temp_NewPassWD:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    if-nez v0, :cond_1

    iput v1, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    goto :goto_0
.end method

.method private final saveCallBarringIncoming(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallBarring;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "cb_incoming_key"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private final saveCallBarringOutgoing(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallBarring;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "cb_outgoing_key"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private final saveCallBarringPasswd(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "cb_passwd_key"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setAppState(Lcom/android/phone/CdmaCallBarring$AppState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallBarring$AppState;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaCallBarring;->setAppState(Lcom/android/phone/CdmaCallBarring$AppState;I)V

    return-void
.end method

.method private setAppState(Lcom/android/phone/CdmaCallBarring$AppState;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/16 v3, 0x64

    const/16 v2, 0x384

    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallBarring$AppState;

    if-ne p1, v0, :cond_3

    sparse-switch p2, :sswitch_data_0

    :goto_0
    iput-object p1, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallBarring$AppState;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallBarring;->dismissDialog(I)V

    :goto_1
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallBarring;->showDialog(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/CdmaCallBarring;->dismissBusyDialog()V

    goto :goto_1

    :sswitch_1
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallBarring;->showDialog(I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallBarring$AppState;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallBarring;->dismissDialog(I)V

    :goto_2
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallBarring;->showDialog(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/CdmaCallBarring;->dismissBusyDialog()V

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/android/phone/CdmaCallBarring;->-getcom-android-phone-CdmaCallBarring$AppStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaCallBarring$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_4
    :goto_3
    iput-object p1, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    return-void

    :pswitch_0
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    if-eq p1, v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallBarring$AppState;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallBarring;->showDialog(I)V

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaCallBarring$AppState;

    if-ne p1, v0, :cond_6

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallBarring;->showDialog(I)V

    goto :goto_3

    :cond_6
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallBarring$AppState;

    if-ne p1, v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "illegal transition from INPUT_READY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    if-eq p1, v0, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallBarring;->showDialog(I)V

    goto :goto_3

    :pswitch_3
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    if-eq p1, v0, :cond_7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallBarring;->dismissDialog(I)V

    goto :goto_3

    :pswitch_4
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    if-eq p1, v0, :cond_8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-direct {p0}, Lcom/android/phone/CdmaCallBarring;->dismissBusyDialog()V

    goto :goto_3

    :pswitch_5
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallBarring$AppState;

    if-eq p1, v0, :cond_9

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "illegal transition from WAITING_NUMBER_SELECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-direct {p0}, Lcom/android/phone/CdmaCallBarring;->dismissBusyDialog()V

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

.method private updateCBIncomingSummary(I)V
    .locals 2

    const v1, 0x7f0d06bd

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    const v1, 0x7f0d06be

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateCBOutgoingSummary(I)V
    .locals 2

    const v1, 0x7f0d06b9

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    const v1, 0x7f0d06ba

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallBarring$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallBarring$AppState;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallBarring;->setAppState(Lcom/android/phone/CdmaCallBarring$AppState;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    return-void

    :cond_1
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallBarring;->setAppState(Lcom/android/phone/CdmaCallBarring$AppState;)V

    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/CdmaCallBarring;->dismissExpandedDialog()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallBarring;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    const v2, 0x7f070020

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallBarring;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p1, :cond_8

    const-string/jumbo v2, "app_state_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CdmaCallBarring$AppState;

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    const-string/jumbo v2, "display_mode_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/phone/CdmaCallBarring;->mDisplayMode:I

    const-string/jumbo v2, "MPASSWORD_STATE_KEY"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    const-string/jumbo v2, "MSET_STATE_KEY"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    const-string/jumbo v2, "MSET_STATE_CHECK_KEY"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/CdmaCallBarring;->mSetState_check:Z

    const-string/jumbo v2, "MOUTGOING_VALUE_KEY"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    const-string/jumbo v2, "MINCOMING_VALUE_KEY"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    const-string/jumbo v2, "MNEWPASSWD_VALUE_KEY"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    const-string/jumbo v2, "MTEMP_NEWPASSWD_VALUE_KEY"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->temp_NewPassWD:Ljava/lang/String;

    :goto_0
    const-string/jumbo v2, "button_outgoing_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mOldOutgoing:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mOldOutgoing:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/CdmaCallBarring;->updateCBOutgoingSummary(I)V

    :cond_0
    const-string/jumbo v2, "button_incoming_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mOldIncoming:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mOldIncoming:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/CdmaCallBarring;->updateCBIncomingSummary(I)V

    :cond_1
    const-string/jumbo v2, "button_cbpasswd_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPinPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/phone/CdmaCallBarring;->getCallBarringPasswd()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    :cond_2
    invoke-direct {p0, v4}, Lcom/android/phone/CdmaCallBarring;->initCallBarringPassword(Z)V

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallBarring;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_3
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v5, :cond_9

    :cond_4
    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallBarring;->showDialog(I)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_5
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_6
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    :cond_7
    return-void

    :cond_8
    iput-boolean v5, p0, Lcom/android/phone/CdmaCallBarring;->mMoreDataStale:Z

    iput-boolean v4, p0, Lcom/android/phone/CdmaCallBarring;->mSetState_check:Z

    iput-object v3, p0, Lcom/android/phone/CdmaCallBarring;->temp_NewPassWD:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
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

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d032c

    invoke-virtual {p0, v5}, Lcom/android/phone/CdmaCallBarring;->getText(I)Ljava/lang/CharSequence;

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
    iput-boolean v6, p0, Lcom/android/phone/CdmaCallBarring;->mIsBusyDialogAvailable:Z

    invoke-virtual {v2, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const v5, 0x7f0d032f

    invoke-virtual {p0, v5}, Lcom/android/phone/CdmaCallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v5, p0, Lcom/android/phone/CdmaCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v6, 0x258

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelMessage(Landroid/os/Message;)V

    const v5, 0x7f0d032e

    invoke-virtual {p0, v5}, Lcom/android/phone/CdmaCallBarring;->getText(I)Ljava/lang/CharSequence;

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

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d032d

    sparse-switch p1, :sswitch_data_1

    const v3, 0x7f0d0332

    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaCallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallBarring;->getText(I)Ljava/lang/CharSequence;

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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallBarring;->finish()V

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPinEntered(Lcom/android/phone/EditPinPreference;Z)V
    .locals 6

    const v5, 0x7f0d06b5

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    if-ne p1, v1, :cond_4

    if-nez p2, :cond_3

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallBarring;->mSetState_check:Z

    if-nez v1, :cond_1

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    iput v3, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    iput v4, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    :goto_0
    invoke-direct {p0, v3}, Lcom/android/phone/CdmaCallBarring;->initCallBarringPassword(Z)V

    return-void

    :cond_0
    iput v3, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/android/phone/CdmaCallBarring;->mSetState_check:Z

    iput v3, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    iput v4, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    goto :goto_0

    :cond_2
    iput v3, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    packed-switch v1, :pswitch_data_0

    :cond_4
    :goto_1
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput v4, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    invoke-direct {p0, v3, v4}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, v5, v4}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    goto :goto_1

    :pswitch_1
    iput-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_7

    :cond_6
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    iput v4, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    const v1, 0x7f0d06b6

    invoke-direct {p0, v1, v4}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->temp_NewPassWD:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    invoke-direct {p0, v3, v4}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    iput v3, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/CdmaCallBarring;->saveCallBarringPasswd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/CdmaCallBarring;->changeCallBarringValue()V

    invoke-direct {p0, v3, v3}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    goto :goto_1

    :cond_8
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    iput v4, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    invoke-direct {p0, v5, v4}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/android/phone/CdmaCallBarring;->changeCallBarringValue()V

    invoke-direct {p0, v3}, Lcom/android/phone/CdmaCallBarring;->initCallBarringPassword(Z)V

    goto :goto_1

    :cond_9
    invoke-direct {p0, v5, v4}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_1

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mOldOutgoing:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iput v3, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    invoke-direct {p0, v3}, Lcom/android/phone/CdmaCallBarring;->checkCallBarringPassword(Z)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_3

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mOldIncoming:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    invoke-direct {p0, v3}, Lcom/android/phone/CdmaCallBarring;->checkCallBarringPassword(Z)V

    return v2

    :cond_3
    return v3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    sget-object v2, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonDS:Landroid/preference/ListPreference;

    if-ne p2, v1, :cond_1

    return v3

    :cond_1
    sget-object v1, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    if-eq v0, v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallBarring;->setAppState(Lcom/android/phone/CdmaCallBarring$AppState;)V

    const/4 v1, 0x1

    return v1

    :cond_2
    return v3
.end method

.method public onResume()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "app_state_key"

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v0, "display_mode_key"

    iget v1, p0, Lcom/android/phone/CdmaCallBarring;->mDisplayMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallBarring;->mSetState_check:Z

    const-string/jumbo v0, "MPASSWORD_STATE_KEY"

    iget v1, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "MSET_STATE_KEY"

    iget v1, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "MSET_STATE_CHECK_KEY"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallBarring;->mSetState_check:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "MOUTGOING_VALUE_KEY"

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "MINCOMING_VALUE_KEY"

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "MNEWPASSWD_VALUE_KEY"

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "MTEMP_NEWPASSWD_VALUE_KEY"

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->temp_NewPassWD:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 4

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

    const-string/jumbo v1, "call features settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityForResult() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    sget-object v2, Lcom/android/phone/CdmaCallBarring$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallBarring$AppState;

    if-eq v1, v2, :cond_1

    return-void

    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    sget-object v1, Lcom/android/phone/CdmaCallBarring$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallBarring$AppState;

    invoke-direct {p0, v1}, Lcom/android/phone/CdmaCallBarring;->setAppState(Lcom/android/phone/CdmaCallBarring$AppState;)V

    return-void

    :catch_1
    move-exception v0

    const-string/jumbo v1, "call features settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityForResult() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
