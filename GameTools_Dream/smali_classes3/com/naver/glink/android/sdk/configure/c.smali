.class public Lcom/naver/glink/android/sdk/configure/c;
.super Lcom/naver/glink/android/sdk/model/BaseModel;
.source "SdkSize.java"


# static fields
.field private static final h:Ljava/lang/String; = "GlinkViewSize"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:F

.field public final e:I

.field public final f:I

.field public final g:I

.field private final i:Landroid/graphics/Point;

.field private final j:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/model/BaseModel;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/c;->i:Landroid/graphics/Point;

    iput-boolean v1, p0, Lcom/naver/glink/android/sdk/configure/c;->a:Z

    iput v1, p0, Lcom/naver/glink/android/sdk/configure/c;->b:I

    iput v1, p0, Lcom/naver/glink/android/sdk/configure/c;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/naver/glink/android/sdk/configure/c;->d:F

    iput v1, p0, Lcom/naver/glink/android/sdk/configure/c;->e:I

    iput v1, p0, Lcom/naver/glink/android/sdk/configure/c;->f:I

    iput v1, p0, Lcom/naver/glink/android/sdk/configure/c;->j:I

    iput v1, p0, Lcom/naver/glink/android/sdk/configure/c;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/naver/glink/android/sdk/configure/c;->b(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    invoke-static {p1}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/naver/glink/android/sdk/configure/c;-><init>(Landroid/graphics/Point;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Point;Z)V
    .locals 8

    const/high16 v3, 0x42300000    # 44.0f

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/model/BaseModel;-><init>()V

    iput-object p1, p0, Lcom/naver/glink/android/sdk/configure/c;->i:Landroid/graphics/Point;

    iput-boolean p2, p0, Lcom/naver/glink/android/sdk/configure/c;->a:Z

    invoke-static {v3}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v1

    const/high16 v0, 0x42080000    # 34.0f

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v2

    invoke-static {v3}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v0

    int-to-float v0, v0

    if-eqz p2, :cond_0

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int/lit8 v3, v3, 0xe

    iput v3, p0, Lcom/naver/glink/android/sdk/configure/c;->e:I

    iget v3, p0, Lcom/naver/glink/android/sdk/configure/c;->e:I

    int-to-float v3, v3

    div-float v0, v3, v0

    iput v0, p0, Lcom/naver/glink/android/sdk/configure/c;->d:F

    iget v0, p0, Lcom/naver/glink/android/sdk/configure/c;->e:I

    iput v0, p0, Lcom/naver/glink/android/sdk/configure/c;->f:I

    iget v0, p0, Lcom/naver/glink/android/sdk/configure/c;->e:I

    mul-int/lit8 v0, v0, 0xd

    add-int/2addr v0, v1

    iput v0, p0, Lcom/naver/glink/android/sdk/configure/c;->b:I

    iget v0, p0, Lcom/naver/glink/android/sdk/configure/c;->e:I

    mul-int/lit8 v0, v0, 0x6

    add-int/2addr v0, v2

    iput v0, p0, Lcom/naver/glink/android/sdk/configure/c;->c:I

    iget v0, p0, Lcom/naver/glink/android/sdk/configure/c;->e:I

    mul-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/naver/glink/android/sdk/configure/c;->j:I

    iget v0, p0, Lcom/naver/glink/android/sdk/configure/c;->j:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/naver/glink/android/sdk/configure/c;->g:I

    :goto_0
    invoke-direct {p0}, Lcom/naver/glink/android/sdk/configure/c;->d()V

    return-void

    :cond_0
    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int/lit8 v3, v3, 0xe

    iput v3, p0, Lcom/naver/glink/android/sdk/configure/c;->f:I

    iget v3, p0, Lcom/naver/glink/android/sdk/configure/c;->f:I

    int-to-float v3, v3

    div-float v0, v3, v0

    iput v0, p0, Lcom/naver/glink/android/sdk/configure/c;->d:F

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    float-to-double v4, v0

    const-wide v6, 0x3ffd99999999999aL    # 1.85

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_2

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v3

    iget v0, p0, Lcom/naver/glink/android/sdk/configure/c;->f:I

    mul-int/lit8 v0, v0, 0x6

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    iget v4, p1, Landroid/graphics/Point;->x:I

    if-le v0, v4, :cond_1

    iget v0, p1, Landroid/graphics/Point;->x:I

    :goto_1
    iput v0, p0, Lcom/naver/glink/android/sdk/configure/c;->b:I

    iget v0, p0, Lcom/naver/glink/android/sdk/configure/c;->f:I

    mul-int/lit8 v0, v0, 0x6

    int-to-double v4, v0

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    div-int/lit8 v3, v3, 0x5

    add-int/2addr v0, v3

    iput v0, p0, Lcom/naver/glink/android/sdk/configure/c;->e:I

    :goto_2
    iget v0, p0, Lcom/naver/glink/android/sdk/configure/c;->f:I

    mul-int/lit8 v0, v0, 0xc

    add-int/2addr v0, v2

    iput v0, p0, Lcom/naver/glink/android/sdk/configure/c;->c:I

    iget v0, p0, Lcom/naver/glink/android/sdk/configure/c;->b:I

    iput v0, p0, Lcom/naver/glink/android/sdk/configure/c;->j:I

    iget v0, p0, Lcom/naver/glink/android/sdk/configure/c;->j:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/naver/glink/android/sdk/configure/c;->g:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/naver/glink/android/sdk/configure/c;->f:I

    mul-int/lit8 v0, v0, 0x6

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/naver/glink/android/sdk/configure/c;->f:I

    mul-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    iget v3, p1, Landroid/graphics/Point;->x:I

    if-le v0, v3, :cond_3

    iget v0, p1, Landroid/graphics/Point;->x:I

    :goto_3
    iput v0, p0, Lcom/naver/glink/android/sdk/configure/c;->b:I

    iget v0, p0, Lcom/naver/glink/android/sdk/configure/c;->f:I

    mul-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/naver/glink/android/sdk/configure/c;->e:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/naver/glink/android/sdk/configure/c;->f:I

    mul-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    goto :goto_3
.end method

.method public static a(II)Landroid/support/v4/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x1000

    if-gt p0, v0, :cond_0

    if-gt p1, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/util/Pair;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit16 v0, v0, -0x1000

    int-to-float v0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p0

    mul-float/2addr v1, v0

    float-to-int v1, v1

    sub-int v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    int-to-float v2, p1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/support/v4/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/util/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Lcom/naver/glink/android/sdk/configure/c;
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/configure/c;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/configure/c;-><init>()V

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 2

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->m()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "GlinkViewSize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "device size x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/configure/c;->i:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/configure/c;->i:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "GlinkViewSize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "buttonWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/naver/glink/android/sdk/configure/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", buttonHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/naver/glink/android/sdk/configure/c;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "GlinkViewSize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/naver/glink/android/sdk/configure/c;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/naver/glink/android/sdk/configure/c;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "GlinkViewSize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "contentWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/naver/glink/android/sdk/configure/c;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "GlinkViewSize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bannerWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/naver/glink/android/sdk/configure/c;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "GlinkViewSize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ratio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/naver/glink/android/sdk/configure/c;->d:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    int-to-float v0, p1

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/naver/glink/android/sdk/configure/c;->d:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    goto :goto_0
.end method

.method public a(Landroid/view/View;II)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/naver/glink/android/sdk/configure/c;->a(I)I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/naver/glink/android/sdk/configure/c;->a(I)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/naver/glink/android/sdk/a/s;->a(Landroid/view/View;II)V

    return-void
.end method

.method public b()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/configure/c;->i:Landroid/graphics/Point;

    return-object v0
.end method

.method public c()I
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/naver/glink/android/sdk/configure/c;->j:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/naver/glink/android/sdk/configure/c;->e:I

    mul-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method
