.class Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;
.super Landroid/graphics/drawable/InsetDrawable;
.source "Unknown"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideDrawable"
.end annotation


# instance fields
.field private final mHasMirroring:Z

.field private mOffset:F

.field private mPosition:F

.field private final mTmpRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/support/v4/app/ActionBarDrawerToggle;


# direct methods
.method private constructor <init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->this$0:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-direct {p0, p2, v0}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-gt v1, v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mHasMirroring:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;Landroid/support/v4/app/ActionBarDrawerToggle$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->this$0:Landroid/support/v4/app/ActionBarDrawerToggle;

    # getter for: Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Landroid/support/v4/app/ActionBarDrawerToggle;->access$400(Landroid/support/v4/app/ActionBarDrawerToggle;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    if-eq v2, v0, :cond_1

    :goto_0
    if-nez v1, :cond_2

    :goto_1
    iget-object v2, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mOffset:F

    neg-float v3, v3

    int-to-float v4, v2

    mul-float/2addr v3, v4

    iget v4, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F

    mul-float/2addr v3, v4

    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    if-nez v1, :cond_3

    :cond_0
    :goto_2
    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mHasMirroring:Z

    if-nez v0, :cond_0

    int-to-float v0, v2

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_2
.end method

.method public getPosition()F
    .locals 1

    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F

    return v0
.end method

.method public setOffset(F)V
    .locals 0

    iput p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mOffset:F

    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->invalidateSelf()V

    return-void
.end method

.method public setPosition(F)V
    .locals 0

    iput p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F

    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->invalidateSelf()V

    return-void
.end method
