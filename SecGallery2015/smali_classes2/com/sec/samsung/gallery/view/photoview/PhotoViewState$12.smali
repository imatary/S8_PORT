.class Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$12;
.super Ljava/lang/Object;
.source "PhotoViewState.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->selectAllProcessTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$12;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$12;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionTask:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$SelectionTask;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$5200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$SelectionTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$12;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionTask:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$SelectionTask;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$5200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$SelectionTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$SelectionTask;->cancel(Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$12;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$5300(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/android/gallery3d/data/OnProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$12;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$5300(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/android/gallery3d/data/OnProgressListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/data/OnProgressListener;->onCompleted(Z)V

    :cond_0
    return-void
.end method
