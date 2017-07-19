.class public Lcom/samsung/android/common/log/LogFileDescriptor;
.super Lcom/samsung/android/common/log/LogDescriptor$Stream;
.source "LogFileDescriptor.java"


# instance fields
.field private logFilenameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/common/log/LogDescriptor$Stream;-><init>()V

    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/common/log/LogFileDescriptor;->makeLogFilenameList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/common/log/LogFileDescriptor;->setLogFilenameList(Ljava/util/List;)V

    return-void
.end method

.method private getLogFilename()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/common/log/LogFileDescriptor;->getLogFilenameList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static makeLogFilenameList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    new-instance v3, Ljava/io/File;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, p2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private shift(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/samsung/android/common/Log;->DATA:Lcom/samsung/android/common/log/LoggerData;

    const-string v4, "Logger: failed to rename"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/LoggerData;->D(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v3, Lcom/samsung/android/common/Log;->DATA:Lcom/samsung/android/common/log/LoggerData;

    invoke-virtual {v3, v0}, Lcom/samsung/android/common/log/LoggerData;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v3, Lcom/samsung/android/common/Log;->DATA:Lcom/samsung/android/common/log/LoggerData;

    invoke-virtual {v3, v0}, Lcom/samsung/android/common/log/LoggerData;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method protected getLogFilenameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/common/log/LogFileDescriptor;->logFilenameList:Ljava/util/List;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {p0}, Lcom/samsung/android/common/log/LogFileDescriptor;->getLogFilename()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected setLogFilenameList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/common/log/LogFileDescriptor;->logFilenameList:Ljava/util/List;

    return-void
.end method

.method public shift()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/common/log/LogFileDescriptor;->getLogFilenameList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/common/log/LogFileDescriptor;->getLogFilenameList()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/common/log/LogFileDescriptor;->getLogFilenameList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/common/log/LogFileDescriptor;->shift(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected size()J
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/samsung/android/common/log/LogFileDescriptor;->getLogFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method
