.class public Lcom/samsung/android/app/omcagent/log/FileLog;
.super Ljava/lang/Object;
.source "FileLog.java"


# static fields
.field public static final BOOTSTRAP:Lcom/samsung/android/common/log/LoggerCollection;

.field public static final BOOTSTRAP_FILE:Lcom/samsung/android/common/log/LoggerFile;

.field public static final DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

.field public static final LOGFILE_BOOTSTRAP:Ljava/lang/String; = "omcagent_bootstrap%d.log"

.field public static final LOGFILE_OMCINFO:Ljava/lang/String; = "omcagent_omcinfo%d.log"

.field public static final LOGFILE_PATH:Ljava/lang/String; = "log"

.field public static final LOGFILE_SESSION:Ljava/lang/String; = "omcagent_session%d.log"

.field public static final OMCINFO:Lcom/samsung/android/common/log/LoggerCollection;

.field public static final OMCINFO_FILE:Lcom/samsung/android/common/log/LoggerFile;

.field public static final TAG_NAME:Ljava/lang/String; = "OMC_AGENT"

.field public static isEncrypt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Lcom/samsung/android/common/log/LoggerFile;

    invoke-direct {v0}, Lcom/samsung/android/common/log/LoggerFile;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->BOOTSTRAP_FILE:Lcom/samsung/android/common/log/LoggerFile;

    new-instance v0, Lcom/samsung/android/common/log/LoggerCollection;

    new-array v1, v5, [Lcom/samsung/android/common/log/Logger$Core;

    const-string v2, "OMC_AGENT"

    invoke-static {v2}, Lcom/samsung/android/common/log/LoggerData;->newInstance(Ljava/lang/String;)Lcom/samsung/android/common/log/LoggerData;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->BOOTSTRAP_FILE:Lcom/samsung/android/common/log/LoggerFile;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/samsung/android/common/log/LoggerCollection;-><init>([Lcom/samsung/android/common/log/Logger$Core;)V

    sput-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->BOOTSTRAP:Lcom/samsung/android/common/log/LoggerCollection;

    new-instance v0, Lcom/samsung/android/common/log/LoggerFile;

    invoke-direct {v0}, Lcom/samsung/android/common/log/LoggerFile;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->OMCINFO_FILE:Lcom/samsung/android/common/log/LoggerFile;

    new-instance v0, Lcom/samsung/android/common/log/LoggerCollection;

    new-array v1, v5, [Lcom/samsung/android/common/log/Logger$Core;

    const-string v2, "OMC_AGENT"

    invoke-static {v2}, Lcom/samsung/android/common/log/LoggerData;->newInstance(Ljava/lang/String;)Lcom/samsung/android/common/log/LoggerData;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->OMCINFO_FILE:Lcom/samsung/android/common/log/LoggerFile;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/samsung/android/common/log/LoggerCollection;-><init>([Lcom/samsung/android/common/log/Logger$Core;)V

    sput-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->OMCINFO:Lcom/samsung/android/common/log/LoggerCollection;

    sput-boolean v3, Lcom/samsung/android/app/omcagent/log/FileLog;->isEncrypt:Z

    sget-boolean v0, Lcom/samsung/android/app/omcagent/log/FileLog;->isEncrypt:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/common/Log;->ALL:Lcom/samsung/android/common/log/LoggerCollection;

    sput-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/app/omcagent/log/FileLog$1;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/log/FileLog$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/samsung/android/common/log/LogLineInfo;->excludeClass([Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logShift()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/common/Log;->shift()V

    return-void
.end method

.method public static setBootstrap(Landroid/content/Context;)V
    .locals 6

    if-eqz p0, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->BOOTSTRAP_FILE:Lcom/samsung/android/common/log/LoggerFile;

    new-instance v1, Lcom/samsung/android/common/log/LogDescriptor$Limit;

    new-instance v2, Lcom/samsung/android/common/log/LogFileDescriptor;

    const-string v3, "log"

    const-string v4, "omcagent_bootstrap%d.log"

    const/4 v5, 0x2

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/samsung/android/common/log/LogFileDescriptor;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-wide/32 v4, 0x100000

    invoke-direct {v1, v2, v4, v5}, Lcom/samsung/android/common/log/LogDescriptor$Limit;-><init>(Lcom/samsung/android/common/log/LogDescriptor$Stream;J)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/LoggerFile;->setLogDescriptor(Lcom/samsung/android/common/log/LogDescriptor;)V

    :cond_0
    return-void
.end method

.method public static setEncrypt(Z)V
    .locals 0

    sput-boolean p0, Lcom/samsung/android/app/omcagent/log/FileLog;->isEncrypt:Z

    return-void
.end method

.method public static setOmcInfo(Landroid/content/Context;)V
    .locals 6

    if-eqz p0, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->OMCINFO_FILE:Lcom/samsung/android/common/log/LoggerFile;

    new-instance v1, Lcom/samsung/android/common/log/LogDescriptor$Limit;

    new-instance v2, Lcom/samsung/android/common/log/LogFileDescriptor;

    const-string v3, "log"

    const-string v4, "omcagent_omcinfo%d.log"

    const/4 v5, 0x2

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/samsung/android/common/log/LogFileDescriptor;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-wide/32 v4, 0x100000

    invoke-direct {v1, v2, v4, v5}, Lcom/samsung/android/common/log/LogDescriptor$Limit;-><init>(Lcom/samsung/android/common/log/LogDescriptor$Stream;J)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/LoggerFile;->setLogDescriptor(Lcom/samsung/android/common/log/LogDescriptor;)V

    :cond_0
    return-void
.end method

.method public static setSession(Landroid/content/Context;)V
    .locals 5

    if-eqz p0, :cond_0

    new-instance v0, Lcom/samsung/android/common/log/LogDescriptor$Limit;

    new-instance v1, Lcom/samsung/android/common/log/LogFileDescriptor;

    const-string v2, "log"

    const-string v3, "omcagent_session%d.log"

    const/4 v4, 0x3

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/samsung/android/common/log/LogFileDescriptor;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-wide/32 v2, 0x500000

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/common/log/LogDescriptor$Limit;-><init>(Lcom/samsung/android/common/log/LogDescriptor$Stream;J)V

    invoke-static {v0}, Lcom/samsung/android/common/Log;->setLogDescriptor(Lcom/samsung/android/common/log/LogDescriptor;)V

    :cond_0
    return-void
.end method

.method public static setTagName()V
    .locals 1

    const-string v0, "OMC_AGENT"

    invoke-static {v0}, Lcom/samsung/android/common/Log;->setTagName(Ljava/lang/String;)V

    return-void
.end method
