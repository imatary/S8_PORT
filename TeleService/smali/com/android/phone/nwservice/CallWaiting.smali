.class public Lcom/android/phone/nwservice/CallWaiting;
.super Landroid/preference/PreferenceActivity;
.source "CallWaiting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/nwservice/CallWaiting$1;,
        Lcom/android/phone/nwservice/CallWaiting$2;,
        Lcom/android/phone/nwservice/CallWaiting$3;
    }
.end annotation


# instance fields
.field private delayedHandler:Landroid/os/Handler;

.field private handler:Landroid/os/Handler;

.field private mCallWaitingList1Pref:Landroid/preference/PreferenceScreen;

.field private mCallWaitingList2Pref:Landroid/preference/PreferenceScreen;

.field private mCallWaitingList3Pref:Landroid/preference/PreferenceScreen;

.field private mGetCallWaitingComplete:Landroid/os/Handler;

.field protected mIsCheckProcess:Z

.field protected mIsForeground:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mSetOptionComplete:Landroid/os/Handler;

.field private mTelMan:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/phone/nwservice/CallWaiting;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/nwservice/CallWaiting;->delayedHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/nwservice/CallWaiting;Landroid/os/AsyncResult;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/nwservice/CallWaiting;->handleGetCWMessage(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/nwservice/CallWaiting;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/nwservice/CallWaiting;->handleSetCWMessage()V

    return-void
.end method

.method static synthetic -wrap2(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/nwservice/CallWaiting;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/nwservice/CallWaiting;->mPreference:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/nwservice/CallWaiting;->mIsForeground:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/nwservice/CallWaiting;->mIsCheckProcess:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/nwservice/CallWaiting;->delayedHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/nwservice/CallWaiting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/nwservice/CallWaiting$1;-><init>(Lcom/android/phone/nwservice/CallWaiting;)V

    iput-object v0, p0, Lcom/android/phone/nwservice/CallWaiting;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/nwservice/CallWaiting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/nwservice/CallWaiting$2;-><init>(Lcom/android/phone/nwservice/CallWaiting;)V

    iput-object v0, p0, Lcom/android/phone/nwservice/CallWaiting;->mGetCallWaitingComplete:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/nwservice/CallWaiting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/nwservice/CallWaiting$3;-><init>(Lcom/android/phone/nwservice/CallWaiting;)V

    iput-object v0, p0, Lcom/android/phone/nwservice/CallWaiting;->mSetOptionComplete:Landroid/os/Handler;

    return-void
.end method

.method private handleGetCWMessage(Landroid/os/AsyncResult;)I
    .locals 8

    const/16 v4, 0x2ee

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    const-string/jumbo v2, "handleGetCWMessage: Error getting CW enable state."

    invoke-static {v2}, Lcom/android/phone/nwservice/CallWaiting;->log(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_0

    const/16 v2, 0x384

    return v2

    :cond_0
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->NOT_SUBCRIBED_USER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_1

    return v4

    :cond_1
    invoke-static {v6}, Lcom/android/phone/PhoneUtilsJpn;->setCheckCurrentSetting(Z)V

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    const/16 v2, 0xc8

    return v2

    :cond_2
    const-string/jumbo v2, "handleGetCWMessage: CW enable state successfully queried."

    invoke-static {v2}, Lcom/android/phone/nwservice/CallWaiting;->log(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    aget v2, v0, v6

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    const-string/jumbo v2, "handleGetCWMessage: CW not Subscribed case"

    invoke-static {v2}, Lcom/android/phone/nwservice/CallWaiting;->log(Ljava/lang/String;)V

    return v4

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syncCWState: Setting UI state consistent with CW enable state of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v2, v0, v6

    if-ne v2, v7, :cond_4

    const-string/jumbo v2, "ENABLED"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/nwservice/CallWaiting;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Service Class = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%08X"

    new-array v4, v7, [Ljava/lang/Object;

    aget v5, v0, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/nwservice/CallWaiting;->log(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/phone/nwservice/CallWaiting;->mIsCheckProcess:Z

    if-eqz v2, :cond_6

    aget v2, v0, v6

    if-ne v2, v7, :cond_5

    aget v2, v0, v7

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    const/16 v2, 0x154

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/CallWaiting;->showDialog(I)V

    :goto_1
    invoke-static {v6}, Lcom/android/phone/PhoneUtilsJpn;->setCheckCurrentSetting(Z)V

    :goto_2
    const/16 v2, 0x64

    return v2

    :cond_4
    const-string/jumbo v2, "DISABLED"

    goto :goto_0

    :cond_5
    const/16 v2, 0x15e

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/CallWaiting;->showDialog(I)V

    goto :goto_1

    :cond_6
    aget v2, v0, v6

    if-ne v2, v7, :cond_7

    aget v2, v0, v7

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/phone/nwservice/CallWaiting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/nwservice/CallWaiting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0b69

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_3
    invoke-static {v6}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/android/phone/nwservice/CallWaiting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/nwservice/CallWaiting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0b6b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_3
.end method

.method private handleSetCWMessage()V
    .locals 3

    const-string/jumbo v0, "handleSetCWMessage: set CW request complete, reading value back from network."

    invoke-static {v0}, Lcom/android/phone/nwservice/CallWaiting;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/nwservice/CallWaiting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/nwservice/CallWaiting;->mGetCallWaitingComplete:Landroid/os/Handler;

    const/16 v2, 0x2bc

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "CallWaiting"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private makeUSSDActivate()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoLTE()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "102#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v1, "CallWaiting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeUSSDActivate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/nwservice/CallWaiting;->procUSSDCommand(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v1, "43#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private makeUSSDCheck()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "*#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoLTE()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "102#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v1, "CallWaiting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeUSSDCheck : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/nwservice/CallWaiting;->procUSSDCommand(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v1, "43#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private makeUSSDDeactive()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoLTE()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "102#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v1, "CallWaiting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeUSSDDeactive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/nwservice/CallWaiting;->procUSSDCommand(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v1, "43#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private procUSSDCommand(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0xc8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/nwservice/CallWaiting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/nwservice/CallWaiting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/CallWaiting;->showDialog(I)V

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsJpn;->setCheckCurrentSetting(Z)V

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    const-string/jumbo v1, "CallWaiting"

    const-string/jumbo v2, "skip USSD request"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/nwservice/CallWaiting;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/CallWaiting;->showDialog(I)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/CallWaiting;->showDialog(I)V

    const-string/jumbo v1, "CallWaiting"

    const-string/jumbo v2, "CallStateException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private requestCWQueryCommand()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/nwservice/CallWaiting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/nwservice/CallWaiting;->mGetCallWaitingComplete:Landroid/os/Handler;

    const/16 v2, 0x2bc

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f07001b

    invoke-virtual {p0, v3}, Lcom/android/phone/nwservice/CallWaiting;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/nwservice/CallWaiting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/nwservice/CallWaiting;->mTelMan:Landroid/telephony/TelephonyManager;

    const-string/jumbo v3, "callwaiting_active_pref"

    invoke-virtual {p0, v3}, Lcom/android/phone/nwservice/CallWaiting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/nwservice/CallWaiting;->mCallWaitingList1Pref:Landroid/preference/PreferenceScreen;

    const-string/jumbo v3, "callwaiting_deactive_pref"

    invoke-virtual {p0, v3}, Lcom/android/phone/nwservice/CallWaiting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/nwservice/CallWaiting;->mCallWaitingList2Pref:Landroid/preference/PreferenceScreen;

    const-string/jumbo v3, "callwaiting_check_pref"

    invoke-virtual {p0, v3}, Lcom/android/phone/nwservice/CallWaiting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/nwservice/CallWaiting;->mCallWaitingList3Pref:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/nwservice/CallWaiting;->mPreference:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/phone/nwservice/CallWaiting;->mCallWaitingList1Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/phone/nwservice/CallWaiting;->mPreference:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/phone/nwservice/CallWaiting;->mCallWaitingList2Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/phone/nwservice/CallWaiting;->mPreference:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/phone/nwservice/CallWaiting;->mCallWaitingList3Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/phone/nwservice/CallWaiting;->mPreference:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/phone/nwservice/CallWaiting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/nwservice/CallWaiting;->handler:Landroid/os/Handler;

    const/16 v5, 0x34

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/phone/nwservice/CallWaiting;->delayedHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/phone/nwservice/CallWaiting;->mIsCheckProcess:Z

    invoke-virtual {p0}, Lcom/android/phone/nwservice/CallWaiting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    const v10, 0x7f0d0ae6

    const v9, 0x7f0d056c

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0xfa

    if-eq p1, v6, :cond_0

    const/16 v6, 0x3e8

    if-ne p1, v6, :cond_1

    :cond_0
    sparse-switch p1, :sswitch_data_0

    const/4 v6, 0x0

    return-object v6

    :sswitch_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const v6, 0x7f0d0b0b

    invoke-virtual {p0, v6}, Lcom/android/phone/nwservice/CallWaiting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object v1

    :cond_1
    const/16 v6, 0x136

    if-eq p1, v6, :cond_2

    const/16 v6, 0x140

    if-ne p1, v6, :cond_3

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sparse-switch p1, :sswitch_data_1

    const v4, 0x7f0d0b6b

    :goto_0
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/CallWaiting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v9}, Lcom/android/phone/nwservice/CallWaiting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Lcom/android/phone/nwservice/CallWaiting$4;

    invoke-direct {v7, p0}, Lcom/android/phone/nwservice/CallWaiting$4;-><init>(Lcom/android/phone/nwservice/CallWaiting;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    :cond_3
    const/16 v6, 0x14a

    if-eq p1, v6, :cond_2

    const/16 v6, 0x154

    if-eq p1, v6, :cond_2

    const/16 v6, 0x15e

    if-eq p1, v6, :cond_2

    const/16 v6, 0xc8

    if-eq p1, v6, :cond_4

    const/16 v6, 0x12c

    if-ne p1, v6, :cond_5

    :cond_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sparse-switch p1, :sswitch_data_2

    const v4, 0x7f0d0392

    :goto_1
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/CallWaiting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v9}, Lcom/android/phone/nwservice/CallWaiting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Lcom/android/phone/nwservice/CallWaiting$5;

    invoke-direct {v7, p0}, Lcom/android/phone/nwservice/CallWaiting$5;-><init>(Lcom/android/phone/nwservice/CallWaiting;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    :sswitch_1
    const v4, 0x7f0d0b69

    goto :goto_0

    :sswitch_2
    const v4, 0x7f0d0b6a

    goto :goto_0

    :sswitch_3
    const v4, 0x7f0d0b45

    invoke-virtual {p0, v10}, Lcom/android/phone/nwservice/CallWaiting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :sswitch_4
    const v4, 0x7f0d0b46

    invoke-virtual {p0, v10}, Lcom/android/phone/nwservice/CallWaiting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_5
    const/16 v6, 0x320

    if-eq p1, v6, :cond_4

    const/16 v6, 0x2bc

    if-eq p1, v6, :cond_4

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v6

    return-object v6

    :sswitch_5
    const v4, 0x7f0d0391

    goto :goto_1

    :sswitch_6
    const v4, 0x7f0d0393

    goto :goto_1

    :sswitch_7
    const v4, 0x7f0d061a

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0xfa -> :sswitch_0
        0x3e8 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x136 -> :sswitch_1
        0x14a -> :sswitch_2
        0x154 -> :sswitch_3
        0x15e -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x12c -> :sswitch_5
        0x2bc -> :sswitch_7
        0x320 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/nwservice/CallWaiting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/nwservice/CallWaiting;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/nwservice/CallWaiting;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    if-gtz v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.nwservice.NetworkService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.phone.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/CallWaiting;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/nwservice/CallWaiting;->finish()V

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "CallWaiting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/nwservice/CallWaiting;->mIsForeground:Z

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    const/16 v2, 0x3e8

    const/16 v5, 0xfa

    const/16 v1, 0xc8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v3

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/nwservice/CallWaiting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/nwservice/CallWaiting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-ne v0, v4, :cond_1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/CallWaiting;->showDialog(I)V

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    :goto_1
    iput-boolean v3, p0, Lcom/android/phone/nwservice/CallWaiting;->mIsCheckProcess:Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoLTE()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/phone/nwservice/CallWaiting;->makeUSSDActivate()V

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/CallWaiting;->showDialog(I)V

    :goto_2
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/phone/nwservice/CallWaiting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/nwservice/CallWaiting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v2, 0x2bc

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    invoke-virtual {p0, v5}, Lcom/android/phone/nwservice/CallWaiting;->showDialog(I)V

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/nwservice/CallWaiting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/nwservice/CallWaiting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-ne v0, v4, :cond_4

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/CallWaiting;->showDialog(I)V

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    :goto_3
    iput-boolean v3, p0, Lcom/android/phone/nwservice/CallWaiting;->mIsCheckProcess:Z

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoLTE()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/phone/nwservice/CallWaiting;->makeUSSDDeactive()V

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/CallWaiting;->showDialog(I)V

    :goto_4
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/phone/nwservice/CallWaiting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/nwservice/CallWaiting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v2, 0x2bc

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    invoke-virtual {p0, v5}, Lcom/android/phone/nwservice/CallWaiting;->showDialog(I)V

    goto :goto_4

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/nwservice/CallWaiting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/nwservice/CallWaiting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-ne v0, v4, :cond_7

    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/CallWaiting;->showDialog(I)V

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsJpn;->setCheckCurrentSetting(Z)V

    return v3

    :cond_7
    iput-boolean v4, p0, Lcom/android/phone/nwservice/CallWaiting;->mIsCheckProcess:Z

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoLTE()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/phone/nwservice/CallWaiting;->makeUSSDCheck()V

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/CallWaiting;->showDialog(I)V

    :goto_5
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsJpn;->setCheckCurrentSetting(Z)V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/android/phone/nwservice/CallWaiting;->requestCWQueryCommand()V

    invoke-virtual {p0, v5}, Lcom/android/phone/nwservice/CallWaiting;->showDialog(I)V

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/nwservice/CallWaiting;->mIsForeground:Z

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    return-void
.end method
