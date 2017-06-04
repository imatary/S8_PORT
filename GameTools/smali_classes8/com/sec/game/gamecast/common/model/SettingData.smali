.class public Lcom/sec/game/gamecast/common/model/SettingData;
.super Ljava/lang/Object;
.source "SettingData.java"


# static fields
.field public static final AUDIO_GAMESOUND:I = 0x2

.field public static final AUDIO_GAME_AUDIO:I = 0x2

.field public static final AUDIO_MIC:I = 0x1

.field public static final AUDIO_MICROPHONE:I = 0x1

.field public static final AUDIO_NONE:I = 0x0

.field public static final AVAILABLE:I = 0x2

.field public static final BITRATE_1MBPS:I = 0xf4240

.field public static final BITRATE_3MBPS:I = 0x2dc6c0

.field public static final BITRATE_5MBPS:I = 0x4c4b40

.field public static final BITRATE_6MBPS:I = 0x5b8d80

.field public static final BITRATE_AUTO:I = 0x0

.field public static final BITRATE_AUTO_1080P:I = 0x989680

.field public static final BITRATE_AUTO_360P:I = 0x151800

.field public static final BITRATE_AUTO_480P:I = 0x258780

.field public static final BITRATE_AUTO_540P:I = 0x2f7600

.field public static final BITRATE_AUTO_720P:I = 0x546000

.field private static final DEFAULT_BITRATE:I = 0x0

.field public static final PROFILE_CAMERA:I = 0x0

.field public static final PROFILE_IMAGE:I = 0x1

.field public static final PROFILE_NONE:I = 0x2

