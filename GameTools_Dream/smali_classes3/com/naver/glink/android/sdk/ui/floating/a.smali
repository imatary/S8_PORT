.class public Lcom/naver/glink/android/sdk/ui/floating/a;
.super Landroid/app/DialogFragment;
.source "FullWidgetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/floating/a$a;,
        Lcom/naver/glink/android/sdk/ui/floating/a$b;
    }
.end annotation


# static fields
.field private static final a:I = 0xa0

.field private static final b:I = 0x50

.field private static c:Lcom/naver/glink/android/sdk/ui/floating/a;


# instance fields
.field private d:Landroid/view/View;

.field private e:Landroid/os/Handler;

.field private f:Lcom/naver/glink/android/sdk/ui/floating/a$b;

.field private g:Landroid/graphics/Point;

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->g:Landroid/graphics/Point;

    return-void
.end method

.method private a(III)Landroid/graphics/Point;
    .locals 1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput p2, v0, Landroid/graphics/Point;->x:I

    iput p3, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/floating/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->e:Landroid/os/Handler;

    return-object v0
.end method

.method private a(JIIII)Landroid/view/animation/Animation;
    .locals 5

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p3

    int-to-float v2, p5

    int-to-float v3, p4

    int-to-float v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    long-to-int v1, p1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v1
.end method

