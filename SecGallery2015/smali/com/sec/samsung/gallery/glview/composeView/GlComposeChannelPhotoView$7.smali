.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$7;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "3058"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCurrentBaseMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "START_SUGGESTION_SELECTOR"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return v3
.end method
