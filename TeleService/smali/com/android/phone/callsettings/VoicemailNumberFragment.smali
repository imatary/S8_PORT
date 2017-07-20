.class public Lcom/android/phone/callsettings/VoicemailNumberFragment;
.super Lcom/android/phone/CallFeaturesSetting;
.source "VoicemailNumberFragment.java"


# instance fields
.field private mHotSwapFilter:Landroid/content/IntentFilter;

.field private mHotSwapReceiver:Landroid/content/BroadcastReceiver;

.field private mIsHotSwapRegister:Z

.field private mPrevTitle:Ljava/lang/CharSequence;


# direct methods
.method static synthetic -get0(Lcom/android/phone/callsettings/VoicemailNumberFragment;)Lcom/android/phone/EditPhoneNumberPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/callsettings/VoicemailNumberFragment;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/callsettings/VoicemailNumberFragment;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VoicemailNumberFragment;->phoneIsCdma()Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment;->mIsHotSwapRegister:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v1, "VoicemailNumberFragment"

    const-string/jumbo v2, "Creating"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v1

    if-le v1, v3, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v3, Lcom/android/phone/callsettings/VoicemailNumberFragment;->mSetVMCategory:Z

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VoicemailNumberFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/VoicemailNumberFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VoicemailNumberFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment;->mPrevTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/phone/CallFeaturesSetting;->onDestroy()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/callsettings/VoicemailNumberFragment;->mSetVMCategory:Z

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/android/phone/CallFeaturesSetting;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/VoicemailNumberFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/VoicemailNumberFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "VoicemailNumberFragment"

    const-string/jumbo v2, "onPause"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/phone/CallFeaturesSetting;->mEnterVoicemailSetting:Z

    invoke-super {p0}, Lcom/android/phone/CallFeaturesSetting;->onPause()V

    iget-boolean v1, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment;->mIsHotSwapRegister:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/VoicemailNumberFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-boolean v4, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment;->mIsHotSwapRegister:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "VoicemailNumberFragment"

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

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "VoicemailNumberFragment"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting;->mEnterVoicemailSetting:Z

    const v0, 0x7f0d0206

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/VoicemailNumberFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment;->mHotSwapFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment;->mHotSwapFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment;->mHotSwapFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment;->mHotSwapFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/android/phone/callsettings/VoicemailNumberFragment$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/VoicemailNumberFragment$1;-><init>(Lcom/android/phone/callsettings/VoicemailNumberFragment;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VoicemailNumberFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment;->mHotSwapFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v0, "feature_chn"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VoicemailNumberFragment;->phoneIsCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VoicemailNumberFragment"

    const-string/jumbo v1, "It can\'t be change to voicemail number by cdma phone"

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    iput-boolean v3, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment;->mIsHotSwapRegister:Z

    iget-object v0, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/VoicemailNumberFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/VoicemailNumberFragment;->updateVoiceNumberField()V

    invoke-super {p0}, Lcom/android/phone/CallFeaturesSetting;->onResume()V

    return-void
.end method
