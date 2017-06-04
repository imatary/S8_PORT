.class Lcom/amap/api/mapcore2d/b;
.super Landroid/view/View;
.source "AMapDelegateImpGLSurfaceView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/amap/api/mapcore2d/ag;
.implements Lcom/amap/api/mapcore2d/bm$b;
.implements Lcom/amap/api/mapcore2d/bv$a;
.implements Lcom/amap/api/mapcore2d/t$a;
.implements Lcom/amap/api/mapcore2d/v$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/b$a;
    }
.end annotation


# instance fields
.field private A:Lcom/amap/api/mapcore2d/cm;

.field private B:Lcom/amap/api/mapcore2d/bu;

.field private C:Lcom/amap/api/maps2d/LocationSource;

.field private D:Lcom/amap/api/mapcore2d/x;

.field private E:Lcom/amap/api/mapcore2d/a;

.field private F:Z

.field private G:Z

.field private H:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

.field private I:Lcom/amap/api/mapcore2d/s;

.field private J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

.field private K:Lcom/amap/api/mapcore2d/bh;

.field private L:Z

.field private M:Z

.field private N:Landroid/view/View;

.field private O:Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;

.field private P:Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;

.field private Q:Lcom/amap/api/mapcore2d/bk;

.field private R:Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;

.field private S:Landroid/graphics/drawable/Drawable;

.field private T:Lcom/amap/api/mapcore2d/aq;

.field private U:Z

.field private V:Z

.field private W:Z

.field private Z:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

.field public a:Lcom/amap/api/mapcore2d/bb;

.field private aA:I

.field private aB:I

.field private aC:Z

.field private aD:Lcom/amap/api/mapcore2d/b$a;

.field private aE:Ljava/lang/Thread;

.field private aa:Lcom/amap/api/maps2d/AMap$OnMapTouchListener;

.field private ab:Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;

.field private ac:Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;

.field private ad:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

.field private ae:Z

.field private af:Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

.field private ag:Ljava/util/Timer;

.field private ah:Ljava/util/TimerTask;

.field private ai:Landroid/os/Handler;

.field private aj:Landroid/graphics/Point;

.field private ak:Landroid/view/GestureDetector;

.field private al:Lcom/amap/api/mapcore2d/bm$a;

.field private am:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/GestureDetector$OnGestureListener;",
            ">;"
        }
    .end annotation
.end field

.field private an:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/bm$b;",
            ">;"
        }
    .end annotation
.end field

.field private ao:Landroid/widget/Scroller;

.field private ap:I

.field private aq:I

.field private ar:Landroid/graphics/Matrix;

.field private as:F

.field private at:Z

.field private au:F

.field private av:F

.field private aw:I

.field private ax:I

.field private ay:J

.field private az:I

