.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$22;
.super Ljava/lang/Object;
.source "DetailViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->startAutoAdjust()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

.field final synthetic val$isPreviousStateOn:Z


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$22;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$22;->val$isPreviousStateOn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$22;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$27500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$22;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$22;->val$isPreviousStateOn:Z

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->handleNlgForAutoAdjustDC(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$27400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$22;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v1, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mAutoAdjust:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12402(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;

    return-void
.end method

.method public onSucceeded(Z)V
    .locals 3

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAutoAdjustAnimation:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$22;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mAutoAdjustAnimation:Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$27200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;->startAutoAdjustAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$22;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mModel:Lcom/sec/samsung/gallery/view/detailview/Model;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->forceUpdateImageRequests()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$22;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFastOptionView:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$22;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$22;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFastOptionView:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$22;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->updateAutoAdjustMenuItem(Lcom/sec/android/gallery3d/data/MediaItem;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$22;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$27300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$22;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$22;->val$isPreviousStateOn:Z

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->handleNlgForAutoAdjustDC(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$27400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;ZZ)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$22;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v1, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mAutoAdjust:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12402(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;

    return-void
.end method
