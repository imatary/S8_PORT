.class public Lcom/github/clans/fab/FloatingActionButton;
.super Landroid/widget/ImageButton;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/clans/fab/FloatingActionButton$b;,
        Lcom/github/clans/fab/FloatingActionButton$a;,
        Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field private static final k:Landroid/graphics/Xfermode;

.field private static final l:J = 0xc8L

.field private static final m:D = 500.0

.field private static final n:I = 0x10e


# instance fields
.field private A:Z

.field private B:Z

.field private C:I

.field private D:I

.field private E:I

.field private F:Z

.field private G:F

.field private H:F

.field private I:Z

.field private J:Landroid/graphics/RectF;

.field private K:Landroid/graphics/Paint;

.field private L:Landroid/graphics/Paint;

.field private M:Z

.field private N:J

.field private O:F

.field private P:J

.field private Q:D

.field private R:Z

.field private S:I

.field private T:F

.field private U:F

.field private V:F

.field private W:I

.field private aa:Z

.field private ab:Z

.field private ac:Z

.field private ad:I

.field private ae:Z

.field c:I

.field d:Z

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Landroid/view/GestureDetector;

.field j:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:I

.field private u:Landroid/view/animation/Animation;

.field private v:Landroid/view/animation/Animation;

.field private w:Ljava/lang/String;