.field public static final RESOLUTION_PRESET_LIST:[Ljava/lang/String;

.field public static final UNAVAILABLE:I = 0x1

.field public static final UNCHECKED:I

.field private static mInAppSoundAvailable:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "1920x1080"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "1280x720"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "960x540"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "854x480"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "640x360"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/game/gamecast/common/model/SettingData;->RESOLUTION_PRESET_LIST:[Ljava/lang/String;

    sput v3, Lcom/sec/game/gamecast/common/model/SettingData;->mInAppSoundAvailable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioSource(Landroid/content/Context;)I
    .locals 2

    const-string/jumbo v0, "pref_setting_audio_source"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getAutoBPS(Landroid/content/Context;)I
    .locals 4

    invoke-static {p0}, Lcom/sec/game/gamecast/common/model/SettingData;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x546000

    sget-object v2, Lcom/sec/game/gamecast/common/model/SettingData;->RESOLUTION_PRESET_LIST:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0x989680

    :cond_0
    sget-object v2, Lcom/sec/game/gamecast/common/model/SettingData;->RESOLUTION_PRESET_LIST:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v1, 0x546000

    :cond_1
    sget-object v2, Lcom/sec/game/gamecast/common/model/SettingData;->RESOLUTION_PRESET_LIST:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v1, 0x2f7600

    :cond_2
    sget-object v2, Lcom/sec/game/gamecast/common/model/SettingData;->RESOLUTION_PRESET_LIST:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v1, 0x258780

    :cond_3
    sget-object v2, Lcom/sec/game/gamecast/common/model/SettingData;->RESOLUTION_PRESET_LIST:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v1, 0x151800

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SettingData.getAutoBPS : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    return v1
.end method

.method public static getAutoBitrate(Landroid/content/Context;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getAutoBitrate : bitrate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "pref_setting_auto_bitrate"

    invoke-static {p0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    const-string/jumbo v0, "pref_setting_auto_bitrate"

    invoke-static {p0, v0}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getBitrate(Landroid/content/Context;)I
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getBitrate : bitrate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "pref_setting_bitrate"

    invoke-static {p0, v1, v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    const-string/jumbo v0, "pref_setting_bitrate"

    invoke-static {p0, v0, v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getBitrateUI(Landroid/content/Context;)I
    .locals 3

    const-string/jumbo v1, "pref_setting_bitrate"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xf4240 -> :sswitch_4
        0x2dc6c0 -> :sswitch_3
        0x4c4b40 -> :sswitch_2
        0x5b8d80 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getBrightNessAuto(Landroid/content/Context;Z)Z
    .locals 1

    const-string/jumbo v0, "bright_auto"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getBrightNessValue(Landroid/content/Context;I)I
    .locals 1

    const-string/jumbo v0, "bright_value"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getBrightness(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo v0, "recordable"

    invoke-static {p0, v0}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getDownloadableScenarioStep(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "key_downloadble_scenario_step"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "step is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    return v0
.end method

.method public static getFirstStartApplicationTime(Landroid/content/Context;)J
    .locals 4

    const-string/jumbo v0, "key_first_start_application_time"

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGameExecutionTime(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pref_game_execution_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "empty"

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGameManagerVersion(Landroid/content/Context;)F
    .locals 3

    const-string/jumbo v1, "key_gamemanager_version"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceFloat(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "get Game Manager Version is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    return v0
.end method

.method public static getGamePID(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pref_game_process_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getGameToolsHiddenViCnt(Landroid/content/Context;)I
    .locals 2

    const-string/jumbo v0, "pref_setting_show_play_tools_noti_cnt"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getGameTunnerMode(Landroid/content/Context;)I
    .locals 2

    const-string/jumbo v0, "key_game_tunner_mode"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getGameTunnerModeTemporarily(Landroid/content/Context;)I
    .locals 2

    const-string/jumbo v0, "key_game_tunner_mode_temp"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getKeyLockSettings(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "KEY_RECENT_BACK_KEY_LOCK_SETTINGS"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLauncherStubServerVersion(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "launcher_version_server"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLauncherTncReadCondition(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "game_launcher_tnc_read"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getNewMenuCount(Landroid/content/Context;)I
    .locals 1

    const-string/jumbo v0, "key_new_menu_count"

    invoke-static {p0, v0}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getNoAlertsGameList(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "game_no_interruption_white_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrevDefaultLauncher(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "pref_prev_default_launcher"

    const-string/jumbo v1, "com.sec.android.app.launcher"

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProfileSource(Landroid/content/Context;)I
    .locals 2

    const-string/jumbo v0, "pref_setting_profile_source"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getResolution(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "pref_setting_resolution_new"

    const-string/jumbo v1, "1280x720"

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSetupWizardCompleteTime(Landroid/content/Context;)J
    .locals 4

    const-string/jumbo v0, "key_setup_wizard_complete_time"

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getStubHideNewMarkPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "pref_last_hide_newbadge_stub_package"

    const-string/jumbo v1, "empty"

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getToolkitHandlePosition(Landroid/content/Context;Ljava/lang/String;)F
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SKEY_TOOLKIT_HANDLE_POSITION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceFloat(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static getToolkitHandleSide(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SKEY_TOOLKIT_HANDLE_SIDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getToolsStubServerVersion(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "tools_version_server"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getUserProfileImage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "pref_setting_profile_image"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserProfileImageEnable(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo v0, "pref_setting_profile_image_enable"

    invoke-static {p0, v0}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getUserProfileSize(Landroid/content/Context;)I
    .locals 2

    const-string/jumbo v0, "pref_setting_profile_size"

    const/16 v1, 0x64

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isAddGameWelcome(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "key_add_game_welcome"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAfter1HourFromOOBETIME(Landroid/content/Context;)Z
    .locals 8

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/sec/game/gamecast/common/model/SettingData;->getFirstStartApplicationTime(Landroid/content/Context;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {p0}, Lcom/sec/game/gamecast/common/model/SettingData;->getFirstStartApplicationTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/sec/game/gamecast/common/constant/Define;->AFTER_1HOUR_OOBE_TIME:J

    add-long/2addr v6, v0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isAfterFromOOBETIME(Landroid/content/Context;J)Z
    .locals 9

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/sec/game/gamecast/common/model/SettingData;->getFirstStartApplicationTime(Landroid/content/Context;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {p0}, Lcom/sec/game/gamecast/common/model/SettingData;->getFirstStartApplicationTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v6, v0, p1

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isAfterFromSetupWizardComplete(Landroid/content/Context;J)Z
    .locals 9

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/sec/game/gamecast/common/model/SettingData;->getSetupWizardCompleteTime(Landroid/content/Context;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {p0}, Lcom/sec/game/gamecast/common/model/SettingData;->getSetupWizardCompleteTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v6, v0, p1

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isBitrateAuto(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_setting_bitrate"

    invoke-static {p0, v2, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isBitrateAuto : bitrate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isDisclaimerConfirm(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/sec/game/gamecast/common/model/SettingData;->isGameLauncherTermsAndConditionAgreed(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isDisplayGameTools(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "pref_setting_display_play_tools"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isFirstRun(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "firstrun"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isGameFoldedFirstTime(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "key_games_folded_first_time"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isGameHomeEnable(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "game_home_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isGameHomeEnableSync(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/sec/game/gamecast/common/model/SettingUtil;->get(Landroid/content/Context;)Lcom/sec/game/gamecast/common/model/SettingUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/game/gamecast/common/model/SettingUtil;->isGameHomeEnableSync()Z

    move-result v0

    return v0
.end method

.method public static isGameIconHiddenFunctionEnable(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "game_home_hidden_games"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Function Key Value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isGameIconsHidden(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "game_home_hidden_games"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isGameInstalledFirst(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "key_games_installedfirst_time"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isGameLauncherNeededFreshStart(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "pref_setting_gamelauncher_need_fresh_start"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isGameLauncherTermsAndConditionAgreed(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/sec/game/gamecast/common/model/SettingData;->getLauncherTncReadCondition(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TNC curVersion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    const-string/jumbo v1, "TNC newVersion : 4"

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isGameToolFirst(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "key_first_game_tool"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isGuideShown(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "SKEY_GUIDE_SHOWN"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isKeyLocked(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "KEY_RECENT_BACK_KEY_LOCK"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isLaunchGameHomeAfterEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "key_start_sgames_after_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNoAlertFirst(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "key_first_no_alert"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNoAlertsOn(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "pref_setting_no_interruption"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isNoAlertsOnSystemSettings(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "game_no_interruption"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isNoneRecordingGuideShown(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "SKEY_NONE_RECORDING_GUIDE_SHOWN"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isOOBDisablingDone(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "pref_setting_gamelauncher_key_oob_disabling"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isPerformanceGameModeOn(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sem_perfomance_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isRecordEnable(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo v0, "recordable"

    invoke-static {p0, v0}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRecordedPermissionFirstTime(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "key_recorded_permission_first_time"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isRecordingGuideShown(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "SKEY_RECORDING_GUIDE_SHOWN"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSelectedNotificationClose(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "key_select_notificationclose"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isShowGameTools(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "pref_setting_show_play_tools"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isShownGameToolsIntro(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "pref_setting_display_play_tools_intro"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isYVUEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "color_compatiablity"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isYoutubeAvailable(Landroid/content/Context;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v3, v4

    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/game/gamecast/common/R$array;->forbidden_country_array:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v6, v1

    move v5, v3

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v0, v1, v5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method public static setAddGameWelcome(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "key_add_game_welcome"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setAudioSource(Landroid/content/Context;I)V
    .locals 1

    const-string/jumbo v0, "pref_setting_audio_source"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setAutoBitrate(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAutoBitrate : bitrate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    const-string/jumbo v0, "pref_setting_auto_bitrate"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setBitrate(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBitrate : bitrate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    const-string/jumbo v0, "pref_setting_bitrate"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setBitrateUI(Landroid/content/Context;I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    :goto_0
    const-string/jumbo v0, "pref_setting_bitrate"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :pswitch_0
    const/4 p1, 0x0

    goto :goto_0

    :pswitch_1
    const p1, 0x5b8d80

    goto :goto_0

    :pswitch_2
    const p1, 0x4c4b40

    goto :goto_0

    :pswitch_3
    const p1, 0x2dc6c0

    goto :goto_0

    :pswitch_4
    const p1, 0xf4240

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static setBrightNessAuto(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "bright_auto"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setBrightNessValue(Landroid/content/Context;I)V
    .locals 1

    const-string/jumbo v0, "bright_value"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setChooseNotificationClose(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "key_select_notificationclose"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setDisclaimerConfirm(Landroid/content/Context;Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/sec/game/gamecast/common/model/SettingData;->setLauncherTncReadCondition(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/game/gamecast/common/model/SettingData;->setLauncherTncReadCondition(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static setDisplayGameTools(Landroid/content/Context;Z)V
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDisplayGameTools "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GT05"

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const-wide/16 v4, 0x3e8

    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {p0}, Lcom/sec/game/gamecast/common/model/SettingData;->isDisplayGameTools(Landroid/content/Context;)Z

    move-result v6

    if-eq v6, p1, :cond_0

    invoke-static {p0, v7}, Lcom/sec/game/gamecast/common/model/SettingData;->setKeyLock(Landroid/content/Context;Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pref_setting_display_play_tools"

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_1
.end method

.method public static setDownloadableScenarioStep(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "step set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "key_downloadble_scenario_step"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setFirstRun(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "firstrun"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setFirstStartApplicationTime(Landroid/content/Context;J)V
    .locals 1

    const-string/jumbo v0, "key_first_start_application_time"

    invoke-static {p0, v0, p1, p2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static setGameExecutionTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pref_game_execution_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setGameFoldedFirstTime(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "key_games_folded_first_time"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setGameHomeEnable(Landroid/content/Context;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "game_home_enable"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setGameHomeEnableSync(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {p0}, Lcom/sec/game/gamecast/common/model/SettingUtil;->get(Landroid/content/Context;)Lcom/sec/game/gamecast/common/model/SettingUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/game/gamecast/common/model/SettingUtil;->setGameHomeEnabled(Z)V

    return-void
.end method

.method public static setGameIconsHidden(Landroid/content/Context;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "game_home_hidden_games"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static setGameInstalledFirst(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "key_games_installedfirst_time"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setGameLauncherNeedFreshStart(Landroid/content/Context;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pref_setting_gamelauncher_need_fresh_start"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setGameManagerVersion(Landroid/content/Context;F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set Game Manager Version is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    const-string/jumbo v0, "key_gamemanager_version"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceFloat(Landroid/content/Context;Ljava/lang/String;F)V

    return-void
.end method

.method public static setGamePID(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pref_game_process_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setGameToolFirst(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "key_first_game_tool"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setGameToolsHiddenViCnt(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setGameToolsHiddenViCnt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    const-string/jumbo v0, "pref_setting_show_play_tools_noti_cnt"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setGameTunnerMode(Landroid/content/Context;I)V
    .locals 1

    const-string/jumbo v0, "key_game_tunner_mode"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setGameTunnerModeTemporarily(Landroid/content/Context;I)V
    .locals 1

    const-string/jumbo v0, "key_game_tunner_mode_temp"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setGuideShown(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "SKEY_GUIDE_SHOWN"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setKeyLock(Landroid/content/Context;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "KEY_RECENT_BACK_KEY_LOCK"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setKeyLockSettings(Landroid/content/Context;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "KEY_RECENT_BACK_KEY_LOCK_SETTINGS"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setLaunchGameHomeAfterEnabled(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "key_start_sgames_after_enabled"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setLauncherStubServerVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "launcher_version_server"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static setLauncherTncReadCondition(Landroid/content/Context;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "game_launcher_tnc_read"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setNewMenuCount(Landroid/content/Context;I)V
    .locals 1

    const-string/jumbo v0, "key_new_menu_count"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setNoAlertFirst(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "key_first_no_alert"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setNoAlertsGameList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "game_no_interruption_white_list"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setNoAlertsOn(Landroid/content/Context;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pref_setting_no_interruption"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setNoAlertsOnSystemSettings(Landroid/content/Context;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "game_no_interruption"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setNoneRecordingGuideShown(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "SKEY_NONE_RECORDING_GUIDE_SHOWN"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setOOBDisabling(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pref_setting_gamelauncher_key_oob_disabling"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setPrevDefaultLauncher(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "pref_prev_default_launcher"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setProfileSource(Landroid/content/Context;I)V
    .locals 1

    const-string/jumbo v0, "pref_setting_profile_source"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setRecordEnable(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "recordable"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setRecordedPermissionFirstTime(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "key_recorded_permission_first_time"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setRecordingGuideShown(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "SKEY_RECORDING_GUIDE_SHOWN"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setResolution(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "pref_setting_resolution_new"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSetupWizardCompleteTime(Landroid/content/Context;J)V
    .locals 1

    const-string/jumbo v0, "key_setup_wizard_complete_time"

    invoke-static {p0, v0, p1, p2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static setShowGameTools(Landroid/content/Context;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setShowGameTools "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    const-string/jumbo v0, "pref_setting_show_play_tools"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setShownGameToolsIntro(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "pref_setting_display_play_tools_intro"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setStubHideNewMarkPackageName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "pref_last_hide_newbadge_stub_package"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setToolkitHandlePosition(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SKEY_TOOLKIT_HANDLE_POSITION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceFloat(Landroid/content/Context;Ljava/lang/String;F)V

    return-void
.end method

.method public static setToolkitHandleSide(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SKEY_TOOLKIT_HANDLE_SIDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setToolsStubServerVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "tools_version_server"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static setUserProfileImage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "pref_setting_profile_image"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setUserProfileImageEnable(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "pref_setting_profile_image_enable"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setUserProfileSize(Landroid/content/Context;I)V
    .locals 1

    const-string/jumbo v0, "pref_setting_profile_size"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setYVUEnabled(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "color_compatiablity"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
