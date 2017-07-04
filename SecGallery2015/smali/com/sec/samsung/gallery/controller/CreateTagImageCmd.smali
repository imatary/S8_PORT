.class public Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "CreateTagImageCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;
    }
.end annotation


# static fields
.field private static final KEY_ALTITUDE:Ljava/lang/String; = "Altitude"

.field private static final KEY_LOCALIZED_NAME:Ljava/lang/String; = "LocalizedName"

.field private static final KEY_RELATIVE_HUMIDITY:Ljava/lang/String; = "RelativeHumidity"

.field private static final KEY_TEMPERATURE:Ljava/lang/String; = "Temperature"

.field private static final KEY_UNIT:Ljava/lang/String; = "Unit"

.field private static final KEY_WEATHER:Ljava/lang/String; = "WeatherIcon"

.field private static final TAG:Ljava/lang/String; = "CreateTagImageCmd"

.field private static final UseTagShotAltitudeInfoEnabled:Z


# instance fields
.field private mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mImprintIconArray:Landroid/util/SparseIntArray;

.field private mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private mTagInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTagShotAltitudeInfo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->UseTagShotAltitudeInfoEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->getRotatedImage(Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->setImprintIconArray()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->drawTags(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->getOutputFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->saveFile(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->addSelectionMananger(Ljava/lang/String;)V

    return-void
.end method

.method private addSelectionMananger(Ljava/lang/String;)V
    .locals 6

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->getUriFrom(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v5, "jpg"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;Z)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    return-void
.end method

.method private drawTags(Landroid/graphics/Bitmap;)V
    .locals 33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->getWeatherIconImage()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v29

    const v30, 0x7f0200db

    invoke-static/range {v29 .. v30}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v0, v12}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v26

    const v29, 0x7f0b00ee

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v29, 0x7f0b00ed

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v29, 0x7f0b00f0

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    const v29, 0x7f0b00eb

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const v29, 0x7f0b00ec

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    sub-int v29, v29, v17

    sub-int v27, v29, v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const v30, 0x3f7851ec    # 0.97f

    mul-float v29, v29, v30

    int-to-float v0, v11

    move/from16 v30, v0

    sub-float v28, v29, v30

    move/from16 v13, v27

    int-to-float v0, v8

    move/from16 v29, v0

    sub-float v29, v28, v29

    int-to-float v0, v11

    move/from16 v30, v0

    sub-float v14, v29, v30

    new-instance v22, Landroid/graphics/Paint;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Paint;-><init>()V

    sget-object v29, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v29, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v29, 0x40000000    # 2.0f

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v29, -0x1000000

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v29, 0x4d

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    const/16 v29, 0xfa

    const/16 v30, 0xfa

    const/16 v31, 0xfa

    invoke-static/range {v29 .. v31}, Landroid/graphics/Color;->rgb(III)I

    move-result v29

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v29, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mTagInfo:Ljava/util/HashMap;

    move-object/from16 v29, v0

    const-string/jumbo v30, "LocalizedName"

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    sget-boolean v29, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->UseTagShotAltitudeInfoEnabled:Z

    if-eqz v29, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mTagInfo:Ljava/util/HashMap;

    move-object/from16 v29, v0

    const-string/jumbo v30, "Altitude"

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mTagInfo:Ljava/util/HashMap;

    move-object/from16 v29, v0

    const-string/jumbo v30, "Temperature"

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mTagInfo:Ljava/util/HashMap;

    move-object/from16 v29, v0

    const-string/jumbo v30, "Unit"

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mTagInfo:Ljava/util/HashMap;

    move-object/from16 v29, v0

    const-string/jumbo v30, "RelativeHumidity"

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string/jumbo v29, "null"

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_0

    const-string/jumbo v29, "null"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_0

    const-string/jumbo v29, "null"

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_0

    const-string/jumbo v29, "null"

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_0

    const-string/jumbo v29, "null"

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v4, ""

    goto :goto_0

    :cond_2
    if-eqz v15, :cond_0

    if-eqz v4, :cond_0

    if-eqz v23, :cond_0

    if-eqz v10, :cond_0

    if-eqz v25, :cond_0

    if-eqz v16, :cond_0

    if-eqz v26, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-lt v6, v5, :cond_3

    move/from16 v21, v5

    :goto_2
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v29, v0

    const v30, 0x453ac000    # 2988.0f

    div-float v29, v29, v30

    const/high16 v30, 0x44200000    # 640.0f

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v30, v30, v31

    mul-float v20, v29, v30

    int-to-float v0, v6

    move/from16 v29, v0

    int-to-float v0, v5

    move/from16 v30, v0

    const v31, 0x3f7851ec    # 0.97f

    mul-float v30, v30, v31

    move/from16 v0, v20

    move/from16 v1, v20

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    sget-boolean v29, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->UseTagShotAltitudeInfoEnabled:Z

    if-eqz v29, :cond_4

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " / "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "ft"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    sub-int v30, v13, v9

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v31, v31, v14

    const/high16 v32, 0x41200000    # 10.0f

    add-float v31, v31, v32

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    move-object/from16 v3, v18

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " / "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "ft"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    sub-int v30, v13, v9

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v31, v31, v14

    const/high16 v32, 0x41200000    # 10.0f

    add-float v31, v31, v32

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    move-object/from16 v3, v22

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_3
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v30, 0xb0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " / "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "%"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    sub-int v30, v27, v9

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v31, v31, v28

    const/high16 v32, 0x41200000    # 10.0f

    add-float v31, v31, v32

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    move-object/from16 v3, v22

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v30, 0xb0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " / "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "%"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    sub-int v30, v27, v9

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v31, v31, v28

    const/high16 v32, 0x41200000    # 10.0f

    add-float v31, v31, v32

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    move-object/from16 v3, v18

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    int-to-float v0, v13

    move/from16 v29, v0

    move-object/from16 v0, v16

    move/from16 v1, v29

    move-object/from16 v2, v18

    invoke-virtual {v7, v0, v1, v14, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v28

    move-object/from16 v3, v18

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_3
    move/from16 v21, v6

    goto/16 :goto_2

    :cond_4
    sub-int v29, v13, v9

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v30, v30, v14

    const/high16 v31, 0x41200000    # 10.0f

    add-float v30, v30, v31

    move/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v18

    invoke-virtual {v7, v15, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sub-int v29, v13, v9

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v30, v30, v14

    const/high16 v31, 0x41200000    # 10.0f

    add-float v30, v30, v31

    move/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v22

    invoke-virtual {v7, v15, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method private getOutputFilePath()Ljava/lang/String;
    .locals 7

    const-string/jumbo v2, ".jpg"

    const-string/jumbo v4, "tempFile"

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-object v6, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_withTag"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getRotatedImage(Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v2

    invoke-static {v1, v2, v4}, Lcom/sec/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
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
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "_data=?"

    const/4 v5, 0x0

    const-string/jumbo v6, "CreateTagImageCmd"

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

.method private getWeatherIconImage()I
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mTagInfo:Ljava/util/HashMap;

    const-string/jumbo v3, "WeatherIcon"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    const-string/jumbo v2, "CreateTagImageCmd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWeatherIconImage iconNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    return v2

    :cond_0
    const-string/jumbo v2, "CreateTagImageCmd"

    const-string/jumbo v3, "weather info is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveFile(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5f

    invoke-virtual {p2, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v1, v2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    const-string/jumbo v3, "CreateTagImageCmd"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v3

    :catchall_1
    move-exception v3

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private setImprintIconArray()V
    .locals 7

    const v6, 0x7f020387

    const v5, 0x7f020385

    const v2, 0x7f02037f

    const v4, 0x7f020386

    const v3, 0x7f020378

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    const v2, 0x7f02037b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    const v2, 0x7f020381

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xe

    const v2, 0x7f020381

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xf

    const v2, 0x7f020388

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    const v2, 0x7f020382

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x11

    const v2, 0x7f020382

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x12

    const v2, 0x7f020383

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x13

    const v2, 0x7f02037a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    const v2, 0x7f020380

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x15

    const v2, 0x7f020380

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x16

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x18

    const v2, 0x7f02037d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x19

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x1d

    const v2, 0x7f020384

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x1e

    const v2, 0x7f02037c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x1f

    const v2, 0x7f020379

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x20

    const v2, 0x7f020389

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x21

    const v2, 0x7f020377

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x22

    const v2, 0x7f02037e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x23

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x24

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x25

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x26

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x27

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x28

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x29

    const v2, 0x7f020388

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x2a

    const v2, 0x7f020388

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x2b

    const v2, 0x7f02037a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method private setImprintIconArrayMass()V
    .locals 7

    const v6, 0x7f020385

    const v2, 0x7f020387

    const v5, 0x7f020383

    const v4, 0x7f020386

    const v3, 0x7f020378

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    const v2, 0x7f02037f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    const v2, 0x7f020381

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    const v2, 0x7f020380

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xca

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x12e

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x12f

    const v2, 0x7f020384

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x15e

    const v2, 0x7f020388

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x1ae

    const v2, 0x7f02037a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x190

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x191

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x192

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x193

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x226

    const v2, 0x7f02037c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x352

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mImprintIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x373

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 6

    const/4 v4, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, [Ljava/lang/Object;

    aget-object v3, v1, v4

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->get(I)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v3, :cond_0

    const-string/jumbo v3, "CreateTagImageCmd"

    const-string/jumbo v4, "item is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v3, "image"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const-string/jumbo v3, "CreateTagImageCmd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mime type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/EnvironmentTagUtils;->getTagShotInfoFromSEFData(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mTagInfo:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mTagInfo:Ljava/util/HashMap;

    if-nez v3, :cond_3

    const-string/jumbo v3, "CreateTagImageCmd"

    const-string/jumbo v4, "taginfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;-><init>(Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$1;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
