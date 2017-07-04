.class Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8$1;
.super Ljava/lang/Object;
.source "PhotoViewEventHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;->onCoverUp()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8$1;->this$1:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8$1;->this$1:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8$1;->this$1:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8$1;->this$1:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    :goto_1
    invoke-virtual {v4, v0, v3}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->setDisplayOptions(ZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8$1;->this$1:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mMainHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8$1;->this$1:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getAcionbarStyle()I

    move-result v0

    if-ne v1, v0, :cond_2

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8$1;->this$1:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setActionbarStyle(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8$1;->this$1:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->refreshActionBarTheme(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8$1;->this$1:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$500(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$FadeAnimation;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$FadeAnimation;->setAnimationType(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8$1;->this$1:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8$1;->this$1:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$500(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$FadeAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2
.end method
