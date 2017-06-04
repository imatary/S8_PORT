.class public Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;
.super Landroid/widget/ImageView;
.source "CommonRoundIcon.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v6, 0x2

    sget-object v4, Lcom/sec/game/gamecast/common/R$styleable;->CommonRoundIcon:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    if-eqz v3, :cond_0

    sget v4, Lcom/sec/game/gamecast/common/R$styleable;->CommonRoundIcon_android_background:I

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v4, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {v4, v5, v6}, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {p0, v4}, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v4, Lcom/sec/game/gamecast/common/R$styleable;->CommonRoundIcon_android_src:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v4, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v5, v2}, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {p0, v4}, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method private static notifyDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 4

    instance-of v3, p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;

    if-eqz v3, :cond_1

    check-cast p0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;

    invoke-virtual {p0, p1}, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;->setIsDisplayed(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v3, p0, Lcom/sec/game/gamecast/common/utility/RecyclingBitmapDrawable;

    if-eqz v3, :cond_2

    check-cast p0, Lcom/sec/game/gamecast/common/utility/RecyclingBitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/sec/game/gamecast/common/utility/RecyclingBitmapDrawable;->setIsDisplayed(Z)V

    goto :goto_0

    :cond_2
    instance-of v3, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;->notifyDrawable(Landroid/graphics/drawable/Drawable;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    new-instance v0, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {p0, v0}, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;->notifyDrawable(Landroid/graphics/drawable/Drawable;Z)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;->notifyDrawable(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method
