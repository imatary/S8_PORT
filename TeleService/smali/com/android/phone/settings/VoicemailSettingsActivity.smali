.class public Lcom/android/phone/settings/VoicemailSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "VoicemailSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/VoicemailSettingsActivity$1;,
        Lcom/android/phone/settings/VoicemailSettingsActivity$2;,
        Lcom/android/phone/settings/VoicemailSettingsActivity$3;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mChangingVMorFwdDueToProviderChange:Z

.field private mCurrentDialogId:I

.field private mExpectedChangeResultReasons:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mForeground:Z

.field private mForwardingChangeResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/AsyncResult;",
            ">;"
        }
    .end annotation
.end field

.field private mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

.field private mFwdChangesRequireRollback:Z

.field private final mGetOptionComplete:Landroid/os/Handler;

.field private mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field private mNewVMNumber:Ljava/lang/String;

.field private mOldVmNumber:Ljava/lang/String;

.field private mOmtpVvmCarrierConfigHelper:Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreviousVMProviderKey:Ljava/lang/String;

.field private final mRevertOptionComplete:Landroid/os/Handler;

.field private final mSetOptionComplete:Landroid/os/Handler;

.field private mShowVoicemailPreference:Z

.field private mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

.field private mSubscriptionInfoHelper:Lcom/android/phone/SubscriptionInfoHelper;

.field private mVMChangeCompletedSuccessfully:Z

.field private mVMOrFwdSetError:I

.field private mVMProviderSettingsForced:Z

.field private mVoicemailChangeResult:Landroid/os/AsyncResult;

.field private mVoicemailNotificationRingtone:Lcom/android/phone/settings/VoicemailRingtonePreference;

.field private mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

.field private mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

.field private mVoicemailSettings:Landroid/preference/PreferenceScreen;

