.class public Landroid/support/v7/widget/AppCompatRatingBar;
.super Landroid/widget/RatingBar;
.source "AppCompatRatingBar.java"


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private mSampleTile:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/widget/AppCompatRatingBar;->TINT_ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x101013b
        0x101013c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/v7/appcompat/R$attr;->ratingBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-boolean v2, Landroid/support/v7/internal/widget/TintManager;->SHOULD_BE_USED:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatRatingBar;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/support/v7/widget/AppCompatRatingBar;->TINT_ATTRS:[I

    invoke-static {v2, p2, v3, p3, v4}, Landroid/support/v7/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/TintTypedArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Landroid/support/v7/widget/AppCompatRatingBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/AppCompatRatingBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1, v4}, Landroid/support/v7/widget/AppCompatRatingBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/AppCompatRatingBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/TintTypedArray;->recycle()V

    :cond_2
    return-void
.end method

.method private getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 13

    const/4 v11, 0x1

    instance-of v10, p1, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    if-eqz v10, :cond_2

    move-object v10, p1

    check-cast v10, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    invoke-interface {v10}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v5, p2}, Landroid/support/v7/widget/AppCompatRatingBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v10, p1

    check-cast v10, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    invoke-interface {v10, v5}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    move-object v6, p1

    :cond_1
    :goto_0
    return-object v6

    :cond_2
    instance-of v10, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v10, :cond_6

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    new-array v7, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_5

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v4

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const v10, 0x102000d

    if-eq v4, v10, :cond_3

    const v10, 0x102000f

    if-ne v4, v10, :cond_4

    :cond_3
    move v10, v11

    :goto_2
    invoke-direct {p0, v12, v10}, Landroid/support/v7/widget/AppCompatRatingBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    :cond_5
    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v6, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v10

    invoke-virtual {v6, v3, v10}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    instance-of v10, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v10, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    iget-object v10, p0, Landroid/support/v7/widget/AppCompatRatingBar;->mSampleTile:Landroid/graphics/Bitmap;

    if-nez v10, :cond_7

    iput-object v9, p0, Landroid/support/v7/widget/AppCompatRatingBar;->mSampleTile:Landroid/graphics/Bitmap;

    :cond_7
    new-instance v8, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatRatingBar;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v10, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v9, v10, v12}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    if-eqz p2, :cond_8

    new-instance v10, Landroid/graphics/drawable/ClipDrawable;

    const/4 v12, 0x3

    invoke-direct {v10, v8, v12, v11}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v8, v10

    :cond_8
    move-object v6, v8

    goto :goto_0
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/16 v7, 0x2710

    instance-of v5, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Landroid/support/v7/widget/AppCompatRatingBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    move-object p1, v4

    :cond_1
    return-object p1
.end method


# virtual methods
.method protected declared-synchronized onMeasure(II)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/RatingBar;->onMeasure(II)V

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatRatingBar;->mSampleTile:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatRatingBar;->mSampleTile:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatRatingBar;->getNumStars()I

    move-result v2

    mul-int v0, v1, v2

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatRatingBar;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/AppCompatRatingBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
