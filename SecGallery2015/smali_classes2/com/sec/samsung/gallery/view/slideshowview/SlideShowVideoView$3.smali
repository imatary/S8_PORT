.class Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;
.super Ljava/lang/Object;
.source "SlideShowVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$700(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3$1;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mCustomSurfaceView:Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$600(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mCustomSurfaceView:Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$600(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    # setter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$802(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$800(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSurfaceParentView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$500(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSurfaceParentView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$500(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3$2;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method
