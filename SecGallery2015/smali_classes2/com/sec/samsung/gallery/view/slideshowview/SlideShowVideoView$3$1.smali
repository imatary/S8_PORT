.class Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3$1;
.super Ljava/lang/Object;
.source "SlideShowVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3$1;->this$1:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, -0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3$1;->this$1:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSurfaceParentView:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$500(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3$1;->this$1:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mCustomSurfaceView:Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$600(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3$1;->this$1:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;

    iget-object v2, v1, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3$1;->this$1:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$700(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400fe

    const/4 v1, 0x0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    # setter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSurfaceParentView:Landroid/widget/RelativeLayout;
    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$502(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3$1;->this$1:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;

    iget-object v2, v1, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3$1;->this$1:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSurfaceParentView:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$500(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const v3, 0x7f120247

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;

    # setter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mCustomSurfaceView:Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;
    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$602(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;)Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3$1;->this$1:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$000(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3$1;->this$1:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mCustomSurfaceView:Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$600(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->hideNavigationBar(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3$1;->this$1:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mCustomSurfaceView:Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$600(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3$1;->this$1:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$300(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;->init(Landroid/media/MediaPlayer;)V

    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3$1;->this$1:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$700(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3$1;->this$1:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSurfaceParentView:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$500(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
