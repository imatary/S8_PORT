.class public Lcom/sec/samsung/gallery/controller/PickerItemSelected;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "PickerItemSelected.java"


# static fields
.field private static final CATEGORY_DEFAULT:Ljava/lang/String; = "android.intent.category.DEFAULT"

.field private static final EXTRA_EXECUTE_ICON:Ljava/lang/String; = "com.samsung.android.execute.extra.ICON"

.field private static final EXTRA_EXECUTE_INTENT:Ljava/lang/String; = "com.samsung.android.execute.extra.INTENT"

.field private static final EXTRA_EXECUTE_NAME:Ljava/lang/String; = "com.samsung.android.execute.extra.NAME"

.field private static final EXTRA_EXECUTE_SMALL_ICON:Ljava/lang/String; = "com.samsung.android.execute.extra.SMALLICON"

.field private static final GALLERY_CLASS_NAME:Ljava/lang/String; = "com.sec.android.gallery3d.app.GalleryOpaqueActivity"

.field private static final IMAGE_TYPE:Ljava/lang/String; = "image/*"

.field private static final MIME_TYPE:Ljava/lang/String; = "mimeType"

.field private static final SHORTCUT_VIEW_INTENT:Ljava/lang/String; = "com.android.gallery.action.SHORTCUT_VIEW"

