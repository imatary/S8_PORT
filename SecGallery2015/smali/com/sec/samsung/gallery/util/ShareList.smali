.class public Lcom/sec/samsung/gallery/util/ShareList;
.super Ljava/lang/Object;
.source "ShareList.java"


# static fields
.field private static mShareSinglePath:Lcom/sec/android/gallery3d/data/Path;

.field private static mShareUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/util/ShareList;->mShareUriList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearShareList()V
    .locals 2

    const-class v1, Lcom/sec/samsung/gallery/util/ShareList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/samsung/gallery/util/ShareList;->mShareUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/util/ShareList;->mShareSinglePath:Lcom/sec/android/gallery3d/data/Path;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getShareList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/sec/samsung/gallery/util/ShareList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/samsung/gallery/util/ShareList;->mShareUriList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getSharePath()Lcom/sec/android/gallery3d/data/Path;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/util/ShareList;->mShareSinglePath:Lcom/sec/android/gallery3d/data/Path;

    return-object v0
.end method

.method public static declared-synchronized setShareList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/sec/samsung/gallery/util/ShareList;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/sec/samsung/gallery/util/ShareList;->mShareUriList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setSharePath(Lcom/sec/android/gallery3d/data/Path;)V
    .locals 0

    sput-object p0, Lcom/sec/samsung/gallery/util/ShareList;->mShareSinglePath:Lcom/sec/android/gallery3d/data/Path;

    return-void
.end method
