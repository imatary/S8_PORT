.class Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$21;
.super Ljava/lang/Object;
.source "FavoriteViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->runSelectionTask(Lcom/sec/android/gallery3d/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final onProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

.field final synthetic val$mediaSet:Lcom/sec/android/gallery3d/data/MediaSet;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$21;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$21;->val$mediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$21$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$21$1;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$21;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$21;->onProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$SelectionTask;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$21;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$21;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$7000(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$21;->onProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$21;->val$mediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$SelectionTask;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;Landroid/content/Context;Lcom/sec/android/gallery3d/data/OnProgressListener;I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v6, [Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$21;->val$mediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$SelectionTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    new-array v1, v6, [Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$21;->val$mediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$SelectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
