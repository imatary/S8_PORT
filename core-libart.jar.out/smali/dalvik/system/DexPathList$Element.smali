.class Ldalvik/system/DexPathList$Element;
.super Ljava/lang/Object;
.source "DexPathList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/DexPathList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Element"
.end annotation


# instance fields
.field private final dexFile:Ldalvik/system/DexFile;

.field private final dir:Ljava/io/File;

.field private initialized:Z

.field private final isDirectory:Z

.field private urlHandler:Llibcore/io/ClassPathURLStreamHandler;

.field private final zip:Ljava/io/File;


# direct methods
.method static synthetic -get0(Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;
    .locals 1

    iget-object v0, p0, Ldalvik/system/DexPathList$Element;->dexFile:Ldalvik/system/DexFile;

    return-object v0
.end method

.method public constructor <init>(Ljava/io/File;ZLjava/io/File;Ldalvik/system/DexFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldalvik/system/DexPathList$Element;->dir:Ljava/io/File;

    iput-boolean p2, p0, Ldalvik/system/DexPathList$Element;->isDirectory:Z

    iput-object p3, p0, Ldalvik/system/DexPathList$Element;->zip:Ljava/io/File;

    iput-object p4, p0, Ldalvik/system/DexPathList$Element;->dexFile:Ldalvik/system/DexFile;

    return-void
.end method


# virtual methods
.method public findNativeLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Ldalvik/system/DexPathList$Element;->maybeInit()V

    iget-boolean v2, p0, Ldalvik/system/DexPathList$Element;->isDirectory:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Ldalvik/system/DexPathList$Element;->dir:Ljava/io/File;

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/IoUtils;->canOpenReadOnly(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_0
    iget-object v2, p0, Ldalvik/system/DexPathList$Element;->urlHandler:Llibcore/io/ClassPathURLStreamHandler;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Ldalvik/system/DexPathList$Element;->dir:Ljava/io/File;

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ldalvik/system/DexPathList$Element;->urlHandler:Llibcore/io/ClassPathURLStreamHandler;

    invoke-virtual {v2, v0}, Llibcore/io/ClassPathURLStreamHandler;->isEntryStored(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ldalvik/system/DexPathList$Element;->zip:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "!/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    return-object v4
.end method

.method public findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Ldalvik/system/DexPathList$Element;->maybeInit()V

    iget-boolean v2, p0, Ldalvik/system/DexPathList$Element;->isDirectory:Z

    if-eqz v2, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Ldalvik/system/DexPathList$Element;->dir:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    iget-object v2, p0, Ldalvik/system/DexPathList$Element;->urlHandler:Llibcore/io/ClassPathURLStreamHandler;

    if-nez v2, :cond_1

    return-object v3

    :cond_1
    iget-object v2, p0, Ldalvik/system/DexPathList$Element;->urlHandler:Llibcore/io/ClassPathURLStreamHandler;

    invoke-virtual {v2, p1}, Llibcore/io/ClassPathURLStreamHandler;->getEntryUrlOrNull(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    return-object v2
.end method

.method public declared-synchronized maybeInit()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Ldalvik/system/DexPathList$Element;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Ldalvik/system/DexPathList$Element;->initialized:Z

    iget-boolean v1, p0, Ldalvik/system/DexPathList$Element;->isDirectory:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Ldalvik/system/DexPathList$Element;->zip:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    new-instance v1, Llibcore/io/ClassPathURLStreamHandler;

    iget-object v2, p0, Ldalvik/system/DexPathList$Element;->zip:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Llibcore/io/ClassPathURLStreamHandler;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ldalvik/system/DexPathList$Element;->urlHandler:Llibcore/io/ClassPathURLStreamHandler;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to open zip file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldalvik/system/DexPathList$Element;->zip:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    iput-object v1, p0, Ldalvik/system/DexPathList$Element;->urlHandler:Llibcore/io/ClassPathURLStreamHandler;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Ldalvik/system/DexPathList$Element;->isDirectory:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "directory \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldalvik/system/DexPathList$Element;->dir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ldalvik/system/DexPathList$Element;->zip:Ljava/io/File;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "zip file \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldalvik/system/DexPathList$Element;->zip:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Ldalvik/system/DexPathList$Element;->dir:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldalvik/system/DexPathList$Element;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", dir \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ldalvik/system/DexPathList$Element;->dir:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "dex file \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldalvik/system/DexPathList$Element;->dexFile:Ldalvik/system/DexFile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
