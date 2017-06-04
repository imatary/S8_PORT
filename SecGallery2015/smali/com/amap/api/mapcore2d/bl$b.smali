.class public Lcom/amap/api/mapcore2d/bl$b;
.super Ljava/lang/Object;
.source "Mediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/bl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field b:I

.field final synthetic c:Lcom/amap/api/mapcore2d/bl;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/bl;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bl$b;->c:Lcom/amap/api/mapcore2d/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bl$b;->a:Z

    iput v0, p0, Lcom/amap/api/mapcore2d/bl$b;->b:I

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bl$b;->e()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$b;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bl$a;->a(Lcom/amap/api/mapcore2d/bl$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$b;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$a;->b()V

    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore2d/bl$b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore2d/bl$b;->b:I

    iget v0, p0, Lcom/amap/api/mapcore2d/bl$b;->b:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/amap/api/mapcore2d/bl$b;->b:I

    rem-int/lit8 v0, v0, 0x14

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$b;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->e:Lcom/amap/api/mapcore2d/bl$c;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bl$c;->a(Lcom/amap/api/mapcore2d/bl$c;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$b;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->e:Lcom/amap/api/mapcore2d/bl$c;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bl$c;->a(Lcom/amap/api/mapcore2d/bl$c;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bi;

    if-nez v0, :cond_3

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bi;->h()V

    goto :goto_1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bl$b;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    iput-boolean v0, v1, Lcom/amap/api/mapcore2d/bl$d;->a:Z

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$b;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->e:Lcom/amap/api/mapcore2d/bl$c;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bl$c;->a(Lcom/amap/api/mapcore2d/bl$c;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$b;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->e:Lcom/amap/api/mapcore2d/bl$c;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bl$c;->a(Lcom/amap/api/mapcore2d/bl$c;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bi;

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bi;->a()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$b;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->e:Lcom/amap/api/mapcore2d/bl$c;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bl$c;->a(Lcom/amap/api/mapcore2d/bl$c;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$b;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->e:Lcom/amap/api/mapcore2d/bl$c;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bl$c;->a(Lcom/amap/api/mapcore2d/bl$c;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bi;

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bi;->c()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$b;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->e:Lcom/amap/api/mapcore2d/bl$c;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bl$c;->a(Lcom/amap/api/mapcore2d/bl$c;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$b;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->e:Lcom/amap/api/mapcore2d/bl$c;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bl$c;->a(Lcom/amap/api/mapcore2d/bl$c;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bi;

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bi;->b()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$b;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->e:Lcom/amap/api/mapcore2d/bl$c;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bl$c;->a(Lcom/amap/api/mapcore2d/bl$c;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$b;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->e:Lcom/amap/api/mapcore2d/bl$c;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bl$c;->a(Lcom/amap/api/mapcore2d/bl$c;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bi;

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bi;->g()V

    goto :goto_1

    :cond_1
    return-void
.end method
