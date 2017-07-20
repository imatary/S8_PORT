.class public Lcom/android/phone/settings/AccessibilitySettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "AccessibilitySettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/AccessibilitySettingsFragment$1;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtonHac:Landroid/preference/CheckBoxPreference;

.field private mButtonTty:Lcom/android/phone/settings/TtyModeListPreference;

.field private mContext:Landroid/content/Context;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method static synthetic -get0(Lcom/android/phone/settings/AccessibilitySettingsFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/settings/AccessibilitySettingsFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/settings/AccessibilitySettingsFragment;->getVolteTtySupported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/settings/AccessibilitySettingsFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/settings/AccessibilitySettingsFragment;->isVideoCallInProgress()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/settings/AccessibilitySettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/phone/settings/AccessibilitySettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/AccessibilitySettingsFragment$1;-><init>(Lcom/android/phone/settings/AccessibilitySettingsFragment;)V

    iput-object v0, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method private getVolteTtySupported()Z
    .locals 4

    iget-object v2, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "carrier_config"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string/jumbo v3, "carrier_volte_tty_supported_bool"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method private isVideoCallInProgress()Z
    .locals 6

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v1, v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVideoCallPresent()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/settings/AccessibilitySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mAudioManager:Landroid/media/AudioManager;

    const/high16 v1, 0x7f070000

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/AccessibilitySettingsFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/settings/AccessibilitySettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0d087b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/AccessibilitySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/TtyModeListPreference;

    iput-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mButtonTty:Lcom/android/phone/settings/TtyModeListPreference;

    const-string/jumbo v1, "button_hac_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/AccessibilitySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mButtonHac:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager;->isTtyModeSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mButtonTty:Lcom/android/phone/settings/TtyModeListPreference;

    invoke-virtual {v1}, Lcom/android/phone/settings/TtyModeListPreference;->init()V

    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager;->isHearingAidCompatibilitySupported()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "hearing_aid"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mButtonHac:Landroid/preference/CheckBoxPreference;

    if-ne v0, v2, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_2
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/AccessibilitySettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mButtonTty:Lcom/android/phone/settings/TtyModeListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v5, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mButtonTty:Lcom/android/phone/settings/TtyModeListPreference;

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/settings/AccessibilitySettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mButtonHac:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v5, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mButtonHac:Landroid/preference/CheckBoxPreference;

    goto :goto_2
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    iget-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mButtonTty:Lcom/android/phone/settings/TtyModeListPreference;

    if-ne p2, v1, :cond_0

    return v4

    :cond_0
    iget-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mButtonHac:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mButtonHac:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hearing_aid"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v3, "HACSetting"

    if-ne v0, v4, :cond_2

    const-string/jumbo v1, "ON"

    :goto_1
    invoke-virtual {v2, v3, v1}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "OFF"

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
