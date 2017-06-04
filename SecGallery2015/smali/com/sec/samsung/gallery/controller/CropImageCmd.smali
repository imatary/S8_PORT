.class public Lcom/sec/samsung/gallery/controller/CropImageCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "CropImageCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# static fields
.field private static final BOTH_SCREEN:I = 0x402

.field private static final KEY_CROP_MODE:Ljava/lang/String; = "mode-crop"

.field private static final LOCK_SCREEN:I = 0x401

.field private static final NORMAL_CROP:I = 0x404

.field private static final TAG:Ljava/lang/String; = "CropImageCmd"

.field public static final WALLPAPER_REQUEST_CODE:I = 0x403

.field private static final WALLPAPER_SCREEN:I = 0x400

.field public static final WALLPAPER_TYPE:Ljava/lang/String; = "wallpaper_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private static startCropActivity(Landroid/app/Activity;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.camera.action.CROP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v2, "mode-crop"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "set_normal_crop"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "wallpaper_type"

    const/16 v3, 0x404

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-static {p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->isCloudImage(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x302

    :goto_0
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/16 v2, 0x301

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "CropImageCmd"

    const-string/jumbo v3, "Activity Not Found !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static startCropImageActivity(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZ)V
    .locals 21

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v3, v8}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    invoke-static/range {p0 .. p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static/range {p0 .. p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d0003

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-nez v18, :cond_4

    invoke-virtual {v15}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v17

    invoke-virtual {v15}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v5

    move/from16 v0, v17

    if-le v0, v5, :cond_1

    move/from16 v6, v17

    :goto_0
    const/16 v18, 0x402

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    div-float v11, v18, v19

    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    div-float v12, v18, v19

    :goto_1
    new-instance v19, Landroid/content/Intent;

    const/16 v18, 0x400

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    if-nez p4, :cond_3

    const-string/jumbo v18, "com.android.camera.action.CROP"

    :goto_2
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v18, Lcom/sec/android/gallery3d/app/CropImage;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    const-string/jumbo v19, "outputX"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v18

    const-string/jumbo v19, "outputY"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    :cond_0
    :goto_3
    const-string/jumbo v18, "aspectX"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v18

    const-string/jumbo v19, "aspectY"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v18

    const-string/jumbo v19, "spotlightX"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v18

    const-string/jumbo v19, "spotlightY"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v18

    const-string/jumbo v19, "scale"

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v18

    const-string/jumbo v19, "noFaceDetection"

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v19

    const-string/jumbo v20, "set-as-wallpaper"

    const/16 v18, 0x400

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    const/16 v18, 0x1

    :goto_4
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v19

    const-string/jumbo v20, "set-as-lockscreen"

    const/16 v18, 0x401

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    const/16 v18, 0x1

    :goto_5
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v19

    const-string/jumbo v20, "set-as-bothscreen"

    const/16 v18, 0x402

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    const/16 v18, 0x1

    :goto_6
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v18, 0x403

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    return-void

    :cond_1
    move v6, v5

    goto/16 :goto_0

    :cond_2
    iget v0, v8, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    div-float v11, v18, v19

    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    div-float v12, v18, v19

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v18, "com.sed.android.gallery3d.CROP_SEC_ONLY"

    goto/16 :goto_2

    :cond_4
    const/16 v18, 0x402

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    iget v5, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_8
    move/from16 v0, v17

    if-ge v0, v5, :cond_6

    move v6, v5

    :goto_9
    invoke-virtual {v15}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v16

    invoke-virtual {v15}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v13

    move/from16 v0, v16

    if-le v0, v13, :cond_7

    move/from16 v14, v16

    :goto_a
    move/from16 v0, v17

    if-le v0, v5, :cond_8

    move v10, v5

    :goto_b
    int-to-float v0, v10

    move/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    div-float v11, v18, v19

    int-to-float v0, v6

    move/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    div-float v12, v18, v19

    new-instance v19, Landroid/content/Intent;

    const/16 v18, 0x400

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    const-string/jumbo v18, "com.android.camera.action.CROP"

    :goto_c
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    const-string/jumbo v19, "outputX"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v18

    const-string/jumbo v19, "outputY"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    const/16 v18, 0x400

    move/from16 v0, p3

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    const-string/jumbo v18, "scaleUpIfNeeded"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    :cond_5
    iget v0, v8, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    iget v5, v8, Landroid/graphics/Point;->y:I

    goto :goto_8

    :cond_6
    move/from16 v6, v17

    goto :goto_9

    :cond_7
    move v14, v13

    goto :goto_a

    :cond_8
    move/from16 v10, v17

    goto :goto_b

    :cond_9
    const-string/jumbo v18, "com.sed.android.gallery3d.CROP_SEC_ONLY"

    goto :goto_c

    :cond_a
    const/16 v18, 0x0

    goto/16 :goto_4

    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_5

    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_6

    :catch_0
    move-exception v4

    const-string/jumbo v18, "CropImageCmd"

    const-string/jumbo v19, "Activity Not Found !!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 4

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    check-cast v0, Landroid/app/Activity;

    const/4 v3, 0x1

    aget-object v1, v2, v3

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/CropImageCmd;->startCropActivity(Landroid/app/Activity;Lcom/sec/android/gallery3d/data/MediaItem;)V

    return-void
.end method
