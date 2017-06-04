.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25;
.super Ljava/lang/Object;
.source "AlbumViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->runSelectionTask(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

.field final synthetic val$albumCount:I

.field final synthetic val$mediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field final synthetic val$type:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;ILcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25;->val$type:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

    iput p3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25;->val$albumCount:I

    iput-object p4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25;->val$mediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionTask;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$12800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    new-instance v3, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25$1;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25$1;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25;->val$type:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

    iget v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25;->val$albumCount:I

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionTask;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Landroid/content/Context;Lcom/sec/android/gallery3d/data/OnProgressListener;Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25;->val$mediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
