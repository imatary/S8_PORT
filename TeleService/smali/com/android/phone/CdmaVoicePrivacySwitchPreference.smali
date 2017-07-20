.class public Lcom/android/phone/CdmaVoicePrivacySwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "CdmaVoicePrivacySwitchPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaVoicePrivacySwitchPreference$MyHandler;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private mHandler:Lcom/android/phone/CdmaVoicePrivacySwitchPreference$MyHandler;

.field phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaVoicePrivacySwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/CdmaVoicePrivacySwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Lcom/android/phone/CdmaVoicePrivacySwitchPreference;->DBG:Z

    new-instance v0, Lcom/android/phone/CdmaVoicePrivacySwitchPreference$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CdmaVoicePrivacySwitchPreference$MyHandler;-><init>(Lcom/android/phone/CdmaVoicePrivacySwitchPreference;Lcom/android/phone/CdmaVoicePrivacySwitchPreference$MyHandler;)V

    iput-object v0, p0, Lcom/android/phone/CdmaVoicePrivacySwitchPreference;->mHandler:Lcom/android/phone/CdmaVoicePrivacySwitchPreference$MyHandler;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaVoicePrivacySwitchPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v0, p0, Lcom/android/phone/CdmaVoicePrivacySwitchPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CdmaVoicePrivacySwitchPreference;->mHandler:Lcom/android/phone/CdmaVoicePrivacySwitchPreference$MyHandler;

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaVoicePrivacySwitchPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    invoke-virtual {p0, p0}, Lcom/android/phone/CdmaVoicePrivacySwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/phone/CdmaVoicePrivacySwitchPreference;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d01fc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/phone/CdmaVoicePrivacySwitchPreference;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d02a5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/phone/CdmaVoicePrivacySwitchPreference;->phone:Lcom/android/internal/telephony/Phone;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/phone/CdmaVoicePrivacySwitchPreference;->mHandler:Lcom/android/phone/CdmaVoicePrivacySwitchPreference$MyHandler;

    invoke-virtual {v3, v1}, Lcom/android/phone/CdmaVoicePrivacySwitchPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
