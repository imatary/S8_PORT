.class public Lcom/android/phone/callsettings/VideoSettingManager;
.super Ljava/lang/Object;
.source "VideoSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/VideoSettingManager$Preferences;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/android/phone/callsettings/VideoSettingManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/phone/callsettings/VideoSettingManager;

    invoke-direct {v0}, Lcom/android/phone/callsettings/VideoSettingManager;-><init>()V

    sput-object v0, Lcom/android/phone/callsettings/VideoSettingManager;->sInstance:Lcom/android/phone/callsettings/VideoSettingManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoSettingManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoSettingManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;
    .locals 1

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/phone/callsettings/VideoSettingManager;->getPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/android/phone/callsettings/VideoSettingManager;
    .locals 1

    sget-object v0, Lcom/android/phone/callsettings/VideoSettingManager;->sInstance:Lcom/android/phone/callsettings/VideoSettingManager;

    return-object v0
.end method

.method private static getPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;
    .locals 4

    invoke-virtual {p0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    sget-object v3, Lcom/android/phone/callsettings/CallsettingsConstants;->SwitchPreference:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v1, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private isRemoveVideoQuality()Z
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "support_enhanced_4glte_setting_video_call"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "concept_kor_common"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string/jumbo v0, "feature_skt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoSettingManager;->isRemoveVZWVideoCall()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private isRemoveVideoSpeaker()Z
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "support_enhanced_4glte_setting_video_call"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "concept_kor_common"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string/jumbo v0, "feature_skt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const-string/jumbo v0, "ts_support_speaker_only"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_3
    const-string/jumbo v0, "ts_support_speaker_only"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoSettingManager;->isRemoveVZWVideoCall()Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private isRemoveVoiceDivert()Z
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "support_video_call_setting"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "feature_kor_open"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "concept_kor_common"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "kor_cs_vt_ui"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v1

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
            "Lcom/android/phone/callsettings/VideoSettingManager$Preferences;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/phone/callsettings/VideoSettingManager$Preferences;

    const-string/jumbo v2, "preset_image"

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/VideoSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoSettingManager;->isRemoveVoiceDivert()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/phone/callsettings/VideoSettingManager$Preferences;

    const-string/jumbo v2, "meterial_auto_divert_to_voice_call"

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/VideoSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoSettingManager;->isRemoveVideoQuality()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/phone/callsettings/VideoSettingManager$Preferences;

    const-string/jumbo v2, "meterial_video_call_quality_info"

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/VideoSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoSettingManager;->isRemoveVideoSpeaker()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/phone/callsettings/VideoSettingManager$Preferences;

    const-string/jumbo v2, "meterial_video_call_speaker"

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/VideoSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoSettingManager;->isRemoveVZWVideoCall()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/phone/callsettings/VideoSettingManager$Preferences;

    const-string/jumbo v2, "volte_videocall_enable"

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/VideoSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string/jumbo v1, "support_enhanced_4glte_setting_video_call"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/android/phone/callsettings/VideoSettingManager$Preferences;

    const-string/jumbo v2, "button_enable_video_call_att"

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/VideoSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string/jumbo v1, "volte_ui"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Lcom/android/phone/callsettings/VideoSettingManager$Preferences;

    const-string/jumbo v2, "button_enable_video_call"

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/VideoSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public isRemoveVZWVideoCall()Z
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "vzw_mvno_volte_ui"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportViLTE()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "remove_video_calling"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/utils/VideoSettingUtils;->isProvisionSIM(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public removePreferences(Landroid/preference/PreferenceCategory;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoSettingManager;->getRemovePreferences()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/VideoSettingManager$Preferences;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/VideoSettingManager$Preferences;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/phone/callsettings/VideoSettingManager$Preferences;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/android/phone/callsettings/VideoSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_2
    return-void
.end method
