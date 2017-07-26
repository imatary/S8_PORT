.class public Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;
.super Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;
.source "ImageSelectorFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment$RotateImageFailException;
    }
.end annotation


# static fields
.field private static final FILE_TYPE_CAMERA:I = 0xa

.field private static final FILE_TYPE_CROP:I = 0xb

.field private static final REQ_CROP_FROM_RESULT:I = 0x8

.field private static final REQ_SELECT_FROM_GALLERY:I = 0x1

.field private static final REQ_TAKE_A_PICTURE:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private aspectX:I

.field private aspectY:I

.field private cropFileType:I

.field private height:I

.field private imageview:Landroid/widget/ImageView;

.field protected imgLoader:Lcom/sec/game/gamecast/common/utility/ImageLoader;

.field protected isExistSettingImage:Z

.field private mBitmapCache:Lcom/sec/game/gamecast/common/utility/BitmapFileCache;

.field private mImageSizeBoundary:I

.field protected mTempImagePath:Ljava/lang/String;

.field private request_code:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->request_code:I

    const/16 v0, 0x258

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->mImageSizeBoundary:I

    return-void
.end method

.method private correctCameraOrientation(Ljava/io/File;)V
    .locals 7

    sget-object v5, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "correctCameraOrientation"

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->loadImageWithSampleSize(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "Orientation"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->exifOrientationToDegrees(I)I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->saveBitmapToFile(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment$RotateImageFailException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v5

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    :cond_1
    throw v5
.end method

.method private cropImage(Landroid/net/Uri;IIII)V
    .locals 8

    const/4 v7, 0x1

    sget-object v4, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "cropImage"

    invoke-static {v4, v5}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.camera.action.CROP"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "image/*"

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->doFinalProcess(Landroid/net/Uri;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v4, "outputX"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "outputY"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "aspectX"

    invoke-virtual {v1, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "aspectY"

    invoke-virtual {v1, v4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "scale"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".provider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->cropFileType:I

    invoke-direct {p0, v7, v6}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->getTempImageFile(ZI)Ljava/io/File;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v4, "output"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v4, "outputFormat"

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v5}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v4, 0x8

    iput v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->request_code:I

    iget v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->request_code:I

    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private cropImageFromSamsungGallery(Landroid/net/Uri;IIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v7, 0x1

    sget-object v4, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "cropImageFromSamsungGallery"

    invoke-static {v4, v5}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.camera.action.CROP"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.sec.android.gallery3d"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "image/*"

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "cropToolLists is empty!"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const-string/jumbo v4, "outputX"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "outputY"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "aspectX"

    invoke-virtual {v1, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "aspectY"

    invoke-virtual {v1, v4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "scale"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "set-as-contactphoto"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".provider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->cropFileType:I

    invoke-direct {p0, v7, v6}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->getTempImageFile(ZI)Ljava/io/File;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v4, "output"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "output"

    invoke-static {v4, v5, v2}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/16 v4, 0x8

    iput v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->request_code:I

    iget v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->request_code:I

    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private doFinalProcess(Landroid/net/Uri;)V
    .locals 8

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->loadImageWithSampleSize(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->resizeImageWithinBoundary(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->saveBitmapToFile(Landroid/graphics/Bitmap;)V

    const/4 v6, 0x0

    :try_start_0
    iget v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->cropFileType:I

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->getTempImageFile(ZI)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v6, v3}, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;)V

    iget-object v6, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private exifOrientationToDegrees(I)I
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const/16 v0, 0x5a

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/16 v0, 0xb4

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    const/16 v0, 0x10e

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFileName(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "crop_temp.png"

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "camera_temp.png"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method private getTempImageFile(ZI)Ljava/io/File;
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, ".nomedia"

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->getFileName(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, v6, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-ne v4, v6, :cond_1

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private loadImageWithSampleSize(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x1

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private resizeBitmapWithHeight(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v6, p2

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    int-to-float v7, v0

    div-float v1, v6, v7

    int-to-float v6, v5

    mul-float/2addr v6, v1

    float-to-int v4, v6

    int-to-float v6, v0

    mul-float/2addr v6, v1

    float-to-int v3, v6

    const/4 v6, 0x1

    invoke-static {p1, v4, v3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method private resizeBitmapWithWidth(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v6, p2

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    int-to-float v7, v5

    div-float v1, v6, v7

    int-to-float v6, v5

    mul-float/2addr v6, v1

    float-to-int v4, v6

    int-to-float v6, v0

    mul-float/2addr v6, v1

    float-to-int v3, v6

    const/4 v6, 0x1

    invoke-static {p1, v4, v3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method private resizeImageWithinBoundary(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v1, v0, :cond_1

    iget v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->mImageSizeBoundary:I

    if-le v1, v2, :cond_0

    iget v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->mImageSizeBoundary:I

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->resizeBitmapWithWidth(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->mImageSizeBoundary:I

    if-le v0, v2, :cond_0

    iget v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->mImageSizeBoundary:I

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->resizeBitmapWithHeight(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method private rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment$RotateImageFailException;
        }
    .end annotation

    const/high16 v3, 0x40000000    # 2.0f

    sget-object v0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "rotateImage"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eq p1, v7, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v7

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    new-instance v0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment$RotateImageFailException;

    const-string/jumbo v1, "bitmap is null"

    invoke-direct {v0, v1}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment$RotateImageFailException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private saveBitmapToFile(Landroid/graphics/Bitmap;)V
    .locals 5

    sget-object v3, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "saveBitmapToFile"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->getTempImageFile(ZI)Ljava/io/File;

    move-result-object v2

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getImageFromCamera()V
    .locals 6

    const/4 v5, 0x1

    sget-object v2, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getImageFromCamera"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->request_code:I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".provider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-direct {p0, v5, v4}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->getTempImageFile(ZI)Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "return-data"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->request_code:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public getImageFromGallery()V
    .locals 3

    sget-object v1, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getImageFromGallery"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->request_code:I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.gallery3d"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "vnd.android.cursor.dir/image"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->request_code:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    const/16 v6, 0xa

    const/4 v5, 0x0

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :sswitch_0
    sget-object v0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onActivityResult : REQ_SELECT_FROM_GALLERY"

    invoke-static {v0, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    iget v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->width:I

    iget v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->height:I

    iget v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->aspectX:I

    iget v5, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->aspectY:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->cropImageFromSamsungGallery(Landroid/net/Uri;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    invoke-static {v8}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/Throwable;)V

    iget v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->width:I

    iget v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->height:I

    iget v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->aspectX:I

    iget v5, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->aspectY:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->cropImage(Landroid/net/Uri;IIII)V

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onActivityResult : REQ_TAKE_A_PICTURE"

    invoke-static {v0, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->getTempImageFile(ZI)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->correctCameraOrientation(Ljava/io/File;)V

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->getTempImageFile(ZI)Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ".provider"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->getTempImageFile(ZI)Ljava/io/File;

    move-result-object v4

    invoke-static {v0, v2, v4}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    :try_start_1
    iget v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->width:I

    iget v5, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->height:I

    iget v6, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->aspectX:I

    iget v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->aspectY:I

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->cropImageFromSamsungGallery(Landroid/net/Uri;IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v8

    invoke-static {v8}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/Throwable;)V

    iget v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->width:I

    iget v5, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->height:I

    iget v6, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->aspectX:I

    iget v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->aspectY:I

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->cropImage(Landroid/net/Uri;IIII)V

    goto/16 :goto_0

    :sswitch_2
    sget-object v0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onActivityResult : REQ_CROP_FROM_RESULT"

    invoke-static {v0, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->cropFileType:I

    invoke-direct {p0, v5, v0}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->getTempImageFile(ZI)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->mTempImagePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->mTempImagePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->isExistSettingImage:Z

    goto/16 :goto_0

    :cond_1
    iput-boolean v5, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->isExistSettingImage:Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->setRetainInstance(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->getImagLoader(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->imgLoader:Lcom/sec/game/gamecast/common/utility/ImageLoader;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/BitmapFileCache;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->mBitmapCache:Lcom/sec/game/gamecast/common/utility/BitmapFileCache;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->mTempImagePath:Ljava/lang/String;

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected saveImage(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    sget-object v5, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "saveImage"

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->imgLoader:Lcom/sec/game/gamecast/common/utility/ImageLoader;

    const/16 v6, 0x17

    invoke-virtual {v5, p1, v6, v7}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->createBitmap(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->mBitmapCache:Lcom/sec/game/gamecast/common/utility/BitmapFileCache;

    const-string/jumbo v6, "icon_profile.jpg"

    invoke-virtual {v5, v6}, Lcom/sec/game/gamecast/common/utility/BitmapFileCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v0, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/model/SettingData;->setUserProfileImage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/model/SettingData;->setUserProfileImageEnable(Landroid/content/Context;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_1
    :try_start_3
    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_3
    throw v5

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_1
    move-exception v5

    move-object v3, v4

    goto :goto_2

    :catch_4
    move-exception v1

    move-object v3, v4

    goto :goto_1
.end method

.method public setImage(Landroid/widget/ImageView;IIIIIZ)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->imageview:Landroid/widget/ImageView;

    const/16 v0, 0xb

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->cropFileType:I

    iput-boolean p7, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->isExistSettingImage:Z

    iput p2, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->width:I

    iput p3, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->height:I

    iput p4, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->aspectX:I

    iput p5, p0, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->aspectY:I

    return-void
.end method
