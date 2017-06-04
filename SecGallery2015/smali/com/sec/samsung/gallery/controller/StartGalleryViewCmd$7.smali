.class Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$7;
.super Ljava/lang/Object;
.source "StartGalleryViewCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startMtpMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setIgnoreInvalidateOptionsMenu(Z)V

    const-string/jumbo v2, "StartGalleryViewCmd"

    const-string/jumbo v3, "StartGalleryViewCmd, start MTP view"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMtpView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-class v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "KEY_MEDIA_SET_PATH"

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v3

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "KEY_MEDIA_SET_POSITION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "KEY_IS_ENTER_MTP_PHOTO_VIEW"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    # setter for: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mBundle:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$002(Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    # getter for: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$000()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-class v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    goto :goto_0
.end method
