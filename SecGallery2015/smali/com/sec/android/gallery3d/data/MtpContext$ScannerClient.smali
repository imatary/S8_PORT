.class final Lcom/sec/android/gallery3d/data/MtpContext$ScannerClient;
.super Ljava/lang/Object;
.source "MtpContext.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/MtpContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScannerClient"
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;


# instance fields
.field mConnected:Z

.field final mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mScannerConnection:Landroid/media/MediaScannerConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/data/MtpContext$ScannerClient;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MtpContext$ScannerClient;->mPaths:Ljava/util/ArrayList;

    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MtpContext$ScannerClient;->mScannerConnection:Landroid/media/MediaScannerConnection;

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 5

    sget-object v2, Lcom/sec/android/gallery3d/data/MtpContext$ScannerClient;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/MtpContext$ScannerClient;->mConnected:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MtpContext$ScannerClient;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MtpContext$ScannerClient;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpContext$ScannerClient;->mScannerConnection:Landroid/media/MediaScannerConnection;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MtpContext$ScannerClient;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public scanPath(Ljava/lang/String;)V
    .locals 3

    sget-object v1, Lcom/sec/android/gallery3d/data/MtpContext$ScannerClient;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/MtpContext$ScannerClient;->mConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpContext$ScannerClient;->mScannerConnection:Landroid/media/MediaScannerConnection;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpContext$ScannerClient;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpContext$ScannerClient;->mScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
