.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal$CustomMenuOnClickListener;
.super Ljava/lang/Object;
.source "ChannelPhotoViewActionBarForNormal.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomMenuOnClickListener"
.end annotation


# instance fields
.field private final mMenuId:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal$CustomMenuOnClickListener;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal$CustomMenuOnClickListener;->mMenuId:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal$CustomMenuOnClickListener;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;->mOnUploading:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;->access$200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal$CustomMenuOnClickListener;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;->access$1100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    const v1, 0x7f0a007e

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal$CustomMenuOnClickListener;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;->access$1200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    const v1, 0x7f0a007d

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal$CustomMenuOnClickListener;->mMenuId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal$CustomMenuOnClickListener;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_ADD_CONTACTS:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal$CustomMenuOnClickListener;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;->access$1300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3038"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal$CustomMenuOnClickListener;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_ADD_CONTENTS:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1202cd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
