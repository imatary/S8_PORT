.class public Lcom/android/phone/callsettings/GeneralSettingManager;
.super Ljava/lang/Object;
.source "GeneralSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/android/phone/callsettings/GeneralSettingManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager;

    invoke-direct {v0}, Lcom/android/phone/callsettings/GeneralSettingManager;-><init>()V

    sput-object v0, Lcom/android/phone/callsettings/GeneralSettingManager;->sInstance:Lcom/android/phone/callsettings/GeneralSettingManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;
    .locals 1

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/phone/callsettings/GeneralSettingManager;->getPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method private getCHNRemovePreferences(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "hold_key_call_recording"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "button_hold_key_record_calls_key"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string/jumbo v0, "phone_number_locator"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "numberregion_list_preference"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingManager;->isRemoveVisualCallSetting()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "visual_call_callsetting"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string/jumbo v0, "multi_number_cmcc"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "callsettings_multinumber"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string/jumbo v0, "support_spam_call_mutefirstring"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "button_mute_first_ring"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method private getCommonRemovePreferences(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingManager;->isRemoveCallBlockSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "button_call_rejection_key"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingManager;->isRemoveBlockNumberSetting()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "black_list_preference"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingManager;->isRemoveDeclineMessageSetting()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "decline_message_preference"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingManager;->isRemoveOutgoingVoiceCallSetting()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "voicecall_type"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingManager;->isRemoveVoLTENotiSetting()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "meterial_volte_noti_preference"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingManager;->isRemoveAnsweringEndingSetting()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "call_answer_preference"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string/jumbo v0, "block_data_during_call"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "meterial_voicecall_protection_preference"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingManager;->isRemoveSmartSpamCallSetting()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "spam_call_setting"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string/jumbo v0, "enhanced_phone_voice_record"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "record_calls_menu_key"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingManager;->isRemoveGsmAdditionalSetting()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "button_more_expand_key"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingManager;->isRemoveCdmaAdditionalSetting()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "button_cdma_additional_more_expand_key"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string/jumbo v0, "support_roaming_assistance_setting"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "roaming_assistance_setting_key"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    const-string/jumbo v0, "support_call_popup"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "button_call_popup_key"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public static getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;
    .locals 1

    sget-object v0, Lcom/android/phone/callsettings/GeneralSettingManager;->sInstance:Lcom/android/phone/callsettings/GeneralSettingManager;

    return-object v0
.end method

.method private getJPNRemovePreferences(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "feature_dcm"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "nwservice_preference"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "nwservice_preference_roaming"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "button_autoarea_key"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string/jumbo v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "button_ans_memo_key"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string/jumbo v0, "feature_kdi"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "switch_clir_key"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "button_au_call_settings_key"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingManager;->isExistSugudenSetting()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "suguden_setting_key"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private getKORRemovePreferences(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "support_tphone"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "meterial_phone_app_mode"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string/jumbo v0, "ims_support_multimedia_caller_id"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "photoring_setting_preference"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string/jumbo v0, "extended_restrict_international_call"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "intcallsetting_pref"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingManager;->isRemoveSKTHDVoiceSetting()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "skt_hd_voice_setting_preference"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingManager;->isRemoveKTHDVoiceSetting()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "kt_hd_voice_setting_preference"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingManager;->isRemoveInstantLettering()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "volte_instant_lettering_preference"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string/jumbo v0, "support_oneline_greeting"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "kt_oneline_greeting"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string/jumbo v0, "personalise_call_sound_soft"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "personalise_call_sound_key"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string/jumbo v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "button_kt_additional_service"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method

.method private static getPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;
    .locals 4

    invoke-virtual {p0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_6

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    sget-object v3, Lcom/android/phone/callsettings/CallsettingsConstants;->SwitchPreference:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v1, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return-object v1

    :cond_0
    sget-object v3, Lcom/android/phone/callsettings/CallsettingsConstants;->DropDownPreference:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v1, Lcom/android/phone/DropDownPreference;

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return-object v1

    :cond_1
    sget-object v3, Lcom/android/phone/callsettings/CallsettingsConstants;->ListPreference:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, v1, Landroid/preference/ListPreference;

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return-object v1

    :cond_2
    sget-object v3, Lcom/android/phone/callsettings/CallsettingsConstants;->EditTextPreference:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    instance-of v3, v1, Landroid/preference/EditTextPreference;

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return-object v1

    :cond_3
    sget-object v3, Lcom/android/phone/callsettings/CallsettingsConstants;->SemSwitchPreferenceScreen:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    instance-of v3, v1, Landroid/preference/SemSwitchPreferenceScreen;

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return-object v1

    :cond_4
    sget-object v3, Lcom/android/phone/callsettings/CallsettingsConstants;->PreferenceScreen:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    instance-of v3, v1, Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return-object v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    return-object v3
.end method

.method private getUSARemovePreferences(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingManager;->isRemoveTMOVoLTESetting()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "volte_preference_tmo"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string/jumbo v0, "show_caller_info_setting"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "material_caller_info_card_preference_key"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingManager;->isRemoveUSCdmaCallForwarding()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "us_cdma_voicecall_forwarding"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingManager;->isRemoveTMOWFCSetting()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    const-string/jumbo v1, "wfc_settings_holder_key"

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private isDualSIMAlwaysOn()Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method private isExistSugudenSetting()Z
    .locals 11

    const/4 v10, 0x1

    const-string/jumbo v2, "com.nttdocomo.android.phonemotion"

    const-string/jumbo v0, "motion"

    const-string/jumbo v1, "setting"

    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/phone/callsettings/GeneralSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, v2, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-boolean v7, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v7, :cond_0

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_1

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x1

    :cond_0
    :goto_1
    const-string/jumbo v7, "GeneralSettingManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isExistSugudenSetting exists : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    return v5

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v7, "GeneralSettingManager"

    const-string/jumbo v8, "NameNotFoundException"

    invoke-static {v7, v8, v10}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1
.end method

.method private isRemoveAnsweringEndingSetting()Z
    .locals 1

    const-string/jumbo v0, "support_folder_single_lcd"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "feature_kor"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isRemoveBlockNumberSetting()Z
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingManager;->isRemoveCallBlockSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "call_block_ui"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "reject_call_with_message_icon_mode"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingManager;->isRemoveCallBlockSetting()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isRemoveCallBlockSetting()Z
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "china_vip_mode"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "feature_jpn"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isRemoveCdmaAdditionalSetting()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingManager;->isDualSIMAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_0
    return v2

    :cond_1
    const-string/jumbo v0, "chn_cdma_setting_on_all_rat"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "CDMA"

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getPropertySimSixmode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingManager;->isDualSIMAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return v2

    :cond_3
    return v3

    :cond_4
    const-string/jumbo v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "call_setting_ui_kdi"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string/jumbo v0, "disable_auto_area_code"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    :cond_6
    const-string/jumbo v0, "single_lte"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    :cond_7
    return v2

    :cond_8
    const-string/jumbo v0, "feature_dcm"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v2

    :cond_9
    return v3
.end method

.method private isRemoveDeclineMessageSetting()Z
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingManager;->isRemoveCallBlockSetting()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "call_block_ui"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "reject_call_with_message_icon_mode"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEasyModeOnCST()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "support_softphone"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingManager;->isRemoveCallBlockSetting()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private isRemoveGsmAdditionalSetting()Z
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "chn_cdma_setting_on_all_rat"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "CDMA"

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getPropertySimSixmode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingManager;->isDualSIMAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "feature_dcm"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_1
    return v2

    :cond_2
    const-string/jumbo v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "call_setting_ui_kdi"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    return v2

    :cond_4
    const-string/jumbo v0, "single_lte"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_5
    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingManager;->isDualSIMAlwaysOn()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isSEATELSIMActiveOnly()Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method private isRemoveInstantLettering()Z
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "feature_skt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string/jumbo v0, "volte_outgoing_calltype_default_on"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isRemoveKTHDVoiceSetting()Z
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "hd_voice_network_prefer"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "support_folder_single_lcd"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isRemoveOutgoingVoiceCallSetting()Z
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "feature_tmo"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isTMODevice()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->showVolteSetting()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isRemoveSKTHDVoiceSetting()Z
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "feature_skt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string/jumbo v0, "volte_outgoing_calltype_default_on"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isRemoveSmartSpamCallSetting()Z
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "support_spam_call_smartmanager"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_1
    return v1

    :cond_2
    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private isRemoveTMOVoLTESetting()Z
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isTMODevice()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "autoconfig_simbased_ssku"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->showVolteSetting()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-static {}, Lcom/android/services/telephony/operator/usa/JanskyCallerInfo;->isEnableNsdsServiceStatus()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private isRemoveTMOWFCSetting()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/utils/GeneralSettingUtils;->isTMOWfcEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isRemoveUSCdmaCallForwarding()Z
    .locals 3

    const/4 v2, 0x1

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x138e4

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    const-string/jumbo v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-eq v0, v2, :cond_2

    const-string/jumbo v0, "us_cdma_call_fowarding"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    return v2
.end method

.method private isRemoveVisualCallSetting()Z
    .locals 1

    const-string/jumbo v0, "visual_call_center_callerid_info"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "smart_ivr_callerid_info"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEasyModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isRemoveVoLTENotiSetting()Z
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "volte_outgoing_calltype_default_on"

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
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getRemovePreferences()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/GeneralSettingManager;->getJPNRemovePreferences(Ljava/util/ArrayList;)V

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/GeneralSettingManager;->getKORRemovePreferences(Ljava/util/ArrayList;)V

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/GeneralSettingManager;->getCHNRemovePreferences(Ljava/util/ArrayList;)V

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/GeneralSettingManager;->getUSARemovePreferences(Ljava/util/ArrayList;)V

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/GeneralSettingManager;->getCommonRemovePreferences(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public removePreferences(Landroid/preference/PreferenceCategory;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/GeneralSettingManager;->getRemovePreferences()Ljava/util/ArrayList;

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

    check-cast v1, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/phone/callsettings/GeneralSettingManager$Preferences;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_2
    return-void
.end method
