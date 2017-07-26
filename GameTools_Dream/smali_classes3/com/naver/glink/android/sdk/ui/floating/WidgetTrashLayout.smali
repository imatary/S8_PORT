.class public Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;
.super Landroid/widget/RelativeLayout;
.source "WidgetTrashLayout.java"


# static fields
.field private static a:I

.field private static volatile b:Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;


# instance fields
.field private c:Landroid/view/WindowManager$LayoutParams;

.field private d:Landroid/view/WindowManager;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static a()V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->b:Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->b:Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;

    iget-object v1, v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->d:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->b:Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;
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

    sput-object v4, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->b:Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->b:Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;

    if-nez v1, :cond_0

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->widget_trash_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;

    sput-object v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->b:Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;

    sget-object v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->b:Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->b(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static a(II)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->b:Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [I

    sget-object v3, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->b:Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;

    iget-object v3, v3, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->e:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v1

    sget v4, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->a:I

    sub-int/2addr v3, v4

    if-lt p0, v3, :cond_0

    aget v3, v2, v1

    sget-object v4, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->b:Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;

    iget-object v4, v4, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->e:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->a:I

    add-int/2addr v3, v4

    if-gt p0, v3, :cond_0

    aget v3, v2, v0

    sget v4, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->a:I

    sub-int/2addr v3, v4

    if-lt p1, v3, :cond_0

    aget v2, v2, v0

    sget-object v3, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->b:Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;

    iget-object v3, v3, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->a:I

    add-int/2addr v2, v3

    if-gt p1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private b(Landroid/app/Activity;)V
    .locals 4

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->g:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->g:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :try_start_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->c:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->c:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->c:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->c:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->g:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/naver/glink/android/sdk/R$dimen;->glink_widget_size_normal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$dimen;->glink_trash_top_margine:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->c:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3ea

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->c:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x40008

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->d:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->d:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->btn_trash:I

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->e:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->trash_background:I

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->f:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$dimen;->glink_widget_size_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "glink"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[error] addToWindow. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->b:Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->b:Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setBackgoundVisible(I)V
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->b:Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->b:Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->f:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    sput-object v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;->b:Lcom/naver/glink/android/sdk/ui/floating/WidgetTrashLayout;

    return-void
.end method
