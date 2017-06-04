.class Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1;
.super Ljava/lang/Object;
.source "MapMarkerThumbnailListAdapter.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v6

    :pswitch_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget-object v2, v2, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    const/4 v3, 0x1

    # setter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mIsHoveringOnHoverView:Z
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$902(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Z)Z

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget-object v2, v2, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # setter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mIsHoveringOnHoverView:Z
    invoke-static {v2, v6}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$902(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Z)Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget-object v2, v2, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mIsHoveringOnImageView:Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1000(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget-object v2, v2, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    sget v4, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->POINTER_ICON_HOVER_POINTER_DEFAULT:I

    invoke-static {v2, p1, v3, v4}, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->setIcon(Landroid/content/Context;Landroid/view/View;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1$1;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1$1;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MapMarkerThmListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
