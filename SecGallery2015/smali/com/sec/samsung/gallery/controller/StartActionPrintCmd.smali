.class public Lcom/sec/samsung/gallery/controller/StartActionPrintCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "StartActionPrintCmd.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    const-class v0, Lcom/sec/samsung/gallery/controller/StartActionPrintCmd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/StartActionPrintCmd;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 9

    const/4 v8, 0x1

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v5, v7

    check-cast v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v0, v5, v7

    check-cast v0, Landroid/app/Activity;

    aget-object v4, v5, v8

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v6, Landroid/support/v4/print/PrintHelper;

    invoke-direct {v6, v0}, Landroid/support/v4/print/PrintHelper;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v6, v7}, Landroid/support/v4/print/PrintHelper;->setScaleMode(I)V

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/support/v4/print/PrintHelper;->printBitmap(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/StartActionPrintCmd;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Error printing an image"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
