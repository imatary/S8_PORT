.class public Lcom/sec/samsung/gallery/controller/PlaySequenceCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "PlaySequenceCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# static fields
.field private static final GOLFSHOT_COMPONENT_NAME:Ljava/lang/String; = "com.stri.golfviewer.MainActivity"

.field private static final GOLFSHOT_PACKAGE_NAME:Ljava/lang/String; = "com.stri.golfviewer"

.field private static final SEQUENCESHOT_COMPONENT_NAME:Ljava/lang/String; = "com.sec.android.app.sequenceviewer.SequenceviewerMainActivity"

.field private static final SEQUENCESHOT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.camera.shootingmode.sequence"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private startGolfActivity(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 7

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.stri.golfviewer"

    const-string/jumbo v6, "com.stri.golfviewer.MainActivity"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/PlaySequenceCmd;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/PlaySequenceCmd;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryActivity;->disableFinishingAtSecureLock()V

    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/PlaySequenceCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/PlaySequenceCmd;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0029

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private startSequenceViewer(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 6

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v4, "PlaySequenceCmd"

    const-string/jumbo v5, "play sequence"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/PlaySequenceCmd;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/PlaySequenceCmd;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryActivity;->disableFinishingAtSecureLock()V

    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.sec.android.app.camera.shootingmode.sequence"

    const-string/jumbo v5, "com.sec.android.app.sequenceviewer.SequenceviewerMainActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/PlaySequenceCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/PlaySequenceCmd;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0029

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 4

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Landroid/app/Activity;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/PlaySequenceCmd;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    aget-object v0, v1, v2

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/32 v2, 0x40000

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/controller/PlaySequenceCmd;->startSequenceViewer(Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x80

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/controller/PlaySequenceCmd;->startGolfActivity(Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0
.end method
