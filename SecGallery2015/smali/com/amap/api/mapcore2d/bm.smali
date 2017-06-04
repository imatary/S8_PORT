.class abstract Lcom/amap/api/mapcore2d/bm;
.super Ljava/lang/Object;
.source "MultiTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/bm$a;,
        Lcom/amap/api/mapcore2d/bm$b;
    }
.end annotation


# static fields
.field static j:F

.field private static p:Ljava/lang/reflect/Method;

.field private static q:Ljava/lang/reflect/Method;

.field private static r:Z

.field private static s:Z


# instance fields
.field a:Lcom/amap/api/mapcore2d/bm$b;

.field b:I

.field c:Landroid/graphics/Matrix;

.field d:Landroid/graphics/Matrix;

.field e:Landroid/graphics/PointF;

.field f:Landroid/graphics/PointF;

.field g:Landroid/graphics/PointF;

.field h:F

.field i:F

.field k:Z

.field l:Z

.field m:Z

.field public n:I

.field public o:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/amap/api/mapcore2d/bm;->j:F

    sput-boolean v1, Lcom/amap/api/mapcore2d/bm;->r:Z

    sput-boolean v1, Lcom/amap/api/mapcore2d/bm;->s:Z

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/amap/api/mapcore2d/bm;->b:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bm;->c:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bm;->d:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bm;->e:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bm;->f:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bm;->g:Landroid/graphics/PointF;

    iput v2, p0, Lcom/amap/api/mapcore2d/bm;->h:F

    iput v2, p0, Lcom/amap/api/mapcore2d/bm;->i:F

    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/bm;->k:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/bm;->l:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/bm;->m:Z

    iput v1, p0, Lcom/amap/api/mapcore2d/bm;->n:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/bm;->o:J

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/mapcore2d/bm$b;)Lcom/amap/api/mapcore2d/bm$a;
    .locals 1

    new-instance v0, Lcom/amap/api/mapcore2d/bm$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/bm$a;-><init>()V

    iput-object p1, v0, Lcom/amap/api/mapcore2d/bm$a;->a:Lcom/amap/api/mapcore2d/bm$b;

    return-object v0
.end method

.method static synthetic a(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-static {p0}, Lcom/amap/api/mapcore2d/bm;->b(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/amap/api/mapcore2d/bm;->r:Z

    return v0
.end method

.method static synthetic b()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lcom/amap/api/mapcore2d/bm;->p:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static b(Landroid/view/MotionEvent;)V
    .locals 6

    const/4 v2, 0x1

    const-string/jumbo v1, "checkSDKForMuti"

    sget-boolean v0, Lcom/amap/api/mapcore2d/bm;->s:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean v2, Lcom/amap/api/mapcore2d/bm;->s:Z

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "getX"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/bm;->p:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "getY"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/bm;->q:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/amap/api/mapcore2d/bm;->p:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amap/api/mapcore2d/bm;->q:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/mapcore2d/bm;->r:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MutiTouchGestureDetector"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lcom/amap/api/mapcore2d/bm;->q:Ljava/lang/reflect/Method;

    return-object v0
.end method
