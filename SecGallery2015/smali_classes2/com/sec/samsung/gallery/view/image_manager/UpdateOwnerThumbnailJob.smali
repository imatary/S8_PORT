.class public Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob;
.super Ljava/lang/Object;
.source "UpdateOwnerThumbnailJob.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob$OnUpdateThumbnailListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final iconSize:I

.field private final mContext:Landroid/content/Context;

.field private final mItem:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

.field private mOnBitmapAvailableListener:Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob$OnUpdateThumbnailListener;

.field private final mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

.field private final mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;ILcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob$OnUpdateThumbnailListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob;->mOnBitmapAvailableListener:Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob$OnUpdateThumbnailListener;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob;->mItem:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iput p4, p0, Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob;->iconSize:I

    check-cast p1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    iput-object p5, p0, Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob;->mOnBitmapAvailableListener:Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob$OnUpdateThumbnailListener;

    return-void
.end method

.method private getOwnerBitmap(ZLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getMyPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getContactPhotoByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private getOwnerDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget v1, p0, Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob;->iconSize:I

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getCircleBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method


# virtual methods
.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob;->mOnBitmapAvailableListener:Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob$OnUpdateThumbnailListener;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->getOwnerInfo()Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;->getOwnerNumber()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyMsisdn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v2, 0x1

    :cond_2
    :goto_1
    invoke-direct {p0, v2, v5}, Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob;->getOwnerBitmap(ZLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob;->getOwnerDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob;->mOnBitmapAvailableListener:Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob$OnUpdateThumbnailListener;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob;->mItem:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-interface {v6, v7, v1}, Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob$OnUpdateThumbnailListener;->onUpdateOwnerThumbnail(Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public startLoadOwnerThumbnail()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    return-void
.end method
