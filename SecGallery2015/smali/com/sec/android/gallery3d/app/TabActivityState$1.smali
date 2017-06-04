.class Lcom/sec/android/gallery3d/app/TabActivityState$1;
.super Ljava/lang/Object;
.source "TabActivityState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/app/TabActivityState;->destroyCurrentViewInUIThread(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/TabActivityState;

.field final synthetic val$srcPos:I

.field final synthetic val$tgtPos:I


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/TabActivityState;II)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/TabActivityState$1;->this$0:Lcom/sec/android/gallery3d/app/TabActivityState;

    iput p2, p0, Lcom/sec/android/gallery3d/app/TabActivityState$1;->val$srcPos:I

    iput p3, p0, Lcom/sec/android/gallery3d/app/TabActivityState$1;->val$tgtPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/TabActivityState$1;->this$0:Lcom/sec/android/gallery3d/app/TabActivityState;

    iget-object v1, v1, Lcom/sec/android/gallery3d/app/TabActivityState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/TabActivityState$1;->this$0:Lcom/sec/android/gallery3d/app/TabActivityState;

    iget-object v1, v1, Lcom/sec/android/gallery3d/app/TabActivityState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/TabStateManager;

    iget v1, p0, Lcom/sec/android/gallery3d/app/TabActivityState$1;->val$srcPos:I

    iget v2, p0, Lcom/sec/android/gallery3d/app/TabActivityState$1;->val$tgtPos:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/TabStateManager;->disengageState(II)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/TabActivityState$1;->this$0:Lcom/sec/android/gallery3d/app/TabActivityState;

    iget-object v1, v1, Lcom/sec/android/gallery3d/app/TabActivityState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/TabActivityState$1;->this$0:Lcom/sec/android/gallery3d/app/TabActivityState;

    iget-object v1, v1, Lcom/sec/android/gallery3d/app/TabActivityState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setIsSlideAnim(Z)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/TabActivityState$1;->this$0:Lcom/sec/android/gallery3d/app/TabActivityState;

    iget-object v1, v1, Lcom/sec/android/gallery3d/app/TabActivityState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    return-void
.end method