.method static a(II)Lcom/naver/glink/android/sdk/ui/floating/a;
    .locals 2

    sget-object v0, Lcom/naver/glink/android/sdk/ui/floating/a;->c:Lcom/naver/glink/android/sdk/ui/floating/a;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/naver/glink/android/sdk/ui/floating/a;

    invoke-direct {v1}, Lcom/naver/glink/android/sdk/ui/floating/a;-><init>()V

    sput-object v1, Lcom/naver/glink/android/sdk/ui/floating/a;->c:Lcom/naver/glink/android/sdk/ui/floating/a;

    const-string/jumbo v1, "X"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "Y"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/naver/glink/android/sdk/ui/floating/a;->c:Lcom/naver/glink/android/sdk/ui/floating/a;

    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/ui/floating/a;->setArguments(Landroid/os/Bundle;)V

    sget-object v0, Lcom/naver/glink/android/sdk/ui/floating/a;->c:Lcom/naver/glink/android/sdk/ui/floating/a;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/naver/glink/android/sdk/R$id;->float_item_cafe:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->float_item_capture:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->float_item_video:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->float_item_write:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->float_item_trash:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private b(II)I
    .locals 4

    const/4 v1, 0x2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v3, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v0, :cond_1

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->g:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    if-le p2, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->g:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private b(III)Landroid/graphics/Point;
    .locals 4

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$dimen;->glink_widget_size_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$dimen;->glink_widget_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v2

    :pswitch_0
    iput v1, v2, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->g:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    iput v0, v2, Landroid/graphics/Point;->y:I

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->g:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v0

    sub-int v1, v3, v1

    iput v1, v2, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->g:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    iput v0, v2, Landroid/graphics/Point;->y:I

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->g:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v3, 0x2

    if-le p2, v3, :cond_0

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->g:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int v0, v3, v0

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Point;->x:I

    :goto_1
    iput v1, v2, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_0
    iput v1, v2, Landroid/graphics/Point;->x:I

    goto :goto_1

    :pswitch_3
    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->g:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v3, 0x2

    if-le p2, v3, :cond_1

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->g:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Point;->x:I

    :goto_2
    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->g:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int v0, v3, v0

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_1
    iput v1, v2, Landroid/graphics/Point;->x:I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/l;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sget v2, Lcom/naver/glink/android/sdk/R$id;->float_item_video:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private c(II)I
    .locals 2

    sub-int v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->g:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    div-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x42a00000    # 80.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private c(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/l;->f(Landroid/content/Context;)Z

    move-result v0

    sget v1, Lcom/naver/glink/android/sdk/R$id;->float_item_capture:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private d(Landroid/view/View;)V
    .locals 10

    const/4 v9, 0x0

    sget v0, Lcom/naver/glink/android/sdk/R$id;->float_menu:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/AbsFloatingActionMenu;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->ani_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lcom/naver/glink/android/sdk/ui/floating/c;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/a;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "X"

    invoke-virtual {v1, v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/a;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "Y"

    invoke-virtual {v2, v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/naver/glink/android/sdk/ui/floating/a;->b(II)I

    move-result v3

    invoke-direct {p0, v3, v1, v2}, Lcom/naver/glink/android/sdk/ui/floating/a;->a(III)Landroid/graphics/Point;

    move-result-object v5

    invoke-direct {p0, v3, v1, v2}, Lcom/naver/glink/android/sdk/ui/floating/a;->b(III)Landroid/graphics/Point;

    move-result-object v7

    iget v2, v5, Landroid/graphics/Point;->y:I

    iget v4, v7, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2, v4}, Lcom/naver/glink/android/sdk/ui/floating/a;->c(II)I

    move-result v2

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/github/clans/fab/AbsFloatingActionMenu;->setVisibility(I)V

    new-instance v4, Lcom/naver/glink/android/sdk/ui/floating/a$2;

    invoke-direct {v4, p0}, Lcom/naver/glink/android/sdk/ui/floating/a$2;-><init>(Lcom/naver/glink/android/sdk/ui/floating/a;)V

    invoke-virtual {v0, v4}, Lcom/github/clans/fab/AbsFloatingActionMenu;->setOnMenuToggleListener(Lcom/github/clans/fab/AbsFloatingActionMenu$a;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/a;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v6, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->g:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    div-int/lit8 v6, v6, 0x2

    if-le v1, v6, :cond_0

    iget v1, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    invoke-virtual {v0, v9}, Lcom/github/clans/fab/AbsFloatingActionMenu;->setOpenLabel(I)V

    invoke-virtual {v0}, Lcom/github/clans/fab/AbsFloatingActionMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_0
    invoke-virtual {v0, v3}, Lcom/github/clans/fab/AbsFloatingActionMenu;->setOpenDirection(I)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    int-to-long v2, v2

    iget v4, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, v7, Landroid/graphics/Point;->x:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/naver/glink/android/sdk/ui/floating/a;->a(JIIII)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/floating/a$3;

    invoke-direct {v2, p0, v8, v0, p1}, Lcom/naver/glink/android/sdk/ui/floating/a$3;-><init>(Lcom/naver/glink/android/sdk/ui/floating/a;Landroid/view/View;Lcom/github/clans/fab/AbsFloatingActionMenu;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v8, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method a(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->h:Landroid/view/View$OnClickListener;

    return-void
.end method

.method a(Lcom/naver/glink/android/sdk/ui/floating/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->f:Lcom/naver/glink/android/sdk/ui/floating/a$b;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->h:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->h:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Lcom/naver/glink/android/sdk/ui/floating/a$a;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/a;->getTheme()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/naver/glink/android/sdk/ui/floating/a$a;-><init>(Lcom/naver/glink/android/sdk/ui/floating/a;Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget v0, Lcom/naver/glink/android/sdk/R$layout;->widget_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->g:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->e:Landroid/os/Handler;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->d:Landroid/view/View;

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->f:Lcom/naver/glink/android/sdk/ui/floating/a$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->f:Lcom/naver/glink/android/sdk/ui/floating/a$b;

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/ui/floating/a$b;->a()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/naver/glink/android/sdk/ui/floating/a;->c:Lcom/naver/glink/android/sdk/ui/floating/a;

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/a;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/a;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/a;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->g:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/a;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/a;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/a;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/a;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$style;->widget_show_animation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->d:Landroid/view/View;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/floating/a$1;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/floating/a$1;-><init>(Lcom/naver/glink/android/sdk/ui/floating/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->d:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/floating/a;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->d:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/floating/a;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->d:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/floating/a;->c(Landroid/view/View;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/a;->d:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/floating/a;->d(Landroid/view/View;)V

    return-void
.end method
