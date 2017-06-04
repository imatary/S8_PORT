.class public Lcom/samsung/android/app/omcagent/db/AppPref;
.super Lcom/samsung/android/common/util/Preference;
.source "AppPref.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/db/AppPref$SESSION_KEY;,
        Lcom/samsung/android/app/omcagent/db/AppPref$UI_STATE;,
        Lcom/samsung/android/app/omcagent/db/AppPref$STATE;
    }
.end annotation


# static fields
.field public static final APP_PREFERENCE:Ljava/lang/String; = "APPS_PREFERENCE"

.field public static instance:Lcom/samsung/android/app/omcagent/db/AppPref;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/db/AppPref;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/db/AppPref;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/db/AppPref;->instance:Lcom/samsung/android/app/omcagent/db/AppPref;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/common/util/Preference;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "APPS_PREFERENCE"

    const-string v1, "App.Version"

    const-string v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/AppPref;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMcc(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "APPS_PREFERENCE"

    const-string v1, "App.mcc"

    const-string v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/AppPref;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMnc(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "APPS_PREFERENCE"

    const-string v1, "App.mnc"

    const-string v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/AppPref;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReportUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "APPS_PREFERENCE"

    const-string v1, "Report.ResultUrl"

    const-string v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/AppPref;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "APPS_PREFERENCE"

    const-string v2, "Report.TransactionId"

    const-string v3, ""

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/samsung/android/app/omcagent/db/AppPref;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const-string v0, "APPS_PREFERENCE"

    const-string v1, "Report.TransactionId"

    const-string v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/AppPref;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUIState(Landroid/content/Context;)I
    .locals 3

    const-string v0, "APPS_PREFERENCE"

    const-string v1, "App.Ui.State"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/AppPref;->getIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isAppRuninning(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "APPS_PREFERENCE"

    const-string v1, "App.Task.State"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/AppPref;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAppRunning(Landroid/content/Context;Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set App Time Start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const-string v0, "APPS_PREFERENCE"

    const-string v1, "App.Task.State"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/AppPref;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setAppSessionInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v2, "APPS_PREFERENCE"

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/app/omcagent/db/AppPref;->getPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "App.mcc"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "App.mcc"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "App.mnc"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "App.mnc"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Report.TransactionId"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Report.TransactionId"

    invoke-interface {v0, v2, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Report.ResultUrl"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Report.ResultUrl"

    invoke-interface {v0, v2, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "App.Version"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "App.Version"

    invoke-interface {v0, v2, p6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    goto :goto_0
.end method

.method public setUIState(Landroid/content/Context;I)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-static {p2}, Lcom/samsung/android/app/omcagent/db/AppPref$UI_STATE;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    const-string v0, "APPS_PREFERENCE"

    const-string v1, "App.Ui.State"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/AppPref;->setIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