.field private mVoicemailVisualVoicemail:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/settings/VoicemailSettingsActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/settings/VoicemailSettingsActivity;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/settings/VoicemailSettingsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mFwdChangesRequireRollback:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/phone/settings/VoicemailSettingsActivity;)Lcom/android/phone/SubscriptionInfoHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubscriptionInfoHelper:Lcom/android/phone/SubscriptionInfoHelper;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/settings/VoicemailSettingsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMChangeCompletedSuccessfully:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/phone/settings/VoicemailSettingsActivity;)Landroid/os/AsyncResult;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/settings/VoicemailSettingsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mFwdChangesRequireRollback:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/settings/VoicemailSettingsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMChangeCompletedSuccessfully:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/phone/settings/VoicemailSettingsActivity;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/settings/VoicemailSettingsActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->isForwardingCompleted()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/settings/VoicemailSettingsActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->isFwdChangeSuccess()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/phone/settings/VoicemailSettingsActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->isVmChangeSuccess()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/phone/settings/VoicemailSettingsActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/settings/VoicemailSettingsActivity;->dismissDialogSafely(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/settings/VoicemailSettingsActivity;Landroid/os/AsyncResult;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/settings/VoicemailSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->handleSetVmOrFwdMessage()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/phone/settings/VoicemailSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->onRevertDone()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/phone/settings/VoicemailSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->setVoicemailNumberWithCarrier()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/settings/VoicemailSettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/VoicemailSettingsActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;

    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mExpectedChangeResultReasons:Ljava/util/Collection;

    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iput-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    iput v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mCurrentDialogId:I

    iput-boolean v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMProviderSettingsForced:Z

    iput-boolean v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mChangingVMorFwdDueToProviderChange:Z

    iput-boolean v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMChangeCompletedSuccessfully:Z

    iput-boolean v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mFwdChangesRequireRollback:Z

    iput v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMOrFwdSetError:I

    iput-boolean v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mShowVoicemailPreference:Z

    new-instance v0, Lcom/android/phone/settings/VoicemailSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/VoicemailSettingsActivity$1;-><init>(Lcom/android/phone/settings/VoicemailSettingsActivity;)V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mGetOptionComplete:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/settings/VoicemailSettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/VoicemailSettingsActivity$2;-><init>(Lcom/android/phone/settings/VoicemailSettingsActivity;)V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSetOptionComplete:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/settings/VoicemailSettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/VoicemailSettingsActivity$3;-><init>(Lcom/android/phone/settings/VoicemailSettingsActivity;)V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mRevertOptionComplete:Landroid/os/Handler;

    return-void
.end method

.method private dismissDialogSafely(I)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/settings/VoicemailSettingsActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V
    .locals 8

    const/16 v6, 0x25a

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    :cond_0
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    :cond_1
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    if-nez v3, :cond_2

    return-void

    :cond_2
    if-eqz v1, :cond_3

    iput-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {p0, v6}, Lcom/android/phone/settings/VoicemailSettingsActivity;->dismissDialogSafely(I)V

    const/16 v3, 0x1f6

    invoke-direct {p0, v3}, Lcom/android/phone/settings/VoicemailSettingsActivity;->showDialogIfForeground(I)V

    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v5, Lcom/android/phone/settings/VoicemailProviderSettings;->FORWARDING_SETTINGS_REASONS:[I

    aget v5, v5, p2

    invoke-static {v3, v5}, Lcom/android/phone/settings/CallForwardInfoUtil;->getCallForwardInfo([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v3

    aput-object v3, v4, p2

    const/4 v0, 0x1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v3, v3, v2

    if-nez v3, :cond_7

    const/4 v0, 0x0

    :cond_4
    if-eqz v0, :cond_6

    invoke-direct {p0, v6}, Lcom/android/phone/settings/VoicemailSettingsActivity;->dismissDialogSafely(I)V

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, ""

    new-instance v5, Lcom/android/phone/settings/VoicemailProviderSettings;

    iget-object v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mOldVmNumber:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v5, v6, v7}, Lcom/android/phone/settings/VoicemailProviderSettings;-><init>(Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-static {v3, v4, v5}, Lcom/android/phone/settings/VoicemailProviderSettingsUtil;->save(Landroid/content/Context;Ljava/lang/String;Lcom/android/phone/settings/VoicemailProviderSettings;)V

    :cond_5
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->saveVoiceMailAndForwardingNumberStage2()V

    :cond_6
    return-void

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private handleSetVmOrFwdMessage()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->isFwdChangeSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1f5

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->handleVmOrFwdSetError(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->isVmChangeSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->handleVmOrFwdSetError(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->handleVmAndFwdSetSuccess(I)V

    goto :goto_0
.end method

.method private handleVmAndFwdSetSuccess(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {v0}, Lcom/android/phone/settings/VoicemailProviderListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mChangingVMorFwdDueToProviderChange:Z

    invoke-direct {p0, p1}, Lcom/android/phone/settings/VoicemailSettingsActivity;->showDialogIfForeground(I)V

    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->updateVoiceNumberField()V

    return-void
.end method

.method private handleVmOrFwdSetError(I)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mChangingVMorFwdDueToProviderChange:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMOrFwdSetError:I

    iput-boolean v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mChangingVMorFwdDueToProviderChange:Z

    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->switchToPreviousVoicemailProvider()V

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mChangingVMorFwdDueToProviderChange:Z

    invoke-direct {p0, p1}, Lcom/android/phone/settings/VoicemailSettingsActivity;->showDialogIfForeground(I)V

    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->updateVoiceNumberField()V

    return-void
.end method

.method private isForwardingCompleted()Z
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    return v2

    :cond_2
    return v3
.end method

.method private isFwdChangeSuccess()Z
    .locals 7

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;

    if-nez v4, :cond_0

    return v5

    :cond_0
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    :goto_0
    sget-object v4, Lcom/android/phone/settings/VoicemailSettingsActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to change forwarding setting. Reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return v4

    :cond_2
    const-string/jumbo v1, ""

    goto :goto_0

    :cond_3
    return v5
.end method

.method private isVmChangeSuccess()Z
    .locals 4

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    sget-object v1, Lcom/android/phone/settings/VoicemailSettingsActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to change voicemail. Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private onRevertDone()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->updateVoiceNumberField()V

    iget v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMOrFwdSetError:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMOrFwdSetError:I

    invoke-direct {p0, v0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->showDialogIfForeground(I)V

    iput v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMOrFwdSetError:I

    :cond_0
    return-void
.end method

.method private resetForwardingChangeState()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mExpectedChangeResultReasons:Ljava/util/Collection;

    return-void
.end method

.method private saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/settings/VoicemailProviderSettings;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/android/phone/settings/VoicemailProviderSettings;->getVoicemailNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewVMNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewVMNumber:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string/jumbo v2, ""

    :goto_0
    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewVMNumber:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/phone/settings/VoicemailProviderSettings;->getForwardingSettings()[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/android/phone/settings/VoicemailProviderSettings;->NO_FORWARDING:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    :cond_0
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v3, Lcom/android/phone/settings/VoicemailProviderSettings;->NO_FORWARDING:[Lcom/android/internal/telephony/CallForwardInfo;

    if-ne v2, v3, :cond_2

    const/16 v2, 0x190

    invoke-direct {p0, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->showDialogIfForeground(I)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewVMNumber:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, p2}, Lcom/android/phone/settings/VoicemailProviderSettingsUtil;->save(Landroid/content/Context;Ljava/lang/String;Lcom/android/phone/settings/VoicemailProviderSettings;)V

    iput-boolean v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMChangeCompletedSuccessfully:Z

    iput-boolean v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mFwdChangesRequireRollback:Z

    iput v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMOrFwdSetError:I

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v3, Lcom/android/phone/settings/VoicemailProviderSettings;->NO_FORWARDING:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->setVoicemailNumberWithCarrier()V

    :goto_1
    return-void

    :cond_4
    sget-object v2, Lcom/android/phone/settings/VoicemailProviderSettings;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v2

    new-array v2, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/phone/settings/VoicemailProviderSettings;->FORWARDING_SETTINGS_REASONS:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mGetOptionComplete:Landroid/os/Handler;

    const/16 v5, 0x1f6

    invoke-virtual {v4, v5, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/16 v2, 0x25a

    invoke-direct {p0, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->showDialogIfForeground(I)V

    goto :goto_1
.end method

.method private saveVoiceMailAndForwardingNumberStage2()V
    .locals 9

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;

    iput-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->resetForwardingChangeState()V

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v1, v4, v3

    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iget v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v4, v5}, Lcom/android/phone/settings/CallForwardInfoUtil;->infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/settings/CallForwardInfoUtil;->isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSetOptionComplete:Landroid/os/Handler;

    iget v6, v1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    const/16 v7, 0x1f5

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v6, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/android/phone/settings/CallForwardInfoUtil;->setCallForwardingOption(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CallForwardInfo;Landroid/os/Message;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0x259

    invoke-direct {p0, v4}, Lcom/android/phone/settings/VoicemailSettingsActivity;->showDialogIfForeground(I)V

    return-void
.end method

.method private setVoicemailNumberWithCarrier()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private showDialogIfForeground(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForeground:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/phone/settings/VoicemailSettingsActivity;->showDialog(I)V

    :cond_0
    return-void
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private switchToPreviousVoicemailProvider()V
    .locals 11

    iget-object v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    if-nez v6, :cond_0

    return-void

    :cond_0
    iget-boolean v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMChangeCompletedSuccessfully:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mFwdChangesRequireRollback:Z

    if-eqz v6, :cond_5

    :cond_1
    const/16 v6, 0x25b

    invoke-direct {p0, v6}, Lcom/android/phone/settings/VoicemailSettingsActivity;->showDialogIfForeground(I)V

    iget-object v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/android/phone/settings/VoicemailProviderSettingsUtil;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/android/phone/settings/VoicemailProviderSettings;

    move-result-object v3

    if-nez v3, :cond_2

    sget-object v6, Lcom/android/phone/settings/VoicemailSettingsActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "VoicemailProviderSettings for the key \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\" is null but should be loaded."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-boolean v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMChangeCompletedSuccessfully:Z

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Lcom/android/phone/settings/VoicemailProviderSettings;->getVoicemailNumber()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewVMNumber:Ljava/lang/String;

    sget-object v6, Lcom/android/phone/settings/VoicemailSettingsActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "VM change is already completed successfully.Have to revert VM back to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewVMNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " again."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v7, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mNewVMNumber:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v10, 0x1f4

    invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_3
    iget-boolean v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mFwdChangesRequireRollback:Z

    if-eqz v6, :cond_6

    sget-object v6, Lcom/android/phone/settings/VoicemailSettingsActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "Requested to rollback forwarding changes."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/phone/settings/VoicemailProviderSettings;->getForwardingSettings()[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForwardingChangeResults:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->resetForwardingChangeState()V

    const/4 v1, 0x0

    :goto_0
    array-length v6, v2

    if-ge v1, v6, :cond_6

    aget-object v0, v2, v1

    iget v6, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    if-eqz v4, :cond_4

    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mExpectedChangeResultReasons:Ljava/util/Collection;

    iget v7, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v7, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v8, 0x1f5

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v1, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-static {v6, v0, v7}, Lcom/android/phone/settings/CallForwardInfoUtil;->setCallForwardingOption(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CallForwardInfo;Landroid/os/Message;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->onRevertDone()V

    :cond_6
    return-void
.end method

.method private updateVMPreferenceWidgets(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {v3, p1}, Lcom/android/phone/settings/VoicemailProviderListPreference;->getVoicemailProvider(Ljava/lang/String;)Lcom/android/phone/settings/VoicemailProviderListPreference$VoicemailProvider;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    const v4, 0x7f0d0340

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/settings/VoicemailProviderListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, v1, Lcom/android/phone/settings/VoicemailProviderListPreference$VoicemailProvider;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {v3, v2}, Lcom/android/phone/settings/VoicemailProviderListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    iget-object v4, v1, Lcom/android/phone/settings/VoicemailProviderListPreference$VoicemailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateVoiceNumberField()V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mOldVmNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mOldVmNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f0d04a8

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mOldVmNumber:Ljava/lang/String;

    sget-object v3, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v2, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 16

    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMProviderSettingsForced:Z

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMProviderSettingsForced:Z

    const/4 v15, 0x0

    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_2

    const/4 v9, 0x1

    :cond_0
    :goto_0
    if-eqz v9, :cond_7

    if-eqz v13, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->switchToPreviousVoicemailProvider()V

    :cond_1
    return-void

    :cond_2
    if-nez p3, :cond_3

    const/4 v9, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "com.android.phone.Signout"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v13, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->switchToPreviousVoicemailProvider()V

    :goto_1
    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {v1}, Lcom/android/phone/settings/VoicemailProviderListPreference;->getKey()Ljava/lang/String;

    move-result-object v14

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v12, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/phone/settings/VoicemailSettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "com.android.phone.VoicemailNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    :cond_6
    const/4 v9, 0x1

    goto :goto_0

    :cond_7
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mChangingVMorFwdDueToProviderChange:Z

    const-string/jumbo v1, "com.android.phone.ForwardingNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v1, "com.android.phone.ForwardingNumberTime"

    const/16 v2, 0x14

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {v1}, Lcom/android/phone/settings/VoicemailProviderListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/settings/VoicemailProviderSettings;

    invoke-direct {v2, v15, v10, v11}, Lcom/android/phone/settings/VoicemailProviderSettings;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/settings/VoicemailProviderSettings;)V

    return-void

    :cond_8
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_e

    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_9

    return-void

    :cond_9
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "data1"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_a

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_a
    return-void

    :cond_b
    if-eqz v7, :cond_c

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_c
    return-void

    :catchall_0
    move-exception v1

    if-eqz v7, :cond_d

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v1

    :cond_e
    invoke-super/range {p0 .. p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/16 v2, 0x1f6

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string/jumbo v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->finish()V

    :cond_1
    return-void

    :pswitch_0
    iget v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mCurrentDialogId:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->switchToPreviousVoicemailProvider()V

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mCurrentDialogId:I

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->setVoicemailNumberWithCarrier()V

    :goto_2
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->finish()V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mShowVoicemailPreference:Z

    new-instance v0, Lcom/android/phone/SubscriptionInfoHelper;

    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/SubscriptionInfoHelper;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubscriptionInfoHelper:Lcom/android/phone/SubscriptionInfoHelper;

    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubscriptionInfoHelper:Lcom/android/phone/SubscriptionInfoHelper;

    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02f2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/SubscriptionInfoHelper;->setActionBarTitle(Landroid/app/ActionBar;Landroid/content/res/Resources;I)V

    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubscriptionInfoHelper:Lcom/android/phone/SubscriptionInfoHelper;

    invoke-virtual {v0}, Lcom/android/phone/SubscriptionInfoHelper;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mOmtpVvmCarrierConfigHelper:Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/phone/settings/VoicemailDialogUtil;->getDialog(Lcom/android/phone/settings/VoicemailSettingsActivity;I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .locals 3

    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v1, :cond_1

    new-instance v0, Lcom/android/phone/settings/VoicemailProviderSettings;

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/phone/settings/VoicemailProviderSettings;->NO_FORWARDING:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v0, v1, v2}, Lcom/android/phone/settings/VoicemailProviderSettings;-><init>(Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {v1}, Lcom/android/phone/settings/VoicemailProviderListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/settings/VoicemailProviderSettings;)V

    :cond_1
    return-void
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->updateVoiceNumberField()V

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0d02f3

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForeground:Z

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    if-ne p1, v3, :cond_3

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v5

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/phone/settings/VoicemailSettingsActivity;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/android/phone/settings/VoicemailProviderSettingsUtil;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/android/phone/settings/VoicemailProviderSettings;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v3, Lcom/android/phone/settings/VoicemailSettingsActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Saved preferences not found - invoking config"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMProviderSettingsForced:Z

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v3}, Lcom/android/phone/settings/VoicemailSettingsActivity;->simulatePreferenceClick(Landroid/preference/Preference;)V

    :cond_1
    :goto_0
    return v5

    :cond_2
    iput-boolean v5, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mChangingVMorFwdDueToProviderChange:Z

    invoke-direct {p0, v1, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/settings/VoicemailProviderSettings;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/phone/settings/VoicemailNotificationSettingsUtil;->setVibrationEnabled(Lcom/android/internal/telephony/Phone;Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailVisualVoicemail:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3, v0, v5}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->setVisualVoicemailEnabled(Lcom/android/internal/telephony/Phone;ZZ)V

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3, v4}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->addPhoneStateListener(Lcom/android/internal/telephony/Phone;)V

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mOmtpVvmCarrierConfigHelper:Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;

    invoke-virtual {v3}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->startActivation()V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3, v4}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->removeSource(Lcom/android/internal/telephony/Phone;)V

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mOmtpVvmCarrierConfigHelper:Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;

    invoke-virtual {v3}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->startDeactivation()V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p2, v2, :cond_0

    return v5

    :cond_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, p2

    check-cast v2, Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/settings/VoicemailSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v5

    :cond_2
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMProviderSettingsForced:Z

    return v4

    :cond_3
    return v4

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    iput p1, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mCurrentDialogId:I

    return-void
.end method

.method protected onResume()V
    .locals 7

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    iput-boolean v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mForeground:Z

    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v2, 0x7f07006c

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v2, "button_voicemail_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0, v3, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "voicemail_settings_number_label"

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    const-string/jumbo v2, "button_voicemail_provider_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/settings/VoicemailProviderListPreference;

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/settings/VoicemailProviderListPreference;->init(Lcom/android/internal/telephony/Phone;Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/settings/VoicemailProviderListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {v2}, Lcom/android/phone/settings/VoicemailProviderListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPreviousVMProviderKey:Ljava/lang/String;

    const-string/jumbo v2, "button_voicemail_setting_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0ca1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/settings/VoicemailRingtonePreference;

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailNotificationRingtone:Lcom/android/phone/settings/VoicemailRingtonePreference;

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailNotificationRingtone:Lcom/android/phone/settings/VoicemailRingtonePreference;

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Lcom/android/phone/settings/VoicemailRingtonePreference;->init(Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0ca2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0ca3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailVisualVoicemail:Landroid/preference/SwitchPreference;

    const-string/jumbo v2, "vvm_type_omtp"

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mOmtpVvmCarrierConfigHelper:Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;

    invoke-virtual {v3}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->getVvmType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "vvm_type_cvvm"

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mOmtpVvmCarrierConfigHelper:Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;

    invoke-virtual {v3}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->getVvmType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailVisualVoicemail:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailVisualVoicemail:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->isVisualVoicemailEnabled(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_0
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {v2}, Lcom/android/phone/settings/VoicemailProviderListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mShowVoicemailPreference:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-virtual {v2}, Lcom/android/phone/settings/VoicemailProviderListPreference;->hasMoreThanOneVoicemailProvider()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    invoke-direct {p0, v2}, Lcom/android/phone/settings/VoicemailSettingsActivity;->simulatePreferenceClick(Landroid/preference/Preference;)V

    :goto_1
    iput-boolean v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mShowVoicemailPreference:Z

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailSettingsActivity;->updateVoiceNumberField()V

    iput-boolean v6, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVMProviderSettingsForced:Z

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/android/phone/settings/VoicemailNotificationSettingsUtil;->isVibrationEnabled(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailVisualVoicemail:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    const-string/jumbo v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/settings/VoicemailSettingsActivity;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSettingsActivity;->mVoicemailProviders:Lcom/android/phone/settings/VoicemailProviderListPreference;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/android/phone/settings/VoicemailProviderListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method
