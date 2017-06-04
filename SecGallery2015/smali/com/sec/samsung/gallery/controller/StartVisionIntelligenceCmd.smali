.class public Lcom/sec/samsung/gallery/controller/StartVisionIntelligenceCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "StartVisionIntelligenceCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/StartVisionIntelligenceCmd$SceneType;,
        Lcom/sec/samsung/gallery/controller/StartVisionIntelligenceCmd$CMHScanStatus;
    }
.end annotation


# static fields
.field private static final LAUNCH_MODE_GALLERY:I = 0x1

.field private static final SCENE_QRBARCODE_INFO:I = 0x1

.field private static final SCENE_TAG_DATA:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VisionIntelligenceCmd"

.field private static final VISION_PACKAGE_NAME:Ljava/lang/String; = "samsung.intentfilter.visionintelligence.image"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private sendResponseStartVisionForDC()V
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string/jumbo v1, "CrossVisionIntelligenceVisionIntelligenceDetected"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "BixbyVision"

    const-string/jumbo v2, "IsOn"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartVisionIntelligenceCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "CrossVisionIntelligenceVisionIntelligenceDetected"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void
.end method

.method private startVisionIntelligence(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 5

    const-string/jumbo v3, "VisionIntelligenceCmd"

    const-string/jumbo v4, "start VisionIntelligence"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "samsung.intentfilter.visionintelligence.image"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "IMAGE_FILE_PATH"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "LAUNCH_MODE"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "CMH_SCAN"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartVisionIntelligenceCmd;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartVisionIntelligenceCmd;->sendResponseStartVisionForDC()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartVisionIntelligenceCmd;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "4021"

    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "VisionIntelligenceCmd"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startVisionIntelligenceForObject(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/graphics/RectF;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const-string/jumbo v4, "VisionIntelligenceCmd"

    const-string/jumbo v5, "start startVisionIntelligenceForObject"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    if-eqz p3, :cond_1

    :try_start_0
    const-string/jumbo v4, ";"

    const/4 v5, 0x2

    invoke-virtual {p3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "samsung.intentfilter.visionintelligence.image"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "IMAGE_FILE_PATH"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "LAUNCH_MODE"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v3, :cond_2

    array-length v4, v3

    if-lez v4, :cond_2

    const-string/jumbo v4, "RECT_TYPE"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget v4, p2, Landroid/graphics/RectF;->left:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    iget v4, p2, Landroid/graphics/RectF;->left:F

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    iput v4, p2, Landroid/graphics/RectF;->left:F

    :cond_3
    const-string/jumbo v4, "RECT_LEFT"

    iget v5, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string/jumbo v4, "RECT_TOP"

    iget v5, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string/jumbo v4, "RECT_RIGHT"

    iget v5, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string/jumbo v4, "RECT_BOTTOM"

    iget v5, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string/jumbo v4, "CMH_SCAN"

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->getCMHDone(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v3, :cond_5

    array-length v4, v3

    if-lez v4, :cond_5

    const-string/jumbo v4, "Documents"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "SCENE_TYPE"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1
    if-eqz v3, :cond_4

    array-length v4, v3

    if-le v4, v6, :cond_4

    const-string/jumbo v4, "CODE_TEXT"

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartVisionIntelligenceCmd;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const/16 v5, 0x311

    invoke-virtual {v4, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartVisionIntelligenceCmd;->sendResponseStartVisionForDC()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartVisionIntelligenceCmd;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "4014"

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "VisionIntelligenceCmd"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    if-eqz v3, :cond_6

    :try_start_1
    array-length v4, v3

    if-lez v4, :cond_6

    const-string/jumbo v4, "Scenery"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "SCENE_TYPE"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_6
    const-string/jumbo v4, "SCENE_TYPE"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 10

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v2, v5

    check-cast v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v5, v2, v5

    check-cast v5, Landroid/app/Activity;

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/StartVisionIntelligenceCmd;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    aget-object v1, v2, v5

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v5, 0x2

    aget-object v0, v2, v5

    check-cast v0, Ljava/lang/Boolean;

    const/4 v5, 0x3

    aget-object v3, v2, v5

    check-cast v3, Landroid/graphics/RectF;

    const/4 v5, 0x4

    aget-object v4, v2, v5

    check-cast v4, Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartVisionIntelligenceCmd;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "0139"

    const/4 v5, 0x5

    aget-object v5, v2, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v8, v5

    invoke-static {v6, v7, v8, v9}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v1, v3, v4}, Lcom/sec/samsung/gallery/controller/StartVisionIntelligenceCmd;->startVisionIntelligenceForObject(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/graphics/RectF;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/controller/StartVisionIntelligenceCmd;->startVisionIntelligence(Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0
.end method