.field b:[I

.field c:Z

.field d:Lcom/amap/api/mapcore2d/bd;

.field e:Lcom/amap/api/mapcore2d/cn;

.field public f:Lcom/amap/api/mapcore2d/bg;

.field protected g:Lcom/amap/api/mapcore2d/au;

.field public h:Lcom/amap/api/mapcore2d/cc;

.field public i:Lcom/amap/api/mapcore2d/be;

.field final j:Landroid/os/Handler;

.field private k:Landroid/content/Context;

.field private l:Lcom/amap/api/mapcore2d/bl;

.field private m:Z

.field private n:Z

.field private o:Lcom/amap/api/maps2d/model/Marker;

.field private p:Lcom/amap/api/mapcore2d/ak;

.field private final q:[I

.field private r:Z

.field private s:I

.field private t:I

.field private u:Lcom/amap/api/mapcore2d/ay;

.field private v:Landroid/location/Location;

.field private w:Lcom/amap/api/mapcore2d/g;

.field private x:Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;

.field private y:Z

.field private z:Lcom/amap/api/mapcore2d/bn;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->m:Z

    iput-boolean v4, p0, Lcom/amap/api/mapcore2d/b;->n:Z

    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->q:[I

    iput-boolean v4, p0, Lcom/amap/api/mapcore2d/b;->r:Z

    iput v4, p0, Lcom/amap/api/mapcore2d/b;->s:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:[I

    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->c:Z

    iput v2, p0, Lcom/amap/api/mapcore2d/b;->t:I

    new-instance v0, Lcom/amap/api/mapcore2d/bd;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/bd;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->d:Lcom/amap/api/mapcore2d/bd;

    iput-boolean v4, p0, Lcom/amap/api/mapcore2d/b;->y:Z

    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->E:Lcom/amap/api/mapcore2d/a;

    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->F:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->G:Z

    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->L:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->M:Z

    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->S:Landroid/graphics/drawable/Drawable;

    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->U:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->V:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->ae:Z

    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->af:Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->ag:Ljava/util/Timer;

    new-instance v0, Lcom/amap/api/mapcore2d/c;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/c;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ah:Ljava/util/TimerTask;

    new-instance v0, Lcom/amap/api/mapcore2d/d;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/d;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ai:Landroid/os/Handler;

    new-instance v0, Lcom/amap/api/mapcore2d/e;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/e;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->am:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->an:Ljava/util/ArrayList;

    iput v2, p0, Lcom/amap/api/mapcore2d/b;->ap:I

    iput v2, p0, Lcom/amap/api/mapcore2d/b;->aq:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ar:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/mapcore2d/b;->as:F

    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->at:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/b;->ay:J

    iput v2, p0, Lcom/amap/api/mapcore2d/b;->az:I

    iput v2, p0, Lcom/amap/api/mapcore2d/b;->aA:I

    iput v2, p0, Lcom/amap/api/mapcore2d/b;->aB:I

    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->aC:Z

    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->aD:Lcom/amap/api/mapcore2d/b$a;

    new-instance v0, Lcom/amap/api/mapcore2d/f;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/f;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->aE:Ljava/lang/Thread;

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->R()V

    invoke-virtual {p0, v4}, Lcom/amap/api/mapcore2d/b;->setClickable(Z)V

    invoke-direct {p0, p1, v3}, Lcom/amap/api/mapcore2d/b;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    :array_0
    .array-data 4
        0x989680
        0x4c4b40
        0x1e8480
        0xf4240
        0x7a120
        0x30d40
        0x186a0
        0xc350
        0x7530
        0x4e20
        0x2710
        0x1388
        0x7d0
        0x3e8
        0x1f4
        0xc8
        0x64
        0x32
        0x19
        0xa
        0x5
    .end array-data
.end method

.method private R()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string/jumbo v3, "setLayerType"

    const-class v2, Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v0, v4, v2

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "setLayerType"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_1
    if-eqz v0, :cond_0

    :try_start_0
    const-class v1, Landroid/view/View;

    const-string/jumbo v2, "LAYER_TYPE_SOFTWARE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    const/4 v1, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    return-void

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private S()V
    .locals 3

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/b;->a(Landroid/content/Context;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/bg;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/amap/api/mapcore2d/bg;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private T()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl;->a()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bb;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bb;->e()V

    :cond_0
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    return-void
.end method

.method private U()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->L:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->L:Z

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    invoke-static {}, Lcom/amap/api/mapcore2d/u;->a()Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    iput-boolean v3, v0, Lcom/amap/api/mapcore2d/u;->i:Z

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->d:Lcom/amap/api/mapcore2d/bd;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/bd;->a(Lcom/amap/api/mapcore2d/u;)V

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->M:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->M:Z

    invoke-static {}, Lcom/amap/api/mapcore2d/u;->a()Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    iput-boolean v3, v0, Lcom/amap/api/mapcore2d/u;->i:Z

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->d:Lcom/amap/api/mapcore2d/bd;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/bd;->a(Lcom/amap/api/mapcore2d/u;)V

    :cond_2
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->V:Z

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Z:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->o:Lcom/amap/api/maps2d/model/Marker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Z:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->o:Lcom/amap/api/maps2d/model/Marker;

    invoke-interface {v0, v1}, Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;->onMarkerDragEnd(Lcom/amap/api/maps2d/model/Marker;)V

    iput-object v4, p0, Lcom/amap/api/mapcore2d/b;->o:Lcom/amap/api/maps2d/model/Marker;

    iput-object v4, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/mapcore2d/ak;

    :cond_3
    return-void
.end method

.method private V()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aj:Landroid/graphics/Point;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aj:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/amap/api/mapcore2d/b;->az:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->aj:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/amap/api/mapcore2d/b;->aA:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->aj:Landroid/graphics/Point;

    iget v3, p0, Lcom/amap/api/mapcore2d/b;->az:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->aj:Landroid/graphics/Point;

    iget v3, p0, Lcom/amap/api/mapcore2d/b;->aA:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v2, v0, v1}, Lcom/amap/api/mapcore2d/bb;->c(II)V

    goto :goto_0
.end method

.method private W()Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 6

    const-wide v4, 0x412e848000000000L    # 1000000.0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->C()Lcom/amap/api/mapcore2d/ae;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ae;->b()I

    move-result v1

    int-to-double v2, v1

    div-double/2addr v2, v4

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ae;->a()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v4

    new-instance v4, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->f()F

    move-result v0

    invoke-static {v4, v0}, Lcom/amap/api/maps2d/model/CameraPosition;->fromLatLngZoom(Lcom/amap/api/maps2d/model/LatLng;F)Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    goto :goto_0
.end method

.method private X()V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bu;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v0

    new-instance v1, Lcom/amap/api/mapcore2d/aa;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/aa;-><init>()V

    new-instance v2, Lcom/amap/api/mapcore2d/aa;

    invoke-direct {v2}, Lcom/amap/api/mapcore2d/aa;-><init>()V

    invoke-virtual {p0, v3, v3, v1}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/aa;)V

    invoke-virtual {p0, v0, v3, v2}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/aa;)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->f()F

    move-result v0

    float-to-int v1, v0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->q:[I

    aget v0, v0, v1

    sget v2, Lcom/amap/api/mapcore2d/y;->i:I

    const/16 v3, 0x200

    if-ne v2, v3, :cond_1

    mul-int/lit16 v0, v0, 0x100

    div-int/lit16 v0, v0, 0x200

    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/bh;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bh;->h:[D

    aget-wide v2, v2, v1

    sget v1, Lcom/amap/api/mapcore2d/y;->k:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    const-wide v4, 0x3f9a027525460aa6L    # 0.0254

    div-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cy;->b(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bu;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/bu;->a(I)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bu;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/bu;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bu;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bu;->invalidate()V

    goto :goto_0
.end method

.method private Y()Lcom/amap/api/maps2d/model/LatLng;
    .locals 6

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->C()Lcom/amap/api/mapcore2d/ae;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ae;->b()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/z;->a(J)D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ae;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/z;->a(J)D

    move-result-wide v4

    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    goto :goto_0
.end method

.method private Z()Lcom/amap/api/mapcore2d/an;
    .locals 4

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->C()Lcom/amap/api/mapcore2d/ae;

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore2d/an;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/an;-><init>()V

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ae;->e()D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lcom/amap/api/mapcore2d/an;->a:I

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ae;->f()D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lcom/amap/api/mapcore2d/an;->b:I

    return-object v1
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/b;Lcom/amap/api/maps2d/AMap$CancelableCallback;)Lcom/amap/api/maps2d/AMap$CancelableCallback;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/b;Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;)Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->af:Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aa:Lcom/amap/api/maps2d/AMap$OnMapTouchListener;

    return-object v0
.end method

.method private a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;
    .locals 7

    new-instance v6, Lcom/amap/api/mapcore2d/an;

    invoke-direct {v6}, Lcom/amap/api/mapcore2d/an;-><init>()V

    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/mapcore2d/b;->b(DDLcom/amap/api/mapcore2d/an;)V

    iget v0, v6, Lcom/amap/api/mapcore2d/an;->b:I

    add-int/lit8 v0, v0, -0x3c

    iput v0, v6, Lcom/amap/api/mapcore2d/an;->b:I

    new-instance v0, Lcom/amap/api/mapcore2d/aa;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/aa;-><init>()V

    iget v1, v6, Lcom/amap/api/mapcore2d/an;->a:I

    iget v2, v6, Lcom/amap/api/mapcore2d/an;->b:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/aa;)V

    new-instance v1, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/mapcore2d/aa;->b:D

    iget-wide v4, v0, Lcom/amap/api/mapcore2d/aa;->a:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    return-object v1
.end method

.method private a(FLandroid/graphics/PointF;FF)V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v1, "doScale"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/au;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/au;->f()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v4, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/mapcore2d/b;->aB:I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$d;->c()I

    move-result v0

    div-int/lit8 v4, v0, 0x2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$d;->d()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    cmpl-float v0, p1, v6

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/cn;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bl$d;->e()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/cn;->a(F)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->L()V

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bl$d;->e()I

    move-result v1

    add-int/2addr v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/b;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bl$d;->e()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->b:[I

    iget-object v6, p0, Lcom/amap/api/mapcore2d/b;->b:[I

    aget v6, v6, v2

    aput v6, v1, v3

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->b:[I

    aput v0, v1, v2

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->b:[I

    aget v1, v1, v3

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->b:[I

    aget v2, v3, v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->a:Lcom/amap/api/mapcore2d/bl$e;

    invoke-virtual {v1, v4, v5}, Lcom/amap/api/mapcore2d/bl$e;->a(II)Lcom/amap/api/mapcore2d/ae;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore2d/bl$d;->a(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bl$d;->a(Lcom/amap/api/mapcore2d/ae;)V

    goto/16 :goto_0

    :cond_2
    cmpg-float v0, p1, v6

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/cn;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bl$d;->e()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/cn;->a(F)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->L()V

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    move v1, v3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bl$d;->e()I

    move-result v1

    sub-int v0, v1, v0

    goto :goto_2
.end method

.method private a(II)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aj:Landroid/graphics/Point;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/amap/api/mapcore2d/b;->az:I

    iput p2, p0, Lcom/amap/api/mapcore2d/b;->aA:I

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->V()V

    goto :goto_0
.end method

.method private a(IILcom/amap/api/mapcore2d/an;)V
    .locals 7

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->f()F

    move-result v0

    float-to-int v4, v0

    new-instance v1, Landroid/graphics/PointF;

    int-to-float v0, p1

    int-to-float v2, p2

    invoke-direct {v1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/bh;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/bh;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bh;->i:Lcom/amap/api/mapcore2d/ae;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/bh;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bh;->k:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/bh;

    iget-object v5, v5, Lcom/amap/api/mapcore2d/bh;->h:[D

    aget-wide v4, v5, v4

    iget-object v6, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/bh;

    iget-object v6, v6, Lcom/amap/api/mapcore2d/bh;->l:Lcom/amap/api/mapcore2d/bh$a;

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/bh;->a(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/ae;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/bh$a;)Lcom/amap/api/mapcore2d/ae;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ae;->e()D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p3, Lcom/amap/api/mapcore2d/an;->a:I

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ae;->f()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p3, Lcom/amap/api/mapcore2d/an;->b:I

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->aj:Landroid/graphics/Point;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ak:Landroid/view/GestureDetector;

    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/bm;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/bm$b;)Lcom/amap/api/mapcore2d/bm$a;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->al:Lcom/amap/api/mapcore2d/bm$a;

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ao:Landroid/widget/Scroller;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/amap/api/mapcore2d/b;->aw:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/amap/api/mapcore2d/b;->ax:I

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/amap/api/mapcore2d/b;->ap:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amap/api/mapcore2d/b;->aq:I

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    const/16 v10, 0x8

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v1, -0x2

    const-wide/16 v8, 0x0

    const-string/jumbo v7, "initEnviornment"

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/content/Context;

    new-instance v0, Lcom/amap/api/mapcore2d/bs;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/bs;-><init>(Lcom/amap/api/mapcore2d/ag;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->T:Lcom/amap/api/mapcore2d/aq;

    const/16 v0, 0xde

    const/16 v2, 0xd7

    const/16 v3, 0xd6

    invoke-static {v0, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/b;->setBackgroundColor(I)V

    invoke-static {}, Lcom/amap/api/mapcore2d/v;->a()Lcom/amap/api/mapcore2d/v;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/v;->a(Lcom/amap/api/mapcore2d/v$a;)V

    invoke-static {}, Lcom/amap/api/mapcore2d/bv;->a()Lcom/amap/api/mapcore2d/bv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/bv;->a(Lcom/amap/api/mapcore2d/bv$a;)V

    invoke-static {}, Lcom/amap/api/mapcore2d/t;->a()Lcom/amap/api/mapcore2d/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/t;->a(Lcom/amap/api/mapcore2d/t$a;)V

    new-instance v0, Lcom/amap/api/mapcore2d/a;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/a;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->E:Lcom/amap/api/mapcore2d/a;

    new-instance v0, Lcom/amap/api/mapcore2d/g;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/g;-><init>(Lcom/amap/api/mapcore2d/ag;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->w:Lcom/amap/api/mapcore2d/g;

    new-instance v0, Lcom/amap/api/mapcore2d/s;

    invoke-direct {v0, p1}, Lcom/amap/api/mapcore2d/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/s;

    new-instance v0, Lcom/amap/api/mapcore2d/cc;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore2d/cc;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/ag;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/cc;

    new-instance v0, Lcom/amap/api/mapcore2d/bl;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore2d/bl;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/cc;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/cc;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/bh;

    new-instance v0, Lcom/amap/api/mapcore2d/bb;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore2d/bb;-><init>(Lcom/amap/api/mapcore2d/bl;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    new-instance v0, Lcom/amap/api/mapcore2d/ci;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/ci;-><init>(Lcom/amap/api/mapcore2d/ag;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/au;

    new-instance v0, Lcom/amap/api/mapcore2d/cn;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-direct {v0, v2, v3, p0}, Lcom/amap/api/mapcore2d/cn;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/bb;Lcom/amap/api/mapcore2d/ag;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/cn;

    new-instance v0, Lcom/amap/api/mapcore2d/bg;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore2d/bg;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/ag;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/bg;

    new-instance v0, Lcom/amap/api/mapcore2d/ay;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->d:Lcom/amap/api/mapcore2d/bd;

    invoke-direct {v0, v2, v3, p0}, Lcom/amap/api/mapcore2d/ay;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/bd;Lcom/amap/api/mapcore2d/ag;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ay;

    new-instance v0, Lcom/amap/api/mapcore2d/cm;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore2d/cm;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/cm;

    new-instance v0, Lcom/amap/api/mapcore2d/bu;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore2d/bu;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bu;

    new-instance v0, Lcom/amap/api/mapcore2d/x;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->d:Lcom/amap/api/mapcore2d/bd;

    invoke-direct {v0, v2, v3, p0}, Lcom/amap/api/mapcore2d/x;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/bd;Lcom/amap/api/mapcore2d/ag;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/x;

    new-instance v0, Lcom/amap/api/mapcore2d/be;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/content/Context;

    invoke-direct {v0, v2, p2, p0}, Lcom/amap/api/mapcore2d/be;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amap/api/mapcore2d/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/be;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->S()V

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/bg;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/cc;

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/mapcore2d/bg;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/bg;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/cm;

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/mapcore2d/bg;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/bg;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bu;

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/mapcore2d/bg;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/amap/api/mapcore2d/bg$a;

    invoke-direct {v2, v0}, Lcom/amap/api/mapcore2d/bg$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/bg;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/be;

    invoke-virtual {v0, v3, v2}, Lcom/amap/api/mapcore2d/bg;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/amap/api/mapcore2d/bg$a;

    new-instance v3, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v3, v8, v9, v8, v9}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    const/16 v6, 0x53

    move v2, v1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore2d/bg$a;-><init>(IILcom/amap/api/maps2d/model/LatLng;III)V

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/bg;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/cn;

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/mapcore2d/bg;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/amap/api/mapcore2d/bg$a;

    new-instance v3, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v3, v8, v9, v8, v9}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    const/16 v6, 0x53

    move v2, v1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore2d/bg$a;-><init>(IILcom/amap/api/maps2d/model/LatLng;III)V

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/bg;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ay;

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/mapcore2d/bg;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->q()Lcom/amap/api/mapcore2d/au;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/au;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ay;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/ay;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/x;

    invoke-virtual {v0, v10}, Lcom/amap/api/mapcore2d/x;->setVisibility(I)V

    new-instance v0, Lcom/amap/api/mapcore2d/bg$a;

    new-instance v3, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v3, v8, v9, v8, v9}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    const/16 v6, 0x33

    move v2, v1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore2d/bg$a;-><init>(IILcom/amap/api/maps2d/model/LatLng;III)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/bg;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/x;

    invoke-virtual {v1, v2, v0}, Lcom/amap/api/mapcore2d/bg;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/amap/api/mapcore2d/bn;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/bn;-><init>(Lcom/amap/api/mapcore2d/ag;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bn;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/cn;

    sget v1, Lcom/amap/api/mapcore2d/m;->a:I

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/cn;->setId(I)V

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aE:Ljava/lang/Thread;

    const-string/jumbo v1, "AuthThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aE:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ag:Ljava/util/Timer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ag:Ljava/util/Timer;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ag:Ljava/util/Timer;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->ah:Ljava/util/TimerTask;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v7}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v1, v7}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 6

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->V:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/mapcore2d/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->o:Lcom/amap/api/maps2d/model/Marker;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, 0x42700000    # 60.0f

    sub-float/2addr v1, v2

    float-to-int v1, v1

    new-instance v2, Lcom/amap/api/mapcore2d/aa;

    invoke-direct {v2}, Lcom/amap/api/mapcore2d/aa;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/aa;)V

    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v2, Lcom/amap/api/mapcore2d/aa;->b:D

    iget-wide v2, v2, Lcom/amap/api/mapcore2d/aa;->a:D

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/mapcore2d/ak;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ak;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore2d/ak;->a(Lcom/amap/api/maps2d/model/LatLng;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Z:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Z:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->o:Lcom/amap/api/maps2d/model/Marker;

    invoke-interface {v0, v1}, Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;->onMarkerDrag(Lcom/amap/api/maps2d/model/Marker;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/b;ZLcom/amap/api/maps2d/model/CameraPosition;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/b;->a(ZLcom/amap/api/maps2d/model/CameraPosition;)V

    return-void
.end method

.method private a(ZLcom/amap/api/maps2d/model/CameraPosition;)V
    .locals 3

    const-string/jumbo v0, "cameraChangeFinish"

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/s;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/s;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->g()Lcom/amap/api/maps2d/model/CameraPosition;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p2

    :cond_2
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    invoke-interface {v0, p2}, Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;->onCameraChangeFinish(Lcom/amap/api/maps2d/model/CameraPosition;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->F:Z

    return p1
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/bl;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    return-object v0
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->al:Lcom/amap/api/mapcore2d/bm$a;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/amap/api/mapcore2d/bm$a;->a(Landroid/view/MotionEvent;II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ak:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/amap/api/mapcore2d/t;->a()Lcom/amap/api/mapcore2d/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/t;->b()V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/b;->a(Landroid/view/MotionEvent;)V

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_3

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->U()V

    :cond_3
    return v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->G:Z

    return p1
.end method

.method static synthetic c(Lcom/amap/api/mapcore2d/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->X()V

    return-void
.end method

.method static synthetic d(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ac:Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/mapcore2d/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/cm;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/cm;

    return-object v0
.end method

.method static synthetic g(Lcom/amap/api/mapcore2d/b;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/bk;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Q:Lcom/amap/api/mapcore2d/bk;

    return-object v0
.end method

.method static synthetic i(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->af:Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    return-object v0
.end method

.method static synthetic j(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    return-object v0
.end method

.method static synthetic k(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->W()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$CancelableCallback;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    return-object v0
.end method

.method static synthetic m(Lcom/amap/api/mapcore2d/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->G:Z

    return v0
.end method

.method static synthetic n(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/model/LatLng;
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->Y()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method static synthetic o(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/s;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/s;

    return-object v0
.end method


# virtual methods
.method A()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/cm;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cm;->c()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public B()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->n:Z

    return v0
.end method

.method public C()Lcom/amap/api/mapcore2d/ae;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$d;->f()Lcom/amap/api/mapcore2d/ae;

    move-result-object v0

    goto :goto_0
.end method

.method public D()Lcom/amap/api/mapcore2d/bb;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    return-object v0
.end method

.method public E()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl$a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore2d/bl$a;->b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/aw;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v0, v1, Lcom/amap/api/mapcore2d/aw;->f:Z

    goto :goto_0
.end method

.method public F()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->E()Z

    move-result v1

    const-string/jumbo v2, ""

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl$a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/bl$a;->b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/aw;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v0, v1, Lcom/amap/api/mapcore2d/aw;->f:Z

    goto :goto_0
.end method

.method public G()Lcom/amap/api/mapcore2d/bm;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->al:Lcom/amap/api/mapcore2d/bm$a;

    return-object v0
.end method

.method public H()F
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore2d/b;->as:F

    return v0
.end method

.method public I()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore2d/b;->au:F

    iput v0, p0, Lcom/amap/api/mapcore2d/b;->av:F

    return-void
.end method

.method public J()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected K()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method L()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public M()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    invoke-interface {v0}, Lcom/amap/api/maps2d/AMap$CancelableCallback;->onCancel()V

    :cond_0
    return-void
.end method

.method public N()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    invoke-interface {v0}, Lcom/amap/api/maps2d/AMap$CancelableCallback;->onFinish()V

    :cond_0
    return-void
.end method

.method public O()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(I)I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$d;->b()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$d;->b()I

    move-result p1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$d;->a()I

    move-result v0

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$d;->a()I

    move-result p1

    :cond_1
    return p1
.end method

.method public a(Lcom/amap/api/maps2d/model/CircleOptions;)Lcom/amap/api/mapcore2d/ah;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/amap/api/mapcore2d/w;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/w;-><init>(Lcom/amap/api/mapcore2d/b;)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/w;->b(I)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getCenter()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/model/LatLng;)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/w;->a(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/w;->b(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/w;->a(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/w;->a(I)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getRadius()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/mapcore2d/w;->a(D)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->f:Lcom/amap/api/mapcore2d/ac;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/ac;->a(Lcom/amap/api/mapcore2d/am;)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    goto :goto_0
.end method

.method public a()Lcom/amap/api/mapcore2d/bl;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    return-object v0
.end method

.method public a(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/amap/api/mapcore2d/bk;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/be;

    invoke-direct {v0, p1, v1}, Lcom/amap/api/mapcore2d/bk;-><init>(Lcom/amap/api/maps2d/model/MarkerOptions;Lcom/amap/api/mapcore2d/be;)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/be;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/be;->a(Lcom/amap/api/mapcore2d/ak;)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    new-instance v1, Lcom/amap/api/maps2d/model/Marker;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/Marker;-><init>(Lcom/amap/api/mapcore2d/ak;)V

    return-object v1
.end method

.method public a(FLandroid/graphics/Point;Z)V
    .locals 10

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->f()F

    move-result v0

    add-float v1, v0, p1

    invoke-static {v1}, Lcom/amap/api/mapcore2d/cy;->b(F)F

    move-result v1

    sub-float v0, v1, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore2d/an;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/an;-><init>()V

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->Z()Lcom/amap/api/mapcore2d/an;

    move-result-object v0

    if-eqz p2, :cond_0

    new-instance v1, Lcom/amap/api/mapcore2d/an;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/an;-><init>()V

    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2, v3, v1}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/an;)V

    iget v2, v0, Lcom/amap/api/mapcore2d/an;->a:I

    iget v3, v1, Lcom/amap/api/mapcore2d/an;->a:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/amap/api/mapcore2d/an;->b:I

    iget v4, v1, Lcom/amap/api/mapcore2d/an;->b:I

    sub-int/2addr v3, v4

    int-to-double v4, v2

    float-to-double v6, p1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    int-to-double v6, v2

    sub-double/2addr v4, v6

    double-to-int v2, v4

    int-to-double v4, v3

    float-to-double v6, p1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    int-to-double v6, v3

    sub-double/2addr v4, v6

    double-to-int v3, v4

    iget v4, v1, Lcom/amap/api/mapcore2d/an;->a:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/amap/api/mapcore2d/an;->a:I

    iget v1, v1, Lcom/amap/api/mapcore2d/an;->b:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/amap/api/mapcore2d/an;->b:I

    new-instance v1, Lcom/amap/api/mapcore2d/ae;

    iget v2, v0, Lcom/amap/api/mapcore2d/an;->b:I

    int-to-double v2, v2

    iget v0, v0, Lcom/amap/api/mapcore2d/an;->a:I

    int-to-double v4, v0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/mapcore2d/ae;-><init>(DDZ)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bh;->b(Lcom/amap/api/mapcore2d/ae;)Lcom/amap/api/mapcore2d/ae;

    move-result-object v0

    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/mapcore2d/bb;->b(Lcom/amap/api/mapcore2d/ae;I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/bb;->a(Lcom/amap/api/mapcore2d/ae;)V

    invoke-static {}, Lcom/amap/api/mapcore2d/t;->a()Lcom/amap/api/mapcore2d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/t;->b()V

    goto :goto_0
.end method

.method public a(IILcom/amap/api/mapcore2d/aa;)V
    .locals 7

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->f()F

    move-result v0

    float-to-int v4, v0

    new-instance v1, Landroid/graphics/PointF;

    int-to-float v0, p1

    int-to-float v2, p2

    invoke-direct {v1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/bh;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/bh;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bh;->i:Lcom/amap/api/mapcore2d/ae;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/bh;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bh;->k:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/bh;

    iget-object v5, v5, Lcom/amap/api/mapcore2d/bh;->h:[D

    aget-wide v4, v5, v4

    iget-object v6, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/bh;

    iget-object v6, v6, Lcom/amap/api/mapcore2d/bh;->l:Lcom/amap/api/mapcore2d/bh$a;

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/bh;->a(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/ae;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/bh$a;)Lcom/amap/api/mapcore2d/ae;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ae;->b()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/z;->a(J)D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ae;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/z;->a(J)D

    move-result-wide v0

    iput-wide v2, p3, Lcom/amap/api/mapcore2d/aa;->b:D

    iput-wide v0, p3, Lcom/amap/api/mapcore2d/aa;->a:D

    :cond_0
    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 8

    const-string/jumbo v1, "showMyLocationOverlay"

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->C:Lcom/amap/api/maps2d/LocationSource;

    if-nez v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bn;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v3, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v4, v1

    invoke-virtual {v0, v2, v4, v5}, Lcom/amap/api/mapcore2d/bn;->a(Lcom/amap/api/maps2d/model/LatLng;D)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->x:Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->v:Landroid/location/Location;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->v:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->v:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->v:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->v:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->x:Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;

    invoke-interface {v0, p1}, Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;->onMyLocationChange(Landroid/location/Location;)V

    :cond_4
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->v:Landroid/location/Location;

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bn;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->v:Landroid/location/Location;

    if-nez v0, :cond_2

    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bn;

    if-nez v0, :cond_7

    new-instance v0, Lcom/amap/api/mapcore2d/bn;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/bn;-><init>(Lcom/amap/api/mapcore2d/ag;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bn;

    :cond_7
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$d;->e()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2, v0}, Lcom/amap/api/mapcore2d/u;->a(Lcom/amap/api/maps2d/model/LatLng;F)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/u;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public a(Lcom/amap/api/mapcore2d/ak;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v2, -0x2

    const/high16 v5, -0x1000000

    const-string/jumbo v1, "showInfoWindow"

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ak;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ak;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->t()V

    new-instance v3, Lcom/amap/api/maps2d/model/Marker;

    invoke-direct {v3, p1}, Lcom/amap/api/maps2d/model/Marker;-><init>(Lcom/amap/api/mapcore2d/ak;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->P:Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->P:Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;

    invoke-interface {v0, v3}, Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;->getInfoWindow(Lcom/amap/api/maps2d/model/Marker;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->S:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/content/Context;

    const-string/jumbo v4, "infowindow_bg2d.9.png"

    invoke-static {v0, v4}, Lcom/amap/api/mapcore2d/bo;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->S:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->P:Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->P:Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;

    invoke-interface {v0, v3}, Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;->getInfoContents(Lcom/amap/api/maps2d/model/Marker;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->S:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheQuality(I)V

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ak;->e()Lcom/amap/api/mapcore2d/ab;

    move-result-object v5

    if-eqz v0, :cond_8

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_3
    new-instance v0, Lcom/amap/api/mapcore2d/bg$a;

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ak;->c()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v3

    iget v4, v5, Lcom/amap/api/mapcore2d/ab;->a:F

    float-to-int v4, v4

    neg-int v4, v4

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ak;->n()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    iget v5, v5, Lcom/amap/api/mapcore2d/ab;->b:F

    float-to-int v5, v5

    neg-int v5, v5

    add-int/lit8 v5, v5, 0x2

    const/16 v6, 0x51

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore2d/bg$a;-><init>(IILcom/amap/api/maps2d/model/LatLng;III)V

    check-cast p1, Lcom/amap/api/mapcore2d/bk;

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->Q:Lcom/amap/api/mapcore2d/bk;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/bg;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/amap/api/mapcore2d/bg;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v4, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->S:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ak;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ak;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    goto/16 :goto_2

    :cond_8
    move v1, v2

    goto :goto_3
.end method

.method public a(Lcom/amap/api/mapcore2d/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->E:Lcom/amap/api/mapcore2d/a;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/a;->a(Lcom/amap/api/mapcore2d/u;)V

    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/u;JLcom/amap/api/maps2d/AMap$CancelableCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide v4, 0x412e848000000000L    # 1000000.0

    const/4 v1, 0x1

    iget-object v0, p1, Lcom/amap/api/mapcore2d/u;->a:Lcom/amap/api/mapcore2d/u$a;

    sget-object v2, Lcom/amap/api/mapcore2d/u$a;->j:Lcom/amap/api/mapcore2d/u$a;

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    const-string/jumbo v2, "the map must have a size"

    invoke-static {v0, v2}, Lcom/amap/api/mapcore2d/cp;->a(ZLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/s;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/s;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/s;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/s;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    invoke-interface {v0}, Lcom/amap/api/maps2d/AMap$CancelableCallback;->onCancel()V

    :cond_4
    iput-object p4, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->F:Z

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->G:Z

    :cond_5
    iget-object v0, p1, Lcom/amap/api/mapcore2d/u;->a:Lcom/amap/api/mapcore2d/u$a;

    sget-object v2, Lcom/amap/api/mapcore2d/u$a;->h:Lcom/amap/api/mapcore2d/u$a;

    if-ne v0, v2, :cond_6

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->K()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    iget v1, p1, Lcom/amap/api/mapcore2d/u;->b:F

    float-to-int v1, v1

    iget v2, p1, Lcom/amap/api/mapcore2d/u;->c:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/bb;->c(II)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    goto :goto_1

    :cond_6
    iget-object v0, p1, Lcom/amap/api/mapcore2d/u;->a:Lcom/amap/api/mapcore2d/u$a;

    sget-object v2, Lcom/amap/api/mapcore2d/u$a;->b:Lcom/amap/api/mapcore2d/u$a;

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bb;->c()Z

    goto :goto_1

    :cond_7
    iget-object v0, p1, Lcom/amap/api/mapcore2d/u;->a:Lcom/amap/api/mapcore2d/u$a;

    sget-object v2, Lcom/amap/api/mapcore2d/u$a;->e:Lcom/amap/api/mapcore2d/u$a;

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bb;->d()Z

    goto :goto_1

    :cond_8
    iget-object v0, p1, Lcom/amap/api/mapcore2d/u;->a:Lcom/amap/api/mapcore2d/u$a;

    sget-object v2, Lcom/amap/api/mapcore2d/u$a;->f:Lcom/amap/api/mapcore2d/u$a;

    if-ne v0, v2, :cond_9

    iget v0, p1, Lcom/amap/api/mapcore2d/u;->d:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/bb;->c(I)I

    goto :goto_1

    :cond_9
    iget-object v0, p1, Lcom/amap/api/mapcore2d/u;->a:Lcom/amap/api/mapcore2d/u$a;

    sget-object v2, Lcom/amap/api/mapcore2d/u$a;->g:Lcom/amap/api/mapcore2d/u$a;

    if-ne v0, v2, :cond_a

    iget v0, p1, Lcom/amap/api/mapcore2d/u;->e:F

    iget-object v2, p1, Lcom/amap/api/mapcore2d/u;->h:Landroid/graphics/Point;

    invoke-virtual {p0, v0, v2, v1}, Lcom/amap/api/mapcore2d/b;->a(FLandroid/graphics/Point;Z)V

    goto :goto_1

    :cond_a
    iget-object v0, p1, Lcom/amap/api/mapcore2d/u;->a:Lcom/amap/api/mapcore2d/u$a;

    sget-object v2, Lcom/amap/api/mapcore2d/u$a;->i:Lcom/amap/api/mapcore2d/u$a;

    if-ne v0, v2, :cond_b

    iget-object v0, p1, Lcom/amap/api/mapcore2d/u;->f:Lcom/amap/api/maps2d/model/CameraPosition;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    iget v2, v0, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore2d/bb;->c(I)I

    iget-object v1, v0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-object v0, v0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    new-instance v3, Lcom/amap/api/mapcore2d/ae;

    invoke-direct {v3, v1, v0}, Lcom/amap/api/mapcore2d/ae;-><init>(II)V

    long-to-int v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/mapcore2d/bb;->b(Lcom/amap/api/mapcore2d/ae;I)V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p1, Lcom/amap/api/mapcore2d/u;->a:Lcom/amap/api/mapcore2d/u$a;

    sget-object v2, Lcom/amap/api/mapcore2d/u$a;->c:Lcom/amap/api/mapcore2d/u$a;

    if-ne v0, v2, :cond_c

    iget-object v0, p1, Lcom/amap/api/mapcore2d/u;->f:Lcom/amap/api/maps2d/model/CameraPosition;

    iget-object v1, v0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-object v0, v0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    new-instance v3, Lcom/amap/api/mapcore2d/ae;

    invoke-direct {v3, v1, v0}, Lcom/amap/api/mapcore2d/ae;-><init>(II)V

    long-to-int v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/mapcore2d/bb;->b(Lcom/amap/api/mapcore2d/ae;I)V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p1, Lcom/amap/api/mapcore2d/u;->a:Lcom/amap/api/mapcore2d/u$a;

    sget-object v2, Lcom/amap/api/mapcore2d/u$a;->j:Lcom/amap/api/mapcore2d/u$a;

    if-eq v0, v2, :cond_d

    iget-object v0, p1, Lcom/amap/api/mapcore2d/u;->a:Lcom/amap/api/mapcore2d/u$a;

    sget-object v2, Lcom/amap/api/mapcore2d/u$a;->k:Lcom/amap/api/mapcore2d/u$a;

    if-ne v0, v2, :cond_e

    :cond_d
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->K()V

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/u;ZJ)V

    goto/16 :goto_1

    :cond_e
    iput-boolean v1, p1, Lcom/amap/api/mapcore2d/u;->i:Z

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->d:Lcom/amap/api/mapcore2d/bd;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bd;->a(Lcom/amap/api/mapcore2d/u;)V

    goto/16 :goto_1
.end method

.method public a(Lcom/amap/api/mapcore2d/u;Lcom/amap/api/maps2d/AMap$CancelableCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/u;JLcom/amap/api/maps2d/AMap$CancelableCallback;)V

    return-void
.end method

.method protected a(Lcom/amap/api/mapcore2d/u;ZJ)V
    .locals 15

    const-string/jumbo v3, "newLatLngBoundsWithSize"

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/mapcore2d/u;->g:Lcom/amap/api/maps2d/model/LatLngBounds;

    iget-object v4, v2, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, v6

    iget-object v6, v2, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v8, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-int v4, v4

    iget-object v5, v2, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v5, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    const-wide v8, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v6, v8

    iget-object v5, v2, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v8, v5, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-int v5, v6

    iget-object v6, v2, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v8, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v6, v8

    iget-object v8, v2, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v8, v8, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    double-to-int v6, v6

    iget-object v7, v2, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v8, v7, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v8, v10

    iget-object v2, v2, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v10, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    double-to-int v2, v8

    new-instance v7, Lcom/amap/api/mapcore2d/ae;

    invoke-direct {v7, v6, v2}, Lcom/amap/api/mapcore2d/ae;-><init>(II)V

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    move-wide/from16 v0, p3

    long-to-int v6, v0

    invoke-virtual {v2, v7, v6}, Lcom/amap/api/mapcore2d/bb;->b(Lcom/amap/api/mapcore2d/ae;I)V

    :goto_1
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v2, v4, v5}, Lcom/amap/api/mapcore2d/bb;->a(II)V

    invoke-static {}, Lcom/amap/api/mapcore2d/t;->a()Lcom/amap/api/mapcore2d/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/t;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v4, "AMapDelegateImpGLSurfaceView"

    invoke-static {v2, v4, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v2, v7}, Lcom/amap/api/mapcore2d/bb;->a(Lcom/amap/api/mapcore2d/ae;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnMapClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->ad:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->ab:Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;

    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->R:Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;

    return-void
.end method

.method public a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public a(FF)Z
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bb;->a(Z)V

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->at:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore2d/b;->au:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/amap/api/mapcore2d/b;->au:F

    iget v0, p0, Lcom/amap/api/mapcore2d/b;->av:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/amap/api/mapcore2d/b;->av:F

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->at:Z

    return v0
.end method

.method public a(FLandroid/graphics/PointF;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iput-boolean v2, v0, Lcom/amap/api/mapcore2d/bl$a;->c:Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->K()V

    iget v0, p0, Lcom/amap/api/mapcore2d/b;->au:F

    iget v1, p0, Lcom/amap/api/mapcore2d/b;->av:F

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amap/api/mapcore2d/b;->a(FLandroid/graphics/PointF;FF)V

    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->at:Z

    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore2d/b;->postInvalidateDelayed(J)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore2d/bl;->a(Z)V

    invoke-static {}, Lcom/amap/api/mapcore2d/t;->a()Lcom/amap/api/mapcore2d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/t;->b()V

    return v3
.end method

.method public a(Landroid/graphics/Matrix;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/graphics/PointF;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string/jumbo v3, "startScale"

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/au;

    invoke-interface {v2}, Lcom/amap/api/mapcore2d/au;->f()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v2

    const-string/jumbo v4, "AMapDelegateImpGLSurfaceView"

    invoke-static {v2, v4, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->q()Lcom/amap/api/mapcore2d/au;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/api/mapcore2d/au;->f()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->n:Z

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/bl;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bl$a;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iput-boolean v1, v0, Lcom/amap/api/mapcore2d/bl$a;->c:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->at:Z

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->f:Lcom/amap/api/mapcore2d/ac;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/ac;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected b(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 12

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v2

    iget v3, p1, Landroid/graphics/PointF;->x:F

    shr-int/lit8 v4, v1, 0x1

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/PointF;->y:F

    shr-int/lit8 v5, v2, 0x1

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-double v6, v4

    float-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    float-to-double v8, v3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v4, v4

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->J()I

    move-result v3

    int-to-double v8, v3

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    shr-int/lit8 v1, v1, 0x1

    int-to-double v10, v1

    add-double/2addr v8, v10

    double-to-float v1, v8

    iput v1, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    shr-int/lit8 v1, v2, 0x1

    int-to-double v2, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method public b(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/mapcore2d/bk;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/amap/api/mapcore2d/bk;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/be;

    invoke-direct {v0, p1, v1}, Lcom/amap/api/mapcore2d/bk;-><init>(Lcom/amap/api/maps2d/model/MarkerOptions;Lcom/amap/api/mapcore2d/be;)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/be;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/be;->a(Lcom/amap/api/mapcore2d/ak;)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    return-object v0
.end method

.method public b(DDLcom/amap/api/mapcore2d/an;)V
    .locals 7

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->f()F

    move-result v0

    float-to-int v4, v0

    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/z;->a(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p3, p4}, Lcom/amap/api/mapcore2d/z;->a(D)J

    move-result-wide v2

    long-to-int v2, v2

    new-instance v1, Lcom/amap/api/mapcore2d/ae;

    invoke-direct {v1, v0, v2}, Lcom/amap/api/mapcore2d/ae;-><init>(II)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/bh;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/bh;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bh;->i:Lcom/amap/api/mapcore2d/ae;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/bh;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bh;->k:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/bh;

    iget-object v5, v5, Lcom/amap/api/mapcore2d/bh;->h:[D

    aget-wide v4, v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/bh;->b(Lcom/amap/api/mapcore2d/ae;Lcom/amap/api/mapcore2d/ae;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz p5, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iput v1, p5, Lcom/amap/api/mapcore2d/an;->a:I

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v0, p5, Lcom/amap/api/mapcore2d/an;->b:I

    :cond_0
    return-void
.end method

.method public b(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore2d/b;->as:F

    return-void
.end method

.method public b(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iput v0, p0, Lcom/amap/api/mapcore2d/b;->s:I

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore2d/b;->h(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/cm;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/cm;->a(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void

    :cond_0
    iput v1, p0, Lcom/amap/api/mapcore2d/b;->s:I

    invoke-virtual {p0, v2}, Lcom/amap/api/mapcore2d/b;->h(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/cm;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/cm;->a(Z)V

    goto :goto_0
.end method

.method public b(Lcom/amap/api/mapcore2d/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/u;Lcom/amap/api/maps2d/AMap$CancelableCallback;)V

    return-void
.end method

.method public b(Landroid/graphics/Matrix;)Z
    .locals 3

    const-string/jumbo v1, "onScale"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/au;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/au;->f()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ar:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/amap/api/mapcore2d/ak;)Z
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Q:Lcom/amap/api/mapcore2d/bk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Q:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ak;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4

    const-string/jumbo v2, "removeMarker"

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/be;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/be;->a(Ljava/lang/String;)Lcom/amap/api/mapcore2d/ak;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/be;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/be;->b(Lcom/amap/api/mapcore2d/ak;)Z

    move-result v0

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v3, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$d;->c()I

    move-result v0

    goto :goto_0
.end method

.method protected c(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 12

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v2

    iget v3, p1, Landroid/graphics/PointF;->x:F

    shr-int/lit8 v4, v1, 0x1

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/PointF;->y:F

    shr-int/lit8 v5, v2, 0x1

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-double v6, v4

    float-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    float-to-double v8, v3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v4, v4

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->J()I

    move-result v3

    int-to-double v8, v3

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    shr-int/lit8 v1, v1, 0x1

    int-to-double v10, v1

    add-double/2addr v8, v10

    double-to-float v1, v8

    iput v1, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    shr-int/lit8 v1, v2, 0x1

    int-to-double v2, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/cm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/cm;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/cm;->a(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/cm;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cm;->invalidate()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bu;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bu;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bu;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bu;->invalidate()V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->C:Lcom/amap/api/maps2d/LocationSource;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->C:Lcom/amap/api/maps2d/LocationSource;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->w:Lcom/amap/api/mapcore2d/g;

    invoke-interface {v0, v1}, Lcom/amap/api/maps2d/LocationSource;->activate(Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ay;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ay;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bn;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore2d/bn;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/bn;-><init>(Lcom/amap/api/mapcore2d/ag;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bn;

    :cond_0
    :goto_0
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ay;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/ay;->setVisibility(I)V

    :goto_1
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->y:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bn;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->a()V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bn;

    :cond_2
    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->v:Landroid/location/Location;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->C:Lcom/amap/api/maps2d/LocationSource;

    invoke-interface {v0}, Lcom/amap/api/maps2d/LocationSource;->deactivate()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ay;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/ay;->a(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ay;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/ay;->a(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ay;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ay;->setVisibility(I)V

    goto :goto_1
.end method

.method public c(F)Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "onScale"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/au;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/au;->f()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/b;->b(F)V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ao:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ao:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore2d/b;->ap:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->ao:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget v2, p0, Lcom/amap/api/mapcore2d/b;->aq:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->ao:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore2d/b;->ap:I

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->ao:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore2d/b;->aq:I

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl;->a:Lcom/amap/api/mapcore2d/bl$e;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bh;->k:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bh;->k:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Lcom/amap/api/mapcore2d/bl$e;->a(II)Lcom/amap/api/mapcore2d/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->ao:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/amap/api/mapcore2d/t;->a()Lcom/amap/api/mapcore2d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/t;->b()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->W()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore2d/b;->a(ZLcom/amap/api/maps2d/model/CameraPosition;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0, v4, v4}, Lcom/amap/api/mapcore2d/bl$d;->a(ZZ)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/bl$d;->b(Lcom/amap/api/mapcore2d/ae;)V

    goto :goto_0

    :cond_2
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$d;->d()I

    move-result v0

    goto :goto_0
.end method

.method public d(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/cn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/cn;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/cn;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/cn;->setVisibility(I)V

    goto :goto_0
.end method

.method public e()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/bg;

    return-object v0
.end method

.method e(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore2d/b;->t:I

    return-void
.end method

.method public e(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ay;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ay;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ay;->setVisibility(I)V

    goto :goto_0
.end method

.method public f()F
    .locals 4

    const-string/jumbo v2, "getZoomLevel"

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bl$d;->e()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "AMapDelegateImpGLSurfaceView"

    invoke-static {v1, v3, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public f(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/x;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/x;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/x;->setVisibility(I)V

    goto :goto_0
.end method

.method public g()Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->Y()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->f()F

    move-result v1

    invoke-static {}, Lcom/amap/api/maps2d/model/CameraPosition;->builder()Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->target(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->build()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    goto :goto_0
.end method

.method public g(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bu;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/bu;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->L()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bu;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bu;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bu;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/bu;->a(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bu;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bu;->setVisibility(I)V

    goto :goto_0
.end method

.method public h()F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    if-nez v0, :cond_1

    :cond_0
    sget v0, Lcom/amap/api/mapcore2d/y;->c:I

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$d;->a()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public h(Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->E()Z

    move-result v0

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->F()Z

    move-result v0

    invoke-virtual {p0, v5}, Lcom/amap/api/mapcore2d/b;->i(Z)V

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl$a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Lcom/amap/api/mapcore2d/bl$a;->a(Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl$a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/amap/api/mapcore2d/bl$a;->a(Ljava/lang/String;Z)Z

    if-ne v0, v4, :cond_2

    invoke-virtual {p0, v4}, Lcom/amap/api/mapcore2d/b;->i(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0, v5, v5}, Lcom/amap/api/mapcore2d/bl$d;->a(ZZ)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl$a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore2d/bl$a;->b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/aw;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl$a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/amap/api/mapcore2d/bl$a;->a(Ljava/lang/String;Z)Z

    if-ne v0, v4, :cond_4

    invoke-virtual {p0, v4}, Lcom/amap/api/mapcore2d/b;->i(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0, v5, v5}, Lcom/amap/api/mapcore2d/bl$d;->a(ZZ)V

    goto :goto_0

    :cond_5
    new-instance v1, Lcom/amap/api/mapcore2d/aw;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/aw;-><init>()V

    new-instance v2, Lcom/amap/api/mapcore2d/b$1;

    invoke-direct {v2, p0}, Lcom/amap/api/mapcore2d/b$1;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v2, v1, Lcom/amap/api/mapcore2d/aw;->j:Lcom/amap/api/mapcore2d/ck;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl$a;->f:Ljava/lang/String;

    iput-object v2, v1, Lcom/amap/api/mapcore2d/aw;->a:Ljava/lang/String;

    iput-boolean v4, v1, Lcom/amap/api/mapcore2d/aw;->e:Z

    iput-boolean v4, v1, Lcom/amap/api/mapcore2d/aw;->d:Z

    iput-boolean v4, v1, Lcom/amap/api/mapcore2d/aw;->f:Z

    iput-boolean v4, v1, Lcom/amap/api/mapcore2d/aw;->g:Z

    sget v2, Lcom/amap/api/mapcore2d/y;->c:I

    iput v2, v1, Lcom/amap/api/mapcore2d/aw;->b:I

    sget v2, Lcom/amap/api/mapcore2d/y;->d:I

    iput v2, v1, Lcom/amap/api/mapcore2d/aw;->c:I

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/amap/api/mapcore2d/bl$a;->a(Lcom/amap/api/mapcore2d/aw;Landroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl$a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/amap/api/mapcore2d/bl$a;->a(Ljava/lang/String;Z)Z

    if-ne v0, v4, :cond_6

    invoke-virtual {p0, v4}, Lcom/amap/api/mapcore2d/b;->i(Z)V

    :cond_6
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0, v5, v5}, Lcom/amap/api/mapcore2d/bl$d;->a(ZZ)V

    goto/16 :goto_0
.end method

.method public i()F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    if-nez v0, :cond_1

    :cond_0
    sget v0, Lcom/amap/api/mapcore2d/y;->d:I

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$d;->b()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public i(Z)V
    .locals 10

    const-wide/32 v8, 0x1d4c0

    const/16 v6, 0x12

    const/16 v3, 0x9

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->F()Z

    move-result v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->E()Z

    move-result v0

    const-string/jumbo v1, ""

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl$a;->g:Ljava/lang/String;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    invoke-virtual {v0, v1, v4}, Lcom/amap/api/mapcore2d/bl$a;->a(Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0, v4, v4}, Lcom/amap/api/mapcore2d/bl$d;->a(ZZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/bl$a;->b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/aw;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    invoke-virtual {v0, v1, v5}, Lcom/amap/api/mapcore2d/bl$a;->a(Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0, v4, v4}, Lcom/amap/api/mapcore2d/bl$d;->a(ZZ)V

    goto :goto_0

    :cond_3
    if-ne v0, v5, :cond_4

    new-instance v0, Lcom/amap/api/mapcore2d/aw;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/aw;-><init>()V

    iput-boolean v5, v0, Lcom/amap/api/mapcore2d/aw;->h:Z

    iput-wide v8, v0, Lcom/amap/api/mapcore2d/aw;->i:J

    iput-object v1, v0, Lcom/amap/api/mapcore2d/aw;->a:Ljava/lang/String;

    iput-boolean v4, v0, Lcom/amap/api/mapcore2d/aw;->e:Z

    iput-boolean v5, v0, Lcom/amap/api/mapcore2d/aw;->d:Z

    iput-boolean v5, v0, Lcom/amap/api/mapcore2d/aw;->f:Z

    iput-boolean v4, v0, Lcom/amap/api/mapcore2d/aw;->g:Z

    iput v6, v0, Lcom/amap/api/mapcore2d/aw;->b:I

    iput v3, v0, Lcom/amap/api/mapcore2d/aw;->c:I

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/amap/api/mapcore2d/bl$a;->a(Lcom/amap/api/mapcore2d/aw;Landroid/content/Context;)Z

    :goto_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    invoke-virtual {v0, v1, v5}, Lcom/amap/api/mapcore2d/bl$a;->a(Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0, v4, v4}, Lcom/amap/api/mapcore2d/bl$d;->a(ZZ)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lcom/amap/api/mapcore2d/aw;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/aw;-><init>()V

    iput-boolean v5, v0, Lcom/amap/api/mapcore2d/aw;->h:Z

    iput-wide v8, v0, Lcom/amap/api/mapcore2d/aw;->i:J

    new-instance v2, Lcom/amap/api/mapcore2d/b$2;

    invoke-direct {v2, p0}, Lcom/amap/api/mapcore2d/b$2;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v2, v0, Lcom/amap/api/mapcore2d/aw;->j:Lcom/amap/api/mapcore2d/ck;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/aw;->a:Ljava/lang/String;

    iput-boolean v4, v0, Lcom/amap/api/mapcore2d/aw;->e:Z

    iput-boolean v5, v0, Lcom/amap/api/mapcore2d/aw;->d:Z

    iput-boolean v5, v0, Lcom/amap/api/mapcore2d/aw;->f:Z

    iput-boolean v4, v0, Lcom/amap/api/mapcore2d/aw;->g:Z

    iput v6, v0, Lcom/amap/api/mapcore2d/aw;->b:I

    iput v3, v0, Lcom/amap/api/mapcore2d/aw;->c:I

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/amap/api/mapcore2d/bl$a;->a(Lcom/amap/api/mapcore2d/aw;Landroid/content/Context;)Z

    goto :goto_1
.end method

.method public j()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/s;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/s;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/s;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/s;->a(Z)V

    invoke-static {}, Lcom/amap/api/mapcore2d/t;->a()Lcom/amap/api/mapcore2d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/t;->b()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    invoke-interface {v0}, Lcom/amap/api/maps2d/AMap$CancelableCallback;->onCancel()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bb;->a(Z)V

    goto :goto_0
.end method

.method public k()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "clear"

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->t()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->f:Lcom/amap/api/mapcore2d/ac;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ac;->a()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/be;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/be;->c()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->a()V

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "amapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AMapDelegateImpGLSurfaceView clear erro"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public n()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->y:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v1, "onDoubleTap"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/au;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/au;->f()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->r:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/bb;->b(II)Z

    :cond_2
    iget v0, p0, Lcom/amap/api/mapcore2d/b;->aB:I

    if-gt v0, v3, :cond_0

    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/b;->aC:Z

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/cn;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bl$d;->e()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/cn;->a(F)V

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->aC:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/s;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/s;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/s;

    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore2d/s;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    invoke-interface {v0}, Lcom/amap/api/maps2d/AMap$CancelableCallback;->onCancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    :cond_1
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->aC:Z

    iput v1, p0, Lcom/amap/api/mapcore2d/b;->aB:I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aj:Landroid/graphics/Point;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->aj:Landroid/graphics/Point;

    :goto_0
    return v3

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aj:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->U:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/amap/api/mapcore2d/b;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->buildDrawingCache()V

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x10

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->U:Z

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/bl$d;->a(II)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->ar:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/amap/api/mapcore2d/b;->au:F

    iget v3, p0, Lcom/amap/api/mapcore2d/b;->av:F

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/amap/api/mapcore2d/bl$a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;FF)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/s;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/s;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->ae:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput-boolean v4, p0, Lcom/amap/api/mapcore2d/b;->ae:Z

    :cond_2
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10

    const/4 v9, 0x1

    const-string/jumbo v1, "onFling"

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->al:Lcom/amap/api/mapcore2d/bm$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore2d/bm$a;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->al:Lcom/amap/api/mapcore2d/bm$a;

    iget-wide v4, v0, Lcom/amap/api/mapcore2d/bm$a;->o:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1e

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return v9

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/au;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/au;->e()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ao:Landroid/widget/Scroller;

    iget v1, p0, Lcom/amap/api/mapcore2d/b;->ap:I

    iget v2, p0, Lcom/amap/api/mapcore2d/b;->aq:I

    neg-float v3, p3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    neg-float v4, p4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x5

    iget v5, p0, Lcom/amap/api/mapcore2d/b;->aw:I

    neg-int v5, v5

    iget v6, p0, Lcom/amap/api/mapcore2d/b;->aw:I

    iget v7, p0, Lcom/amap/api/mapcore2d/b;->ax:I

    neg-int v7, v7

    iget v8, p0, Lcom/amap/api/mapcore2d/b;->ax:I

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->m:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    invoke-virtual {v2, p1, p2}, Lcom/amap/api/mapcore2d/bl$a;->a(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v2, p0, p1, p2}, Lcom/amap/api/mapcore2d/bb;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->m:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    invoke-virtual {v2, p1, p2}, Lcom/amap/api/mapcore2d/bl$a;->b(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v2, p0, p1, p2}, Lcom/amap/api/mapcore2d/bb;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ab:Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore2d/aa;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/aa;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/aa;)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->ab:Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;

    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/mapcore2d/aa;->b:D

    iget-wide v6, v0, Lcom/amap/api/mapcore2d/aa;->a:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v2}, Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;->onMapLongClick(Lcom/amap/api/maps2d/model/LatLng;)V

    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/b;->L:Z

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/be;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/be;->a(Landroid/view/MotionEvent;)Lcom/amap/api/mapcore2d/ak;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/mapcore2d/ak;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/mapcore2d/ak;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/amap/api/maps2d/model/Marker;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/mapcore2d/ak;

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/model/Marker;-><init>(Lcom/amap/api/mapcore2d/ak;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->o:Lcom/amap/api/maps2d/model/Marker;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Z:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/mapcore2d/ak;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->c()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore2d/ak;->a(Lcom/amap/api/maps2d/model/LatLng;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/be;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/mapcore2d/ak;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/be;->c(Lcom/amap/api/mapcore2d/ak;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Z:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->o:Lcom/amap/api/maps2d/model/Marker;

    invoke-interface {v0, v1}, Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;->onMarkerDragStart(Lcom/amap/api/maps2d/model/Marker;)V

    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/b;->V:Z

    goto :goto_0
.end method

.method protected final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string/jumbo v1, "onScroll"

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->al:Lcom/amap/api/mapcore2d/bm$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore2d/bm$a;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->al:Lcom/amap/api/mapcore2d/bm$a;

    iget-wide v4, v0, Lcom/amap/api/mapcore2d/bm$a;->o:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1e

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/au;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/au;->e()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->W:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lcom/amap/api/mapcore2d/b;->aB:I

    if-le v0, v6, :cond_3

    iput-boolean v7, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    goto :goto_0

    :cond_3
    iput-boolean v6, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/amap/api/mapcore2d/b;->a(II)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->K()V

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string/jumbo v3, "onSingleTapUp"

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bl$a;->b(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->am:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->L:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->L:Z

    move v0, v2

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    if-eqz v0, :cond_4

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v0, v1, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/be;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v0, v4, v5}, Lcom/amap/api/mapcore2d/be;->a(Landroid/graphics/Rect;II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/be;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/be;->e()Lcom/amap/api/mapcore2d/ak;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->s()Z

    move-result v1

    if-nez v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/amap/api/maps2d/model/Marker;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/Marker;-><init>(Lcom/amap/api/mapcore2d/ak;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;

    invoke-interface {v0, v1}, Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;->onInfoWindowClick(Lcom/amap/api/maps2d/model/Marker;)V

    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/be;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/be;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/be;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/be;->e()Lcom/amap/api/mapcore2d/ak;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ak;->s()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move v0, v2

    goto/16 :goto_0

    :cond_6
    new-instance v0, Lcom/amap/api/maps2d/model/Marker;

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/model/Marker;-><init>(Lcom/amap/api/mapcore2d/ak;)V

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->R:Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->R:Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;

    invoke-interface {v4, v0}, Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;->onMarkerClick(Lcom/amap/api/maps2d/model/Marker;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/be;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/be;->b()I

    move-result v0

    if-gtz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/be;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/be;->c(Lcom/amap/api/mapcore2d/ak;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v2

    goto/16 :goto_0

    :cond_8
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/be;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/be;->e()Lcom/amap/api/mapcore2d/ak;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ak;->q()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ak;->c()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cy;->a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/ae;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/mapcore2d/bb;->a(Lcom/amap/api/mapcore2d/ae;)V

    invoke-static {}, Lcom/amap/api/mapcore2d/t;->a()Lcom/amap/api/mapcore2d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/t;->b()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_9
    :goto_2
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/ak;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/be;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/be;->c(Lcom/amap/api/mapcore2d/ak;)V

    move v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v4, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v1, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_0

    :cond_a
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ad:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

    if-eqz v0, :cond_b

    new-instance v0, Lcom/amap/api/mapcore2d/aa;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/aa;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v1, v4, v0}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/aa;)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->ad:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

    new-instance v4, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v0, Lcom/amap/api/mapcore2d/aa;->b:D

    iget-wide v8, v0, Lcom/amap/api/mapcore2d/aa;->a:D

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v4}, Lcom/amap/api/maps2d/AMap$OnMapClickListener;->onMapClick(Lcom/amap/api/maps2d/model/LatLng;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_b
    move v0, v2

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance v0, Landroid/graphics/Point;

    div-int/lit8 v1, p1, 0x2

    div-int/lit8 v2, p2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/bh;->a(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore2d/bl$d;->a(II)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bb;->a()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bb;->b()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bb;->a()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/bb;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/bb;->a(II)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore2d/bb;->a(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore2d/bb;->b(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->u()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aD:Lcom/amap/api/mapcore2d/b$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aD:Lcom/amap/api/mapcore2d/b$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amap/api/mapcore2d/b$a;->a(IIII)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    sget-boolean v1, Lcom/amap/api/mapcore2d/y;->o:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->m:Z

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->aa:Lcom/amap/api/maps2d/AMap$OnMapTouchListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->ai:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->ai:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->what:I

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore2d/bl$a;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/b;->b(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public p()Landroid/location/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->C:Lcom/amap/api/maps2d/LocationSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->w:Lcom/amap/api/mapcore2d/g;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/g;->a:Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Lcom/amap/api/mapcore2d/au;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/au;

    return-object v0
.end method

.method public r()Lcom/amap/api/mapcore2d/aq;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->T:Lcom/amap/api/mapcore2d/aq;

    return-object v0
.end method

.method public s()Lcom/amap/api/mapcore2d/br;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->a:Lcom/amap/api/mapcore2d/bl$e;

    return-object v0
.end method

.method public setClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->m:Z

    invoke-super {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public t()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/bg;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bg;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    :cond_1
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->Q:Lcom/amap/api/mapcore2d/bk;

    return-void
.end method

.method public u()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Q:Lcom/amap/api/mapcore2d/bk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bg$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->Q:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bk;->c()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore2d/bg$a;->b:Lcom/amap/api/maps2d/model/LatLng;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/bg;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bg;->a()V

    :cond_1
    return-void
.end method

.method public v()V
    .locals 3

    const-string/jumbo v1, "destroy"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ag:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ag:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ag:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ah:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ah:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ah:Ljava/util/TimerTask;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ai:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ai:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3
    invoke-static {}, Lcom/amap/api/mapcore2d/v;->a()Lcom/amap/api/mapcore2d/v;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/v;->b(Lcom/amap/api/mapcore2d/v$a;)V

    invoke-static {}, Lcom/amap/api/mapcore2d/bv;->a()Lcom/amap/api/mapcore2d/bv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/bv;->b(Lcom/amap/api/mapcore2d/bv$a;)V

    invoke-static {}, Lcom/amap/api/mapcore2d/t;->a()Lcom/amap/api/mapcore2d/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/t;->b(Lcom/amap/api/mapcore2d/t$a;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/cn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cn;->a()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bu;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bu;->a()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/cm;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cm;->a()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ay;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay;->a()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/x;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/x;->a()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->f:Lcom/amap/api/mapcore2d/ac;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ac;->b()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/be;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/be;->f()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->S:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->S:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/bg;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bg;->removeAllViews()V

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->t()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->c:Lcom/amap/api/mapcore2d/bl$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$b;->b()V

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->T()V

    :cond_5
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/mapcore2d/y;->h:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/mapcore2d/y;->g:Ljava/lang/String;

    invoke-static {}, Lcom/amap/api/mapcore2d/ed;->c()V

    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public y()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->c:Lcom/amap/api/mapcore2d/bl$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$b;->c()V

    :cond_0
    return-void
.end method

.method public z()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->c:Lcom/amap/api/mapcore2d/bl$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$b;->d()V

    :cond_0
    return-void
.end method