.field private x:Landroid/view/View$OnClickListener;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/github/clans/fab/FloatingActionButton;->k:Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/clans/fab/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/clans/fab/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/github/clans/fab/FloatingActionButton$1;

    invoke-direct {v2, p0}, Lcom/github/clans/fab/FloatingActionButton$1;-><init>(Lcom/github/clans/fab/FloatingActionButton;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->i:Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->t:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v0, v1}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->C:I

    iput v4, p0, Lcom/github/clans/fab/FloatingActionButton;->G:F

    iput v4, p0, Lcom/github/clans/fab/FloatingActionButton;->H:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->J:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->K:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->L:Landroid/graphics/Paint;

    const/high16 v0, 0x43430000    # 195.0f

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->P:J

    iput-boolean v3, p0, Lcom/github/clans/fab/FloatingActionButton;->R:Z

    const/16 v0, 0x10

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->S:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->ad:I

    invoke-direct {p0, p1, p2, p3}, Lcom/github/clans/fab/FloatingActionButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/github/clans/fab/FloatingActionButton$1;

    invoke-direct {v2, p0}, Lcom/github/clans/fab/FloatingActionButton$1;-><init>(Lcom/github/clans/fab/FloatingActionButton;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->i:Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->t:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v0, v1}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->C:I

    iput v4, p0, Lcom/github/clans/fab/FloatingActionButton;->G:F

    iput v4, p0, Lcom/github/clans/fab/FloatingActionButton;->H:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->J:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->K:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->L:Landroid/graphics/Paint;

    const/high16 v0, 0x43430000    # 195.0f

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->P:J

    iput-boolean v3, p0, Lcom/github/clans/fab/FloatingActionButton;->R:Z

    const/16 v0, 0x10

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->S:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->ad:I

    invoke-direct {p0, p1, p2, p3}, Lcom/github/clans/fab/FloatingActionButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Lcom/github/clans/fab/FloatingActionButton$a;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/github/clans/fab/FloatingActionButton$a;-><init>(Lcom/github/clans/fab/FloatingActionButton;Landroid/graphics/drawable/shapes/Shape;Lcom/github/clans/fab/FloatingActionButton$1;)V

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton$a;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method static synthetic a(Lcom/github/clans/fab/FloatingActionButton;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->x:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private a(J)V
    .locals 7

    const-wide v4, 0x407f400000000000L    # 500.0

    iget-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->P:J

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    iget-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:D

    long-to-double v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:D

    iget-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:D

    cmpl-double v0, v0, v4

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:D

    sub-double/2addr v0, v4

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->P:J

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->R:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->R:Z

    :cond_0
    iget-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:D

    div-double/2addr v0, v4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->S:I

    rsub-int v1, v1, 0x10e

    int-to-float v1, v1

    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->R:Z

    if-eqz v2, :cond_2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->T:F

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->U:F

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->T:F

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->U:F

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->T:F

    goto :goto_1

    :cond_3
    iget-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->P:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->P:J

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionButton:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionButton_fab_colorNormal:I

    const v2, -0x25bcca

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->o:I

    sget v1, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionButton_fab_colorPressed:I

    const v2, -0x18afbd

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->p:I

    sget v1, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionButton_fab_colorDisabled:I

    const v2, -0x555556

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->q:I

    sget v1, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionButton_fab_colorRipple:I

    const v2, -0x66000001

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->r:I

    sget v1, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionButton_fab_showShadow:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->d:Z

    sget v1, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionButton_fab_shadowColor:I

    const/high16 v2, 0x66000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    sget v1, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionButton_fab_shadowRadius:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    sget v1, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionButton_fab_shadowXOffset:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    sget v1, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionButton_fab_shadowYOffset:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    sget v1, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionButton_fab_size:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->c:I

    sget v1, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionButton_fab_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/clans/fab/FloatingActionButton;->w:Ljava/lang/String;

    sget v1, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionButton_fab_progress_indeterminate:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->ab:Z

    sget v1, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionButton_fab_progress_color:I

    const v2, -0xff6978

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->D:I

    sget v1, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionButton_fab_progress_backgroundColor:I

    const/high16 v2, 0x4d000000    # 1.34217728E8f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->E:I

    sget v1, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionButton_fab_progress_max:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->ad:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->ad:I

    sget v1, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionButton_fab_progress_showBackground:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->ae:Z

    sget v1, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionButton_fab_is_trash:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->j:Z

    sget v1, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionButton_fab_progress:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionButton_fab_progress:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->W:I

    iput-boolean v4, p0, Lcom/github/clans/fab/FloatingActionButton;->ac:Z

    :cond_0
    sget v1, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionButton_fab_elevationCompat:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionButton_fab_elevationCompat:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setElevation(F)V

    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->a(Landroid/content/res/TypedArray;)V

    invoke-direct {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->b(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->ab:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, v4}, Lcom/github/clans/fab/FloatingActionButton;->setIndeterminate(Z)V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/naver/glink/android/sdk/configure/d;->a(Landroid/content/res/Resources;ILandroid/widget/ImageView;)V

    invoke-virtual {p0, v4}, Lcom/github/clans/fab/FloatingActionButton;->setClickable(Z)V

    return-void

    :cond_3
    invoke-virtual {p0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setElevationCompat(F)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->ac:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->r()V

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->W:I

    invoke-virtual {p0, v0, v3}, Lcom/github/clans/fab/FloatingActionButton;->setProgress(IZ)V

    goto :goto_1
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .locals 2

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionButton_fab_showAnimation:I

    sget v1, Lcom/naver/glink/android/sdk/R$anim;->fab_scale_up:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->u:Landroid/view/animation/Animation;

    return-void
.end method

.method private b(Landroid/content/res/TypedArray;)V
    .locals 2

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionButton_fab_hideAnimation:I

    sget v1, Lcom/naver/glink/android/sdk/R$anim;->fab_scale_down:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->v:Landroid/view/animation/Animation;

    return-void
.end method

.method static synthetic b(Lcom/github/clans/fab/FloatingActionButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->B:Z

    return v0
.end method

.method static synthetic c(Lcom/github/clans/fab/FloatingActionButton;)I
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->C:I

    return v0
.end method

.method static synthetic d(Lcom/github/clans/fab/FloatingActionButton;)I
    .locals 1

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->m()I

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/github/clans/fab/FloatingActionButton;)I
    .locals 1

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()I

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/github/clans/fab/FloatingActionButton;)I
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->o:I

    return v0
.end method

.method static synthetic g(Lcom/github/clans/fab/FloatingActionButton;)I
    .locals 1

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getCircleSize()I

    move-result v0

    return v0
.end method

.method private getCircleSize()I
    .locals 2

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->c:I

    if-nez v0, :cond_0

    sget v0, Lcom/naver/glink/android/sdk/R$dimen;->glink_widget_size_normal:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    :cond_0
    sget v0, Lcom/naver/glink/android/sdk/R$dimen;->fab_size_mini:I

    goto :goto_0
.end method

.method private getShadowX()I
    .locals 2

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getShadowY()I
    .locals 2

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic h(Lcom/github/clans/fab/FloatingActionButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->ae:Z

    return v0
.end method

.method static synthetic i(Lcom/github/clans/fab/FloatingActionButton;)F
    .locals 1

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->o()F

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/github/clans/fab/FloatingActionButton;)F
    .locals 1

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->p()F

    move-result v0

    return v0
.end method

.method static synthetic l()Landroid/graphics/Xfermode;
    .locals 1

    sget-object v0, Lcom/github/clans/fab/FloatingActionButton;->k:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method private m()I
    .locals 2

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getCircleSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->B:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->C:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private n()I
    .locals 2

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getCircleSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->B:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->C:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private o()F
    .locals 1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method private p()F
    .locals 1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method private q()Landroid/graphics/drawable/Drawable;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v0, v6, [I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/github/clans/fab/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    new-instance v2, Landroid/content/res/ColorStateList;

    new-array v3, v7, [[I

    new-array v4, v6, [I

    aput-object v4, v3, v6

    new-array v4, v7, [I

    iget v5, p0, Lcom/github/clans/fab/FloatingActionButton;->r:I

    aput v5, v4, v6

    invoke-direct {v2, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/github/clans/fab/FloatingActionButton$2;

    invoke-direct {v1, p0}, Lcom/github/clans/fab/FloatingActionButton$2;-><init>(Lcom/github/clans/fab/FloatingActionButton;)V

    invoke-virtual {p0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0, v7}, Lcom/github/clans/fab/FloatingActionButton;->setClipToOutline(Z)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->y:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    iput-object v1, p0, Lcom/github/clans/fab/FloatingActionButton;->y:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    goto :goto_0
.end method

.method private r()V
    .locals 2

    const/high16 v1, -0x40800000    # -1.0f

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->I:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->G:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getX()F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->G:F

    :cond_0
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->H:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getY()F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->H:F

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->I:Z

    :cond_2
    return-void
.end method

.method private s()V
    .locals 3

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->B:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->G:F

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getX()F

    move-result v0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->C:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_0
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->H:F

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getY()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getY()F

    move-result v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->C:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setX(F)V

    invoke-virtual {p0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setY(F)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getX()F

    move-result v0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->C:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getY()F

    move-result v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->C:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->G:F

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->H:F

    goto :goto_1
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-static {}, Lcom/github/clans/fab/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private t()V
    .locals 2

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->K:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->E:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->K:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->K:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->C:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->L:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->D:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->L:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->L:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->C:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private u()V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowX()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowY()I

    move-result v1

    :cond_0
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton;->C:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    int-to-float v3, v3

    iget v4, p0, Lcom/github/clans/fab/FloatingActionButton;->C:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->m()I

    move-result v5

    sub-int v0, v5, v0

    iget v5, p0, Lcom/github/clans/fab/FloatingActionButton;->C:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v5

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()I

    move-result v5

    sub-int v1, v5, v1

    iget v5, p0, Lcom/github/clans/fab/FloatingActionButton;->C:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/github/clans/fab/FloatingActionButton;->J:Landroid/graphics/RectF;

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method a()I
    .locals 1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowX()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(III)V
    .locals 0

    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->o:I

    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->p:I

    iput p3, p0, Lcom/github/clans/fab/FloatingActionButton;->r:I

    return-void
.end method

.method public a(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->d()V

    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method b()I
    .locals 1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowY()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->i()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->e()V

    :cond_0
    const/4 v0, 0x4

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method c()V
    .locals 1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->a(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->b(Z)V

    goto :goto_0
.end method

.method d()V
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->v:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->u:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public d(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->b(Z)V

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lcom/github/clans/fab/Label;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/Label;->b(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getHideAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/github/clans/fab/FloatingActionButton$4;

    invoke-direct {v1, p0}, Lcom/github/clans/fab/FloatingActionButton$4;-><init>(Lcom/github/clans/fab/FloatingActionButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    return-void
.end method

.method e()V
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->u:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->v:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public e(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->a(Z)V

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lcom/github/clans/fab/Label;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/Label;->a(Z)V

    goto :goto_0
.end method

.method f()V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    return-void
.end method

.method g()V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    return-void
.end method

.method public getButtonSize()I
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->c:I

    return v0
.end method

.method public getColorDisabled()I
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->q:I

    return v0
.end method

.method public getColorNormal()I
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->o:I

    return v0
.end method

.method public getColorPressed()I
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->p:I

    return v0
.end method

.method public getColorRipple()I
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->r:I

    return v0
.end method

.method getHideAnimation()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->v:Landroid/view/animation/Animation;

    return-object v0
.end method

.method protected getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->s:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method

.method public getLabelText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->w:Ljava/lang/String;

    return-object v0
.end method

.method getLabelView()Lcom/github/clans/fab/Label;
    .locals 1

    sget v0, Lcom/naver/glink/android/sdk/R$id;->fab_label:I

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/Label;

    return-object v0
.end method

.method public getLabelVisibility()I
    .locals 1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lcom/github/clans/fab/Label;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized getMax()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->ad:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->x:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->M:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->W:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getShadowColor()I
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    return v0
.end method

.method public getShadowRadius()I
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    return v0
.end method

.method public getShadowXOffset()I
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    return v0
.end method

.method public getShadowYOffset()I
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    return v0
.end method

.method getShowAnimation()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->u:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->z:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized j()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->B:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->F:Z

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized k()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->ae:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v6, 0x1

    const/high16 v7, 0x447a0000    # 1000.0f

    const/4 v4, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->B:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->ae:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionButton;->J:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionButton;->K:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->M:Z

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v8, p0, Lcom/github/clans/fab/FloatingActionButton;->N:J

    sub-long/2addr v0, v8

    long-to-float v3, v0

    iget v5, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    mul-float/2addr v3, v5

    div-float/2addr v3, v7

    invoke-direct {p0, v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->a(J)V

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->U:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->U:F

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->U:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->U:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->U:F

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->N:J

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->U:F

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float v2, v0, v1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->S:I

    int-to-float v0, v0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->T:F

    add-float v3, v0, v1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    const/high16 v3, 0x43070000    # 135.0f

    :cond_2
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionButton;->J:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionButton;->L:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_0
    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->invalidate()V

    :cond_3
    return-void

    :cond_4
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->U:F

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->V:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/github/clans/fab/FloatingActionButton;->N:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    div-float/2addr v0, v7

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->U:F

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->V:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->U:F

    sub-float v0, v1, v0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->V:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->U:F

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->N:J

    :goto_2
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionButton;->J:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton;->U:F

    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionButton;->L:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->U:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->V:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->U:F

    goto :goto_1

    :cond_6
    move v6, v4

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->m()I

    move-result v0

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->a:F

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->U:F

    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->b:F

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->V:F

    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->c:F

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->e:I

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->C:I

    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->f:I

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->D:I

    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->g:I

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->E:I

    iget-boolean v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->k:Z

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->ab:Z

    iget-boolean v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->l:Z

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->ac:Z

    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->d:I

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->W:I

    iget-boolean v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->m:Z

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->aa:Z

    iget-boolean v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->n:Z

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->ae:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->N:J

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;

    invoke-direct {v1, v0}, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->U:F

    iput v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->a:F

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->V:F

    iput v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->b:F

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    iput v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->c:F

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->C:I

    iput v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->e:I

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->D:I

    iput v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->f:I

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->E:I

    iput v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->g:I

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->M:Z

    iput-boolean v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->k:Z

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->B:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->W:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->M:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->l:Z

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->W:I

    iput v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->d:I

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->aa:Z

    iput-boolean v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->m:Z

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->ae:Z

    iput-boolean v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->n:Z

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->r()V

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->ab:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setIndeterminate(Z)V

    iput-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->ab:Z

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->u()V

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->t()V

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->ac:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->W:I

    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->aa:Z

    invoke-virtual {p0, v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setProgress(IZ)V

    iput-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->ac:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->F:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->s()V

    iput-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->F:Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->x:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/naver/glink/android/sdk/R$id;->fab_label:I

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/Label;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->i:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->e()V

    :cond_2
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->g()V

    goto :goto_1

    :pswitch_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->e()V

    :cond_3
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->g()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setButtonSize(I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Use @FabSize constants only!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->c:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->c:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    :cond_1
    return-void
.end method

.method public setColorDisabled(I)V
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->q:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->q:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    :cond_0
    return-void
.end method

.method public setColorDisabledResId(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setColorDisabled(I)V

    return-void
.end method

.method public setColorNormal(I)V
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->o:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->o:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    :cond_0
    return-void
.end method

.method public setColorNormalResId(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setColorNormal(I)V

    return-void
.end method

.method public setColorPressed(I)V
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->p:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->p:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    :cond_0
    return-void
.end method

.method public setColorPressedResId(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setColorPressed(I)V

    return-void
.end method

.method public setColorRipple(I)V
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->r:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->r:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    :cond_0
    return-void
.end method

.method public setColorRippleResId(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setColorRipple(I)V

    return-void
.end method

.method public setElevation(F)V
    .locals 1

    invoke-static {}, Lcom/github/clans/fab/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setElevation(F)V

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->z:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->d:Z

    :cond_0
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    :cond_1
    return-void
.end method

.method public setElevationCompat(F)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v0, 0x26000000

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    div-float v0, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    iput v2, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->c:I

    if-nez v0, :cond_1

    move v0, p1

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    invoke-static {}, Lcom/github/clans/fab/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setElevation(F)V

    iput-boolean v3, p0, Lcom/github/clans/fab/FloatingActionButton;->A:Z

    iput-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->d:Z

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    div-float v0, p1, v1

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/github/clans/fab/FloatingActionButton;->d:Z

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->fab_label:I

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/Label;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/Label;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setHideAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->v:Landroid/view/animation/Animation;

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->s:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionButton;->s:Landroid/graphics/drawable/Drawable;

    if-eq v1, v0, :cond_0

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    :cond_0
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->U:F

    :cond_0
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->B:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->F:Z

    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->M:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->N:J

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->u()V

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->r()V

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->w:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lcom/github/clans/fab/Label;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setLabelVisibility(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lcom/github/clans/fab/Label;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/github/clans/fab/Label;->setVisibility(I)V

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/github/clans/fab/Label;->setHandleVisibilityChanges(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->A:Z

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowX()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowY()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowX()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowY()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->ad:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->x:Landroid/view/View$OnClickListener;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->fab_label:I

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/github/clans/fab/FloatingActionButton$3;

    invoke-direct {v1, p0}, Lcom/github/clans/fab/FloatingActionButton$3;-><init>(Lcom/github/clans/fab/FloatingActionButton;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setProgress(IZ)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->M:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->W:I

    iput-boolean p2, p0, Lcom/github/clans/fab/FloatingActionButton;->aa:Z

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->I:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->ac:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->B:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->F:Z

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->u()V

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->r()V

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    if-gez p1, :cond_5

    const/4 p1, 0x0

    :cond_3
    :goto_1
    int-to-float v0, p1

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->V:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->ad:I

    if-lez v0, :cond_6

    int-to-float v0, p1

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->ad:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    :goto_2
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->V:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->N:J

    if-nez p2, :cond_4

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->V:F

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->U:F

    :cond_4
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->invalidate()V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->ad:I

    if-le p1, v0, :cond_3

    iget p1, p0, Lcom/github/clans/fab/FloatingActionButton;->ad:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public setShadowColor(I)V
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    :cond_0
    return-void
.end method

.method public setShadowColorResource(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    :cond_0
    return-void
.end method

.method public setShadowRadius(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->requestLayout()V

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    return-void
.end method

.method public setShadowRadius(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->requestLayout()V

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    :cond_0
    return-void
.end method

.method public setShadowXOffset(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->requestLayout()V

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    return-void
.end method

.method public setShadowXOffset(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->requestLayout()V

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    :cond_0
    return-void
.end method

.method public setShadowYOffset(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->requestLayout()V

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    return-void
.end method

.method public setShadowYOffset(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->requestLayout()V

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    :cond_0
    return-void
.end method

.method public setShowAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->u:Landroid/view/animation/Animation;

    return-void
.end method

.method public declared-synchronized setShowProgressBackground(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->ae:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShowShadow(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->d:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->d:Z

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->fab_label:I

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/Label;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/Label;->setVisibility(I)V

    :cond_0
    return-void
.end method
