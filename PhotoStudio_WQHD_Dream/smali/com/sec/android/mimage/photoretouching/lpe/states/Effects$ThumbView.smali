.class public Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;
.super Landroid/view/View;
.source "Effects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbView"
.end annotation


# instance fields
.field private bgSet:Z

.field private mThumb:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->bgSet:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->mThumb:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->mThumb:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public getImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->mThumb:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->bgSet:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->mThumb:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->bgSet:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->mThumb:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->mThumb:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->bgSet:Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbView;->postInvalidate()V

    return-void
.end method
