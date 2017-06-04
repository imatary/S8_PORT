.class Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1$1;
.super Ljava/lang/Object;
.source "MapMarkerThumbnailListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1$1;->this$2:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1$1;->this$2:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1;

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mHoverCustomView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1100(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1$1;->this$2:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1;

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mIsClickImageView:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1700(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1$1;->this$2:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1;

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMapViewLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1200(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1$1;->this$2:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1;

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMapViewLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1200(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1$1;->this$2:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1;

    iget-object v1, v1, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget-object v1, v1, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mHoverCustomView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1100(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1$1;->this$2:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1;

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    const/4 v1, 0x0

    # setter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mHoverCustomView:Landroid/widget/ImageView;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1102(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    :cond_0
    return-void
.end method
