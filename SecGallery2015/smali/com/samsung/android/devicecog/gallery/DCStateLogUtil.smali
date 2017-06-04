.class public Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;
.super Ljava/lang/Object;
.source "DCStateLogUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;
    }
.end annotation


# static fields
.field private static final USE_DEVICE_COG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->USE_DEVICE_COG:Z

    sget-boolean v0, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->USE_DEVICE_COG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->getInstance()Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$Category;->BIXBY:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$Category;

    new-instance v2, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$1;

    invoke-direct {v2}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->setLoggingListener(Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$Category;Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils$LoggingListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCState(Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;Z)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCOutputParam(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static logDCOutputParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCOutputParam(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static logDCOutputParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    sget-boolean v1, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->USE_DEVICE_COG:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    new-instance v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;

    sget-object v1, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$Category;->BIXBY:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$Category;

    sget-object v2, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->BIXBY_OUTPUT_PARAM:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;-><init>(Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$Category;Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;->setObject([Ljava/lang/Object;)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->getInstance()Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->enQueue(Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logOutputParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static logDCState(Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCState(Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;Z)V

    return-void
.end method

.method private static logDCState(Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;Z)V
    .locals 4

    sget-boolean v1, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->USE_DEVICE_COG:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_2

    new-instance v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;

    sget-object v2, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$Category;->BIXBY:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$Category;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;->ENTER:Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

    if-ne p1, v1, :cond_1

    sget-object v1, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->BIXBY_ENTER:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    :goto_0
    invoke-direct {v0, v2, v1}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;-><init>(Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$Category;Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;->setObject([Ljava/lang/Object;)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->getInstance()Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->enQueue(Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v1, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->BIXBY_EXIT:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "DCStateLogUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "log state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;->ENTER:Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

    if-ne p1, v1, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;->EXIT:Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

    if-ne p1, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static logDCStateEnterExit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCStateEnterExit(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static logDCStateEnterExit(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v1, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->USE_DEVICE_COG:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    new-instance v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;

    sget-object v1, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$Category;->BIXBY:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$Category;

    sget-object v2, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->BIXBY_EXIT:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;-><init>(Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$Category;Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;)V

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;->setObject([Ljava/lang/Object;)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->getInstance()Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->enQueue(Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;)V

    new-instance v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;

    sget-object v1, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$Category;->BIXBY:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$Category;

    sget-object v2, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->BIXBY_ENTER:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;-><init>(Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$Category;Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;)V

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;->setObject([Ljava/lang/Object;)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->getInstance()Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->enQueue(Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "DCStateLogUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "log EXIT = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", ENTER = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    goto :goto_0
.end method
