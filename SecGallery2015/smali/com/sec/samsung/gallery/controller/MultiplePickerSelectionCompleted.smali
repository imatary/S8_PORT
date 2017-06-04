.class public Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "MultiplePickerSelectionCompleted.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# static fields
.field private static final EMAIL_COMPOSER:Ljava/lang/String; = "com.samsung.android.email.composer"

.field private static final FEATURE_USE_DEVICE_COG:Z

.field private static final TAG:Ljava/lang/String; = "MultiPickSelectComplete"

.field public static final WIDGET_MAX_COUNT:I = 0x3e8


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mDCParamValue:Ljava/lang/String;

.field private mNewAlbumName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->FEATURE_USE_DEVICE_COG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->mDCParamValue:Ljava/lang/String;

    return-void
.end method

.method private addAuthority(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    invoke-static {}, Lcom/sec/samsung/gallery/lib/factory/UserHandleWrapper;->myUserId()I

    move-result v0

    sget v1, Lcom/sec/samsung/gallery/lib/factory/UserHandleWrapper;->USER_CURRENT:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/samsung/gallery/lib/factory/UserHandleWrapper;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getAlbumPathList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v3, v1, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaObject;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getCoverFilePathList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v5, v2, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v5, :cond_0

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getCoverMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    instance-of v5, v3, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getFilePathList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v5, v2, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v5, :cond_4

    move-object v5, v2

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v7, v4, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    if-eqz v7, :cond_2

    check-cast v4, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->getLocalImage()Lcom/sec/android/gallery3d/data/LocalImage;

    move-result-object v7

    iget-object v7, v7, Lcom/sec/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    instance-of v7, v4, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v7, :cond_3

    check-cast v4, Lcom/sec/android/gallery3d/data/LocalImage;

    iget-object v7, v4, Lcom/sec/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    instance-of v7, v4, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v7, :cond_1

    check-cast v4, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    iget-object v7, v4, Lcom/sec/android/gallery3d/data/UnionLocalImage;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    instance-of v5, v2, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v5, :cond_5

    check-cast v2, Lcom/sec/android/gallery3d/data/LocalImage;

    iget-object v5, v2, Lcom/sec/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    instance-of v5, v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v5, :cond_0

    check-cast v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    iget-object v5, v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return-object v1
.end method

.method private getPersonIdList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v5, v1, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v5, :cond_0

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getCoverMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    instance-of v5, v2, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    if-eqz v5, :cond_0

    check-cast v2, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->getPersonId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private getPersonImageList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v5, v1, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v5, :cond_0

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getCoverMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    instance-of v5, v2, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    if-eqz v5, :cond_0

    check-cast v2, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->getFacePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private getUnionUriList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaObject;

    if-nez v1, :cond_1

    const-string/jumbo v5, "MultiPickSelectComplete"

    const-string/jumbo v7, "selected item\'s uri is null, item is ignored"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    instance-of v5, v1, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v5, :cond_2

    move-object v5, v1

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getUnionContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaObject;->getUnionContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v4
.end method

.method private getUriList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaObject;

    if-nez v2, :cond_1

    const-string/jumbo v6, "MultiPickSelectComplete"

    const-string/jumbo v8, "selected item\'s uri is null, item is ignored"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    instance-of v6, v2, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v6, :cond_2

    move-object v6, v2

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v1

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->addAuthority(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v5
.end method

.method private isFromWidget()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "photo-pick"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isPersonPick()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "person-pick"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isPhotoWall()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "from-photowall"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private selectedItemCount(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v3, v0, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private setResultAndFinish(Landroid/app/Activity;)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    check-cast v17, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getCloneMediaList()Ljava/util/LinkedList;

    move-result-object v12

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->isPhotoWall()Z

    move-result v9

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v17, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->isPersonPick()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->getPersonIdList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v10

    const-string/jumbo v17, "personIds"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->getPersonImageList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v6

    const-string/jumbo v17, "coverPaths"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->getCoverFilePathList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v5

    const-string/jumbo v17, "coverFilePaths"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->getFilePathList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v7

    const-string/jumbo v17, "android.intent.extra.STREAM"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->mNewAlbumName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->mNewAlbumName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_2

    const-string/jumbo v17, "newAlbumName"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->mNewAlbumName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    sget-boolean v17, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v17, :cond_3

    const-string/jumbo v17, "dc_param_value"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->mDCParamValue:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_3

    const-string/jumbo v17, "DC_OPERATION_FROM_BIXBY"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    const/16 v17, -0x1

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void

    :cond_4
    sget-object v17, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v17 .. v17}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v17

    if-nez v17, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->isFromWidget()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->selectedItemCount(Ljava/util/List;)I

    move-result v17

    const/16 v18, 0x3e8

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0a0253

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x3e8

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->isPersonPick()Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->getAlbumPathList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    const-string/jumbo v17, "albumPaths"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->getUriList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v16

    const/4 v15, 0x0

    sget-object v17, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v17 .. v17}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->getUnionUriList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v15

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v17

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "com.samsung.android.email.composer"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    const-string/jumbo v17, "android.intent.extra.STREAM"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_8

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_8
    new-instance v4, Landroid/content/ClipData;

    const/16 v18, 0x0

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v17, 0x0

    const-string/jumbo v20, "image/*"

    aput-object v20, v19, v17

    new-instance v20, Landroid/content/ClipData$Item;

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v4, v0, v1, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    const/4 v8, 0x1

    :goto_2
    if-ge v8, v14, :cond_9

    new-instance v18, Landroid/content/ClipData$Item;

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Uri;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {v11, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v17, "selectedItems"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v17, "selectedCount"

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v17, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v17 .. v17}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v17

    if-eqz v17, :cond_1

    if-eqz v15, :cond_1

    const-string/jumbo v17, "union_selectedItems"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 4

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Landroid/app/Activity;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->mActivity:Landroid/app/Activity;

    array-length v2, v0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    const/4 v2, 0x2

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->mNewAlbumName:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->mActivity:Landroid/app/Activity;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->mContext:Landroid/content/Context;

    sget-boolean v2, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDCCurrentParameterValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->mDCParamValue:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->setResultAndFinish(Landroid/app/Activity;)V

    return-void

    :cond_2
    const-string/jumbo v2, "no_param_value"

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/MultiplePickerSelectionCompleted;->mDCParamValue:Ljava/lang/String;

    goto :goto_0
.end method
