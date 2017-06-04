.class Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;
.super Landroid/app/Presentation;
.source "SASlideShowService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideShowViewPresentation"
.end annotation


# instance fields
.field private mReleaseResource:Z

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;Landroid/content/Context;Landroid/view/Display;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-direct {p0, p2, p3}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->mReleaseResource:Z

    return-void
.end method

.method static synthetic access$1002(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->mReleaseResource:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->addCustomView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method private addCustomView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    const v0, 0x7f1200ee

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    # setter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mFrameLayoutVideoView:Landroid/widget/FrameLayout;
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$202(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    const/4 v1, 0x1

    # setter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mIsSlideShowVideoPlaying:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$702(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mFrameLayoutVideoView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$200(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mFrameLayoutVideoView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$200(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSurfaceHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private addKeepScreenOnFlag(Landroid/view/Window;)V
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "SASlideShowService"

    const-string/jumbo v1, "ignore add keep screen on flag"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Presentation;->dismiss()V

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideShowViewState:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;
    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$1400()Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->getSlideShowAdapter()Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->mReleaseResource:Z

    if-eqz v0, :cond_0

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideShowViewState:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;
    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$1400()Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->getSlideShowAdapter()Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->onDestroy()V

    :cond_0
    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideShowViewState:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;
    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$1400()Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->getGlSlideShowView()Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    move-result-object v0

    if-eqz v0, :cond_1

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideShowViewState:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;
    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$1400()Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->getGlSlideShowView()Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->pause()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNewGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$100(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNewGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$100(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNewGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$100(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->removeAllObject()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    # setter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNewGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$102(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;Lcom/sec/android/gallery3d/glcore/GlRootView;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    :cond_2
    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mCloseButton:Landroid/widget/Button;
    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$000()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_3

    # setter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mCloseButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$002(Landroid/widget/Button;)Landroid/widget/Button;

    :cond_3
    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideShowViewState:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;
    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$1400()Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->onResume()V

    return-void
.end method

.method protected initializeGLSurfaceView()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    const v0, 0x7f1200ae

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlRootView;

    # setter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNewGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$102(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;Lcom/sec/android/gallery3d/glcore/GlRootView;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNewGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$100(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNewGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$100(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->onResume()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNewGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$100(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideShowViewState:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;
    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$1400()Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->getGlSlideShowView()Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    move-result-object v1

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideShowViewState:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;
    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$1400()Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->attachLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mIgnoreBackKeyListener:Landroid/content/DialogInterface$OnKeyListener;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$1200(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    # invokes: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$1300(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mPresentation:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$800(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->addKeepScreenOnFlag(Landroid/view/Window;)V

    const v2, 0x7f040063

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->setContentView(I)V

    const v2, 0x7f1200ed

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    # setter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mCloseButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$002(Landroid/widget/Button;)Landroid/widget/Button;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mCloseButton:Landroid/widget/Button;
    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$000()Landroid/widget/Button;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mCloseButton:Landroid/widget/Button;
    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$000()Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation$1;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation$1;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->initializeGLSurfaceView()V

    return-void
.end method

.method protected reInitializeGLSurfaceView()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNewGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$100(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNewGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$100(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->onResume()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNewGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$100(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideShowViewState:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;
    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$1400()Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->getGlSlideShowView()Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    move-result-object v1

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideShowViewState:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;
    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$1400()Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->attachLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNewGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$100(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSurfaceHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
