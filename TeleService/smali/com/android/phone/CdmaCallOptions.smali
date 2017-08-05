.class public Lcom/android/phone/CdmaCallOptions;
.super Landroid/preference/PreferenceActivity;
.source "CdmaCallOptions.java"


# instance fields
.field private mButtonMeterialVoicePrivacy:Lcom/android/phone/CdmaVoicePrivacySwitchPreference;

.field private mButtonVoicePrivacy:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private initVoicePrivacySettings()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "button_meterial_voice_privacy_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CdmaVoicePrivacySwitchPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallOptions;->mButtonMeterialVoicePrivacy:Lcom/android/phone/CdmaVoicePrivacySwitchPreference;

    const-string/jumbo v0, "button_voice_privacy_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallOptions;->mButtonVoicePrivacy:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;

    iget-object v0, p0, Lcom/android/phone/CdmaCallOptions;->mButtonVoicePrivacy:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CdmaCallOptions;->mButtonVoicePrivacy:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v2, p0, Lcom/android/phone/CdmaCallOptions;->mButtonVoicePrivacy:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f070021

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallOptions;->addPreferencesFromResource(I)V

    new-instance v1, Lcom/android/phone/SubscriptionInfoHelper;

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallOptions;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/phone/SubscriptionInfoHelper;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0347

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/phone/SubscriptionInfoHelper;->setActionBarTitle(Landroid/app/ActionBar;Landroid/content/res/Resources;I)V

    invoke-direct {p0}, Lcom/android/phone/CdmaCallOptions;->initVoicePrivacySettings()V

    invoke-virtual {v1}, Lcom/android/phone/SubscriptionInfoHelper;->hasSubId()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/phone/SubscriptionInfoHelper;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    :goto_0
    invoke-virtual {v1}, Lcom/android/phone/SubscriptionInfoHelper;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "voice_privacy_disable_ui_bool"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallOptions;->onBackPressed()V

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "button_voice_privacy_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "button_meterial_voice_privacy_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
