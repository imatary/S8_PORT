.class public Lcom/samsung/android/common/diagmon/FatalExceptionFileLog;
.super Ljava/lang/Object;
.source "FatalExceptionFileLog.java"


# static fields
.field public static final BACKUP_COUNT:I = 0x2

.field public static final LOGFILE_PATH:Ljava/lang/String; = "log"

.field public static final TAG_NAME:Ljava/lang/String; = "FatalExceptionLog"

.field private static logger:Lcom/samsung/android/common/log/Logger;

.field private static loggerFile:Lcom/samsung/android/common/log/LoggerFile;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Lcom/samsung/android/common/diagmon/FatalExceptionFileLog;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/samsung/android/common/log/LogLineInfo;->excludeClass([Ljava/lang/Class;)V

    new-instance v0, Lcom/samsung/android/common/log/LoggerFile;

    invoke-direct {v0}, Lcom/samsung/android/common/log/LoggerFile;-><init>()V

    sput-object v0, Lcom/samsung/android/common/diagmon/FatalExceptionFileLog;->loggerFile:Lcom/samsung/android/common/log/LoggerFile;

    new-instance v0, Lcom/samsung/android/common/log/LoggerCollection;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/samsung/android/common/log/Logger$Core;

    const-string v2, "FatalExceptionLog"

    invoke-static {v2}, Lcom/samsung/android/common/log/LoggerData;->newInstance(Ljava/lang/String;)Lcom/samsung/android/common/log/LoggerData;

    move-result-object v2

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/common/diagmon/FatalExceptionFileLog;->loggerFile:Lcom/samsung/android/common/log/LoggerFile;

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lcom/samsung/android/common/log/LoggerCollection;-><init>([Lcom/samsung/android/common/log/Logger$Core;)V

    sput-object v0, Lcom/samsung/android/common/diagmon/FatalExceptionFileLog;->logger:Lcom/samsung/android/common/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static D(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/common/diagmon/FatalExceptionFileLog;->logger:Lcom/samsung/android/common/log/Logger;

    invoke-interface {v0, p0}, Lcom/samsung/android/common/log/Logger;->D(Ljava/lang/String;)V

    return-void
.end method

.method public static E(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/common/diagmon/FatalExceptionFileLog;->logger:Lcom/samsung/android/common/log/Logger;

    invoke-interface {v0, p0}, Lcom/samsung/android/common/log/Logger;->E(Ljava/lang/String;)V

    return-void
.end method

.method public static H(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/common/diagmon/FatalExceptionFileLog;->logger:Lcom/samsung/android/common/log/Logger;

    invoke-interface {v0, p0}, Lcom/samsung/android/common/log/Logger;->H(Ljava/lang/String;)V

    return-void
.end method

.method public static I(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/common/diagmon/FatalExceptionFileLog;->logger:Lcom/samsung/android/common/log/Logger;

    invoke-interface {v0, p0}, Lcom/samsung/android/common/log/Logger;->I(Ljava/lang/String;)V

    return-void
.end method

.method public static V(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/common/diagmon/FatalExceptionFileLog;->logger:Lcom/samsung/android/common/log/Logger;

    invoke-interface {v0, p0}, Lcom/samsung/android/common/log/Logger;->V(Ljava/lang/String;)V

    return-void
.end method

.method public static W(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/common/diagmon/FatalExceptionFileLog;->logger:Lcom/samsung/android/common/log/Logger;

    invoke-interface {v0, p0}, Lcom/samsung/android/common/log/Logger;->W(Ljava/lang/String;)V

    return-void
.end method

.method public static logfileName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fe_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/common/diagmon/PackageInformation;->instance:Lcom/samsung/android/common/diagmon/PackageInformation;

    invoke-virtual {v1, p0}, Lcom/samsung/android/common/diagmon/PackageInformation;->simpleName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%d.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static printStackTrace(Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/common/diagmon/FatalExceptionFileLog;->logger:Lcom/samsung/android/common/log/Logger;

    invoke-interface {v0, p0}, Lcom/samsung/android/common/log/Logger;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 6

    if-eqz p0, :cond_0

    sget-object v0, Lcom/samsung/android/common/diagmon/FatalExceptionFileLog;->loggerFile:Lcom/samsung/android/common/log/LoggerFile;

    new-instance v1, Lcom/samsung/android/common/log/LogDescriptor$Limit;

    new-instance v2, Lcom/samsung/android/common/log/LogFileDescriptor;

    const-string v3, "log"

    invoke-static {p0}, Lcom/samsung/android/common/diagmon/FatalExceptionFileLog;->logfileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/samsung/android/common/log/LogFileDescriptor;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-wide/32 v4, 0x100000

    invoke-direct {v1, v2, v4, v5}, Lcom/samsung/android/common/log/LogDescriptor$Limit;-><init>(Lcom/samsung/android/common/log/LogDescriptor$Stream;J)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/LoggerFile;->setLogDescriptor(Lcom/samsung/android/common/log/LogDescriptor;)V

    :cond_0
    return-void
.end method
