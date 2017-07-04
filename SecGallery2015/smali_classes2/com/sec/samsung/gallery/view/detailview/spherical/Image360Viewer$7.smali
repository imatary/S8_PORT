.class Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$7;
.super Ljava/lang/Object;
.source "Image360Viewer.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->createSystemUiVisibilityChangeListener()Landroid/view/View$OnSystemUiVisibilityChangeListener;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$2800()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$2000(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$2900(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$2000(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method
