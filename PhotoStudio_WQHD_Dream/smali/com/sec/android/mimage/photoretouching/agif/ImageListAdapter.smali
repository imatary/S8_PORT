.class public Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;
.super Ljava/lang/Object;
.source "ImageListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PEDIT_ImageListAdapter"

.field private static inflater:Landroid/view/LayoutInflater;


# instance fields
.field public activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

.field public deleteClickTime:J

.field private deleteLongClicked:Z

.field public imageLoader:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

.field private imageLongClickListener:Landroid/view/View$OnLongClickListener;

.field itemsAddMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;",
            ">;"
        }
    .end annotation
.end field

.field itemsPlayMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNoOfBitmapLoaded:I

.field private viewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->deleteClickTime:J

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->deleteLongClicked:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->mNoOfBitmapLoaded:I

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$1;-><init>(Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->imageLongClickListener:Landroid/view/View$OnLongClickListener;

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->viewWidth:I

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->inflater:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;-><init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->imageLoader:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->createScaledImageBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->deleteLongClicked:Z

    return p1
.end method

.method private calculateImageDstRect(IIIII)Landroid/graphics/Rect;
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x2

    if-ne p5, v2, :cond_1

    int-to-float v2, p1

    int-to-float v3, p2

    div-float v1, v2, v3

    int-to-float v2, p3

    int-to-float v3, p4

    div-float v0, v2, v3

    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    int-to-float v3, p3

    div-float/2addr v3, v1

    float-to-int v3, v3

    invoke-direct {v2, v4, v4, p3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    int-to-float v3, p4

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-direct {v2, v4, v4, v3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4, v4, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method private calculateImageSrcRect(IIIII)Landroid/graphics/Rect;
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x1

    if-ne p5, v6, :cond_1

    int-to-float v6, p1

    int-to-float v7, p2

    div-float v1, v6, v7

    int-to-float v6, p3

    int-to-float v7, p4

    div-float v0, v6, v7

    cmpl-float v6, v1, v0

    if-lez v6, :cond_0

    int-to-float v6, p2

    mul-float/2addr v6, v0

    float-to-int v5, v6

    sub-int v6, p1, v5

    div-int/lit8 v4, v6, 0x2

    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v4, v5

    invoke-direct {v6, v4, v8, v7, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v6

    :cond_0
    int-to-float v6, p1

    div-float/2addr v6, v0

    float-to-int v2, v6

    sub-int v6, p2, v2

    div-int/lit8 v3, v6, 0x2

    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v2

    invoke-direct {v6, v8, v3, p1, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v8, v8, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method private createScaledImageBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->calculateImageSrcRect(IIIII)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->calculateImageDstRect(IIIII)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v6, p1, v9, v7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v8
.end method


# virtual methods
.method public add(ILcom/sec/android/mimage/photoretouching/agif/BitmapInfo;Z)V
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->mNoOfBitmapLoaded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->mNoOfBitmapLoaded:I

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->mNoOfBitmapLoaded:I

    invoke-virtual {p2, v0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->setFileHandler(I)V

    iget-object v0, p2, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->imageLoader:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    iget-object v1, p2, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p3}, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->displayImage(Ljava/lang/String;IZ)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->setCommited(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->imageLoader:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    iget-object v1, p2, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1, p3}, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->displayImage(Landroid/net/Uri;IZ)V

    goto :goto_0
.end method

.method public add(Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;Z)V
    .locals 3

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->mNoOfBitmapLoaded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->mNoOfBitmapLoaded:I

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->mNoOfBitmapLoaded:I

    invoke-virtual {p1, v0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->setFileHandler(I)V

    iget-object v0, p1, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->imageLoader:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    iget-object v1, p1, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2, p2}, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->displayImage(Ljava/lang/String;IZ)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->setCommited(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->imageLoader:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    iget-object v1, p1, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2, p2}, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->displayImage(Landroid/net/Uri;IZ)V

    goto :goto_0
.end method

.method public deleteLongPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->deleteLongClicked:Z

    return v0
.end method

.method public deletePostAnim(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v5, 0x7f0e00d4

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object v2, v5

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->getIndexFromBitmapAsItIs(Landroid/graphics/Bitmap;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v5, v7}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setSaveEnabled(Z)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->isCommited()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifChanged()V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v5, v8}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setSaveEnabled(Z)V

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->isMarkedForDelete()Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v5, v8}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->setMarkedForDelete(Z)V

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-gt v5, v8, :cond_0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v5, v7}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setSaveEnabled(Z)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doneButtonLayout:Landroid/widget/LinearLayout;

    const v6, 0x3e99999a    # 0.3f

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doneButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto/16 :goto_0
.end method

.method public destroy()V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->imageLoader:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->imageLoader:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->destroy()V

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->imageLoader:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    :cond_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    if-eqz v3, :cond_1

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    :cond_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->destroy()V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    :cond_3
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->destroy()V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    :cond_5
    return-void
.end method

.method public getActualndexFromVirtualIndex(I)I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->isMarkedForDelete()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ne v1, p1, :cond_1

    :goto_2
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method

.method public getIndexFromBitmap(Landroid/graphics/Bitmap;)I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->isMarkedForDelete()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v2, p1, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-ne v2, p1, :cond_0

    :goto_2
    return v1

    :cond_3
    const/4 v1, -0x1

    goto :goto_2
.end method

.method public getIndexFromBitmapAsItIs(Landroid/graphics/Bitmap;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getItem(I)Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 25

    move-object/from16 v20, p2

    if-nez p2, :cond_0

    sget-object v22, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v23, 0x7f030037

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    :cond_0
    const/high16 v3, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    move-object/from16 v22, v0

    sget-object v23, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->aOrig:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v22

    if-nez v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->filePath:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    const/4 v4, 0x0

    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->filePath:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-object/from16 v0, v16

    iget v13, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v16

    iget v12, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v13

    move/from16 v22, v0

    int-to-float v0, v12

    move/from16 v23, v0

    div-float v3, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->filePath:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->getRotateDegree(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v22, 0x0

    cmpl-float v22, v19, v22

    if-eqz v22, :cond_1

    const/high16 v22, 0x3f800000    # 1.0f

    div-float v3, v22, v3

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isPortrait()Z

    move-result v22

    if-eqz v22, :cond_c

    :goto_1
    const v22, 0x7f0e00d4

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    const v22, 0x7f0e00d5

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    const v22, 0x7f0e00d6

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->setHovering(Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, v22

    iput-object v15, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mainImageView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->filePath:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->filePath:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->filePath:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->filePath:Ljava/lang/String;

    move-object/from16 v22, v0

    add-int/lit8 v23, v7, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mainImageView:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->imageLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v22, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$2;-><init>(Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v22, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$3;-><init>(Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;Landroid/widget/FrameLayout;)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v14, v0, [I

    invoke-virtual {v5, v14}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    new-instance v22, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$4;-><init>(Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v22, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$5;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$5;-><init>(Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;)V

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v22, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$6;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$6;-><init>(Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->imageLoader:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    move-object/from16 v22, v0

    const v23, 0x7f020456

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->displayImage(ILandroid/widget/Button;)V

    return-object v20

    :cond_3
    const/4 v4, 0x0

    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->uri:Landroid/net/Uri;

    move-object/from16 v22, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-object/from16 v0, v16

    iget v13, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v16

    iget v12, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v13

    move/from16 v22, v0

    int-to-float v0, v12

    move/from16 v23, v0

    div-float v3, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->uri:Landroid/net/Uri;

    move-object/from16 v22, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->getRotateDegree(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v22, 0x0

    cmpl-float v22, v19, v22

    if-eqz v22, :cond_1

    const/high16 v22, 0x3f800000    # 1.0f

    div-float v3, v22, v3

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v3, v23, v22

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    move-object/from16 v22, v0

    sget-object v23, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a4_3:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_6

    const v3, 0x3faaaaab

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    move-object/from16 v22, v0

    sget-object v23, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a1_1:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_7

    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    move-object/from16 v22, v0

    sget-object v23, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a16_9:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isScreenRatio1610(Landroid/content/Context;)Z

    move-result v22

    if-nez v22, :cond_8

    const v3, 0x3fe38e39

    goto/16 :goto_0

    :cond_8
    const v3, 0x3fcccccd    # 1.6f

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    move-object/from16 v22, v0

    sget-object v23, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a3_4:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_a

    const/high16 v3, 0x3f400000    # 0.75f

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    move-object/from16 v22, v0

    sget-object v23, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a_9_16:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isScreenRatio1610(Landroid/content/Context;)Z

    move-result v22

    if-nez v22, :cond_b

    const/high16 v3, 0x3f100000    # 0.5625f

    goto/16 :goto_0

    :cond_b
    const/high16 v3, 0x3f200000    # 0.625f

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v22, v0

    const/16 v23, 0xf0

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->dpToPx(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v22, v0

    const/16 v23, 0xf0

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->dpToPx(I)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v3

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->viewWidth:I

    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-direct {v0, v1, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v22, 0xf

    const/16 v23, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->uri:Landroid/net/Uri;

    move-object/from16 v22, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    const-string v22, "/"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const-string v22, "."

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v22, v7, 0x1

    move/from16 v0, v22

    invoke-virtual {v8, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mainImageView:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public getViewWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->viewWidth:I

    return v0
.end method

.method public removeAgifImage(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->destroy()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v0, "PEDIT_ImageListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Play Mode Size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PEDIT_ImageListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ADD Mode Size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeAllAgifImage()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->destroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public runDeleteAnim(Landroid/view/View;)V
    .locals 13

    const v12, 0x3f4ccccd    # 0.8f

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const-string v4, "translationX"

    new-array v5, v10, [F

    aput v11, v5, v8

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->dpToPx(I)I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const-string v4, "translationY"

    new-array v5, v10, [F

    aput v11, v5, v8

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->dpToPx(I)I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v3, v10, [Landroid/animation/Animator;

    aput-object v1, v3, v8

    aput-object v2, v3, v9

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleY(F)V

    new-instance v3, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$7;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$7;-><init>(Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public runDeleteAnimLongPress(Landroid/view/View;)V
    .locals 12

    const/4 v11, 0x5

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const-string v4, "translationX"

    new-array v5, v9, [F

    aput v10, v5, v7

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v6, v11}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->dpToPx(I)I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const-string v4, "translationY"

    new-array v5, v9, [F

    aput v10, v5, v7

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v6, v11}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->dpToPx(I)I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v3, v9, [Landroid/animation/Animator;

    aput-object v1, v3, v7

    aput-object v2, v3, v8

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public shutDownExecutor()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->imageLoader:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    instance-of v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->imageLoader:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->shutDownExecutor()V

    :cond_0
    return-void
.end method

.method public swapAgifImage(II)V
    .locals 5

    if-eq p1, p2, :cond_0

    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p2, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    const-string v3, "PEDIT_ImageListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filePath  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    const-string v3, "PEDIT_ImageListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filePath  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
