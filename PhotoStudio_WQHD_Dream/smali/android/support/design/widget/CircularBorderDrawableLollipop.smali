.class Landroid/support/design/widget/CircularBorderDrawableLollipop;
.super Landroid/support/design/widget/CircularBorderDrawable;
.source "CircularBorderDrawableLollipop.java"


# instance fields
.field private mTint:Landroid/content/res/ColorStateList;

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/design/widget/CircularBorderDrawable;-><init>()V

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/design/widget/CircularBorderDrawableLollipop;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method private updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/support/design/widget/CircularBorderDrawableLollipop;->getState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v1, p0, Landroid/support/design/widget/CircularBorderDrawableLollipop;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/CircularBorderDrawableLollipop;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/CircularBorderDrawableLollipop;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/design/widget/CircularBorderDrawableLollipop;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v0, 0x1

    :goto_0
    invoke-super {p0, p1}, Landroid/support/design/widget/CircularBorderDrawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/CircularBorderDrawableLollipop;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Landroid/support/design/widget/CircularBorderDrawableLollipop;->mTint:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/design/widget/CircularBorderDrawableLollipop;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/CircularBorderDrawableLollipop;->updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/CircularBorderDrawableLollipop;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/support/design/widget/CircularBorderDrawableLollipop;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iput-object p1, p0, Landroid/support/design/widget/CircularBorderDrawableLollipop;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/support/design/widget/CircularBorderDrawableLollipop;->mTint:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, p1}, Landroid/support/design/widget/CircularBorderDrawableLollipop;->updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/CircularBorderDrawableLollipop;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/support/design/widget/CircularBorderDrawableLollipop;->invalidateSelf()V

    return-void
.end method
