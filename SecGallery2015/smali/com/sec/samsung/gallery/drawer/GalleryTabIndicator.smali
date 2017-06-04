.class public Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;
.super Landroid/view/View;
.source "GalleryTabIndicator.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentPosition:I

.field private mCurrentPositionOffset:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mTabWidget:Landroid/widget/TabWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->mContext:Landroid/content/Context;

    const v1, 0x7f0202e6

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v5, p0, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->mTabWidget:Landroid/widget/TabWidget;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v5}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->mTabWidget:Landroid/widget/TabWidget;

    iget v6, p0, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->mCurrentPosition:I

    invoke-virtual {v5, v6}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v1, v5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v2, v5

    iget v5, p0, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->mCurrentPositionOffset:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->mCurrentPosition:I

    if-ge v5, v4, :cond_1

    sub-float v3, v2, v1

    iget v5, p0, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->mCurrentPositionOffset:F

    mul-float/2addr v5, v3

    add-float/2addr v1, v5

    iget v5, p0, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->mCurrentPositionOffset:F

    mul-float/2addr v5, v3

    add-float/2addr v2, v5

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->mDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v6, v1

    const/4 v7, 0x0

    float-to-int v8, v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->getHeight()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setCurrentPosition(I)V
    .locals 1

    iput p1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->mCurrentPosition:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->mCurrentPositionOffset:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->invalidate()V

    return-void
.end method

.method public setTabWidget(Landroid/widget/TabWidget;I)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->mTabWidget:Landroid/widget/TabWidget;

    iput p2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->mCurrentPosition:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->mCurrentPositionOffset:F

    return-void
.end method

.method public updateBottomIndicator(F)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->mCurrentPositionOffset:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->invalidate()V

    return-void
.end method
