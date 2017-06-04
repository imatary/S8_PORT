.class Lcom/sec/android/gallery3d/data/CategoryAlbumSet$AlbumsLoader;
.super Ljava/lang/Object;
.source "CategoryAlbumSet.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/CategoryAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final album:Lcom/sec/android/gallery3d/data/MediaSet;

.field final synthetic this$0:Lcom/sec/android/gallery3d/data/CategoryAlbumSet;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/CategoryAlbumSet;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet$AlbumsLoader;->this$0:Lcom/sec/android/gallery3d/data/CategoryAlbumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet$AlbumsLoader;->album:Lcom/sec/android/gallery3d/data/MediaSet;

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/CategoryAlbumSet$AlbumsLoader;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet$AlbumsLoader;->album:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v0, :cond_0

    :goto_0
    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet$AlbumsLoader;->album:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet$AlbumsLoader;->this$0:Lcom/sec/android/gallery3d/data/CategoryAlbumSet;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->faceClusterReload:Z
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->access$002(Lcom/sec/android/gallery3d/data/CategoryAlbumSet;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet$AlbumsLoader;->this$0:Lcom/sec/android/gallery3d/data/CategoryAlbumSet;

    # getter for: Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->access$100(Lcom/sec/android/gallery3d/data/CategoryAlbumSet;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/data/CategoryAlbumSet$AlbumsLoader$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/data/CategoryAlbumSet$AlbumsLoader$1;-><init>(Lcom/sec/android/gallery3d/data/CategoryAlbumSet$AlbumsLoader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
