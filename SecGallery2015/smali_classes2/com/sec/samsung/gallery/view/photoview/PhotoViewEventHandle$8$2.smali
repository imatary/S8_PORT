.class Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8$2;
.super Ljava/lang/Object;
.source "PhotoViewEventHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;->onCoverDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8$2;->this$1:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8$2;->this$1:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8$2;->this$1:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0, v2}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->setDisplayOptions(ZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8$2;->this$1:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setActionbarStyle(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8$2;->this$1:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mFadeAnimation:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$FadeAnimation;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$500(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$FadeAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$FadeAnimation;->reset()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8$2;->this$1:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mFadeAnimation:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$FadeAnimation;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$500(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$FadeAnimation;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$FadeAnimation;->setAnimationType(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8$2;->this$1:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8$2;->this$1:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mFadeAnimation:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$FadeAnimation;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$500(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$FadeAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method
