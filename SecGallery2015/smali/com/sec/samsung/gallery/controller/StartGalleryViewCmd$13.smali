.class Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$13;
.super Ljava/lang/Object;
.source "StartGalleryViewCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startAlbumView()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$13;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$13;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v5, "ALBUM_PATH"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/union/all/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$13;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.android.execute.extra.NAME"

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$13;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->getMediaItemCount(Lcom/sec/android/gallery3d/data/MediaSet;)I
    invoke-static {v5, v4}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$400(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v5

    if-lez v5, :cond_5

    const-string/jumbo v5, "StartGalleryViewCmd"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startShortCutAlbum path : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v5, v4, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;

    if-eqz v5, :cond_2

    const-string/jumbo v5, "KEY_MEDIA_SET_PATH"

    const-string/jumbo v6, "/scloud/all/"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v5, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "KEY_MEDIA_SET_POSITION"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "KEY_ITEM_POSITION"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "KEY_IS_FROM_SHORTCUT"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$13;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v5

    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v5, v6, :cond_0

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDefaultAlbumView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$13;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v5

    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    :cond_0
    :goto_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$13;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v5

    const-class v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v5, v6, v2}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$13;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setResult(I)V

    const-string/jumbo v5, "StartGalleryViewCmd"

    const-string/jumbo v6, "startShortCutAlbum : Activity.RESULT_OK"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/local/all/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    instance-of v5, v4, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    if-eqz v5, :cond_3

    const-string/jumbo v5, "KEY_MEDIA_SET_PATH"

    const-string/jumbo v6, "/cluster/{/local/all}/favorites"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v5, "KEY_MEDIA_SET_PATH"

    const-string/jumbo v6, "/local/all/"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$13;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v5

    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$13;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.DELETE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8, v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setResult(ILandroid/content/Intent;)V

    const-string/jumbo v5, "StartGalleryViewCmd"

    const-string/jumbo v6, "startShortCutAlbum : Activity.RESULT_CANCELED, Intent.ACTION_DELETE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$13;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    goto :goto_3
.end method
