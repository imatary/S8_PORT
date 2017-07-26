.class public Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;
.super Landroid/widget/RelativeLayout;
.source "DragView.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/viewer/b/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$c;,
        Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;,
        Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$a;,
        Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Z

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Z

.field private j:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$a;

.field private k:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->c:I

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->d:I

    new-instance v0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$a;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$a;-><init>(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->j:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$a;

    sget-object v0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;->NONE:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->k:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->c:I

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->d:I

    new-instance v0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$a;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$a;-><init>(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->j:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$a;

    sget-object v0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;->NONE:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->k:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->c:I

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->d:I

    new-instance v0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$a;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$a;-><init>(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->j:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$a;

    sget-object v0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;->NONE:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->k:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;)F
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->getBackgroundAlpha()F

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;I)I
    .locals 0

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->d:I

    return p1
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->c:I

    iput v1, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->g:F

    iput v1, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->h:F

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->d:I

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->b:Z

    sget-object v0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;->NONE:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->setCurrentState(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->a:Landroid/view/View;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->a:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/naver/glink/android/sdk/R$color;->viewer_bg:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->a:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$1;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$1;-><init>(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;)V

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;I)I
    .locals 0

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->c:I

    return p1
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->a:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->j:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$a;

    invoke-direct {v0, p0, v1}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;-><init>(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->a()V

    return-void
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->d:I

    return v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    sget-object v0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;->END:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->setCurrentState(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;)V

    return-void
.end method

.method static synthetic d(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->c:I

    return v0
.end method

.method static synthetic e(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->a()V

    return-void
.end method

.method private getBackgroundAlpha()F
    .locals 8

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->d:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->c:I

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->c:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->c:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->getMeasuredHeight()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, v6

    div-double/2addr v0, v4

    :goto_1
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v4

    sub-double v0, v2, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    const-wide/16 v0, 0x0

    :cond_1
    double-to-float v0, v0

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method private getContentChildView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(F)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    float-to-double v0, p1

    const-wide v2, 0x3fefae147ae147aeL    # 0.99

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->i:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->requestLayout()V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    :pswitch_0
    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->i:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->e:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->f:F

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->i:Z

    if-eqz v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->b:Z

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->g:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->g:F

    :cond_3
    iget v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->h:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->h:F

    :cond_4
    iget v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->e:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->f:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_5

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->f:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->getMeasuredHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->f:F

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->getMeasuredHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3feb333333333333L    # 0.85

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_6

    :cond_5
    iget v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->f:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->getMeasuredHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_7

    :cond_6
    sget-object v0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;->DRAGGING:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->setCurrentState(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;)V

    :cond_7
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->k:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;->DRAGGING:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->c:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->g:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->c:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->g:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->h:F

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->getBackgroundAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    :pswitch_2
    iget v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->c:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->getMeasuredHeight()I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v2, v4

    double-to-int v1, v2

    if-ge v0, v1, :cond_8

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->b()V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->requestLayout()V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->c()V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    const/4 v1, 0x0

    const-wide v8, 0x3faeb851eb851eb8L    # 0.06

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->getContentChildView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->b:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->getMeasuredWidth()I

    move-result v0

    int-to-double v4, v0

    mul-double/2addr v4, v8

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->c:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v6, v0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->getMeasuredWidth()I

    move-result v0

    int-to-double v4, v0

    mul-double/2addr v4, v8

    double-to-int v0, v4

    :goto_1
    add-int/lit8 v3, v0, 0x0

    iget v4, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->d:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->c:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->getMeasuredWidth()I

    move-result v4

    sub-int v0, v4, v0

    iget v4, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->d:I

    add-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->c:I

    add-int/2addr v0, v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->c:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public setCurrentState(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->k:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->k:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$2;

    invoke-direct {v0, p0, p1}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$2;-><init>(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;)V

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
