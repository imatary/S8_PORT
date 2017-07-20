.class public Lcom/android/phone/CallSoundPreference;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CallSoundPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallSoundPreference$1;,
        Lcom/android/phone/CallSoundPreference$2;
    }
.end annotation


# instance fields
.field private mButtonRingtoneKeytone:Landroid/preference/PreferenceScreen;

.field private mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

.field private mExtraVolPreference:Landroid/preference/CheckBoxPreference;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

.field private mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

.field private mNaturalSound:Landroid/preference/CheckBoxPreference;

.field private mNoiseReduction:Landroid/preference/CheckBoxPreference;

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field private final mRingtoneLookupComplete:Landroid/os/Handler;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mVoicemailNotificationSound:Landroid/preference/Preference;

.field private mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;


# direct methods
.method static synthetic -get0(Lcom/android/phone/CallSoundPreference;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallSoundPreference;->mVoicemailNotificationSound:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/CallSoundPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CallSoundPreference;->updateNoiseReduction()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/CallSoundPreference;ILandroid/preference/Preference;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/CallSoundPreference;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/phone/CallSoundPreference$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallSoundPreference$1;-><init>(Lcom/android/phone/CallSoundPreference;)V

    iput-object v0, p0, Lcom/android/phone/CallSoundPreference;->mRingtoneLookupComplete:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/CallSoundPreference$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CallSoundPreference$2;-><init>(Lcom/android/phone/CallSoundPreference;)V

    iput-object v0, p0, Lcom/android/phone/CallSoundPreference;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private lookupRingtoneName()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static migrateVoicemailVibrationSettingsIfNeeded(Landroid/content/SharedPreferences;)Z
    .locals 5

    const-string/jumbo v3, "button_voicemail_notification_vibrate_key"

    invoke-interface {p0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "button_voicemail_notification_vibrate_when_key"

    const-string/jumbo v4, "never"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "always"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "button_voicemail_notification_vibrate_key"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v3, 0x1

    return v3

    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method private setNaturalSound(Z)V
    .locals 0

    return-void
.end method

.method private setNoiseReduction(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/phone/PhoneUtilsCommon;->noiseReductionBroadcast(Landroid/content/Context;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateEtcPreference()V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "call_extra_volume"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "show_extra_vol"

    invoke-static {v3, v6, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v6, p0, Lcom/android/phone/CallSoundPreference;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallSoundPreference;->migrateVoicemailVibrationSettingsIfNeeded(Landroid/content/SharedPreferences;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v4, "button_voicemail_notification_vibrate_key"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/CallSoundPreference;->lookupRingtoneName()V

    return-void

    :cond_2
    move v3, v5

    goto :goto_0
.end method

.method private updateExtraRingerPreference()V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/phone/CallSoundPreference;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "extra_ringer"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/phone/CallSoundPreference;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private updateMyCallSoundPreference()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasCallPoseFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    invoke-virtual {v1}, Lcom/android/phone/InCallSoundEQListPreference;->updatePreference()V

    iget-object v2, p0, Lcom/android/phone/CallSoundPreference;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/phone/InCallSoundEQListPreference;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateNaturalSound()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "call_natural_sound"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lt v0, v4, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    const-string/jumbo v1, "support_safetycare"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isSafetyAssistanceMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateNoiseReduction()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "call_noise_reduction"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lt v0, v3, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCommon;->canEnableNoiseSuppression(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 14

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v8, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    const v1, 0x10403e3

    invoke-virtual {p0, v1}, Lcom/android/phone/CallSoundPreference;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-nez v2, :cond_6

    const v1, 0x10403e1

    invoke-virtual {p0, v1}, Lcom/android/phone/CallSoundPreference;->getString(I)Ljava/lang/String;

    move-result-object v12

    :cond_1
    :goto_1
    if-eqz v8, :cond_2

    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    const v4, 0x7f0d01cd

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mRingtoneLookupComplete:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mRingtoneLookupComplete:Landroid/os/Handler;

    move/from16 v0, p3

    invoke-virtual {v3, v0, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v10, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_5
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_6
    const/4 v7, 0x0

    :try_start_0
    const-string/jumbo v1, "media"

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "title"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :cond_7
    :goto_2
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    :cond_8
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_9
    :try_start_1
    const-string/jumbo v1, "settings"

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/media/RingtoneManager;->getRingtoneTitleForCached(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_a
    const-string/jumbo v1, "content"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "_display_name"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    goto :goto_2

    :catch_0
    move-exception v9

    :try_start_2
    const-string/jumbo v1, "CallSoundPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IllegalArgumentException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catch_1
    move-exception v11

    :try_start_3
    const-string/jumbo v1, "CallSoundPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SQLiteException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    if-eqz v7, :cond_b

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v1
.end method


# virtual methods
.method protected initSoundSetting(Z)V
    .locals 7

    const/4 v5, 0x0

    const-string/jumbo v3, "CallSoundPreference"

    const-string/jumbo v4, "initSoundSetting"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "button_soundsetting_category_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void

    :cond_1
    move-object v2, v0

    const-string/jumbo v3, "button_ringtone_keytone_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallSoundPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/CallSoundPreference;->mButtonRingtoneKeytone:Landroid/preference/PreferenceScreen;

    const-string/jumbo v3, "callsettings_incallsound_eqlist_pref"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallSoundPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/InCallSoundEQListPreference;

    iput-object v3, p0, Lcom/android/phone/CallSoundPreference;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    const-string/jumbo v3, "callsettings_incallsound_eq"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallSoundPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/CallSoundPreference;->mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

    const-string/jumbo v3, "button_noise_reduction_key"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v3, "button_natural_sound_key"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/CallSoundPreference;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v3, "extra_ringtone_preference"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallSoundPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/CallSoundPreference;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v3, "showing_extra_vol_preference"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallSoundPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/CallSoundPreference;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iput-object v5, p0, Lcom/android/phone/CallSoundPreference;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    :cond_2
    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasCallPoseFeature(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "callsettings_incallsound_eq"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    :goto_0
    const-string/jumbo v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "callsettings_incallsound_eq"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_6

    const-string/jumbo v3, "noise_suppression"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string/jumbo v3, "default_noise_reduction"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "call_noise_reduction"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    const-string/jumbo v3, "callsettings_incallsound_eqlist_pref"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_8
    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v4, "default_noise_reduction"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method protected initVoicemailSetting(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-nez p1, :cond_1

    const-string/jumbo v2, "button_voicemail_category_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v2, "button_voicemail_notification_ringtone_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/CallSoundPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallSoundPreference;->mVoicemailNotificationSound:Landroid/preference/Preference;

    const-string/jumbo v2, "button_voicemail_notification_vibrate_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/CallSoundPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/CallSoundPreference;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "CallSoundPreference"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f070010

    invoke-virtual {p0, v1}, Lcom/android/phone/CallSoundPreference;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallSoundPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v3}, Lcom/android/phone/CallSoundPreference;->initSoundSetting(Z)V

    const-string/jumbo v1, "remove_voicemail_category"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/phone/CallSoundPreference;->initVoicemailSetting(Z)V

    :goto_0
    new-instance v1, Lcom/android/phone/CallSoundPreference$3;

    invoke-direct {v1, p0}, Lcom/android/phone/CallSoundPreference$3;-><init>(Lcom/android/phone/CallSoundPreference;)V

    iput-object v1, p0, Lcom/android/phone/CallSoundPreference;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "noise_suppression"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallSoundPreference;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/phone/CallSoundPreference;->initVoicemailSetting(Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    const-string/jumbo v0, "CallSoundPreference"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/phone/CallSoundPreference;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallSoundPreference;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "extra_ringer"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "extra_ringer"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallSoundPreference;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/CallSoundPreference;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_extra_vol"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallSoundPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_extra_vol"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallSoundPreference;->setNoiseReduction(Z)V

    return v2

    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallSoundPreference;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/CallSoundPreference;->mNaturalSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallSoundPreference;->setNaturalSound(Z)V

    return v2

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/phone/CallSoundPreference;->updateNoiseReduction()V

    invoke-direct {p0}, Lcom/android/phone/CallSoundPreference;->updateMyCallSoundPreference()V

    invoke-direct {p0}, Lcom/android/phone/CallSoundPreference;->updateNaturalSound()V

    invoke-direct {p0}, Lcom/android/phone/CallSoundPreference;->updateExtraRingerPreference()V

    invoke-direct {p0}, Lcom/android/phone/CallSoundPreference;->updateEtcPreference()V

    return-void
.end method
