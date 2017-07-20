.class public Lcom/android/phone/TeleServiceSystemDB;
.super Ljava/lang/Object;
.source "TeleServiceSystemDB.java"


# static fields
.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataSelectionEnableSet()Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMcidChgUrl()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mcid_chg_url"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMcidContentUrl()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mcid_content_url"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMcidServiveType()I
    .locals 2

    const-string/jumbo v0, "mcid_service_type"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRoamingAutoSetting()I
    .locals 3

    const-string/jumbo v1, "roaming_auto_setting"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRoamingAutoSetting value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;)V

    return v0
.end method

.method public static getSecureSettingDB(Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return p1

    :cond_0
    sget-object v0, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSettingDB(Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return p1

    :cond_0
    sget-object v0, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSettingDB(Ljava/lang/String;II)I
    .locals 1

    sget-object v0, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return p1

    :cond_0
    sget-object v0, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getSettingDB(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static isAirplainModeOn(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAirplainModeOn -  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;)V

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isAnswerCallAfterThisDisconnect()Z
    .locals 5

    const/4 v2, 0x0

    const-string/jumbo v0, "Answer_Call_After_ThisDisconnect"

    const-string/jumbo v3, "Answer_Call_After_ThisDisconnect"

    invoke-static {v3, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAnswerCallAfterThisDisconnect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isCallerInfoCardMode()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "display_caller_info_card"

    const-string/jumbo v5, "display_caller_info_card"

    const-string/jumbo v2, "default_caller_information"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v5, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isCallerInfoCardMode : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;Z)V

    if-eqz v1, :cond_2

    :goto_2
    return v3

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method public static isCarModeOn()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "drivelink_mode"

    const-string/jumbo v3, "drivelink_mode"

    invoke-static {v3, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v3

    if-lt v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isEasyModeOn()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v1, "easy_mode_switch"

    const-string/jumbo v0, "easy_mode_contacts"

    const-string/jumbo v4, "easy_mode_switch"

    invoke-static {v4, v6}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v4, "easy_mode_contacts"

    invoke-static {v4, v6}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "support_easy_mode_enhanced"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v5

    :cond_0
    const-string/jumbo v4, "support_easy_mode"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    return v6

    :cond_1
    return v5
.end method

.method public static isEasyModeOnCST()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isEmergencyMode()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEmergencyMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;Z)V

    return v0
.end method

.method public static isKidsModeRunning(Landroid/content/Context;)Z
    .locals 9

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "android.intent.category.HOME"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x10000

    invoke-virtual {v4, v2, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v6, "TeleServiceSystemDB"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "currentLauncher : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string/jumbo v6, "com.sec.android.app.kidshome"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v1

    const-string/jumbo v6, "TeleServiceSystemDB"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isLostPhoneLock()Z
    .locals 3

    const-string/jumbo v0, "lost_phone_lock"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "lock"

    sget-object v1, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "missing_phone_lock"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isMaximumPowerSavingMode()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isUltraPowerSavingModeSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isUltraPowerSavingMode()Z

    move-result v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isMaximumPowerSavingMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;Z)V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMcidDownloadble()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "mcid_downloadable"

    invoke-static {v3, v1}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isMobileKeyboardCovered()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v2, v4, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isMobileKeyboardCovered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;Z)V

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNsriSecureCallMode()Z
    .locals 4

    const/4 v2, 0x0

    const-string/jumbo v0, "nsri_secure_call_mode"

    const-string/jumbo v3, "nsri_secure_call_mode"

    invoke-static {v3, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isOnehandModeOn()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "interactionarea_switch"

    const-string/jumbo v0, "any_screen_running"

    const/4 v2, 0x0

    const-string/jumbo v3, "any_screen_running"

    invoke-static {v3, v4}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_0

    return v4

    :cond_0
    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    :cond_1
    const-string/jumbo v3, "interactionarea_switch"

    invoke-static {v3, v4}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_2

    return v5

    :cond_2
    return v4
.end method

.method public static isSafetyAssistanceMode()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    sget-object v3, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    const-string/jumbo v3, "ultra_powersaving_mode"

    invoke-static {v3, v4}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz v0, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    const/4 v1, 0x0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSafetyAssistanceMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;Z)V

    return v1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static isTPhoneEnabled()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "support_tphone"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    const-string/jumbo v3, "skt_phone20_settings"

    invoke-static {v3, v2, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public static isTPhoneMode()Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isTPhoneEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "isTPhoneMode : emergency mode"

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;Z)V

    return v2

    :cond_1
    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isTPhoneUpgradeInstallingState()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "isTPhoneMode : TPhone istalling"

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;Z)V

    return v2

    :cond_2
    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isCarModeOn()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "isTPhoneMode : drivelink mode"

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;Z)V

    return v2

    :cond_3
    sget-object v0, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/TeleServiceSystemDB;->isKidsModeRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "isTPhoneMode : kids mode"

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;Z)V

    return v2

    :cond_4
    const-string/jumbo v0, "isTPhoneMode : true"

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;Z)V

    return v1
.end method

