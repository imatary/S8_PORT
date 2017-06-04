.class Lcom/amap/api/mapcore2d/bl;
.super Ljava/lang/Object;
.source "Mediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/bl$1;,
        Lcom/amap/api/mapcore2d/bl$d;,
        Lcom/amap/api/mapcore2d/bl$a;,
        Lcom/amap/api/mapcore2d/bl$e;,
        Lcom/amap/api/mapcore2d/bl$b;,
        Lcom/amap/api/mapcore2d/bl$c;
    }
.end annotation


# instance fields
.field public a:Lcom/amap/api/mapcore2d/bl$e;

.field public b:Lcom/amap/api/mapcore2d/bl$d;

.field public c:Lcom/amap/api/mapcore2d/bl$b;

.field public d:Lcom/amap/api/mapcore2d/bl$a;

.field public e:Lcom/amap/api/mapcore2d/bl$c;

.field public f:Lcom/amap/api/mapcore2d/ac;

.field public g:Lcom/amap/api/mapcore2d/b;

.field public h:Lcom/amap/api/mapcore2d/bh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/b;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iput-object p2, p0, Lcom/amap/api/mapcore2d/bl;->g:Lcom/amap/api/mapcore2d/b;

    new-instance v0, Lcom/amap/api/mapcore2d/bl$d;

    invoke-direct {v0, p0, p2, v2}, Lcom/amap/api/mapcore2d/bl$d;-><init>(Lcom/amap/api/mapcore2d/bl;Lcom/amap/api/mapcore2d/b;Lcom/amap/api/mapcore2d/bl$1;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    new-instance v0, Lcom/amap/api/mapcore2d/bh;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/bh;-><init>(Lcom/amap/api/mapcore2d/bl$d;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bh;->a()V

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bl;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/amap/api/mapcore2d/bl$c;

    invoke-direct {v0, p0, p0, p1, v2}, Lcom/amap/api/mapcore2d/bl$c;-><init>(Lcom/amap/api/mapcore2d/bl;Lcom/amap/api/mapcore2d/bl;Landroid/content/Context;Lcom/amap/api/mapcore2d/bl$1;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bl;->e:Lcom/amap/api/mapcore2d/bl$c;

    new-instance v0, Lcom/amap/api/mapcore2d/bl$a;

    invoke-direct {v0, p0, p1, v2}, Lcom/amap/api/mapcore2d/bl$a;-><init>(Lcom/amap/api/mapcore2d/bl;Landroid/content/Context;Lcom/amap/api/mapcore2d/bl$1;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    new-instance v0, Lcom/amap/api/mapcore2d/bl$e;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/bl$e;-><init>(Lcom/amap/api/mapcore2d/bl;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bl;->a:Lcom/amap/api/mapcore2d/bl$e;

    new-instance v0, Lcom/amap/api/mapcore2d/bl$b;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/bl$b;-><init>(Lcom/amap/api/mapcore2d/bl;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bl;->c:Lcom/amap/api/mapcore2d/bl$b;

    new-instance v0, Lcom/amap/api/mapcore2d/ac;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/ac;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bl;->f:Lcom/amap/api/mapcore2d/ac;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0, v3, v3}, Lcom/amap/api/mapcore2d/bl$d;->a(ZZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$a;->a()V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/bl;->a:Lcom/amap/api/mapcore2d/bl$e;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/bl;->c:Lcom/amap/api/mapcore2d/bl$b;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/bl;->e:Lcom/amap/api/mapcore2d/bl$c;

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 13

    const/16 v1, 0xa0

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const-wide/32 v8, 0x25800

    const-string/jumbo v3, "initialize"

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v5, "densityDpi"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_5

    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v2, v5

    int-to-long v6, v2

    :try_start_1
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v0

    :goto_1
    const/16 v2, 0x78

    if-gt v0, v2, :cond_0

    sput v10, Lcom/amap/api/mapcore2d/y;->l:I

    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v5, "Mediator"

    invoke-static {v0, v5, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v5, "Mediator"

    invoke-static {v0, v5, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v2, "Mediator"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :catch_3
    move-exception v0

    const-string/jumbo v2, "Mediator"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_0
    if-gt v0, v1, :cond_1

    sput v12, Lcom/amap/api/mapcore2d/y;->l:I

    goto :goto_2

    :cond_1
    const/16 v1, 0xf0

    if-gt v0, v1, :cond_2

    sput v11, Lcom/amap/api/mapcore2d/y;->l:I

    goto :goto_2

    :cond_2
    cmp-long v0, v6, v8

    if-lez v0, :cond_3

    sput v11, Lcom/amap/api/mapcore2d/y;->l:I

    goto :goto_2

    :cond_3
    cmp-long v0, v6, v8

    if-gez v0, :cond_4

    sput v10, Lcom/amap/api/mapcore2d/y;->l:I

    goto :goto_2

    :cond_4
    sput v12, Lcom/amap/api/mapcore2d/y;->l:I

    goto :goto_2

    :cond_5
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v2, v0, v8

    if-lez v2, :cond_6

    sput v11, Lcom/amap/api/mapcore2d/y;->l:I

    goto :goto_2

    :cond_6
    cmp-long v0, v0, v8

    if-gez v0, :cond_7

    sput v10, Lcom/amap/api/mapcore2d/y;->l:I

    goto :goto_2

    :cond_7
    sput v12, Lcom/amap/api/mapcore2d/y;->l:I

    goto :goto_2
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bl$a;->b(Z)V

    return-void
.end method
