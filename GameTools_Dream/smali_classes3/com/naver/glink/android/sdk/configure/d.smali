.class public Lcom/naver/glink/android/sdk/configure/d;
.super Ljava/lang/Object;
.source "SdkTheme.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/configure/d$a;
    }
.end annotation


# instance fields
.field public final a:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public final b:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private final c:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private d:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/configure/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "#19d3c6"

    :goto_0
    const-string/jumbo v1, "#44484e"

    invoke-direct {p0, v0, v1}, Lcom/naver/glink/android/sdk/configure/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "#00c73c"

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/configure/d;->a:I

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/configure/d;->a(I)I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/configure/d;->c:I

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/configure/d;->b:I

    return-void
.end method

.method private a()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private a(II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method private a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$drawable;->floating_button_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v0, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/naver/glink/android/sdk/configure/d;->a:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-object v1
.end method

.method private b()Landroid/content/res/ColorStateList;
    .locals 1

    const/high16 v0, -0x1000000

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/configure/d;->d(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private b(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/16 v0, 0xff

    invoke-direct {p0, p1, v0}, Lcom/naver/glink/android/sdk/configure/d;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private c(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private d(I)Landroid/content/res/ColorStateList;
    .locals 8
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v7, [[I

    new-array v2, v5, [I

    const v3, 0x10102fe

    aput v3, v2, v4

    aput-object v2, v1, v4

    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    aput-object v2, v1, v5

    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    aput-object v2, v1, v6

    new-array v2, v7, [I

    iget v3, p0, Lcom/naver/glink/android/sdk/configure/d;->a:I

    aput v3, v2, v4

    iget v3, p0, Lcom/naver/glink/android/sdk/configure/d;->a:I

    aput v3, v2, v5

    aput p1, v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method private g(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(Landroid/view/View;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/configure/d;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/naver/glink/android/sdk/R$drawable;->empty_rectangle_background_pressed:I

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/configure/d;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v0, Lcom/naver/glink/android/sdk/R$drawable;->empty_rectangle_background:I

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/configure/d;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    instance-of v0, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget v3, p0, Lcom/naver/glink/android/sdk/configure/d;->c:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_2
    instance-of v0, v2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_3

    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v3

    iget v4, p0, Lcom/naver/glink/android/sdk/configure/d;->a:I

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_3
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const v5, 0x10100a7

    aput v5, v3, v4

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-static {p1, v0}, Lcom/naver/glink/android/sdk/a/v;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(I)I
    .locals 3
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/naver/glink/android/sdk/configure/d;->a:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, Lcom/naver/glink/android/sdk/configure/d;->a:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget v2, p0, Lcom/naver/glink/android/sdk/configure/d;->a:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/res/Resources;ILandroid/widget/ImageView;)V
    .locals 7

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/configure/d;->d:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/d;->d:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/configure/d;->d:Landroid/util/SparseIntArray;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->float_menu:I

    sget v2, Lcom/naver/glink/android/sdk/R$drawable;->gl_icon_close_normal:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/configure/d;->d:Landroid/util/SparseIntArray;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->float_item_cafe:I

    sget v2, Lcom/naver/glink/android/sdk/R$drawable;->gl_icon_home_normal:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/configure/d;->d:Landroid/util/SparseIntArray;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->float_item_capture:I

    sget v2, Lcom/naver/glink/android/sdk/R$drawable;->gl_icon_capture_normal:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/configure/d;->d:Landroid/util/SparseIntArray;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->float_item_video:I

    sget v2, Lcom/naver/glink/android/sdk/R$drawable;->gl_icon_video_normal:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/configure/d;->d:Landroid/util/SparseIntArray;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->float_item_write:I

    sget v2, Lcom/naver/glink/android/sdk/R$drawable;->gl_icon_write_normal:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/configure/d;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-direct {p0, p3}, Lcom/naver/glink/android/sdk/configure/d;->g(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    if-ne v0, v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/bumptech/glide/load/Transformation;

    const/4 v2, 0x0

    new-instance v3, Lcom/naver/glink/android/sdk/configure/d$a;

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/naver/glink/android/sdk/configure/d;->a:I

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/naver/glink/android/sdk/configure/d$a;-><init>(Landroid/content/Context;ILcom/naver/glink/android/sdk/configure/d$1;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapTypeRequest;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/configure/d$1;

    invoke-direct {v1, p0, p3, p1}, Lcom/naver/glink/android/sdk/configure/d$1;-><init>(Lcom/naver/glink/android/sdk/configure/d;Landroid/widget/ImageView;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/configure/d;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10102fe

    aput v3, v1, v2

    iget v2, p0, Lcom/naver/glink/android/sdk/configure/d;->a:I

    invoke-direct {p0, v2}, Lcom/naver/glink/android/sdk/configure/d;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_1
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    iget v2, p0, Lcom/naver/glink/android/sdk/configure/d;->b:I

    invoke-direct {p0, v2}, Lcom/naver/glink/android/sdk/configure/d;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-static {p1, v0}, Lcom/naver/glink/android/sdk/a/v;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;I)V
    .locals 4
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/configure/d;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/configure/d;->a()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x99

    invoke-direct {p0, v2, v3}, Lcom/naver/glink/android/sdk/configure/d;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/configure/d;->a()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xe6

    invoke-direct {p0, v2, v3}, Lcom/naver/glink/android/sdk/configure/d;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget v1, Lcom/naver/glink/android/sdk/R$id;->floating_button_background:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/naver/glink/android/sdk/a/v;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->floating_button_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public a(Landroid/widget/Button;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/configure/d;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/configure/d;->f(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v0

    iget v0, v0, Lcom/naver/glink/android/sdk/configure/d;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/configure/d;->h(Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Landroid/widget/SeekBar;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/configure/d;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/naver/glink/android/sdk/configure/d;->a:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/naver/glink/android/sdk/configure/d;->a:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 9

    const v8, 0x10100a1

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/configure/d;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v0, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v2

    iget v3, p0, Lcom/naver/glink/android/sdk/configure/d;->a:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_1
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Landroid/content/res/ColorStateList;

    new-array v3, v5, [[I

    new-array v4, v7, [I

    aput v8, v4, v6

    aput-object v4, v3, v6

    sget-object v4, Landroid/util/StateSet;->WILD_CARD:[I

    aput-object v4, v3, v7

    new-array v4, v5, [I

    iget v5, p0, Lcom/naver/glink/android/sdk/configure/d;->a:I

    aput v5, v4, v6

    const/high16 v5, -0x1000000

    aput v5, v4, v7

    invoke-direct {v2, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v2, v7, [I

    aput v8, v2, v6

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/naver/glink/android/sdk/R$color;->white1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-static {p1, v0}, Lcom/naver/glink/android/sdk/a/v;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public c(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/configure/d;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/naver/glink/android/sdk/R$id;->name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "#363838"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/naver/glink/android/sdk/configure/d;->d(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->disclosure_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/configure/d;->d(Landroid/view/View;)V

    goto :goto_0
.end method

.method public d(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/configure/d;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/naver/glink/android/sdk/R$drawable;->gl_ls_boards_btn_move_on:I

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/configure/d;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/configure/d;->b()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    invoke-static {p1, v0}, Lcom/naver/glink/android/sdk/a/v;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public e(Landroid/view/View;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/configure/d;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/naver/glink/android/sdk/R$id;->name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/configure/d;->b()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10102fe

    aput v3, v1, v2

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/configure/d;->a()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xff

    invoke-direct {p0, v2, v3}, Lcom/naver/glink/android/sdk/configure/d;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget v1, Lcom/naver/glink/android/sdk/R$id;->check_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/naver/glink/android/sdk/a/v;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public f(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/configure/d;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v1, v4, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    iget v2, p0, Lcom/naver/glink/android/sdk/configure/d;->c:I

    invoke-direct {p0, v2}, Lcom/naver/glink/android/sdk/configure/d;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v4, [I

    const v2, -0x101009e

    aput v2, v1, v3

    const-string/jumbo v2, "#f2f2f2"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/naver/glink/android/sdk/configure/d;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    iget v2, p0, Lcom/naver/glink/android/sdk/configure/d;->a:I

    invoke-direct {p0, v2}, Lcom/naver/glink/android/sdk/configure/d;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-static {p1, v0}, Lcom/naver/glink/android/sdk/a/v;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
