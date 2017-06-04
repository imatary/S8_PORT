.class Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4;
.super Ljava/lang/Object;
.source "Image360Viewer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return-object v0
.end method
