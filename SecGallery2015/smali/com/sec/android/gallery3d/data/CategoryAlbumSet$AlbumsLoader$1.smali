.class Lcom/sec/android/gallery3d/data/CategoryAlbumSet$AlbumsLoader$1;
.super Ljava/lang/Object;
.source "CategoryAlbumSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/CategoryAlbumSet$AlbumsLoader;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/gallery3d/data/CategoryAlbumSet$AlbumsLoader;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/CategoryAlbumSet$AlbumsLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet$AlbumsLoader$1;->this$1:Lcom/sec/android/gallery3d/data/CategoryAlbumSet$AlbumsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet$AlbumsLoader$1;->this$1:Lcom/sec/android/gallery3d/data/CategoryAlbumSet$AlbumsLoader;

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet$AlbumsLoader;->this$0:Lcom/sec/android/gallery3d/data/CategoryAlbumSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->notifyContentChanged()V

    return-void
.end method
