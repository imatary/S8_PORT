.class Lcom/sec/samsung/gallery/view/allview/AllViewState$7;
.super Ljava/lang/Object;
.source "AllViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/allview/AllViewState;->runSelectionTask(Lcom/sec/android/gallery3d/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

.field final synthetic val$mediaSet:Lcom/sec/android/gallery3d/data/MediaSet;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$7;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$7;->val$mediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/sec/samsung/gallery/view/allview/AllViewState$SelectionTask;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$7;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$2900(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    new-instance v2, Lcom/sec/samsung/gallery/view/allview/AllViewState$7$1;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState$7$1;-><init>(Lcom/sec/samsung/gallery/view/allview/AllViewState$7;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/allview/AllViewState$SelectionTask;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/OnProgressListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$7;->val$mediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState$SelectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
