.class public Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "ConvertMultiFormatToMP4Cmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;,
        Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;
    }
.end annotation


# static fields
.field private static final IMAGE_CONVERSION_MIN_BYTES:I = 0xa00000

.field private static final MYFILES_PACKAGES_NAME:Ljava/lang/String; = "com.sec.android.app.myfiles"

.field private static final TAG:Ljava/lang/String; = "ConvrtMultiFrmtToMP4Cmd"

.field private static mConversionAsyncTask:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;


# instance fields
.field private TIME_DELAY_SHARE:I

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mMediaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Ljava/lang/Boolean;

.field private mUseSDCard:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mUseSDCard:Ljava/lang/Boolean;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->TIME_DELAY_SHARE:I

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->addSelectionModeProxy(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mMediaList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->TIME_DELAY_SHARE:I

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->TIME_DELAY_SHARE:I

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mType:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->callMyFiles()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->updateItemDB(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->updateItemDBForDuration(Ljava/lang/String;)V

    return-void
.end method

.method private addSelectionModeProxy(Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->getUriFrom(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_0

    const-string/jumbo v6, "jpg"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lcom/sec/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3, v7}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;Z)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_1
    move v6, v7

    goto :goto_0
.end method

.method private callMyFiles()V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.sec.android.app.myfiles"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ConvrtMultiFrmtToMP4Cmd"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkLowStorage(Ljava/lang/String;I)Z
    .locals 12

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mUseSDCard:Ljava/lang/Boolean;

    :try_start_0
    const-string/jumbo v7, "/storage/extSdCard/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v4, "/storage/extSdCard/"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mUseSDCard:Ljava/lang/Boolean;

    :cond_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v10, v7

    mul-long v2, v8, v10

    int-to-long v8, p2

    const-wide/32 v10, 0xa00000

    mul-long/2addr v8, v10

    cmp-long v7, v2, v8

    if-gez v7, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->createDialog()V

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v5

    :cond_1
    move v5, v6

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " checkLowStorageforMedia() for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "ConvrtMultiFrmtToMP4Cmd"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkMyfiles()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.sec.android.app.myfiles"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->checkPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private createDialog()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->checkMyfiles()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->createDialogForMyFiles()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->createDialogNoMyFiles()V

    goto :goto_0
.end method

.method private createDialogForMyFiles()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mUseSDCard:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0x7f0a0128

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0076

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a01e6

    new-instance v3, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$1;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$1;-><init>(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a02f4

    new-instance v3, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$2;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$2;-><init>(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mDialog:Landroid/app/Dialog;

    return-void

    :cond_0
    const v1, 0x7f0a0126

    goto :goto_0
.end method

.method private createDialogNoMyFiles()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mUseSDCard:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0x7f0a0127

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0076

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a02f4

    new-instance v3, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$3;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$3;-><init>(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mDialog:Landroid/app/Dialog;

    return-void

    :cond_0
    const v1, 0x7f0a0125

    goto :goto_0
.end method

.method private getImageType(Lcom/sec/android/gallery3d/data/MediaItem;)I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isGolf()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-wide/16 v2, 0x10

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x400

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const-wide/32 v2, 0x100000

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    const-wide/32 v2, 0x200000

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_5

    const-wide/32 v2, 0x1000000

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasSubAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    const-wide/32 v2, 0x800000

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_6

    const-wide/32 v2, 0x10000000

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasSubAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    const-wide/32 v2, 0x2000000

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0
.end method

.method private getOutputFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, ".mp4"

    const-string/jumbo v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getUriFrom(Ljava/lang/String;)Landroid/net/Uri;
    .locals 12

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v1

    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v1

    const/4 v7, 0x0

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "_data=?"

    const/4 v5, 0x0

    const-string/jumbo v6, "ConvrtMultiFrmtToMP4Cmd"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v10, v8

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    :cond_0
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v9

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method private isExist(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static isRunningConversionAsyncTask()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mConversionAsyncTask:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mConversionAsyncTask:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateItemDB(Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string/jumbo v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getVideoDuration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "title"

    invoke-virtual {v3, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "mime_type"

    const-string/jumbo v7, "video/mp4"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "_data"

    invoke-virtual {v3, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "_display_name"

    invoke-virtual {v3, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "_data"

    invoke-virtual {v3, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "datetaken"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v6, "date_added"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v6, "date_modified"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v6, "duration"

    invoke-virtual {v3, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    aput-object p1, v7, v8

    invoke-static {v6, v7, v9, v9}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method private updateItemDBForDuration(Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getVideoDuration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "duration"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "_data =?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v4, v6

    check-cast v4, [Ljava/lang/Object;

    aget-object v6, v4, v8

    check-cast v6, Landroid/content/Context;

    iput-object v6, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mContext:Landroid/content/Context;

    aget-object v6, v4, v9

    check-cast v6, Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mMediaList:Ljava/util/ArrayList;

    aget-object v6, v4, v11

    check-cast v6, Ljava/lang/Boolean;

    iput-object v6, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mType:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->checkLowStorage(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v6

    const-string/jumbo v7, "EXIT_SELECTION_MODE"

    invoke-virtual {v6, v7}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->getOutputFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->isExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->addSelectionModeProxy(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v7, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->getImageType(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v6

    invoke-direct {v7, v1, v3, v6, v10}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$1;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v7

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {v7, v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto :goto_2

    :cond_2
    new-instance v7, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->getImageType(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v6

    invoke-direct {v7, v1, v3, v6, v10}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$1;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mContext:Landroid/content/Context;

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mType:Ljava/lang/Boolean;

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v6

    const-string/jumbo v7, "SHOW_IMAGE_VIDEO_SHARE_DIALOG"

    invoke-virtual {v6, v7, v5}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    new-instance v6, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;

    invoke-direct {v6, p0, v10}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;-><init>(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$1;)V

    sput-object v6, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mConversionAsyncTask:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;

    sget-object v6, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mConversionAsyncTask:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;

    new-array v7, v9, [Ljava/util/ArrayList;

    aput-object v2, v7, v8

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method
