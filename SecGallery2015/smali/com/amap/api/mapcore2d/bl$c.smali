.class public Lcom/amap/api/mapcore2d/bl$c;
.super Ljava/lang/Object;
.source "Mediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/bl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/bl;

.field private final b:Landroid/content/Context;

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/amap/api/mapcore2d/bi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore2d/bl;Lcom/amap/api/mapcore2d/bl;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bl$c;->a:Lcom/amap/api/mapcore2d/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bl$c;->c:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/amap/api/mapcore2d/bl$c;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$c;->c:Landroid/util/SparseArray;

    const/4 v1, 0x0

    new-instance v2, Lcom/amap/api/mapcore2d/cd;

    invoke-direct {v2, p2, p3}, Lcom/amap/api/mapcore2d/cd;-><init>(Lcom/amap/api/mapcore2d/bl;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/bl;Lcom/amap/api/mapcore2d/bl;Landroid/content/Context;Lcom/amap/api/mapcore2d/bl$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/mapcore2d/bl$c;-><init>(Lcom/amap/api/mapcore2d/bl;Lcom/amap/api/mapcore2d/bl;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/bl$c;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$c;->c:Landroid/util/SparseArray;

    return-object v0
.end method
