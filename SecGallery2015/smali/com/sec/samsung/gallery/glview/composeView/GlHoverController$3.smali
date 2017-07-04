.class Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$3;
.super Ljava/lang/Object;
.source "GlHoverController.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->initActionBarListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x1

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "GSPH"

    const-string/jumbo v10, "Edit"

    invoke-static {v8, v9, v10}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const/4 v8, 0x6

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v8

    aput-object v8, v6, v13

    aput-object v7, v6, v12

    const/4 v8, 0x2

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x3

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "gif"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    instance-of v8, v4, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    sget-object v9, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_AGIF:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    invoke-static {v8, v4, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;)V

    :goto_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v8, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$1702(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;Z)Z

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-virtual {v8, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->exitFromHoverView(Z)V

    return v12

    :cond_0
    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v8, "com.sec.android.mimage.photoretouching.motionphoto"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "baseImage"

    invoke-virtual {v1, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->IsAFWMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-nez v8, :cond_1

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0a02d5

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :cond_2
    const-string/jumbo v8, "GlHoverController"

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->Support360Editor:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-wide/32 v8, 0x8000000

    invoke-virtual {v4, v8, v9}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v3, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v8

    invoke-direct {v3, v8}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v3, v8, v4}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->checkCloud360Content(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0

    :cond_4
    instance-of v8, v4, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    sget-object v9, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_EDIT:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    invoke-static {v8, v4, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;)V

    goto :goto_0

    :cond_5
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v8

    const-string/jumbo v9, "IMAGE_EDIT"

    invoke-virtual {v8, v9, v6}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
