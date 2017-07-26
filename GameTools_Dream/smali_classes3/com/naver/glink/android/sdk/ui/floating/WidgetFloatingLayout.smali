.class public Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;
.super Landroid/widget/FrameLayout;
.source "WidgetFloatingLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;,
        Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;,
        Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x28

.field private static final b:I = 0x190

.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:I = 0x6

.field private static f:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;


# instance fields
.field private final g:I

.field private h:Landroid/view/animation/Animation;

.field private i:Landroid/view/animation/Animation;

.field private j:Landroid/view/animation/Animation;

.field private k:F

.field private l:F

.field private m:I

.field private n:I

.field private o:I

.field private p:Landroid/graphics/Point;

.field private q:Z

.field private r:Z

.field private s:Landroid/os/Handler;

.field private t:Landroid/view/WindowManager$LayoutParams;

.field private u:Landroid/view/WindowManager;

.field private v:Landroid/view/View;

.field private w:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->b(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->getMoveSpeed()I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->b(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->getMoveSpeed()I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->b(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->getMoveSpeed()I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->b(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->getMoveSpeed()I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->g:I

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;I)I
    .locals 0

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->o:I

    return p1
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->t:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->j:Landroid/view/animation/Animation;

    return-object p1
.end method

.method public static a()V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->u:Landroid/view/WindowManager;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "glink"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[error] closeFlotingView. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v4, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    goto :goto_0
.end method

.method private a(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->d()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->widget_floating_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    sput-object v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    sget-object v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->floating_button:I

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/c;->a(Landroid/view/View;)V

    sget-object v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->c()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->p:Landroid/graphics/Point;

    return-object v0
.end method

.method public static b()V
    .locals 2

    sget-object v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$c;-><init>(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->s:Landroid/os/Handler;

    return-void
.end method

.method private b(Landroid/app/Activity;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/configure/c;->b()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->p:Landroid/graphics/Point;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->t:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->t:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->t:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->t:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v3

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/naver/glink/android/sdk/R$anim;->widget_half_left:I

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->h:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    sget v0, Lcom/naver/glink/android/sdk/R$anim;->widget_alpha_right:I

    :goto_0
    invoke-static {v4, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->i:Landroid/view/animation/Animation;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$1;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$1;-><init>(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)V

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->h:Landroid/view/animation/Animation;

    invoke-virtual {v3, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->i:Landroid/view/animation/Animation;

    invoke-virtual {v3, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :try_start_0
    invoke-static {p1}, Lcom/naver/glink/android/sdk/a/l;->g(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    iget v0, v3, Landroid/graphics/Point;->x:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->i:Landroid/view/animation/Animation;

    :goto_1
    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->j:Landroid/view/animation/Animation;

    iget v0, v3, Landroid/graphics/Point;->x:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->getFirstPosition()Landroid/graphics/Point;

    move-result-object v0

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->t:Landroid/view/WindowManager$LayoutParams;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->t:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->t:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->t:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x40408

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->t:Landroid/view/WindowManager$LayoutParams;

    sget v3, Lcom/naver/glink/android/sdk/R$style;->widget_dialog_anim:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->u:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->u:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->t:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    sget v0, Lcom/naver/glink/android/sdk/R$id;->floating_button:I

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->v:Landroid/view/View;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->v:Landroid/view/View;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    move v0, v1

    :goto_3
    return v0

    :cond_0
    sget v0, Lcom/naver/glink/android/sdk/R$anim;->widget_half_right:I

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->h:Landroid/view/animation/Animation;

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->t:Landroid/view/WindowManager$LayoutParams;

    iget v0, v3, Landroid/graphics/Point;->x:I

    if-ne v0, v1, :cond_4

    move v0, v2

    :goto_4
    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v3, Landroid/graphics/Point;->y:I

    if-ltz v0, :cond_3

    iget v0, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->p:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-le v0, v4, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->t:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->p:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "glink"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[error] addToWindow. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v7, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    move v0, v2

    goto :goto_3

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->p:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/naver/glink/android/sdk/R$dimen;->glink_widget_size_normal:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v0, v5

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->t:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v1, "glink"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[error] addToWindow. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v7, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    move v0, v2

    goto/16 :goto_3
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->o:I

    return v0
.end method

.method public static c()V
    .locals 2

    sget-object v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->setVisibility(I)V

    sget-object v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->v:Landroid/view/View;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->h:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public static d()Z
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->v:Landroid/view/View;

    return-object v0
.end method

.method public static e()Z
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->i:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic f()Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->g:I

    return v0
.end method

.method private getFirstPosition()Landroid/graphics/Point;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/naver/glink/android/sdk/a/l;->h(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "pref_widget_first_position_isleft"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "pref_widget_first_position_percent"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/16 v3, 0x64

    if-le v1, v3, :cond_1

    :cond_0
    iput v4, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->p:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->h:Landroid/view/animation/Animation;

    iput-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->j:Landroid/view/animation/Animation;

    :goto_0
    return-object v0

    :cond_1
    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->h:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->j:Landroid/view/animation/Animation;

    iput v4, v0, Landroid/graphics/Point;->x:I

    :goto_1
    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->p:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/naver/glink/android/sdk/R$dimen;->glink_widget_size_normal:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->i:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->j:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->p:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/naver/glink/android/sdk/R$dimen;->glink_widget_size_normal:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Point;->x:I

    goto :goto_1
.end method

.method private getMoveSpeed()I
    .locals 3

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$dimen;->widget_speed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic h(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->u:Landroid/view/WindowManager;

    return-object v0
.end method

.method public static setListener(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$a;)V
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    iput-object p0, v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->w:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$a;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "config_showNavigationBar"

    const-string/jumbo v2, "bool"

    const-string/jumbo v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    const/4 v1, 0x4

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected detachAllViewsFromParent()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->detachAllViewsFromParent()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->f:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/high16 v7, 0x42200000    # 40.0f

    const/4 v6, 0x1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->q:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->v:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->k:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->l:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x190

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-boolean v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->r:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->w:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$a;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->w:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$a;

    invoke-interface {v2}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$a;->a()V

    iput-boolean v6, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->r:Z

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->k:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->l:F

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->t:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->m:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->t:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->n:I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->p:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    new-instance v2, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->s:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-direct {v2, p0, v3, v4}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;-><init>(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;Landroid/os/Handler;I)V

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;->a()V

    :goto_1
    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->w:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$a;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->w:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$a;

    invoke-interface {v2, p1}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$a;->a(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->r:Z

    :cond_3
    iget v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->l:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v7

    if-gez v2, :cond_0

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->k:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v7

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->w:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$a;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->w:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$a;

    iget v3, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->m:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->n:I

    add-int/2addr v1, v3

    invoke-interface {v2, p1, v0, v1}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$a;->a(Landroid/view/MotionEvent;II)V

    goto/16 :goto_0

    :cond_4
    new-instance v2, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->s:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v6}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;-><init>(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;Landroid/os/Handler;I)V

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;->a()V

    goto :goto_1

    :pswitch_2
    iget v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->m:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->p:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/naver/glink/android/sdk/R$dimen;->glink_widget_size_normal:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_5

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->t:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->p:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/naver/glink/android/sdk/R$dimen;->glink_widget_size_normal:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_2
    iget v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->n:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->p:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/naver/glink/android/sdk/R$dimen;->glink_widget_size_normal:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_6

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->t:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->p:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/naver/glink/android/sdk/R$dimen;->glink_widget_size_normal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_3
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->u:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->t:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->w:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->w:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$a;

    invoke-interface {v0, p1}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$a;->b(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->t:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->m:I

    add-int/2addr v0, v3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->t:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->n:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method