.method public static isTPhoneRejectMode()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isTPhoneEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    return v4

    :cond_0
    const-string/jumbo v0, "skt_phone20_reject_mode"

    const-string/jumbo v2, "skt_phone20_reject_mode"

    invoke-static {v2, v4}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isTPhoneRejectMode : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;Z)V

    if-eqz v1, :cond_2

    :goto_1
    return v3

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method public static isTPhoneUpgradeInstallingState()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "skt_phone20_installing_mode"

    const-string/jumbo v4, "skt_phone20_installing_mode"

    invoke-static {v4, v3}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static isTwoPhoneRegistered()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v3, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "two_register"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isTwoPhoneRegistered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;Z)V

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isUltraPowerSavingMode()Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "ultra_powersaving_mode"

    const/4 v2, -0x2

    invoke-static {v1, v3, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isUltraPowerSavingMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;Z)V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "TeleServiceSystemDB"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "TeleServiceSystemDB"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setAlerting(Z)V
    .locals 4

    const-string/jumbo v0, "call_state_alerting"

    sget-object v1, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "call_state_alerting"

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAlerting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setCallerInfoCardMode(I)V
    .locals 3

    const-string/jumbo v0, "display_caller_info_card"

    sget-object v1, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "display_caller_info_card"

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCallerInfoCardMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setDisplayBitrate(I)V
    .locals 2

    sget-object v0, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "display_bitrate"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDisplayBitrate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setInComingCallDisconnect(Z)V
    .locals 4

    const-string/jumbo v0, "set_incomingcall_disconnect"

    sget-object v1, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "set_incomingcall_disconnect"

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInComingCallDisconnect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setLGTRADCode(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "country_code"

    invoke-static {v0, p0}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLGTRADID(I)V
    .locals 1

    const-string/jumbo v0, "country_id"

    invoke-static {v0, p0}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    return-void
.end method

.method public static setLGTRADNameEng(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "CONTURY_NAME_ENG"

    invoke-static {v0, p0}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLGTRADNameKor(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "CONTURY_NAME_KOR"

    invoke-static {v0, p0}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLGTRADSetting(I)V
    .locals 1

    const-string/jumbo v0, "auto_dial_enable"

    invoke-static {v0, p0}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    return-void
.end method

.method public static setLostPhoneLock(Z)V
    .locals 3

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "missing_phone_lock"

    const-string/jumbo v2, "lock"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "missing_phone_lock"

    const-string/jumbo v2, "unlock"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static setMcidB2C(I)V
    .locals 2

    const-string/jumbo v0, "mcid_b2c"

    invoke-static {v0, p0}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMcidM2C : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setMcidBlockedNumber(I)V
    .locals 2

    sget-object v0, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mcid_rejected_number"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMcidBlockedNumber : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setMcidChgUrl(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mcid_chg_url"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setMcidContentUrl(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mcid_content_url"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setMcidDownloadable(I)V
    .locals 2

    sget-object v0, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mcid_downloadable"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMcidDownloadable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setMcidServiceType(I)V
    .locals 1

    const-string/jumbo v0, "mcid_service_type"

    invoke-static {v0, p0}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    return-void
.end method

.method public static setName4startIMSConference(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "name4startIMSConf"

    invoke-static {v0, p0}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setNsriSecureCallMode(I)V
    .locals 3

    const-string/jumbo v0, "nsri_secure_call_mode"

    sget-object v1, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "nsri_secure_call_mode"

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNsriSecureCallMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setNumber4startIMSConference(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "number4startIMSConf"

    invoke-static {v0, p0}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setOnMerge(I)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOnMerge : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;)V

    const-string/jumbo v0, "on_merge"

    sget-object v1, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "on_merge"

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setPIPVisiblity(I)V
    .locals 3

    const-string/jumbo v0, "show_pip_visibility"

    sget-object v1, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_pip_visibility"

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPIPVisiblity() : show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setRoamingAutoSetting(I)V
    .locals 1

    const-string/jumbo v0, "roaming_auto_setting"

    invoke-static {v0, p0}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    return-void
.end method

.method public static setSecureSettingDB(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setSettingDB(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setSettingDB(Ljava/lang/String;II)V
    .locals 1

    sget-object v0, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static setSettingDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setSuppService(I)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSuppService : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;)V

    const-string/jumbo v0, "on_supp_service"

    sget-object v1, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "on_supp_service"

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setTPhoneEnabled(I)V
    .locals 2

    const-string/jumbo v0, "skt_phone20_settings"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTPhoneEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setTPhoneRADDialingToKorea(I)V
    .locals 3

    const-string/jumbo v0, "skt_phone20_rad_dialing_korea"

    sget-object v1, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "skt_phone20_rad_dialing_korea"

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTPhoneRADDialingToKorea : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setTPhoneRejectMode(I)V
    .locals 3

    const-string/jumbo v0, "skt_phone20_reject_mode"

    sget-object v1, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "skt_phone20_reject_mode"

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTPhoneRejectMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setTPhoneRelaxMode(I)V
    .locals 3

    const-string/jumbo v0, "skt_phone20_relax_mode"

    sget-object v1, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "skt_phone20_relax_mode"

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTPhoneRelaxMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setTPhoneUpgradeInstallingState(I)V
    .locals 3

    const-string/jumbo v0, "skt_phone20_installing_mode"

    sget-object v1, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "skt_phone20_installing_mode"

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTPhoneUpgradeInstallingState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setTtyNotification(I)V
    .locals 3

    const-string/jumbo v0, "show_tty_notification"

    sget-object v1, Lcom/android/phone/TeleServiceSystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_tty_notification"

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTtyNotification : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/TeleServiceSystemDB;->log(Ljava/lang/String;Z)V

    return-void
.end method
