.class final Lcom/amap/api/mapcore2d/n$1;
.super Ljava/lang/Object;
.source "BaseMapTile.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore2d/n;->c()Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v2, 0x0

    invoke-static {}, Lcom/amap/api/mapcore2d/n;->b()Landroid/graphics/Paint;

    move-result-object v5

    invoke-static {}, Lcom/amap/api/mapcore2d/n;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v0, 0x0

    move v12, v0

    :goto_0
    sget v0, Lcom/amap/api/mapcore2d/y;->i:I

    sget v1, Lcom/amap/api/mapcore2d/y;->j:I

    sub-int/2addr v0, v1

    if-ge v12, v0, :cond_0

    int-to-float v1, v12

    int-to-float v3, v12

    sget v0, Lcom/amap/api/mapcore2d/y;->i:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v8, v12

    sget v0, Lcom/amap/api/mapcore2d/y;->i:I

    int-to-float v9, v0

    int-to-float v10, v12

    move-object v6, p1

    move v7, v2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sget v0, Lcom/amap/api/mapcore2d/y;->j:I

    add-int/2addr v0, v12

    move v12, v0

    goto :goto_0

    :cond_0
    return-void
.end method
