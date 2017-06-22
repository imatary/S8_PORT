.class public Lcom/sec/android/mimage/photoretouching/agif/MyDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "MyDragShadowBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PEDIT_MyDragShadowBuilder"


# instance fields
.field private bmpHeight:I

.field private bmpWidth:I

.field private mContext:Landroid/content/Context;

.field private mShadowBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/agif/MyDragShadowBuilder;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MyDragShadowBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MyDragShadowBuilder;->mShadowBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MyDragShadowBuilder;->bmpWidth:I

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MyDragShadowBuilder;->bmpHeight:I

    :cond_0
    return-void
.end method

.method private dpToPx(F)I
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MyDragShadowBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MyDragShadowBuilder;->mShadowBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MyDragShadowBuilder;->mShadowBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MyDragShadowBuilder;->mShadowBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MyDragShadowBuilder;->bmpWidth:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MyDragShadowBuilder;->bmpHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MyDragShadowBuilder;->bmpWidth:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MyDragShadowBuilder;->bmpHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MyDragShadowBuilder;->bmpWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MyDragShadowBuilder;->bmpHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
