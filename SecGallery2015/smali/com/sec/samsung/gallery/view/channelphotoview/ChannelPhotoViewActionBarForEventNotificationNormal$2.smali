.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal$2;
.super Ljava/lang/Object;
.source "ChannelPhotoViewActionBarForEventNotificationNormal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal;->setTitle(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal;

.field final synthetic val$albumName:Ljava/lang/String;

.field final synthetic val$numberOfItemsInAlbum:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal$2;->val$albumName:Ljava/lang/String;

    iput p3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal$2;->val$numberOfItemsInAlbum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal;->access$200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal$2;->val$albumName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal$2;->val$numberOfItemsInAlbum:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal;->access$300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal;)Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal;->access$400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v4

    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v4, v5, :cond_0

    const/16 v2, 0xc

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal$2;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal;->access$500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal;)Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v4, "CPVActnBarEvntNotiNorml"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
