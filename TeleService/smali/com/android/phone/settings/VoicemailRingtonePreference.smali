.class public Lcom/android/phone/settings/VoicemailRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "VoicemailRingtonePreference.java"


# instance fields
.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mVoicemailRingtoneLookupComplete:Landroid/os/Handler;

.field private mVoicemailRingtoneLookupRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/phone/settings/VoicemailRingtonePreference;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/settings/VoicemailRingtonePreference;->mVoicemailRingtoneLookupComplete:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/phone/settings/VoicemailRingtonePreference$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/VoicemailRingtonePreference$1;-><init>(Lcom/android/phone/settings/VoicemailRingtonePreference;)V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailRingtonePreference;->mVoicemailRingtoneLookupComplete:Landroid/os/Handler;

    return-void
.end method

.method private updateRingtoneName()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailRingtonePreference;->mVoicemailRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public init(Lcom/android/internal/telephony/Phone;)V
    .locals 3

    iput-object p1, p0, Lcom/android/phone/settings/VoicemailRingtonePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {p1}, Lcom/android/phone/settings/VoicemailNotificationSettingsUtil;->getRingtoneUri(Lcom/android/internal/telephony/Phone;)Landroid/net/Uri;

    move-object v0, p0

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailRingtonePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/settings/VoicemailNotificationSettingsUtil;->getVoicemailRingtoneSharedPrefsKey(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/settings/VoicemailRingtonePreference$2;

    invoke-direct {v2, p0, p0, v1}, Lcom/android/phone/settings/VoicemailRingtonePreference$2;-><init>(Lcom/android/phone/settings/VoicemailRingtonePreference;Landroid/preference/Preference;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailRingtonePreference;->mVoicemailRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailRingtonePreference;->updateRingtoneName()V

    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/settings/VoicemailRingtonePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/settings/VoicemailNotificationSettingsUtil;->getRingtoneUri(Lcom/android/internal/telephony/Phone;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/settings/VoicemailRingtonePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0, p1}, Lcom/android/phone/settings/VoicemailNotificationSettingsUtil;->setRingtoneUri(Lcom/android/internal/telephony/Phone;Landroid/net/Uri;)V

    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailRingtonePreference;->updateRingtoneName()V

    return-void
.end method
