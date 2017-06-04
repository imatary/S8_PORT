.class Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$1;
.super Ljava/lang/Object;
.source "PhotoActionBarForEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->setTitle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

.field final synthetic val$numberOfItemsSelected:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    iput p2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$1;->val$numberOfItemsSelected:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->access$000(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->access$100(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mMenu:Landroid/view/Menu;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Landroid/view/Menu;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    # invokes: Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->updateOptionMenu()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->access$300(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)V

    :cond_2
    iget v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$1;->val$numberOfItemsSelected:I

    if-gtz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->access$400(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    iget v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$1;->val$numberOfItemsSelected:I

    # invokes: Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->setSelectAllButtonTitle(ILjava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->access$600(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->access$500(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$1;->val$numberOfItemsSelected:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "%d"

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$1;->val$numberOfItemsSelected:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
