.class Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit$1;
.super Ljava/lang/Object;
.source "ChannelActionBarForEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->setTitle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;

.field final synthetic val$numberOfItemsSelected:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;

    iput p2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit$1;->val$numberOfItemsSelected:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/ActivityState;->getActionBarManager()Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/ActivityState;->getActionBarManager()Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit$1;->val$numberOfItemsSelected:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->access$100(Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    :goto_1
    iget v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit$1;->val$numberOfItemsSelected:I

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->access$300(Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a03aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit$1;->val$numberOfItemsSelected:I

    # invokes: Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->setSelectAllButtonTitle(ILjava/lang/String;)V
    invoke-static {v2, v3, v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->access$500(Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;

    # invokes: Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->updateOptionMenu()V
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->access$200(Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;)V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit$1;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->access$400(Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit$1;->val$numberOfItemsSelected:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string/jumbo v2, "%d"

    new-array v3, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit$1;->val$numberOfItemsSelected:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
