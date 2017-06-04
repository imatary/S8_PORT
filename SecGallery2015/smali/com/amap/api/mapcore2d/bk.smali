.class Lcom/amap/api/mapcore2d/bk;
.super Ljava/lang/Object;
.source "MarkerDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/ak;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/bk$1;,
        Lcom/amap/api/mapcore2d/bk$a;
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private b:I

.field private c:F

.field private d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/maps2d/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Lcom/amap/api/maps2d/model/LatLng;

.field private h:Lcom/amap/api/maps2d/model/LatLng;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:F

.field private l:F

.field private m:Z

.field private n:Z

.field private o:Lcom/amap/api/mapcore2d/be;

.field private p:Ljava/lang/Object;

.field private q:Z

.field private r:Lcom/amap/api/mapcore2d/bk$a;

.field private s:Z

.field private t:I

.field private u:I

.field private v:F

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/amap/api/mapcore2d/bk;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps2d/model/MarkerOptions;Lcom/amap/api/mapcore2d/be;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/amap/api/mapcore2d/bk;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore2d/bk;->c:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/mapcore2d/bk;->e:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/amap/api/mapcore2d/bk;->k:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/mapcore2d/bk;->l:F

    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/bk;->m:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/bk;->n:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/bk;->q:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/bk;->s:Z

    const-string/jumbo v1, "MarkerDelegateImp"

    iput-object p2, p0, Lcom/amap/api/mapcore2d/bk;->o:Lcom/amap/api/mapcore2d/be;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->isGps()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bk;->q:Z

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getZIndex()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/bk;->v:F

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bk;->q:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    iget-wide v2, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    iget-wide v4, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/mapcore2d/fd;->a(DD)[D

    move-result-object v0

    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    const/4 v3, 0x0

    aget-wide v6, v0, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/bk;->h:Lcom/amap/api/maps2d/model/LatLng;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bk;->g:Lcom/amap/api/maps2d/model/LatLng;

    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getAnchorU()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/bk;->k:F

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getAnchorV()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/bk;->l:F

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->isVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bk;->n:Z

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bk;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bk;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->isDraggable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bk;->m:Z

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getPeriod()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/bk;->e:I

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bk;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getIcons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/bk;->b(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getIcon()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/bk;->b(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MarkerDelegateImp"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bk;->h:Lcom/amap/api/maps2d/model/LatLng;

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/bk;I)I
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore2d/bk;->b:I

    return p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/bk;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/bk;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore2d/bk;->b:I

    return v0
.end method

.method private b(FF)Lcom/amap/api/mapcore2d/an;
    .locals 8

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    iget v2, p0, Lcom/amap/api/mapcore2d/bk;->c:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    new-instance v1, Lcom/amap/api/mapcore2d/an;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/an;-><init>()V

    float-to-double v2, p1

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    float-to-double v4, p2

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Lcom/amap/api/mapcore2d/an;->a:I

    float-to-double v2, p2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    float-to-double v4, p1

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Lcom/amap/api/mapcore2d/an;->b:I

    return-object v1
.end method

.method private b(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk;->w()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->clone()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/amap/api/mapcore2d/bk;)I
    .locals 2

    iget v0, p0, Lcom/amap/api/mapcore2d/bk;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/mapcore2d/bk;->b:I

    return v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget v0, Lcom/amap/api/mapcore2d/bk;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/mapcore2d/bk;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/amap/api/mapcore2d/bk;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore2d/bk;)Lcom/amap/api/mapcore2d/be;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->o:Lcom/amap/api/mapcore2d/be;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/mapcore2d/bk;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore2d/bk;->e:I

    return v0
.end method


# virtual methods
.method public A()Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk;->w()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->defaultMarker()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk;->A()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method public B()F
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore2d/bk;->k:F

    return v0
.end method

.method public C()F
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore2d/bk;->l:F

    return v0
.end method

.method public a(Landroid/graphics/Canvas;Lcom/amap/api/mapcore2d/ag;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bk;->n:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk;->t()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk;->A()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/amap/api/mapcore2d/an;

    iget v1, p0, Lcom/amap/api/mapcore2d/bk;->t:I

    iget v3, p0, Lcom/amap/api/mapcore2d/bk;->u:I

    invoke-direct {v0, v1, v3}, Lcom/amap/api/mapcore2d/an;-><init>(II)V

    move-object v1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk;->p()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v4, :cond_3

    iget v3, p0, Lcom/amap/api/mapcore2d/bk;->b:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v3, p0, Lcom/amap/api/mapcore2d/bk;->c:F

    iget v4, v1, Lcom/amap/api/mapcore2d/an;->a:I

    int-to-float v4, v4

    iget v5, v1, Lcom/amap/api/mapcore2d/an;->b:I

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v3, v1, Lcom/amap/api/mapcore2d/an;->a:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk;->B()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v1, v1, Lcom/amap/api/mapcore2d/an;->b:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk;->C()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk;->z()Lcom/amap/api/mapcore2d/an;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v2

    goto :goto_2
.end method

.method public a(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->o:Lcom/amap/api/mapcore2d/be;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/be;->e(Lcom/amap/api/mapcore2d/ak;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->o:Lcom/amap/api/mapcore2d/be;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/be;->d(Lcom/amap/api/mapcore2d/ak;)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bk;->q:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bk;->h:Lcom/amap/api/maps2d/model/LatLng;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bk;->g:Lcom/amap/api/maps2d/model/LatLng;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bk;->i:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bk;->m:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->o:Lcom/amap/api/mapcore2d/be;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/be;->b(Lcom/amap/api/mapcore2d/ak;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/amap/api/mapcore2d/ak;)Z
    .locals 2

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ak;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Landroid/graphics/Rect;
    .locals 11

    const/4 v2, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk;->z()Lcom/amap/api/mapcore2d/an;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk;->n()I

    move-result v2

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk;->y()I

    move-result v3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v4, p0, Lcom/amap/api/mapcore2d/bk;->c:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    iget v4, v1, Lcom/amap/api/mapcore2d/an;->b:I

    int-to-float v4, v4

    int-to-float v5, v3

    iget v6, p0, Lcom/amap/api/mapcore2d/bk;->l:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget v4, v1, Lcom/amap/api/mapcore2d/an;->a:I

    int-to-float v4, v4

    iget v5, p0, Lcom/amap/api/mapcore2d/bk;->k:F

    int-to-float v6, v2

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget v4, v1, Lcom/amap/api/mapcore2d/an;->b:I

    int-to-float v4, v4

    int-to-float v3, v3

    iget v5, p0, Lcom/amap/api/mapcore2d/bk;->l:F

    sub-float v5, v9, v5

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Lcom/amap/api/mapcore2d/an;->a:I

    int-to-float v1, v1

    iget v3, p0, Lcom/amap/api/mapcore2d/bk;->k:F

    sub-float v3, v9, v3

    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/amap/api/mapcore2d/bk;->k:F

    neg-float v4, v4

    int-to-float v5, v2

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/amap/api/mapcore2d/bk;->l:F

    sub-float/2addr v5, v9

    int-to-float v6, v3

    mul-float/2addr v5, v6

    invoke-direct {p0, v4, v5}, Lcom/amap/api/mapcore2d/bk;->b(FF)Lcom/amap/api/mapcore2d/an;

    move-result-object v4

    iget v5, p0, Lcom/amap/api/mapcore2d/bk;->k:F

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/amap/api/mapcore2d/bk;->l:F

    int-to-float v7, v3

    mul-float/2addr v6, v7

    invoke-direct {p0, v5, v6}, Lcom/amap/api/mapcore2d/bk;->b(FF)Lcom/amap/api/mapcore2d/an;

    move-result-object v5

    iget v6, p0, Lcom/amap/api/mapcore2d/bk;->k:F

    sub-float v6, v9, v6

    int-to-float v7, v2

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/amap/api/mapcore2d/bk;->l:F

    int-to-float v8, v3

    mul-float/2addr v7, v8

    invoke-direct {p0, v6, v7}, Lcom/amap/api/mapcore2d/bk;->b(FF)Lcom/amap/api/mapcore2d/an;

    move-result-object v6

    iget v7, p0, Lcom/amap/api/mapcore2d/bk;->k:F

    sub-float v7, v9, v7

    int-to-float v2, v2

    mul-float/2addr v2, v7

    iget v7, p0, Lcom/amap/api/mapcore2d/bk;->l:F

    sub-float/2addr v7, v9

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-direct {p0, v2, v3}, Lcom/amap/api/mapcore2d/bk;->b(FF)Lcom/amap/api/mapcore2d/an;

    move-result-object v2

    iget v3, v1, Lcom/amap/api/mapcore2d/an;->b:I

    iget v7, v4, Lcom/amap/api/mapcore2d/an;->b:I

    iget v8, v5, Lcom/amap/api/mapcore2d/an;->b:I

    iget v9, v6, Lcom/amap/api/mapcore2d/an;->b:I

    iget v10, v2, Lcom/amap/api/mapcore2d/an;->b:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int/2addr v3, v7

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget v3, v1, Lcom/amap/api/mapcore2d/an;->a:I

    iget v7, v4, Lcom/amap/api/mapcore2d/an;->a:I

    iget v8, v5, Lcom/amap/api/mapcore2d/an;->a:I

    iget v9, v6, Lcom/amap/api/mapcore2d/an;->a:I

    iget v10, v2, Lcom/amap/api/mapcore2d/an;->a:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/2addr v3, v7

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v3, v1, Lcom/amap/api/mapcore2d/an;->b:I

    iget v7, v4, Lcom/amap/api/mapcore2d/an;->b:I

    iget v8, v5, Lcom/amap/api/mapcore2d/an;->b:I

    iget v9, v6, Lcom/amap/api/mapcore2d/an;->b:I

    iget v10, v2, Lcom/amap/api/mapcore2d/an;->b:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int/2addr v3, v7

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Lcom/amap/api/mapcore2d/an;->a:I

    iget v3, v4, Lcom/amap/api/mapcore2d/an;->a:I

    iget v4, v5, Lcom/amap/api/mapcore2d/an;->a:I

    iget v5, v6, Lcom/amap/api/mapcore2d/an;->a:I

    iget v2, v2, Lcom/amap/api/mapcore2d/an;->a:I

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0
.end method

.method public b(F)V
    .locals 1

    iput p1, p0, Lcom/amap/api/mapcore2d/bk;->v:F

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->o:Lcom/amap/api/mapcore2d/be;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/be;->d()V

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore2d/bk;->w:I

    return-void
.end method

.method public b(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v1, "setPosition"

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bk;->q:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v4, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/mapcore2d/fd;->a(DD)[D

    move-result-object v0

    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    const/4 v3, 0x0

    aget-wide v6, v0, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/bk;->h:Lcom/amap/api/maps2d/model/LatLng;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput-boolean v8, p0, Lcom/amap/api/mapcore2d/bk;->s:Z

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bk;->g:Lcom/amap/api/maps2d/model/LatLng;

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MarkerDelegateImp"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bk;->h:Lcom/amap/api/maps2d/model/LatLng;

    goto :goto_0
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps2d/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk;->w()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->clone()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->r:Lcom/amap/api/mapcore2d/bk$a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/mapcore2d/bk$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore2d/bk$a;-><init>(Lcom/amap/api/mapcore2d/bk;Lcom/amap/api/mapcore2d/bk$1;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bk;->r:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->r:Lcom/amap/api/mapcore2d/bk$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk$a;->start()V

    :cond_2
    return-void
.end method

.method public c()Lcom/amap/api/maps2d/model/LatLng;
    .locals 6

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bk;->s:Z

    if-eqz v0, :cond_0

    new-instance v1, Lcom/amap/api/mapcore2d/aa;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/aa;-><init>()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->o:Lcom/amap/api/mapcore2d/be;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/b;

    iget v2, p0, Lcom/amap/api/mapcore2d/bk;->t:I

    iget v3, p0, Lcom/amap/api/mapcore2d/bk;->u:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/aa;)V

    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/mapcore2d/aa;->b:D

    iget-wide v4, v1, Lcom/amap/api/mapcore2d/aa;->a:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bk;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->h:Lcom/amap/api/maps2d/model/LatLng;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->g:Lcom/amap/api/maps2d/model/LatLng;

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Marker"

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bk;->f:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/amap/api/mapcore2d/ab;
    .locals 3

    new-instance v0, Lcom/amap/api/mapcore2d/ab;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/ab;-><init>()V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk;->n()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/amap/api/mapcore2d/bk;->k:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/amap/api/mapcore2d/ab;->a:F

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk;->y()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/amap/api/mapcore2d/bk;->l:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/amap/api/mapcore2d/ab;->b:F

    :cond_0
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->i:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->j:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bk;->m:Z

    return v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->o:Lcom/amap/api/mapcore2d/be;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/be;->f(Lcom/amap/api/mapcore2d/ak;)Z

    move-result v0

    return v0
.end method

.method public l()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "destroy"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MarkerDelegateImp"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "destroy erro"

    const-string/jumbo v1, "MarkerDelegateImp destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iput-object v3, p0, Lcom/amap/api/mapcore2d/bk;->r:Lcom/amap/api/mapcore2d/bk$a;

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bk;->g:Lcom/amap/api/maps2d/model/LatLng;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bk;->p:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public m()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk;->A()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->getWidth()I

    move-result v0

    return v0
.end method

.method public p()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps2d/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bk;->s:Z

    return v0
.end method

.method public r()F
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore2d/bk;->v:F

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bk;->n:Z

    return v0
.end method

.method public t()Lcom/amap/api/maps2d/model/LatLng;
    .locals 6

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bk;->s:Z

    if-eqz v0, :cond_0

    new-instance v1, Lcom/amap/api/mapcore2d/aa;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/aa;-><init>()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->o:Lcom/amap/api/mapcore2d/be;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/b;

    iget v2, p0, Lcom/amap/api/mapcore2d/bk;->t:I

    iget v3, p0, Lcom/amap/api/mapcore2d/bk;->u:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/aa;)V

    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/mapcore2d/aa;->b:D

    iget-wide v4, v1, Lcom/amap/api/mapcore2d/aa;->a:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->g:Lcom/amap/api/maps2d/model/LatLng;

    goto :goto_0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore2d/bk;->w:I

    return v0
.end method

.method w()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    goto :goto_0
.end method

.method public x()Lcom/amap/api/mapcore2d/an;
    .locals 8

    const-wide v6, 0x412e848000000000L    # 1000000.0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk;->t()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/amap/api/mapcore2d/an;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/an;-><init>()V

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bk;->q:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/amap/api/mapcore2d/ae;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk;->c()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk;->c()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v3

    iget-wide v4, v3, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v0, v2, v3}, Lcom/amap/api/mapcore2d/ae;-><init>(II)V

    :goto_1
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bk;->o:Lcom/amap/api/mapcore2d/be;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/be;->a()Lcom/amap/api/mapcore2d/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->s()Lcom/amap/api/mapcore2d/br;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/amap/api/mapcore2d/br;->a(Lcom/amap/api/mapcore2d/ae;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    iput v0, v1, Lcom/amap/api/mapcore2d/an;->a:I

    iget v0, v2, Landroid/graphics/Point;->y:I

    iput v0, v1, Lcom/amap/api/mapcore2d/an;->b:I

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/amap/api/mapcore2d/ae;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk;->t()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk;->t()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v3

    iget-wide v4, v3, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v0, v2, v3}, Lcom/amap/api/mapcore2d/ae;-><init>(II)V

    goto :goto_1
.end method

.method public y()I
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk;->A()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->getHeight()I

    move-result v0

    return v0
.end method

.method public z()Lcom/amap/api/mapcore2d/an;
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk;->x()Lcom/amap/api/mapcore2d/an;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method
