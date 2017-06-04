.class public Lcom/sec/samsung/gallery/controller/StartAGIFEditorCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "StartAGIFEditorCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# static fields
.field private static final TAG:Ljava/lang/String; = "StartAgifEditorCmd"


# instance fields
.field private mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mFilePath:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private startAgifEditor()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.mimage.photoretouching.motionphoto"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "baseImage"

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartAGIFEditorCmd;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v3, "file_path"

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartAGIFEditorCmd;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartAGIFEditorCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsAFWMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartAGIFEditorCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a02d5

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :goto_1
    const-string/jumbo v3, "StartAgifEditorCmd"

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/sec/samsung/gallery/view/common/EditDialog;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartAGIFEditorCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/view/common/EditDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/EditDialog;->showDialog()V

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

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAGIFEditorCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAGIFEditorCmd;->mUri:Landroid/net/Uri;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAGIFEditorCmd;->mFilePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartAGIFEditorCmd;->startAgifEditor()V

    return-void
.end method
