.class Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$2;
.super Ljava/lang/Object;
.source "Image360Viewer.java"

# interfaces
.implements Landroid/app/ActionBar$OnMenuVisibilityListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuVisibilityChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    # setter for: Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsMenuVisible:Z
    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$102(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    const/4 v1, 0x1

    # invokes: Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->refreshActionBarMessages(Z)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$200(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Z)V

    return-void
.end method
