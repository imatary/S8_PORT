.class Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$3;
.super Ljava/lang/Object;
.source "Image360Viewer.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->onPlaybackOptionsClosed(Landroid/app/FragmentManager;)V
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$300(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Landroid/app/FragmentManager;)V

    :cond_0
    return-void
.end method
