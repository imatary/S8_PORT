.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal$1;
.super Ljava/lang/Object;
.source "ChannelPhotoViewActionBarForNormal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;->access$000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;->access$100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    return-void
.end method
