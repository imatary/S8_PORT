.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1;
.super Ljava/lang/Object;
.source "ChannelPhotoViewEventHandle.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnCoverScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverDown()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;->access$300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1$2;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCoverUp()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;->access$300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1$1;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
