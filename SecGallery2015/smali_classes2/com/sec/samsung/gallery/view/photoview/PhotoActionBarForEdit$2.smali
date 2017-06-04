.class Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$2;
.super Ljava/lang/Object;
.source "PhotoActionBarForEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->setTitle(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

.field final synthetic val$countOfMediaItem:I

.field final synthetic val$numberOfSelectedItem:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;II)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    iput p2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$2;->val$numberOfSelectedItem:I

    iput p3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$2;->val$countOfMediaItem:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->access$700(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->access$800(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mMenu:Landroid/view/Menu;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Landroid/view/Menu;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    # invokes: Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->updateOptionMenu()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->access$300(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)V

    :cond_2
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->access$900(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$2;->val$numberOfSelectedItem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$2;->val$countOfMediaItem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    iget v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$2;->val$numberOfSelectedItem:I

    # invokes: Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->setSelectAllButtonTitle(ILjava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->access$1100(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->access$1000(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$2;->val$numberOfSelectedItem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$2;->val$countOfMediaItem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
