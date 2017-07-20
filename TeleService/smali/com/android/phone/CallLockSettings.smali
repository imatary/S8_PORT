.class public Lcom/android/phone/CallLockSettings;
.super Landroid/preference/PreferenceActivity;
.source "CallLockSettings.java"

# interfaces
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallLockSettings$1;
    }
.end annotation


# static fields
.field private static EXTRA_SIM_ID:Ljava/lang/String;


# instance fields
.field private mDialogState:I

.field private mError:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mOutBarring:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/phone/EditPinPreference;

.field private mRealPin:Ljava/lang/String;

.field private mRes:Landroid/content/res/Resources;

.field private mSendingCallIntent:Z


# direct methods
.method static synthetic -get0(Lcom/android/phone/CallLockSettings;)Lcom/android/phone/EditPinPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "simSlot"

    sput-object v0, Lcom/android/phone/CallLockSettings;->EXTRA_SIM_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallLockSettings;->mIntent:Landroid/content/Intent;

    new-instance v0, Lcom/android/phone/CallLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallLockSettings$1;-><init>(Lcom/android/phone/CallLockSettings;)V

    iput-object v0, p0, Lcom/android/phone/CallLockSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method private resetDialogState()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->setDialogValues()V

    return-void
.end method

.method private setDialogValues()V
    .locals 8

    const v7, 0x7f0d06b4

    const v6, 0x7f0d05d7

    const v5, 0x7f0d05d4

    const v4, 0x7f0d05d2

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    iget-object v2, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    iget-object v2, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    iget-object v2, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    iget-object v2, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    iget-object v2, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPinDialog()V
    .locals 1

    iget v0, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->setDialogValues()V

    iget-object v0, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x65

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/CallLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "outbarring"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/CallLockSettings;->mOutBarring:Z

    invoke-virtual {p0}, Lcom/android/phone/CallLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    const v2, 0x7f07000d

    invoke-virtual {p0, v2}, Lcom/android/phone/CallLockSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v2, "call_lock_dialog"

    invoke-virtual {p0, v2}, Lcom/android/phone/CallLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPinPreference;

    iput-object v2, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    if-eqz p1, :cond_0

    const-string/jumbo v2, "call_lock_state"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "call_lock_state"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    const-string/jumbo v2, "call_lock_pin"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    const-string/jumbo v2, "call_lock_error"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    :cond_0
    const-string/jumbo v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/android/phone/CallLockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/phone/CallLockSettings;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CallLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/CallLockSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "cb_passwd_key"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallLockSettings;->mRealPin:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    invoke-virtual {p0}, Lcom/android/phone/CallLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    invoke-virtual {p0}, Lcom/android/phone/CallLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {p0, v5}, Lcom/android/phone/CallLockSettings;->setResult(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/phone/CallLockSettings;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallLockSettings;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    return-void
.end method

.method public onPause()V
    .locals 6

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/CallLockSettings$2;

    invoke-direct {v2, p0}, Lcom/android/phone/CallLockSettings$2;-><init>(Lcom/android/phone/CallLockSettings;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-boolean v1, p0, Lcom/android/phone/CallLockSettings;->mOutBarring:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/CallLockSettings;->mSendingCallIntent:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/phone/CallLockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/android/phone/CallLockSettings;->finish()V

    goto :goto_0
.end method

.method public onPinEntered(Lcom/android/phone/EditPinPreference;Z)V
    .locals 12

    const v11, 0x7f0d06b5

    const/4 v10, 0x3

    const/4 v9, 0x0

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->resetDialogState()V

    const/16 v7, 0x65

    invoke-virtual {p0, v7}, Lcom/android/phone/CallLockSettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/phone/CallLockSettings;->finish()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/phone/CallLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f0d06b6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->showPinDialog()V

    return-void

    :cond_1
    iget v7, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    packed-switch v7, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v7, p0, Lcom/android/phone/CallLockSettings;->mRealPin:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x64

    invoke-virtual {p0, v7}, Lcom/android/phone/CallLockSettings;->setResult(I)V

    const-string/jumbo v7, ""

    invoke-virtual {p1, v7}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    const-wide/16 v8, 0x64

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/phone/CallLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    iget-boolean v7, p0, Lcom/android/phone/CallLockSettings;->mOutBarring:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/phone/CallLockSettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v7, p0, Lcom/android/phone/CallLockSettings;->mIntent:Landroid/content/Intent;

    sget-object v8, Lcom/android/phone/CallLockSettings;->EXTRA_SIM_ID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/phone/CallLockSettings;->mIntent:Landroid/content/Intent;

    sget-object v8, Lcom/android/phone/CallLockSettings;->EXTRA_SIM_ID:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v7, "simSlot"

    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    const-string/jumbo v7, "outbarringpwright"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v7, "telecom"

    invoke-virtual {p0, v7}, Lcom/android/phone/CallLockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/TelecomManager;

    invoke-virtual {v5, v3, v2}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/CallLockSettings;->finish()V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/phone/CallLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "CDMA"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v7, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v7}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v7

    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v7, v8, :cond_6

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_5

    const/4 v6, 0x1

    :cond_5
    :goto_2
    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/android/phone/CallLockSettings;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string/jumbo v8, "LockPatternClear"

    invoke-virtual {v7, v8}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/CallLockSettings;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    iget-object v7, p0, Lcom/android/phone/CallLockSettings;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v7}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    iget-object v7, p0, Lcom/android/phone/CallLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_7
    const/4 v6, 0x1

    goto :goto_2

    :cond_8
    iget-object v7, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    iput-object v9, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->showPinDialog()V

    goto/16 :goto_0

    :pswitch_1
    iget-object v7, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/phone/CallLockSettings;->mOldPin:Ljava/lang/String;

    iput v10, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    iput-object v9, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    iput-object v9, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->showPinDialog()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v7, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/phone/CallLockSettings;->mNewPin:Ljava/lang/String;

    const/4 v7, 0x4

    iput v7, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    iput-object v9, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->showPinDialog()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v7, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/phone/CallLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    iput v10, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    iput-object v9, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->showPinDialog()V

    goto/16 :goto_0

    :cond_9
    iput-object v9, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    iput-boolean v0, p0, Lcom/android/phone/CallLockSettings;->mSendingCallIntent:Z

    iget v0, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->showPinDialog()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->resetDialogState()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "call_lock_state"

    iget v1, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "call_lock_pin"

    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "call_lock_error"

    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
