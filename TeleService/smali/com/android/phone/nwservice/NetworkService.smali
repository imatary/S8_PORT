.class public Lcom/android/phone/nwservice/NetworkService;
.super Landroid/preference/PreferenceActivity;
.source "NetworkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/nwservice/NetworkService$AppState;
    }
.end annotation


# instance fields
.field private mAppState:Lcom/android/phone/nwservice/NetworkService$AppState;

.field private mCallforwarding:Landroid/preference/PreferenceScreen;

.field private mClir:Landroid/preference/PreferenceScreen;

.field private mErrAlertPopup:Landroid/app/AlertDialog;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSkipCallWaitingReq:Z

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private mVoiceCallVisible:Z

.field private mVoiceMail:Landroid/preference/PreferenceScreen;

.field private mWaitPopup:Landroid/app/AlertDialog;

.field private mWaitingCall:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -wrap0(Lcom/android/phone/nwservice/NetworkService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/nwservice/NetworkService;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-object v0, p0, Lcom/android/phone/nwservice/NetworkService;->mWaitPopup:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/phone/nwservice/NetworkService;->mErrAlertPopup:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/nwservice/NetworkService;->mSkipCallWaitingReq:Z

    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/nwservice/NetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f070049

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/NetworkService;->addPreferencesFromResource(I)V

    const-string/jumbo v1, "voice_mail_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/NetworkService;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/nwservice/NetworkService;->mVoiceMail:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/nwservice/NetworkService;->mVoiceMail:Landroid/preference/PreferenceScreen;

    new-instance v2, Lcom/android/phone/nwservice/NetworkService$1;

    invoke-direct {v2, p0}, Lcom/android/phone/nwservice/NetworkService$1;-><init>(Lcom/android/phone/nwservice/NetworkService;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v1, "clir_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/NetworkService;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/nwservice/NetworkService;->mClir:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/nwservice/NetworkService;->mClir:Landroid/preference/PreferenceScreen;

    new-instance v2, Lcom/android/phone/nwservice/NetworkService$2;

    invoke-direct {v2, p0}, Lcom/android/phone/nwservice/NetworkService$2;-><init>(Lcom/android/phone/nwservice/NetworkService;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/android/phone/nwservice/NetworkService;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/nwservice/NetworkService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "call_waiting_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/NetworkService;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/nwservice/NetworkService;->mWaitingCall:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "call_forwarding_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/NetworkService;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/nwservice/NetworkService;->mCallforwarding:Landroid/preference/PreferenceScreen;

    sget-object v1, Lcom/android/phone/nwservice/NetworkService$AppState;->INPUT_READY:Lcom/android/phone/nwservice/NetworkService$AppState;

    iput-object v1, p0, Lcom/android/phone/nwservice/NetworkService;->mAppState:Lcom/android/phone/nwservice/NetworkService$AppState;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/nwservice/NetworkService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/nwservice/NetworkService;->mTelMan:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/nwservice/NetworkService;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/nwservice/NetworkService;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-ne v1, v3, :cond_1

    :cond_0
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/NetworkService;->showDialog(I)V

    const-string/jumbo v1, "NetworkService"

    const-string/jumbo v2, "skip set or get CallWaiting"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/nwservice/NetworkService;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NetworkService"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/android/phone/nwservice/NetworkService;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "displayDialog() mWaitPopup:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/nwservice/NetworkService;->mWaitPopup:Landroid/app/AlertDialog;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x12c

    if-eq p1, v4, :cond_0

    const/16 v4, 0xc8

    if-ne p1, v4, :cond_1

    :cond_0
    const v3, 0x7f0d038d

    sparse-switch p1, :sswitch_data_0

    const v2, 0x7f0d0392

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v3}, Lcom/android/phone/nwservice/NetworkService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/NetworkService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0d056c

    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/NetworkService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/phone/nwservice/NetworkService$3;

    invoke-direct {v5, p0}, Lcom/android/phone/nwservice/NetworkService$3;-><init>(Lcom/android/phone/nwservice/NetworkService;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v4, 0x320

    if-eq p1, v4, :cond_0

    const/16 v4, 0x2bc

    if-eq p1, v4, :cond_0

    const/4 v4, 0x0

    return-object v4

    :sswitch_0
    const v2, 0x7f0d0391

    goto :goto_0

    :sswitch_1
    const v2, 0x7f0d0393

    goto :goto_0

    :sswitch_2
    const v2, 0x7f0d061a

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_0
        0x2bc -> :sswitch_2
        0x320 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/nwservice/NetworkService;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    if-gtz v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.phone.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/NetworkService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/nwservice/NetworkService;->finish()V

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "NetworkService"

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

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/nwservice/NetworkService;->mVoiceCallVisible:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/nwservice/NetworkService;->mVoiceCallVisible:Z

    return-void
.end method
