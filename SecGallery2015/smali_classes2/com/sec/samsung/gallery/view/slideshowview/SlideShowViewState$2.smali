.class Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$2;
.super Ljava/lang/Object;
.source "SlideShowViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/GlSlideShowView$SlideShowRootViewVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$2;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideNavigationBarForVideoPlay(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$2;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$600(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;Landroid/view/View;)V

    return-void
.end method

.method public ignoreActionBarHide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$2;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$502(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;Z)Z

    return-void
.end method

.method public reInitializeLayer()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$2;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$400(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$2;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$400(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$2;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$400(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_0
    return-void
.end method

.method public updateLayer()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$2;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$2;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$000(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$2;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$2;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$000(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$2;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->attachLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    :cond_0
    return-void
.end method

.method public updateRootView(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$2;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$2;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$2;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$2;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setVisibility(I)V

    goto :goto_0
.end method
