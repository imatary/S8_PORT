.class Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$2;
.super Ljava/lang/Object;
.source "TimeViewPeopleActionBarForEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->setTitle(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;

.field final synthetic val$countOfMediaItem:I

.field final synthetic val$numberOfSelectedItems:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;II)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;

    iput p2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$2;->val$numberOfSelectedItems:I

    iput p3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$2;->val$countOfMediaItem:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->access$600(Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;

    iget v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$2;->val$numberOfSelectedItems:I

    # setter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mQuantitySelectedAlbum:I
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->access$202(Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;I)I

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->access$700(Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$2;->val$numberOfSelectedItems:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$2;->val$countOfMediaItem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;

    iget v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$2;->val$numberOfSelectedItems:I

    # invokes: Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->setSelectAllButtonTitle(ILjava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->access$900(Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->access$800(Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$2;->val$numberOfSelectedItems:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$2;->val$countOfMediaItem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