.field private static final TAG:Ljava/lang/String; = "PickerItemSelected"


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/PickerItemSelected;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/PickerItemSelected;Landroid/content/Intent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->needsCrop(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/PickerItemSelected;Lcom/sec/android/gallery3d/data/MediaObject;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->startCropActivity(Lcom/sec/android/gallery3d/data/MediaObject;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/controller/PickerItemSelected;Lcom/sec/android/gallery3d/data/MediaItem;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->setResultAndFinish(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/content/Intent;)V

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

.method private albumPickforShortcut(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0304

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0306

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "ALBUM_PATH"

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.sec.android.gallery3d.app.GalleryOpaqueActivity"

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "com.android.gallery.action.SHORTCUT_VIEW"

    invoke-virtual {v15, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.category.DEFAULT"

    invoke-virtual {v15, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const v4, 0x14008000

    invoke-virtual {v15, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->createBitmap(Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->postRotate(Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/Matrix;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v4, 0x0

    invoke-static {v10, v12, v12, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    const/high16 v5, 0x7f030000

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v19

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-static {v0, v1, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v17

    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.samsung.android.execute.extra.NAME"

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.execute.extra.ICON"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.execute.extra.SMALLICON"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.execute.extra.INTENT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    const/4 v5, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private createBitmap(Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/util/ThreadPool;->JOB_CONTEXT_STUB:Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;

    invoke-interface {v1, v2}, Lcom/sec/android/gallery3d/util/ThreadPool$Job;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const-string/jumbo v1, "PickerItemSelected"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fail to get image of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private isPickSupported(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 12

    const-wide/16 v10, 0x20

    const/4 v2, 0x1

    const v8, 0x7f0a049e

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v8}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isGolf()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "set-as-wallpaper"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v8}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "set-as-wallpaper"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "set-as-contactphoto"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "set-as-image"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "fromMusicPlayer"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    const-string/jumbo v3, "private_move_do_not_show"

    invoke-static {v0, v3, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/sec/samsung/gallery/controller/PickerItemSelected$1;

    invoke-direct {v2, p0, p1}, Lcom/sec/samsung/gallery/controller/PickerItemSelected$1;-><init>(Lcom/sec/samsung/gallery/controller/PickerItemSelected;Lcom/sec/android/gallery3d/data/MediaItem;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    move v0, v1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_7

    invoke-static {p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->isCloudImage(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "set-as-wallpaper"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v8}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    move v0, v1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v4

    and-long/2addr v4, v10

    cmp-long v0, v4, v10

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "set-as-wallpaper"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isFromThemeStore()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v0, v2

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v8}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    move v0, v1

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto/16 :goto_0
.end method

.method private isTooSmallForCrop(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isTooSmallForCrop(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    instance-of v1, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->isTooSmallForCrop(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private itemPickforShortcut(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 15

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0304

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0306

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.sec.android.gallery3d.app.GalleryOpaqueActivity"

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x14008000

    invoke-virtual {v10, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "view_item"

    const/4 v2, 0x1

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "from_shortcut"

    const/4 v2, 0x1

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-direct/range {p0 .. p1}, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->createBitmap(Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->postRotate(Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/Matrix;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v1, 0x0

    invoke-static {v7, v9, v9, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    const/high16 v2, 0x7f030000

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v14

    const/4 v1, 0x0

    invoke-static {v14, v13, v13, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.execute.extra.NAME"

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.execute.extra.ICON"

    invoke-virtual {v11, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.execute.extra.SMALLICON"

    invoke-virtual {v11, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.execute.extra.INTENT"

    invoke-virtual {v11, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v11}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private needsCrop(Landroid/content/Intent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "crop"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postRotate(Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/Matrix;
    .locals 2

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    return-object v0
.end method

.method private setResultAndFinish(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    if-nez v5, :cond_0

    const-string/jumbo v5, "PickerItemSelected"

    const-string/jumbo v6, "mActivity is null at setResultAndFinish"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v5, "view_item"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->itemPickforShortcut(Lcom/sec/android/gallery3d/data/MediaItem;)V

    :goto_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->addAuthority(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v5, "mimeType"

    const-string/jumbo v6, "image/*"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "selectedItems"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v5, "selectedCount"

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHomeLockScreenPreviewSetAs:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "wallpaper_type"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    :cond_2
    if-eq v4, v7, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    const-string/jumbo v7, "image/*"

    invoke-static {v5, v6, v7, v4, v8}, Lcom/sec/samsung/gallery/controller/CropImageCmd;->startCropImageActivity(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    const-string/jumbo v5, "mimeType"

    const-string/jumbo v6, "video/*"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method private setResultAndFinish(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ALBUM_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->albumPickforShortcut(Lcom/sec/android/gallery3d/data/MediaSet;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "ALBUM_PATH"

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "mimeType"

    const-string/jumbo v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private startCropActivity(Lcom/sec/android/gallery3d/data/MediaObject;Landroid/content/Intent;)V
    .locals 5

    const-string/jumbo v2, "PickerItemSelected"

    const-string/jumbo v3, "startCropActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "image/*"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "output"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "return-data"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    const/16 v3, 0x403

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 10

    const/4 v9, 0x1

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v5, v7

    check-cast v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v7, v5, v7

    check-cast v7, Landroid/app/Activity;

    iput-object v7, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    aget-object v2, v5, v9

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaObject;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v7, v2, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v7, :cond_2

    move-object v3, v2

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->setResultAndFinish(Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_0

    :cond_2
    instance-of v7, v2, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v7, :cond_0

    move-object v1, v2

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->isPickSupported(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->needsCrop(Landroid/content/Intent;)Z

    move-result v4

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    check-cast v7, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isFromThemeStore()Z

    move-result v0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    if-nez v0, :cond_3

    if-eqz v4, :cond_5

    :cond_3
    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isTooSmallForCrop(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->isTooSmallForCrop(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    const v8, 0x7f0a020d

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->mActivity:Landroid/app/Activity;

    check-cast v7, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v8, 0x0

    invoke-static {v1, v9, v7, v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->showSetAsActivity(Lcom/sec/android/gallery3d/data/MediaItem;ZLcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-eqz v4, :cond_7

    invoke-direct {p0, v1, v6}, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->startCropActivity(Lcom/sec/android/gallery3d/data/MediaObject;Landroid/content/Intent;)V

    goto :goto_0

    :cond_7
    invoke-direct {p0, v1, v6}, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->setResultAndFinish(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/content/Intent;)V

    goto :goto_0
.end method
