.class public Lcom/sec/android/gallery3d/app/AlbumReloader;
.super Ljava/lang/Object;
.source "AlbumReloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;,
        Lcom/sec/android/gallery3d/app/AlbumReloader$UpdateContent;,
        Lcom/sec/android/gallery3d/app/AlbumReloader$GetUpdateInfo;,
        Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;,
        Lcom/sec/android/gallery3d/app/AlbumReloader$MySourceListener;,
        Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadListener;
    }
.end annotation


# static fields
.field private static final FAILED_VERSION:J = -0x1L

.field private static final LOADING_FINISHED:I = 0x1

.field private static final LOADING_STARTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AlbumReloader"


# instance fields
.field private final mReloadListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReloadState:I

.field private mReloadTask:Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;

.field private mSize:I

.field private mSource:Lcom/sec/android/gallery3d/data/MediaSet;

.field private final mSourceListener:Lcom/sec/android/gallery3d/app/AlbumReloader$MySourceListener;

.field private mSourceVersion:J

.field private mWaitWhenResume:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mSourceVersion:J

    new-instance v0, Lcom/sec/android/gallery3d/app/AlbumReloader$MySourceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/app/AlbumReloader$MySourceListener;-><init>(Lcom/sec/android/gallery3d/app/AlbumReloader;Lcom/sec/android/gallery3d/app/AlbumReloader$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mSourceListener:Lcom/sec/android/gallery3d/app/AlbumReloader$MySourceListener;

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mReloadState:I

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mReloadListeners:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/app/AlbumReloader;)Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mReloadTask:Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/app/AlbumReloader;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/sec/android/gallery3d/app/AlbumReloader;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mSourceVersion:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/app/AlbumReloader;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mSize:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/gallery3d/app/AlbumReloader;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mSize:I

    return p1
.end method

.method static synthetic access$402(Lcom/sec/android/gallery3d/app/AlbumReloader;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mReloadState:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/app/AlbumReloader;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mReloadListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/gallery3d/app/AlbumReloader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mWaitWhenResume:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/app/AlbumReloader;)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    return-object v0
.end method


# virtual methods
.method public changeSource(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AlbumReloader;->pause()V

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mSourceVersion:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mSize:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mReloadListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadListener;

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadListener;->changeSource(Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AlbumReloader;->resume()V

    return-void
.end method

.method getLatestUpdateInfo()Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;
    .locals 4

    new-instance v0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;

    iget-wide v2, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mSourceVersion:J

    iget v1, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mSize:I

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;-><init>(JI)V

    return-object v0
.end method

.method public isLoading()Z
    .locals 4

    iget v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mReloadState:I

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mSourceVersion:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mWaitWhenResume:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method notifyDirty()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mReloadTask:Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mReloadTask:Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->notifyDirty(Z)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mReloadTask:Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mReloadTask:Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->terminate()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mReloadTask:Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mWaitWhenResume:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mSourceListener:Lcom/sec/android/gallery3d/app/AlbumReloader$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    return-void
.end method

.method public declared-synchronized resume()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mSourceListener:Lcom/sec/android/gallery3d/app/AlbumReloader$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->addContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    new-instance v0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;

    const-string/jumbo v1, "ReloadTask_AlbumReloader"

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;-><init>(Lcom/sec/android/gallery3d/app/AlbumReloader;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mReloadTask:Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mReloadTask:Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setDataListener(Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadListener;)V
    .locals 2

    instance-of v0, p1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mReloadListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader;->mReloadListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
