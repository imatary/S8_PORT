.class public Lcom/sec/samsung/gallery/util/SmartClipUtil;
.super Ljava/lang/Object;
.source "SmartClipUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartClipUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/util/SmartClipUtil;->getCurrentImageRect(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentImageRect(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 16

    const/4 v6, 0x0

    move-object/from16 v9, p1

    if-nez v9, :cond_0

    const-string/jumbo v12, "SmartClipUtil"

    const-string/jumbo v13, "currnet image rect is null"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    :goto_0
    return-object v12

    :cond_0
    move-object/from16 v8, p2

    invoke-static/range {p0 .. p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v5

    iget v3, v5, Landroid/graphics/Point;->x:I

    iget v2, v5, Landroid/graphics/Point;->y:I

    sget-object v12, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v12}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v12

    invoke-interface {v12}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v12

    invoke-interface {v12}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v12

    if-eqz v12, :cond_3

    sget v12, Lcom/sec/samsung/gallery/lib/factory/MultiWindowFactory;->ZONE_B:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v13

    invoke-interface {v13}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v13

    invoke-interface {v13}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->getZoneInfo()I

    move-result v13

    if-ne v12, v13, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    iget v12, v8, Landroid/graphics/Rect;->right:I

    sub-int v12, v3, v12

    iget v13, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v13

    int-to-float v4, v12

    iget v12, v8, Landroid/graphics/Rect;->right:I

    sub-int v12, v3, v12

    iget v13, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    int-to-float v10, v12

    new-instance v6, Landroid/graphics/Rect;

    float-to-int v12, v4

    iget v13, v9, Landroid/graphics/Rect;->top:I

    float-to-int v14, v10

    iget v15, v9, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v6, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v6

    :goto_1
    if-eqz v7, :cond_4

    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p3

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v12, v13, v14, v15}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v12

    if-eqz v12, :cond_4

    iget v12, v7, Landroid/graphics/Rect;->left:I

    if-ltz v12, :cond_5

    iget v12, v7, Landroid/graphics/Rect;->right:I

    if-lt v12, v3, :cond_5

    iget v12, v7, Landroid/graphics/Rect;->top:I

    if-ltz v12, :cond_5

    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    if-lt v12, v2, :cond_5

    new-instance v6, Landroid/graphics/Rect;

    iget v12, v7, Landroid/graphics/Rect;->left:I

    iget v13, v7, Landroid/graphics/Rect;->top:I

    iget v14, v7, Landroid/graphics/Rect;->left:I

    sub-int v14, v3, v14

    iget v15, v7, Landroid/graphics/Rect;->top:I

    sub-int v15, v2, v15

    invoke-direct {v6, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_2
    move-object v12, v6

    goto/16 :goto_0

    :cond_1
    iget v12, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v12, v2, v12

    iget v13, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v13

    int-to-float v11, v12

    iget v12, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v12, v2, v12

    iget v13, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v13

    int-to-float v1, v12

    new-instance v6, Landroid/graphics/Rect;

    iget v12, v9, Landroid/graphics/Rect;->left:I

    float-to-int v13, v11

    iget v14, v9, Landroid/graphics/Rect;->right:I

    float-to-int v15, v1

    invoke-direct {v6, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v6

    goto :goto_1

    :cond_2
    new-instance v6, Landroid/graphics/Rect;

    iget v12, v9, Landroid/graphics/Rect;->left:I

    iget v13, v9, Landroid/graphics/Rect;->top:I

    iget v14, v9, Landroid/graphics/Rect;->right:I

    iget v15, v9, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v6, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v6

    goto :goto_1

    :cond_3
    new-instance v6, Landroid/graphics/Rect;

    iget v12, v9, Landroid/graphics/Rect;->left:I

    iget v13, v9, Landroid/graphics/Rect;->top:I

    iget v14, v9, Landroid/graphics/Rect;->right:I

    iget v15, v9, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v6, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v6

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    move-object v12, v6

    move-object v6, v7

    goto/16 :goto_0

    :cond_5
    move-object v6, v7

    goto :goto_2

    :cond_6
    move-object v7, v6

    goto :goto_1
.end method
