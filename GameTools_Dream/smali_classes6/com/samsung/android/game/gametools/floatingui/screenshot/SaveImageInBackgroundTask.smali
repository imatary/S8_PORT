.class Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "SaveImageInBackgroundTask.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;",
        "Ljava/lang/Void;",
        "Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SaveImageInBackgroundTask"


# instance fields
.field mContext:Landroid/content/Context;

.field private final mImageFileName:Ljava/lang/String;

.field private final mImageFilePath:Ljava/lang/String;

.field private final mImageHeight:I

.field private final mImageWidth:I

.field private final mNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mNotificationId:I

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

.field private final mPublicNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mScreenshotDir:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;I)V
    .locals 20

    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/GameToolsFileInfoHelper;->getDCIMPath()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->makeDirectory(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/GameToolsFileInfoHelper;->getScreenShotRootAbsPath()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->makeDirectory(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->appTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/game/gamecast/common/utility/GameToolsFileInfoHelper;->getGameScreenShotSavedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->appTitle:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/game/gamecast/common/utility/GameToolsFileInfoHelper;->getGameScreenShotSavedDirectoryAbsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    const-string/jumbo v17, "SaveImageInBackgroundTask"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "mScreenshotDir : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    const-string/jumbo v17, "SaveImageInBackgroundTask"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "mImageFilePath : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move-object/from16 v0, p2

    iget v5, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->iconSize:I

    move-object/from16 v0, p2

    iget v14, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->previewWidth:I

    move-object/from16 v0, p2

    iget v13, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->previewheight:I

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    const/high16 v17, 0x3e800000    # 0.25f

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    const/16 v17, 0x80

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v17, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v10, 0x4c000000    # 3.3554432E7f

    new-instance v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v14, v13, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v17, v0

    sub-int v17, v14, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v18, v0

    sub-int v18, v13, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v2, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v6, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v2, v10}, Landroid/graphics/Canvas;->drawColor(I)V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    int-to-float v0, v5

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v15, v17, v18

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v5, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v6, v15, v15}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float v0, v5

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v15

    sub-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    int-to-float v0, v5

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v15

    sub-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v6, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v2, v10}, Landroid/graphics/Canvas;->drawColor(I)V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v17, Landroid/app/Notification$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v18, Lcom/samsung/android/game/gametools/floatingui/R$drawable;->stat_gametools_nmr:I

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v17, Landroid/app/Notification$BigPictureStyle;

    invoke-direct/range {v17 .. v17}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    new-instance v17, Landroid/app/Notification$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v18, Lcom/samsung/android/game/gametools/floatingui/R$drawable;->stat_gametools_nmr:I

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v17

    const-string/jumbo v18, "progress"

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    iget v0, v7, Landroid/app/Notification;->flags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x20

    move/from16 v0, v17

    iput v0, v7, Landroid/app/Notification;->flags:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/app/NotificationManager;->cancel(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v18, v0

    const/16 v17, 0x0

    check-cast v17, Landroid/graphics/Bitmap;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    return-void
.end method

.method private getGalleryFolderCallWrapperIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/game/gametools/floatingui/screenshot/GalleryFolderCallWrapperActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "gamename"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;)Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;
    .locals 12

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string/jumbo v8, "SaveImageInBackgroundTask"

    const-string/jumbo v9, "doInBackground start"

    invoke-static {v8, v9}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v8, p1

    if-eq v8, v10, :cond_0

    :goto_0
    return-object v7

    :cond_0
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    aget-object v7, p1, v11

    iget-object v2, v7, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_4

    :try_start_2
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v2, v7, v8, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v7

    if-ne v10, v7, :cond_4

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    move-object v0, v6

    check-cast v0, Ljava/io/FileOutputStream;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V

    const-string/jumbo v7, "SaveImageInBackgroundTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "image.getByteCount() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    aget-object v7, p1, v7

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    aget-object v7, p1, v7

    const/4 v8, 0x0

    iput v8, v7, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->result:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :goto_1
    if-eqz v6, :cond_6

    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v5, v6

    move-object v3, v4

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const-string/jumbo v7, "SaveImageInBackgroundTask"

    const-string/jumbo v8, "image recycled"

    invoke-static {v7, v8}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :cond_3
    :goto_3
    const-string/jumbo v7, "SaveImageInBackgroundTask"

    const-string/jumbo v8, "doInBackground end"

    invoke-static {v7, v8}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v7, p1, v11

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v5, v6

    move-object v3, v4

    :goto_4
    :try_start_7
    const-string/jumbo v7, "SaveImageInBackgroundTask"

    const-string/jumbo v8, "IOException-UnsupportedOperationException may be thrown if external storage is not"

    invoke-static {v7, v8}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    aget-object v7, p1, v7

    invoke-virtual {v7}, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->clearImage()V

    const/4 v7, 0x0

    aget-object v7, p1, v7

    const/4 v8, 0x1

    iput v8, v7, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->result:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v5, :cond_2

    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    const-string/jumbo v7, "SaveImageInBackgroundTask"

    const-string/jumbo v8, "IOException"

    invoke-static {v7, v8}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :try_start_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Fail to create capture image file ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    const/4 v7, 0x0

    aget-object v7, p1, v7

    const/4 v8, 0x1

    iput v8, v7, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->result:I

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v7

    move-object v5, v6

    move-object v3, v4

    :goto_5
    if-eqz v5, :cond_5

    :try_start_a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :cond_5
    :goto_6
    throw v7

    :catch_3
    move-exception v1

    const-string/jumbo v7, "SaveImageInBackgroundTask"

    const-string/jumbo v8, "IOException"

    invoke-static {v7, v8}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    move-object v3, v4

    goto/16 :goto_2

    :catch_4
    move-exception v1

    const-string/jumbo v8, "SaveImageInBackgroundTask"

    const-string/jumbo v9, "IOException"

    invoke-static {v8, v9}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :catchall_1
    move-exception v7

    goto :goto_5

    :catchall_2
    move-exception v7

    move-object v3, v4

    goto :goto_5

    :catch_6
    move-exception v1

    goto/16 :goto_4

    :catch_7
    move-exception v1

    move-object v3, v4

    goto/16 :goto_4

    :cond_6
    move-object v5, v6

    move-object v3, v4

    goto/16 :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->doInBackground([Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;)Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string/jumbo v6, "SaveImageInBackgroundTask"

    const-string/jumbo v7, "onPostExecute start"

    invoke-static {v6, v7}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p1, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v6, p1, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->result:I

    if-ne v6, v9, :cond_1

    iget-object v6, p1, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    sget v7, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_POP_UNABLE_TO_CAPTURE_THE_SCREEN_DELETE_SOME_FILES_AND_TRY_AGAIN:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    iget-object v6, p1, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    if-eqz v6, :cond_0

    iget-object v6, p1, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p1, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->appTitle:Ljava/lang/String;

    invoke-static {v6}, Lcom/sec/game/gamecast/common/utility/GameToolsFileInfoHelper;->getProperFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->getGalleryFolderCallWrapperIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    sget v7, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_MBODY_SCREEN_CAPTURED:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    sget v7, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_SBODY_CHECK_PS_ALBUM_IN_GALLERY:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v0, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p1, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const/high16 v8, 0x10000000

    invoke-static {v7, v10, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    sget v7, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_MBODY_SCREEN_CAPTURED:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    sget v7, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_SBODY_CHECK_PS_ALBUM_IN_GALLERY:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v0, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p1, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v7, v10, v5, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iget v6, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, -0x21

    iput v6, v1, Landroid/app/Notification;->flags:I

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget v7, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    invoke-virtual {v6, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v6, p1, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    if-eqz v6, :cond_2

    iget-object v6, p1, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->clearContext()V

    const-string/jumbo v6, "SaveImageInBackgroundTask"

    const-string/jumbo v7, "onPostExecute End"

    invoke-static {v6, v7}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundTask;->onPostExecute(Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;)V

    return-void
.end method
