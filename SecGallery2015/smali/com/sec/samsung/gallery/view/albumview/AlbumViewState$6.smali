.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;
.super Ljava/lang/Object;
.source "AlbumViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->onViewInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(II)Z
    .locals 9

    const/16 v8, 0x3e8

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v4, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$5100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;I)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v5

    sget-object v6, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v5

    sget-object v6, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ALBUM_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v5, v6, :cond_6

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1206"

    invoke-static {v5, v6}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v5, v5, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v5, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    if-nez v1, :cond_4

    move v3, v4

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    if-le v0, v8, :cond_5

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$5200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0251

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$5300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$5400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->onItemClick(I)V

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v5

    sget-object v6, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PERSON_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v5, v6, :cond_7

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1206"

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$5400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->onItemClick(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v5

    sget-object v6, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v5, v6, :cond_8

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v4, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$5500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;I)V

    goto/16 :goto_0

    :cond_8
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v5, v5, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-virtual {v4, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->selectAlbum(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$5600(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMode()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$5700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMode()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$5800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v5, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$5900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;I)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v5, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$5500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;I)V

    invoke-static {}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$6000()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$6100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v5, p1, v4, v3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;IIZ)V

    goto/16 :goto_0
.end method
