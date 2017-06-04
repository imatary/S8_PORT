.class public Lcom/samsung/android/app/omcagent/test/db/TestPref;
.super Lcom/samsung/android/common/util/Preference;
.source "TestPref.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/test/db/TestPref$VIRTUAL_SIM_KEY;
    }
.end annotation


# static fields
.field private static final KEY_PRE_DEPLOY_APP_SERVER_ACTIVATE:Ljava/lang/String; = "AppServer.Preload.Activated"

.field private static final KEY_RUNNING:Ljava/lang/String; = "SideLoading.UI.Installing"

.field private static final KEY_TEST_OMC_SERVER:Ljava/lang/String; = "OMCServer.Types"

.field private static final KEY_TEST_VALIDATION:Ljava/lang/String; = "Test.Validation"

.field public static final OMC_SERVER_DEVELOPER:I = 0x0

.field public static final OMC_SERVER_PRODUCTION:I = 0x2

.field public static final OMC_SERVER_STAGING:I = 0x1

.field public static final TEST_PREFERENCE:Ljava/lang/String; = "TEST_PREFERENCE"

.field public static instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/test/db/TestPref;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/test/db/TestPref;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/common/util/Preference;-><init>()V

    return-void
.end method


# virtual methods
.method public getOMCServerType(Landroid/content/Context;)I
    .locals 4

    const-string v1, "TEST_PREFERENCE"

    const-string v2, "OMCServer.Types"

    const/4 v3, 0x2

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method public getValidationCheck(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "TEST_PREFERENCE"

    const-string v1, "Test.Validation"

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVirtualGid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "TEST_PREFERENCE"

    const-string v1, "Virtual.gid"

    const-string v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualMcc(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "TEST_PREFERENCE"

    const-string v1, "Virtual.mcc"

    const-string v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualMnc(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "TEST_PREFERENCE"

    const-string v1, "Virtual.mnc"

    const-string v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualSpn(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "TEST_PREFERENCE"

    const-string v1, "Virtual.spn"

    const-string v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualSubset(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "TEST_PREFERENCE"

    const-string v1, "Virtual.subset"

    const-string v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPreDeployAppServer(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "TEST_PREFERENCE"

    const-string v1, "AppServer.Preload.Activated"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isStoppedSideloading(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "TEST_PREFERENCE"

    const-string v1, "SideLoading.UI.Installing"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isVirtualSimActivated(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "TEST_PREFERENCE"

    const-string v1, "Virtual.activated"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setOMCServerType(Landroid/content/Context;I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOMCServerType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCDef;->setServerType(I)V

    const-string v0, "TEST_PREFERENCE"

    const-string v1, "OMCServer.Types"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->setIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setOriginAppServer(Landroid/content/Context;)V
    .locals 3

    const-string v0, "TEST_PREFERENCE"

    const-string v1, "AppServer.Preload.Activated"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setPreDeployAppServer(Landroid/content/Context;)V
    .locals 3

    const-string v0, "TEST_PREFERENCE"

    const-string v1, "AppServer.Preload.Activated"

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setValidationCheck(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "TEST_PREFERENCE"

    const-string v1, "Test.Validation"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setVirtualSimActivated(Landroid/content/Context;Lcom/samsung/android/app/omcagent/omc/OmcInfo;)Z
    .locals 6

    const/4 v1, 0x0

    const-string v3, "TEST_PREFERENCE"

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p2, :cond_0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "Virtual.activated"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "Virtual.activated"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "Virtual.mcc"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "Virtual.mcc"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->getMcc()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "Virtual.mnc"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "Virtual.mnc"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->getMnc()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "Virtual.spn"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "Virtual.spn"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->getServiceProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "Virtual.gid"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "Virtual.gid"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "Virtual.subset"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "Virtual.subset"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->getSubsetCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "omc info : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "spn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getVirtualSpn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getVirtualGid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subset : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getVirtualSubset(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setVirtualSimDeactivated(Landroid/content/Context;)Z
    .locals 4

    const/4 v2, 0x0

    const-string v3, "TEST_PREFERENCE"

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "Virtual.activated"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "Virtual.activated"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Virtual.mcc"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Virtual.mcc"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Virtual.mnc"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Virtual.mnc"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Virtual.spn"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Virtual.spn"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Virtual.spn"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Virtual.spn"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Virtual.subset"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Virtual.subset"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    goto :goto_0
.end method

.method public startSideloading(Landroid/content/Context;)V
    .locals 3

    const-string v0, "TEST_PREFERENCE"

    const-string v1, "SideLoading.UI.Installing"

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public stopSideloading(Landroid/content/Context;)V
    .locals 3

    const-string v0, "TEST_PREFERENCE"

    const-string v1, "SideLoading.UI.Installing"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
