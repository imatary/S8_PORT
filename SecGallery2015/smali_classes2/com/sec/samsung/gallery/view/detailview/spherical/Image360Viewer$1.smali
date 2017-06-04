.class Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$1;
.super Ljava/lang/Object;
.source "Image360Viewer.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->setBubblePickerLocation()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$000(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)V

    return-void
.end method
