.class public Lcom/samsung/android/app/omcagent/common/OmcFeature;
.super Ljava/lang/Object;
.source "OmcFeature.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "OMC_Agent"

.field public static final PUSH_TYPE_GCM:Ljava/lang/String; = "GCM"

.field public static final PUSH_TYPE_NOT_SUPPORT:Ljava/lang/String; = "NONE"

.field private static instance:Lcom/samsung/android/app/omcagent/common/OmcFeature;


# instance fields
.field private pushType:Ljava/lang/String;

.field private registrationDelayTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/omcagent/common/OmcFeature;->setPushType(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/omcagent/common/OmcFeature;->setRegistrationDelay(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/app/omcagent/common/OmcFeature;
    .locals 2

    const-class v1, Lcom/samsung/android/app/omcagent/common/OmcFeature;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/omcagent/common/OmcFeature;->instance:Lcom/samsung/android/app/omcagent/common/OmcFeature;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/omcagent/common/OmcFeature;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/omcagent/common/OmcFeature;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/omcagent/common/OmcFeature;->instance:Lcom/samsung/android/app/omcagent/common/OmcFeature;

    :cond_0
    sget-object v0, Lcom/samsung/android/app/omcagent/common/OmcFeature;->instance:Lcom/samsung/android/app/omcagent/common/OmcFeature;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getOmcDomainRegion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    sget-object v2, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v2, p0}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getDomainPrefix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_SyncML_ConfigOmcDomainRegion"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v2, p0, v1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setDomainPrefix(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v2, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v2, p0}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getDomainPrefix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    sget-object v2, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    const-string v3, ""

    invoke-virtual {v2, p0, v3}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setDomainPrefix(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPushType(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/common/util/GeneralUtils;->isGSFPackagedInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GCM"

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/common/OmcFeature;->pushType:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/common/OmcFeature;->pushType:Ljava/lang/String;

    goto :goto_0
.end method

.method private setRegistrationDelay(Landroid/content/Context;)V
    .locals 2

    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/samsung/android/app/omcagent/common/OmcFeature;->registrationDelayTime:J

    return-void
.end method


# virtual methods
.method public getPushType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/common/OmcFeature;->pushType:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistrationDelay()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/omcagent/common/OmcFeature;->registrationDelayTime:J

    return-wide v0
.end method
