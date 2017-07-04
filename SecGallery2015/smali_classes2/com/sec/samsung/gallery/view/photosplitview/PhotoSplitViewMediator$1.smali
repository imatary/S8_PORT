.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator$1;
.super Ljava/lang/Object;
.source "PhotoSplitViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->startDetailViewState(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$changeScreen:Z


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;Landroid/os/Bundle;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator$1;->val$bundle:Landroid/os/Bundle;

    iput-boolean p3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator$1;->val$changeScreen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->access$000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->access$100(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setClickEnabled(Z)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->access$000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator$1;->val$bundle:Landroid/os/Bundle;

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator$1;->val$changeScreen:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;Z)V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->access$200(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getDCHandler()Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendDCResponseForEnterDetailView()V

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    return-void
.end method
