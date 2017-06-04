.class public Lcom/sec/samsung/gallery/controller/MagicShotStudioCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "MagicShotStudioCmd.java"

# interfaces
.implements Ljava/util/Observer;
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# static fields
.field private static final MAGIC_STUDIO_CLASS_NAME:Ljava/lang/String; = "com.sec.android.app.camera.shootingmode.shotandmore.ShotandmoreActivity"

.field private static final MAGIC_STUDIO_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.camera.shootingmode.shotandmore"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mShotAndMoreDialog:Lcom/sec/samsung/gallery/view/common/ShotAndMoreDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MagicShotStudioCmd;->mShotAndMoreDialog:Lcom/sec/samsung/gallery/view/common/ShotAndMoreDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MagicShotStudioCmd;->mShotAndMoreDialog:Lcom/sec/samsung/gallery/view/common/ShotAndMoreDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ShotAndMoreDialog;->dismissDialog()V

    :cond_0
    return-void
.end method

.method private showShotAndMoreStudioDownloadDialog()V
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ShotAndMoreDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MagicShotStudioCmd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/common/ShotAndMoreDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/MagicShotStudioCmd;->mShotAndMoreDialog:Lcom/sec/samsung/gallery/view/common/ShotAndMoreDialog;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MagicShotStudioCmd;->mShotAndMoreDialog:Lcom/sec/samsung/gallery/view/common/ShotAndMoreDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ShotAndMoreDialog;->showDialog()V

    return-void
.end method

.method private startMagicShotStudio()V
    .locals 22

    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    sget-object v18, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMagicShotPackageForK:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v18

    if-eqz v18, :cond_0

    new-instance v8, Landroid/content/ComponentName;

    const-string/jumbo v18, "com.arcsoft.magicshotstudio"

    const-string/jumbo v19, "com.arcsoft.magicshotstudio.Main"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v8, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v13, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v18, "yyyyMMddkkmmss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "/S studio"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "/BestFace_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ".jpg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "/BestPhoto_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ".jpg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "Eraser_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ".jpg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "/Drama_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ".jpg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "/Picmotion_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ".jpg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MagicShotStudioCmd;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MagicShotStudioCmd;->mList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/Uri;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getFilePathFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v18, "sef_file_name"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v18, "start_type"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v11, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const-string/jumbo v18, "image_width"

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v18, "image_height"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v18, "bestface"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v18, "eraser"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v18, "drama"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v18, "bestphoto"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v18, "picmotion"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MagicShotStudioCmd;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    new-instance v8, Landroid/content/ComponentName;

    const-string/jumbo v18, "com.sec.android.app.camera.shootingmode.shotandmore"

    const-string/jumbo v19, "com.sec.android.app.camera.shootingmode.shotandmore.ShotandmoreActivity"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v8, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v10

    sget-object v18, Lcom/sec/samsung/gallery/features/FeatureNames;->UseShotandMore:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/MagicShotStudioCmd;->showShotAndMoreStudioDownloadDialog()V

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MagicShotStudioCmd;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0a0077

    invoke-static/range {v18 .. v19}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_1
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 2

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/MagicShotStudioCmd;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/MagicShotStudioCmd;->mList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/MagicShotStudioCmd;->dismissDialog()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/MagicShotStudioCmd;->startMagicShotStudio()V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
