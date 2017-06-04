.class Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$5$1;
.super Ljava/lang/Object;
.source "Image360Viewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$5;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$5;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$5;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$5$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$5$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$5;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$5;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsDestroyed:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$900(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$5$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$5;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$5;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    const/4 v1, 0x1

    # setter for: Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsDestroyed:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$902(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$5$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$5;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$5;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    const v1, 0x7f0a0497

    # invokes: Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->showToast(I)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$600(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$5$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$5;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$5;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->finish()V

    :cond_0
    return-void
.end method
