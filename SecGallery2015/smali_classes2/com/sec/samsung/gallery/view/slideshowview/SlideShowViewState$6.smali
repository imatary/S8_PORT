.class Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$6;
.super Ljava/lang/Object;
.source "SlideShowViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->finishCurrentViewState()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$6;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$6;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$1200(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v3, v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$6;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getBgColor()[F

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$6;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/4 v4, 0x0

    aget v4, v1, v4

    const/4 v5, 0x1

    aget v5, v1, v5

    const/4 v6, 0x2

    aget v6, v1, v6

    const/4 v7, 0x3

    aget v7, v1, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setGlBackgroundColor(FFFF)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$6;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$1300(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$6;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$6;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->access$1400(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3, v8, v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->overridePendingTransition(II)V

    :cond_0
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v3, "SlideShowViewState"

    const-string/jumbo v4, "ignore IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
