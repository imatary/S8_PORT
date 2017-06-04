.class public abstract Lcom/sec/android/gallery3d/crop/CropResult;
.super Ljava/lang/Object;
.source "CropResult.java"


# static fields
.field private static final CONTACT_PACKAGE_NAME:Ljava/lang/String; = "com.android.contacts"

.field private static final KEY_RESIZE_HEIGHT:Ljava/lang/String; = "resizeH"

.field private static final KEY_RESIZE_WIDTH:Ljava/lang/String; = "resizeW"

.field private static final TAG:Ljava/lang/String; = "CropResult"


# instance fields
.field final mActivity:Lcom/sec/android/gallery3d/app/CropImage;

.field final mCropForVideoCall:Z

.field mCroppedBitmap:Landroid/graphics/Bitmap;

.field final mIntent:Landroid/content/Intent;

.field final mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field mVideoCallRH:I

.field mVideoCallRW:I


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/CropImage;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/sec/android/gallery3d/crop/CropResult;->mVideoCallRW:I

    iput v2, p0, Lcom/sec/android/gallery3d/crop/CropResult;->mVideoCallRH:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/crop/CropResult;->mCroppedBitmap:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/sec/android/gallery3d/crop/CropResult;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/CropImage;->getMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/crop/CropResult;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/CropImage;->getCropForVideoCall()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/crop/CropResult;->mCropForVideoCall:Z

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/crop/CropResult;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "resizeW"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/crop/CropResult;->mVideoCallRW:I

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "resizeH"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/crop/CropResult;->mVideoCallRH:I

    return-void
.end method


# virtual methods
.method makeFolderForOutput(Landroid/net/Uri;)V
    .locals 11

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Lcom/sec/samsung/gallery/lib/factory/CscFeatureFactory;

    invoke-direct {v3}, Lcom/sec/samsung/gallery/lib/factory/CscFeatureFactory;-><init>()V

    iget-object v7, p0, Lcom/sec/android/gallery3d/crop/CropResult;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-interface {v3, v7}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/CscFeatureInterface;

    const-string/jumbo v7, "CscFeature_Contact_ReplacePackageAs"

    invoke-interface {v0, v7}, Lcom/sec/samsung/gallery/lib/libinterface/CscFeatureInterface;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const-string/jumbo v5, "com.android.contacts"

    :cond_1
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v2, ""

    const-string/jumbo v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v7, v4

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    aget-object v7, v4, v9

    const/4 v8, 0x0

    aget-object v9, v4, v9

    const/16 v10, 0x2f

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "CropResult"

    const-string/jumbo v8, "Failed to make dirs"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public abstract setResultIntent(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Intent;Landroid/graphics/Rect;)Landroid/content/Intent;
.end method
