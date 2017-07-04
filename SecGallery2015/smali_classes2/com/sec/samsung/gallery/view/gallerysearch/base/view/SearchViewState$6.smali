.class Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$6;
.super Ljava/lang/Object;
.source "SearchViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->runSelectionTask(Lcom/sec/android/gallery3d/data/MediaSet;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final onProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

.field final synthetic val$isLimited:Z

.field final synthetic val$maxCount:I

.field final synthetic val$mediaSet:Lcom/sec/android/gallery3d/data/MediaSet;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;IZLcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    iput p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$6;->val$maxCount:I

    iput-boolean p3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$6;->val$isLimited:Z

    iput-object p4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$6;->val$mediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$6$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$6$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$6;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$6;->onProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$SelectionTask;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->access$800(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$6;->onProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    iget v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$6;->val$maxCount:I

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$6;->val$isLimited:Z

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$SelectionTask;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;Landroid/content/Context;Lcom/sec/android/gallery3d/data/OnProgressListener;IZ)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v7, [Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$6;->val$mediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$SelectionTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    new-array v1, v7, [Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$6;->val$mediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$SelectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
