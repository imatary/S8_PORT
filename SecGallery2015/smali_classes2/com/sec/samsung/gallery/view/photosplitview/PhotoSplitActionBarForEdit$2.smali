.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit$2;
.super Ljava/lang/Object;
.source "PhotoSplitActionBarForEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->setTitle(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;

.field final synthetic val$countOfMediaItem:I

.field final synthetic val$numberOfSelectedItem:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;II)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;

    iput p2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit$2;->val$countOfMediaItem:I

    iput p3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit$2;->val$numberOfSelectedItem:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->access$700(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->access$800(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mMenu:Landroid/view/Menu;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->access$200(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;)Landroid/view/Menu;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->access$900(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    :cond_2
    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit$2;->val$countOfMediaItem:I

    :goto_1
    if-eqz v0, :cond_4

    iget v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit$2;->val$numberOfSelectedItem:I

    :goto_2
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->access$1000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a02ee

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;

    iget v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit$2;->val$numberOfSelectedItem:I

    # invokes: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->setSelectAllButtonTitle(ILjava/lang/String;)V
    invoke-static {v4, v5, v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->access$1200(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit$2;->val$numberOfSelectedItem:I

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit$2;->val$countOfMediaItem:I

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->access$1100(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a02ed

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method
