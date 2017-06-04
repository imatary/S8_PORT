.class public Lcom/sec/samsung/gallery/controller/StartVisualSearchFaceTagCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "StartVisualSearchFaceTagCmd.java"


# static fields
.field private static final EVENT_EDIT_NAME:I = 0x0

.field private static final REQUEST_FACE_TAG:I = 0xc70


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 8

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v5, v6

    check-cast v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v0, v5, v6

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v6, 0x1

    aget-object v6, v5, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v6, 0x2

    aget-object v3, v5, v6

    check-cast v3, Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v2, v5, v6

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    new-instance v4, Landroid/content/Intent;

    if-nez v1, :cond_0

    const-class v6, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;

    :goto_0
    invoke-direct {v4, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v6, "FACE_ITEM_NAME"

    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "FACE_ITEM_PATH"

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "FACE_ITEM_RECT"

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getFaceRect(Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v6, "FACE_ITEM_ROTATION"

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v6

    invoke-static {v4, v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;Z)V

    const/16 v6, 0xc70

    invoke-virtual {v0, v4, v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const-string/jumbo v6, "313"

    const-string/jumbo v7, "4721"

    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-class v6, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/RegisteredNameTagActivity;

    goto :goto_0
.end method
