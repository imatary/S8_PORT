.class Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator$1;
.super Ljava/lang/Object;
.source "PhotoViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->startDetailViewState(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$changeScreen:Z


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;Landroid/os/Bundle;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator$1;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator$1;->val$bundle:Landroid/os/Bundle;

    iput-boolean p3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator$1;->val$changeScreen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator$1;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->access$000(Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setClickEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator$1;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->access$000(Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator$1;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->access$000(Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator$1;->val$bundle:Landroid/os/Bundle;

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator$1;->val$changeScreen:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;Z)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator$1;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->access$000(Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getDCHandler()Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendDCResponseForEnterDetailView()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator$1;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->access$000(Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    return-void
.end method
