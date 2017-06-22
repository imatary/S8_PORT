.class public Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView;
.super Landroid/widget/ImageView;
.source "IconImageView.java"


# instance fields
.field private mIconBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView;->mIconBitmap:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView;->mIconBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView;->mIconBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private recycleBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView;->recycleBitmap()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setIconBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v2, 0x1

    const/16 v1, 0x94

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView;->recycleBitmap()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView;->mIconBitmap:Landroid/graphics/Bitmap;

    :goto_0
    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView$1;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-static {p1, v1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView;->mIconBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
