.class public Lcom/samsung/android/app/omcagent/db/SystemSetting;
.super Ljava/lang/Object;
.source "SystemSetting.java"


# static fields
.field private static EULA_AGREEMENT:Ljava/lang/String; = null

.field public static final NO:I = 0x0

.field private static OMC_APP_AVAILABLE:Ljava/lang/String; = null

.field public static final YES:I = 0x1

.field public static instance:Lcom/samsung/android/app/omcagent/db/SystemSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "samsung_eula_agree"

    sput-object v0, Lcom/samsung/android/app/omcagent/db/SystemSetting;->EULA_AGREEMENT:Ljava/lang/String;

    const-string v0, "samsung_omc_app_available"

    sput-object v0, Lcom/samsung/android/app/omcagent/db/SystemSetting;->OMC_APP_AVAILABLE:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/app/omcagent/db/SystemSetting;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/db/SystemSetting;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/db/SystemSetting;->instance:Lcom/samsung/android/app/omcagent/db/SystemSetting;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/db/SystemSetting;->setAppsNotReady(Landroid/content/Context;)Z

    return-void
.end method

.method public isEulaAgreeed(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/omcagent/db/SystemSetting;->EULA_AGREEMENT:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public setAppsNotReady(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/omcagent/db/SystemSetting;->OMC_APP_AVAILABLE:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public setAppsReady(Landroid/content/Context;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/db/SystemSetting;->OMC_APP_AVAILABLE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method
