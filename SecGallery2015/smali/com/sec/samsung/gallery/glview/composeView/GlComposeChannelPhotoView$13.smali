.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$13;
.super Ljava/lang/Object;
.source "GlComposeChannelPhotoView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsListViewVisible:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3056"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "SHOW_SHARED_FRIENDS_LIST"

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
