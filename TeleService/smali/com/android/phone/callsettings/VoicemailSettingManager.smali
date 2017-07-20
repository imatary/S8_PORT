.class public Lcom/android/phone/callsettings/VoicemailSettingManager;
.super Ljava/lang/Object;
.source "VoicemailSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/VoicemailSettingManager$Preferences;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/android/phone/callsettings/VoicemailSettingManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/phone/callsettings/VoicemailSettingManager;

    invoke-direct {v0}, Lcom/android/phone/callsettings/VoicemailSettingManager;-><init>()V

    sput-object v0, Lcom/android/phone/callsettings/VoicemailSettingManager;->sInstance:Lcom/android/phone/callsettings/VoicemailSettingManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/VoicemailSettingManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, p0, Lcom/android/phone/callsettings/VoicemailSettingManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/VoicemailSettingManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static findPreference(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;
    .locals 1

    if-nez p3, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/android/phone/callsettings/VoicemailSettingManager;->getPreference(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/android/phone/callsettings/VoicemailSettingManager;
    .locals 1

    sget-object v0, Lcom/android/phone/callsettings/VoicemailSettingManager;->sInstance:Lcom/android/phone/callsettings/VoicemailSettingManager;

    return-object v0
.end method

.method private static getPreference(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    :goto_0
    move v3, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_5

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    :goto_2
    sget-object v4, Lcom/android/phone/callsettings/CallsettingsConstants;->SwitchPreference:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    instance-of v4, v2, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-object v2

    :cond_0
    invoke-virtual {p1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/android/phone/callsettings/CallsettingsConstants;->VoicemailRingtonePreference:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    instance-of v4, v2, Lcom/android/phone/VoicemailRingtonePreference;

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-object v2

    :cond_3
    sget-object v4, Lcom/android/phone/callsettings/CallsettingsConstants;->ListPreference:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    instance-of v4, v2, Landroid/preference/ListPreference;

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-object v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-object v5
.end method

.method private isRemoveSIM1Setting()Z
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private isRemoveSIM2Setting()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/android/phone/CallFeaturesSetting;->mSimSlot:I

    if-eqz v0, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    return v1
.end method


# virtual methods
.method public getRemovePreferences()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/VoicemailSettingManager$Preferences;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/VoicemailSettingManager;->isRemoveSIM1Setting()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/phone/callsettings/VoicemailSettingManager$Preferences;

    const-string/jumbo v2, "button_voicemail_notification_ringtone_key"

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/VoicemailSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/phone/callsettings/VoicemailSettingManager$Preferences;

    const-string/jumbo v2, "button_meterial_voicemail_notification_vibrate_key"

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/VoicemailSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/VoicemailSettingManager;->isRemoveSIM2Setting()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/phone/callsettings/VoicemailSettingManager$Preferences;

    const-string/jumbo v2, "button_voicemail_notification_ringtone_key_sim2"

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/VoicemailSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/phone/callsettings/VoicemailSettingManager$Preferences;

    const-string/jumbo v2, "button_meterial_voicemail_notification_vibrate_key_sim2"

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/VoicemailSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string/jumbo v1, "support_native_visual_voicemail"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/phone/callsettings/VoicemailSettingManager$Preferences;

    const-string/jumbo v2, "button_natvie_visual_voicemail"

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/VoicemailSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string/jumbo v1, "visual_voicemail_enable"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/phone/callsettings/VoicemailSettingManager$Preferences;

    const-string/jumbo v2, "button_vvm_setting_key"

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/VoicemailSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public removePreferences(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceCategory;)V
    .locals 7

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/VoicemailSettingManager;->getRemovePreferences()Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/VoicemailSettingManager$Preferences;

    if-eqz p2, :cond_2

    invoke-virtual {v2}, Lcom/android/phone/callsettings/VoicemailSettingManager$Preferences;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/phone/callsettings/VoicemailSettingManager$Preferences;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, p2, v5, v6}, Lcom/android/phone/callsettings/VoicemailSettingManager;->findPreference(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/android/phone/callsettings/VoicemailSettingManager$Preferences;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/phone/callsettings/VoicemailSettingManager$Preferences;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, p2, v5, v6}, Lcom/android/phone/callsettings/VoicemailSettingManager;->findPreference(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_3
    return-void
.end method
