.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$1;
.super Ljava/lang/Object;
.source "ChannelPhotoViewActionBarForEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->setTitle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;

.field final synthetic val$numberOfItemsSelected:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;

    iput p2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$1;->val$numberOfItemsSelected:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->access$000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$1;->val$numberOfItemsSelected:I

    # setter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mQuantitySelectedAlbum:I
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->access$102(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;I)I

    iget v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$1;->val$numberOfItemsSelected:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->access$200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$1;->val$numberOfItemsSelected:I

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->setSelectAllButtonTitle(ILjava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->access$400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;ILjava/lang/String;)V

    return-void

    :cond_0
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;->access$300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$1;->val$numberOfItemsSelected:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "%d"

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit$1;->val$numberOfItemsSelected:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
