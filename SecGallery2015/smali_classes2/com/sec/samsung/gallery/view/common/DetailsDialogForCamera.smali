.class public Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;
.super Lcom/sec/samsung/gallery/view/common/DetailsDialog;
.source "DetailsDialogForCamera.java"


# static fields
.field public static final BASE_DETAIL_INDEX:[I

.field private static final BASE_DETAIL_RESOURCE_ID:[I

.field private static final GRAY_B_WEIGHT:F = 0.072169f

.field private static final GRAY_G_WEIGHT:F = 0.71516f

.field private static final GRAY_R_WEIGHT:F = 0.212671f

.field private static final HISTOGRAM_HEIGHT:I = 0x64

.field private static final HISTOGRAM_LEVEL_COUNT:I = 0x100

.field private static final HISTOGRAM_WIDTH:I = 0x100


# instance fields
.field private mDetailsView:Landroid/view/ViewGroup;

.field private mLoadBitmapTask:Lcom/sec/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x5

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->BASE_DETAIL_INDEX:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->BASE_DETAIL_RESOURCE_ID:[I

    return-void

    :array_0
    .array-data 4
        0x68
        0x6d
        0x66
        0x67
        0x6a
    .end array-data

    :array_1
    .array-data 4
        0x7f1200bd
        0x7f1200be
        0x7f1200bf
        0x7f1200c0
        0x7f1200c1
    .end array-data
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/sec/samsung/gallery/view/common/DetailsDialog;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->mLoadBitmapTask:Lcom/sec/android/gallery3d/util/Future;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->mDetailsView:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    new-instance v0, Lcom/sec/samsung/gallery/controller/DetailModel;

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/sec/samsung/gallery/controller/DetailModel;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaDetails;)V

    sget-object v1, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->BASE_DETAIL_INDEX:[I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/controller/DetailModel;->addIgnores([I)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/controller/DetailModel;->toStringList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->setContensList(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->createHistogramImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->onThumbnailRequested(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private createHistogramImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    const/16 v0, 0x100

    const/16 v1, 0x64

    const/4 v2, -0x1

    invoke-static {p1, v0, v1, v2}, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->createHistogramImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createHistogramImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 25

    if-nez p0, :cond_0

    const/16 v16, 0x0

    :goto_0
    return-object v16

    :cond_0
    const/16 v2, 0x100

    new-array v12, v2, [I

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v2, v5, v9

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/16 v19, 0x0

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    aget v21, v3, v2

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v21

    and-int/lit16 v13, v0, 0xff

    move/from16 v0, v21

    and-int/lit16 v10, v0, 0xff

    const v6, 0x3e59c66d

    move/from16 v0, v23

    int-to-float v7, v0

    mul-float/2addr v6, v7

    const v7, 0x3f3714ba

    int-to-float v8, v13

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    const v7, 0x3d93cd57

    int-to-float v8, v10

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v14

    rem-int/lit16 v0, v14, 0x100

    move/from16 v17, v0

    aget v6, v12, v17

    add-int/lit8 v6, v6, 0x1

    aput v6, v12, v17

    aget v6, v12, v17

    move/from16 v0, v19

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    new-instance v11, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v2, 0x400

    new-array v0, v2, [F

    move-object/from16 v18, v0

    move/from16 v0, p1

    int-to-float v2, v0

    const/high16 v4, 0x43800000    # 256.0f

    div-float v24, v2, v4

    const/16 v17, 0x0

    :goto_2
    const/16 v2, 0x100

    move/from16 v0, v17

    if-ge v0, v2, :cond_2

    aget v2, v12, v17

    mul-int v2, v2, p2

    div-int v15, v2, v19

    mul-int/lit8 v20, v17, 0x4

    move/from16 v0, v17

    int-to-float v2, v0

    mul-float v2, v2, v24

    aput v2, v18, v20

    add-int/lit8 v2, v20, 0x1

    move/from16 v0, p2

    int-to-float v4, v0

    aput v4, v18, v2

    add-int/lit8 v2, v20, 0x2

    move/from16 v0, v17

    int-to-float v4, v0

    mul-float v4, v4, v24

    aput v4, v18, v2

    add-int/lit8 v2, v20, 0x3

    sub-int v4, p2, v15

    int-to-float v4, v4

    aput v4, v18, v2

    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_2
    new-instance v22, Landroid/graphics/Paint;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private onDialogForAdvance()Landroid/app/Dialog;
    .locals 8

    const/4 v5, 0x0

    const/16 v7, 0x400

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v6, 0x7f040051

    move-object v4, v5

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    const v4, 0x7f04004e

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->mDetailsView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->mDetailsView:Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v4}, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->setupView(Landroid/widget/ListView;Landroid/view/ViewGroup;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0116

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera$2;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera$2;-><init>(Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x10100

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Landroid/view/Window;->setFlags(II)V

    return-object v1
.end method

.method private onThumbnailRequested(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 4

    const v3, 0x7f1200bb

    const v2, 0x7f1200b9

    const/16 v1, 0x8

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->mLoadBitmapTask:Lcom/sec/android/gallery3d/util/Future;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->mDetailsView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->mDetailsView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->mDetailsView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->mDetailsView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private static setupBaseInfoView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sec/android/gallery3d/data/MediaDetails;II)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2, p3}, Lcom/sec/android/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0, p3, v1}, Lcom/sec/samsung/gallery/controller/DetailModel;->getDetailValue(Landroid/content/Context;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x66

    if-ne p3, v3, :cond_2

    const-string/jumbo v3, "--"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "F "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "%.1f"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    :goto_1
    move v5, v3

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_1
.end method

.method private setupView(Landroid/widget/ListView;Landroid/view/ViewGroup;)V
    .locals 11

    const v10, 0x7f1200ba

    const v9, 0x7f0a0496

    const/16 v8, 0x6b

    const/16 v7, 0x8

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v4, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->BASE_DETAIL_INDEX:[I

    array-length v4, v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->BASE_DETAIL_INDEX:[I

    aget v5, v5, v2

    sget-object v6, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->BASE_DETAIL_RESOURCE_ID:[I

    aget v6, v6, v2

    invoke-static {v4, p2, v0, v5, v6}, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->setupBaseInfoView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sec/android/gallery3d/data/MediaDetails;II)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v8, v5}, Lcom/sec/samsung/gallery/controller/DetailModel;->getDetailValue(Landroid/content/Context;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {p2, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, p2, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    if-nez v1, :cond_4

    const v4, 0x7f1200bc

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    const v4, 0x7f040050

    invoke-virtual {p0, p1, v4}, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->initDetailList(Landroid/widget/ListView;I)V

    return-void
.end method


# virtual methods
.method protected onCreateDialog()Landroid/app/Dialog;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->onDialogForAdvance()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDialogDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->mLoadBitmapTask:Lcom/sec/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->mLoadBitmapTask:Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/util/Future;->cancel()V

    :cond_0
    invoke-super {p0}, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->onDialogDismiss()V

    return-void
.end method

.method public showDialog()V
    .locals 3

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->showDialog()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getAppContext()Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    new-instance v2, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera$1;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera$1;-><init>(Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->mLoadBitmapTask:Lcom/sec/android/gallery3d/util/Future;

    return-void
.end method
