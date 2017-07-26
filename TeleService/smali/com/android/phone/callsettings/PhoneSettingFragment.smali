.class public Lcom/android/phone/callsettings/PhoneSettingFragment;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "PhoneSettingFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/PhoneSettingFragment$1;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mOnlyContact:Landroid/preference/SwitchPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrefCategory:Landroid/preference/PreferenceCategory;

.field private mSearchNearbyPlaces:Landroid/preference/PreferenceScreen;

.field private mSwipeCallMessage:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/android/phone/callsettings/PhoneSettingFragment;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/callsettings/PhoneSettingFragment;)Landroid/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/callsettings/PhoneSettingFragment;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mSearchNearbyPlaces:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/internal/telephony/Phone;Landroid/preference/PreferenceCategory;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/phone/callsettings/PhoneSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/PhoneSettingFragment$1;-><init>(Lcom/android/phone/callsettings/PhoneSettingFragment;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p3, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    iput-object p2, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object p1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneSettingFragment;->initializePhoneSetting()V

    return-void
.end method

.method private updateSearchNearbySetting()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "search_nearby_places"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "PhoneSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSearchNearbyPlaces : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mSearchNearbyPlaces:Landroid/preference/PreferenceScreen;

    if-ne v0, v4, :cond_0

    const v1, 0x7f0d0c3a

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mSearchNearbyPlaces:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void

    :cond_0
    const v1, 0x7f0d0c3b

    goto :goto_0
.end method


# virtual methods
.method protected initializePhoneSetting()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v2, "button_swipe_callmessage_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mSwipeCallMessage:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mSwipeCallMessage:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mSwipeCallMessage:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v1, "feature_vzw"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mSwipeCallMessage:Landroid/preference/SwitchPreference;

    const v2, 0x7f0d0362

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_0
    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getMessagePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCommon;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mSwipeCallMessage:Landroid/preference/SwitchPreference;

    const v2, 0x7f0d0363

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setTitle(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mSwipeCallMessage:Landroid/preference/SwitchPreference;

    const v2, 0x7f0d0364

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v2, "button_only_contactwithphone_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mOnlyContact:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mOnlyContact:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mOnlyContact:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v2, "search_nearby_places_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mSearchNearbyPlaces:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "support_search_nearby_places"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mSearchNearbyPlaces:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "support_search_nearby_places_mcc"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    const-string/jumbo v0, "support_search_nearby_places_mcc"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10

    const v6, 0x7f0d024e

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v1, "PhoneSettingFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPreferenceChange: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\" changed to \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mSwipeCallMessage:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0d0288

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "swipe_to_call_message"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    int-to-long v8, v1

    invoke-static {v4, v5, v6, v8, v9}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "swipe_to_call_message"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v2

    :cond_0
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mOnlyContact:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_5

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0d0289

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "only_contact_with_phone"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    int-to-long v8, v1

    invoke-static {v4, v5, v6, v8, v9}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "only_contact_with_phone"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v2

    :cond_3
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    return v2
.end method

.method public updatePhoneSetting()V
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mSwipeCallMessage:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "swipe_to_call_message"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_3

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v2, "PhoneSettingFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePhoneSetting swipe - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mSwipeCallMessage:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mOnlyContact:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "only_contact_with_phone"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_4

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v2, "PhoneSettingFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePhoneSetting contactWithPhone - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mOnlyContact:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mSearchNearbyPlaces:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_2

    const-string/jumbo v2, "support_search_nearby_places_mcc"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportMccSmartCall()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mSearchNearbyPlaces:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneSettingFragment;->updateSearchNearbySetting()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/phone/callsettings/PhoneSettingFragment;->mSearchNearbyPlaces:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneSettingFragment;->updateSearchNearbySetting()V

    goto :goto_2
.end method
