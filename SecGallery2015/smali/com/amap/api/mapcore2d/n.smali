.class Lcom/amap/api/mapcore2d/n;
.super Ljava/lang/Object;
.source "BaseMapTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/n$a;
    }
.end annotation


# static fields
.field private static a:Landroid/graphics/Paint;

.field private static b:Landroid/graphics/Bitmap;

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/mapcore2d/n;->a:Landroid/graphics/Paint;

    sput-object v0, Lcom/amap/api/mapcore2d/n;->b:Landroid/graphics/Bitmap;

    const/16 v0, 0xde

    const/16 v1, 0xd7

    const/16 v2, 0xd6

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/amap/api/mapcore2d/n;->c:I

    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, Lcom/amap/api/mapcore2d/n;->c:I

    return v0
.end method

.method public static declared-synchronized b()Landroid/graphics/Paint;
    .locals 4

    const-class v1, Lcom/amap/api/mapcore2d/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/n;->a:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore2d/n;->a:Landroid/graphics/Paint;

    sget-object v0, Lcom/amap/api/mapcore2d/n;->a:Landroid/graphics/Paint;

    const v2, -0x777778

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/amap/api/mapcore2d/n;->a:Landroid/graphics/Paint;

    const/16 v2, 0x5a

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    sget-object v2, Lcom/amap/api/mapcore2d/n;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_0
    sget-object v0, Lcom/amap/api/mapcore2d/n;->a:Landroid/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x40200000    # 2.5f
    .end array-data
.end method

.method public static declared-synchronized c()Landroid/graphics/Bitmap;
    .locals 5

    const-class v1, Lcom/amap/api/mapcore2d/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/n;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore2d/n$1;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/n$1;-><init>()V

    new-instance v2, Lcom/amap/api/mapcore2d/o;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-direct {v2, v3}, Lcom/amap/api/mapcore2d/o;-><init>(Landroid/graphics/Bitmap$Config;)V

    sget v3, Lcom/amap/api/mapcore2d/y;->i:I

    sget v4, Lcom/amap/api/mapcore2d/y;->i:I

    invoke-virtual {v2, v3, v4}, Lcom/amap/api/mapcore2d/o;->a(II)V

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore2d/o;->a(Lcom/amap/api/mapcore2d/p;)V

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/o;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/n;->b:Landroid/graphics/Bitmap;

    :cond_0
    sget-object v0, Lcom/amap/api/mapcore2d/n;->b:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
