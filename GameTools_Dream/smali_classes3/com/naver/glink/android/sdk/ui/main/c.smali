.class Lcom/naver/glink/android/sdk/ui/main/c;
.super Ljava/lang/Object;
.source "TransparentViewHolder.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/view/View;

.field private final c:Landroid/view/View;

.field private final d:Landroid/widget/SeekBar;

.field private final e:Landroid/view/ViewGroup;

.field private final f:Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;

.field private final g:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "TransparentViewHolder"

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/c;->a:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/c;->g:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/main/c;->b:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->plug_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/c;->c:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->transparent_seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/c;->d:Landroid/widget/SeekBar;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->glink_touch_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/c;->e:Landroid/view/ViewGroup;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->transparent_glink:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/c;->f:Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/main/c;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/c;->g:Landroid/graphics/Point;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/main/c;Landroid/app/Activity;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/main/c;->a(Landroid/app/Activity;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/main/c;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/main/c;->b(Landroid/content/Context;)V

    return-void
.end method

.method private a()Z
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/c;->d:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/main/c;->d:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lcom/naver/glink/android/sdk/a/l;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/naver/glink/android/sdk/c;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()I
    .locals 2

    sget v0, Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;->a:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/main/c;->d:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/main/c;->d:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private b(Landroid/content/Context;Lcom/naver/glink/android/sdk/configure/c;)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    sget v0, Lcom/naver/glink/android/sdk/R$drawable;->gl_btn_alphacontrol_normal:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v4, 0x1f

    invoke-virtual {p2, v4}, Lcom/naver/glink/android/sdk/configure/c;->a(I)I

    move-result v4

    const/16 v5, 0x25

    invoke-virtual {p2, v5}, Lcom/naver/glink/android/sdk/configure/c;->a(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v2, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "TransparentViewHolder"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/naver/glink/android/sdk/a/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private b(Landroid/app/Activity;Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/main/c;->g:Landroid/graphics/Point;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/main/c;->g:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/main/c;->g:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/main/c;->g:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->injectInputEvent(Landroid/view/InputEvent;)V

    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_2
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/c;->f:Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/main/c;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;->setWindowAlpha(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/c;->c:Landroid/view/View;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/main/c;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/c;->c:Landroid/view/View;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/main/c;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/main/c;->b:Landroid/view/View;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/main/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :cond_0
    sget v0, Lcom/naver/glink/android/sdk/R$color;->black2_opacity_50:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/main/c;Landroid/app/Activity;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/main/c;->b(Landroid/app/Activity;Landroid/view/MotionEvent;)V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/naver/glink/android/sdk/configure/c;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/main/c;->b(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/main/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/c;->d:Landroid/widget/SeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/c;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/c;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/c;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/c;->d:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/main/c;->d:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/configure/d;->a(Landroid/widget/SeekBar;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/c;->d:Landroid/widget/SeekBar;

    const/4 v1, -0x1

    const/16 v2, 0x25

    invoke-virtual {p2, v0, v1, v2}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/main/c;->b(Landroid/content/Context;Lcom/naver/glink/android/sdk/configure/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/main/c;->d:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/c;->d:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Lcom/naver/glink/android/sdk/configure/c;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/c;->d:Landroid/widget/SeekBar;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/main/c$1;

    invoke-direct {v1, p0, p1}, Lcom/naver/glink/android/sdk/ui/main/c$1;-><init>(Lcom/naver/glink/android/sdk/ui/main/c;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/c;->c:Landroid/view/View;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/main/c$2;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/main/c$2;-><init>(Lcom/naver/glink/android/sdk/ui/main/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/c;->c:Landroid/view/View;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/main/c$3;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/main/c$3;-><init>(Lcom/naver/glink/android/sdk/ui/main/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/c;->c:Landroid/view/View;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/main/c$4;

    invoke-direct {v1, p0, p1}, Lcom/naver/glink/android/sdk/ui/main/c$4;-><init>(Lcom/naver/glink/android/sdk/ui/main/c;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/c;->c:Landroid/view/View;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/main/c$5;

    invoke-direct {v1, p0, p1}, Lcom/naver/glink/android/sdk/ui/main/c$5;-><init>(Lcom/naver/glink/android/sdk/ui/main/c;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method
