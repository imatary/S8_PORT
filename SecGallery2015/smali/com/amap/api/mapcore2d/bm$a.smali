.class public Lcom/amap/api/mapcore2d/bm$a;
.super Lcom/amap/api/mapcore2d/bm;
.source "MultiTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# instance fields
.field p:F

.field q:F

.field r:F

.field s:F

.field t:J

.field u:I

.field v:I


# direct methods
.method protected constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bm;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/bm$a;->t:J

    iput v2, p0, Lcom/amap/api/mapcore2d/bm$a;->u:I

    iput v2, p0, Lcom/amap/api/mapcore2d/bm$a;->v:I

    return-void
.end method

.method private a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const-string/jumbo v3, "midPoint"

    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore2d/bm;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {}, Lcom/amap/api/mapcore2d/bm;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    add-float/2addr v0, v1

    move v1, v0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/amap/api/mapcore2d/bm;->c()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {}, Lcom/amap/api/mapcore2d/bm;->c()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, p2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    move-result v0

    add-float v2, v4, v0

    :goto_1
    iget v0, p0, Lcom/amap/api/mapcore2d/bm$a;->u:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore2d/bm$a;->v:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore2d/bm$a;->u:I

    int-to-float v1, v0

    iget v0, p0, Lcom/amap/api/mapcore2d/bm$a;->v:I

    int-to-float v2, v0

    :cond_0
    div-float v0, v1, v8

    div-float v1, v2, v8

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MutiTouchGestureDetector"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "MutiTouchGestureDetector"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v1, "MutiTouchGestureDetector"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :catch_3
    move-exception v0

    const-string/jumbo v4, "MutiTouchGestureDetector"

    invoke-static {v0, v4, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_4
    move-exception v0

    const-string/jumbo v4, "MutiTouchGestureDetector"

    invoke-static {v0, v4, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_5
    move-exception v0

    const-string/jumbo v4, "MutiTouchGestureDetector"

    invoke-static {v0, v4, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private b(Landroid/view/MotionEvent;)F
    .locals 8

    const/4 v2, 0x0

    const-string/jumbo v3, "distance"

    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore2d/bm;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {}, Lcom/amap/api/mapcore2d/bm;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    sub-float v0, v1, v0

    move v1, v0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/amap/api/mapcore2d/bm;->c()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {}, Lcom/amap/api/mapcore2d/bm;->c()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    move-result v0

    sub-float v2, v4, v0

    :goto_1
    mul-float v0, v1, v1

    mul-float v1, v2, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MutiTouchGestureDetector"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "MutiTouchGestureDetector"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v1, "MutiTouchGestureDetector"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :catch_3
    move-exception v0

    const-string/jumbo v4, "MutiTouchGestureDetector"

    invoke-static {v0, v4, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_4
    move-exception v0

    const-string/jumbo v4, "MutiTouchGestureDetector"

    invoke-static {v0, v4, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_5
    move-exception v0

    const-string/jumbo v4, "MutiTouchGestureDetector"

    invoke-static {v0, v4, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;II)Z
    .locals 8

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput p2, p0, Lcom/amap/api/mapcore2d/bm$a;->u:I

    iput p3, p0, Lcom/amap/api/mapcore2d/bm$a;->v:I

    invoke-static {p1}, Lcom/amap/api/mapcore2d/bm;->a(Landroid/view/MotionEvent;)V

    invoke-static {}, Lcom/amap/api/mapcore2d/bm;->a()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    :cond_1
    :pswitch_0
    move v0, v2

    :cond_2
    :goto_1
    move v2, v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/amap/api/mapcore2d/bm$a;->t:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore2d/bm$a;->p:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore2d/bm$a;->q:F

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bm$a;->d:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bm$a;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bm$a;->e:Landroid/graphics/PointF;

    iget v3, p0, Lcom/amap/api/mapcore2d/bm$a;->p:F

    iget v4, p0, Lcom/amap/api/mapcore2d/bm$a;->q:F

    invoke-virtual {v1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    iput v0, p0, Lcom/amap/api/mapcore2d/bm$a;->b:I

    move v0, v2

    goto :goto_1

    :pswitch_2
    iget v1, p0, Lcom/amap/api/mapcore2d/bm$a;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amap/api/mapcore2d/bm$a;->n:I

    iget v1, p0, Lcom/amap/api/mapcore2d/bm$a;->n:I

    if-ne v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bm$a;->m:Z

    const/high16 v1, 0x3f800000    # 1.0f

    sput v1, Lcom/amap/api/mapcore2d/bm$a;->j:F

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bm$a;->b(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore2d/bm$a;->h:F

    iget v1, p0, Lcom/amap/api/mapcore2d/bm$a;->h:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bm$a;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bm$a;->d:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bm$a;->d:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bm$a;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bm$a;->f:Landroid/graphics/PointF;

    invoke-direct {p0, v1, p1}, Lcom/amap/api/mapcore2d/bm$a;->a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    iput v4, p0, Lcom/amap/api/mapcore2d/bm$a;->b:I

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bm$a;->k:Z

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bm$a;->a:Lcom/amap/api/mapcore2d/bm$b;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bm$a;->e:Landroid/graphics/PointF;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/bm$b;->a(Landroid/graphics/PointF;)Z

    move-result v0

    or-int/2addr v0, v2

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bm$a;->f:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, p0, Lcom/amap/api/mapcore2d/bm$a;->r:F

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bm$a;->f:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, p0, Lcom/amap/api/mapcore2d/bm$a;->s:F

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/bm$a;->o:J

    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/bm$a;->k:Z

    iput v2, p0, Lcom/amap/api/mapcore2d/bm$a;->b:I

    move v0, v2

    goto :goto_1

    :pswitch_4
    iget v1, p0, Lcom/amap/api/mapcore2d/bm$a;->n:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/amap/api/mapcore2d/bm$a;->n:I

    iget v1, p0, Lcom/amap/api/mapcore2d/bm$a;->n:I

    if-ne v1, v0, :cond_3

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bm$a;->m:Z

    iput v4, p0, Lcom/amap/api/mapcore2d/bm$a;->b:I

    :cond_3
    iget v0, p0, Lcom/amap/api/mapcore2d/bm$a;->n:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bm$a;->f:Landroid/graphics/PointF;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore2d/bm$a;->a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/bm$a;->l:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/bm$a;->m:Z

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bm$a;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bm$a;->a:Lcom/amap/api/mapcore2d/bm$b;

    iget v1, p0, Lcom/amap/api/mapcore2d/bm$a;->i:F

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bm$a;->f:Landroid/graphics/PointF;

    invoke-interface {v0, v1, v3}, Lcom/amap/api/mapcore2d/bm$b;->a(FLandroid/graphics/PointF;)Z

    move-result v0

    or-int/2addr v0, v2

    iput v2, p0, Lcom/amap/api/mapcore2d/bm$a;->b:I

    goto/16 :goto_1

    :pswitch_5
    iget v1, p0, Lcom/amap/api/mapcore2d/bm$a;->b:I

    if-ne v1, v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/amap/api/mapcore2d/bm$a;->c:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/amap/api/mapcore2d/bm$a;->d:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v4, p0, Lcom/amap/api/mapcore2d/bm$a;->c:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/amap/api/mapcore2d/bm$a;->e:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/amap/api/mapcore2d/bm$a;->e:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v4, p0, Lcom/amap/api/mapcore2d/bm$a;->a:Lcom/amap/api/mapcore2d/bm$b;

    iget v5, p0, Lcom/amap/api/mapcore2d/bm$a;->p:F

    sub-float v5, v1, v5

    iget v6, p0, Lcom/amap/api/mapcore2d/bm$a;->q:F

    sub-float v6, v3, v6

    invoke-interface {v4, v5, v6}, Lcom/amap/api/mapcore2d/bm$b;->a(FF)Z

    move-result v4

    or-int/2addr v2, v4

    iput v1, p0, Lcom/amap/api/mapcore2d/bm$a;->p:F

    iput v3, p0, Lcom/amap/api/mapcore2d/bm$a;->q:F

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bm$a;->a:Lcom/amap/api/mapcore2d/bm$b;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bm$a;->c:Landroid/graphics/Matrix;

    invoke-interface {v1, v3}, Lcom/amap/api/mapcore2d/bm$b;->a(Landroid/graphics/Matrix;)Z

    move-result v1

    or-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/amap/api/mapcore2d/bm$a;->t:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1e

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    :goto_2
    move v0, v1

    goto/16 :goto_1

    :cond_4
    iget v1, p0, Lcom/amap/api/mapcore2d/bm$a;->b:I

    if-ne v1, v4, :cond_1

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bm$a;->b(Landroid/view/MotionEvent;)F

    move-result v3

    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/mapcore2d/bm$a;->i:F

    cmpl-float v1, v3, v5

    if-lez v1, :cond_1

    iget v1, p0, Lcom/amap/api/mapcore2d/bm$a;->h:F

    sub-float v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x40a00000    # 5.0f

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bm$a;->c:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/bm$a;->d:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget v1, p0, Lcom/amap/api/mapcore2d/bm$a;->h:F

    cmpl-float v1, v3, v1

    if-lez v1, :cond_6

    iget v1, p0, Lcom/amap/api/mapcore2d/bm$a;->h:F

    div-float v1, v3, v1

    :goto_3
    iput v1, p0, Lcom/amap/api/mapcore2d/bm$a;->i:F

    iget v1, p0, Lcom/amap/api/mapcore2d/bm$a;->h:F

    div-float v1, v3, v1

    sput v1, Lcom/amap/api/mapcore2d/bm$a;->j:F

    iget v1, p0, Lcom/amap/api/mapcore2d/bm$a;->h:F

    cmpg-float v1, v3, v1

    if-gez v1, :cond_5

    iget v1, p0, Lcom/amap/api/mapcore2d/bm$a;->i:F

    neg-float v1, v1

    iput v1, p0, Lcom/amap/api/mapcore2d/bm$a;->i:F

    :cond_5
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bm$a;->g:Landroid/graphics/PointF;

    invoke-direct {p0, v1, p1}, Lcom/amap/api/mapcore2d/bm$a;->a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bm$a;->a:Lcom/amap/api/mapcore2d/bm$b;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/bm$a;->g:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v5, p0, Lcom/amap/api/mapcore2d/bm$a;->r:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/amap/api/mapcore2d/bm$a;->g:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/amap/api/mapcore2d/bm$a;->s:F

    sub-float/2addr v5, v6

    invoke-interface {v1, v4, v5}, Lcom/amap/api/mapcore2d/bm$b;->a(FF)Z

    move-result v1

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bm$a;->g:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, p0, Lcom/amap/api/mapcore2d/bm$a;->r:F

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bm$a;->g:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, p0, Lcom/amap/api/mapcore2d/bm$a;->s:F

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bm$a;->c:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/amap/api/mapcore2d/bm$a;->h:F

    div-float v4, v3, v4

    iget v5, p0, Lcom/amap/api/mapcore2d/bm$a;->h:F

    div-float/2addr v3, v5

    iget-object v5, p0, Lcom/amap/api/mapcore2d/bm$a;->f:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/amap/api/mapcore2d/bm$a;->f:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bm$a;->a:Lcom/amap/api/mapcore2d/bm$b;

    iget v3, p0, Lcom/amap/api/mapcore2d/bm$a;->i:F

    invoke-interface {v2, v3}, Lcom/amap/api/mapcore2d/bm$b;->c(F)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bm$a;->a:Lcom/amap/api/mapcore2d/bm$b;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bm$a;->c:Landroid/graphics/Matrix;

    invoke-interface {v2, v3}, Lcom/amap/api/mapcore2d/bm$b;->b(Landroid/graphics/Matrix;)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bm$a;->l:Z

    goto/16 :goto_2

    :cond_6
    iget v1, p0, Lcom/amap/api/mapcore2d/bm$a;->h:F

    div-float/2addr v1, v3

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
