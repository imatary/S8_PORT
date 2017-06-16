.class public Lcom/sec/android/secvision/segmentation/ScribblePath;
.super Landroid/graphics/Path;
.source "ScribblePath.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "PEDIT_ScribblePath"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mMode:Lcom/sec/android/secvision/segmentation/SegmentationMode;

.field private mPointArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/secvision/segmentation/ScribblePoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_NONE:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    iput-object v0, p0, Lcom/sec/android/secvision/segmentation/ScribblePath;->mMode:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    sget-object v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_NONE:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    iput-object v0, p0, Lcom/sec/android/secvision/segmentation/ScribblePath;->mMode:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/secvision/segmentation/ScribblePath;->mPointArray:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/secvision/segmentation/ScribblePath;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    sget-object v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_NONE:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    iput-object v0, p0, Lcom/sec/android/secvision/segmentation/ScribblePath;->mMode:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    iget-object v0, p1, Lcom/sec/android/secvision/segmentation/ScribblePath;->mMode:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    iput-object v0, p0, Lcom/sec/android/secvision/segmentation/ScribblePath;->mMode:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/sec/android/secvision/segmentation/ScribblePath;->mPointArray:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sec/android/secvision/segmentation/ScribblePath;->mPointArray:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getPointArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/secvision/segmentation/ScribblePoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/secvision/segmentation/ScribblePath;->mPointArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSegmentationMode()Lcom/sec/android/secvision/segmentation/SegmentationMode;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/secvision/segmentation/ScribblePath;->mMode:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    return-object v0
.end method

.method public lineTo(FF)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/secvision/segmentation/ScribblePath;->mPointArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/secvision/segmentation/ScribblePath;->mPointArray:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/secvision/segmentation/ScribblePath;->mPointArray:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/secvision/segmentation/ScribblePoint;

    invoke-direct {v1, p1, p2}, Lcom/sec/android/secvision/segmentation/ScribblePoint;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "PEDIT_ScribblePath"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTo => x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method public moveTo(FF)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/secvision/segmentation/ScribblePath;->mPointArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/secvision/segmentation/ScribblePath;->mPointArray:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/secvision/segmentation/ScribblePath;->mPointArray:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/secvision/segmentation/ScribblePoint;

    invoke-direct {v1, p1, p2}, Lcom/sec/android/secvision/segmentation/ScribblePoint;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "PEDIT_ScribblePath"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTo => x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    return-void
.end method

.method public offset(FF)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/secvision/segmentation/ScribblePath;->mPointArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/secvision/segmentation/ScribblePath;->mPointArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/secvision/segmentation/ScribblePoint;

    iget v2, v0, Lcom/sec/android/secvision/segmentation/ScribblePoint;->x:F

    add-float/2addr v2, p1

    iput v2, v0, Lcom/sec/android/secvision/segmentation/ScribblePoint;->x:F

    iget v2, v0, Lcom/sec/android/secvision/segmentation/ScribblePoint;->y:F

    add-float/2addr v2, p2

    iput v2, v0, Lcom/sec/android/secvision/segmentation/ScribblePoint;->y:F

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/Path;->offset(FF)V

    return-void
.end method

.method public offset(FFLandroid/graphics/Path;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/secvision/segmentation/ScribblePath;->mPointArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/secvision/segmentation/ScribblePath;->mPointArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/secvision/segmentation/ScribblePoint;

    iget v2, v0, Lcom/sec/android/secvision/segmentation/ScribblePoint;->x:F

    add-float/2addr v2, p1

    iput v2, v0, Lcom/sec/android/secvision/segmentation/ScribblePoint;->x:F

    iget v2, v0, Lcom/sec/android/secvision/segmentation/ScribblePoint;->y:F

    add-float/2addr v2, p2

    iput v2, v0, Lcom/sec/android/secvision/segmentation/ScribblePoint;->y:F

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/Path;->offset(FFLandroid/graphics/Path;)V

    return-void
.end method

.method public pointsToPath()Landroid/graphics/Path;
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/ScribblePath;->mPointArray:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/ScribblePath;->mPointArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/ScribblePath;->mPointArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/secvision/segmentation/ScribblePoint;

    iget v3, v2, Lcom/sec/android/secvision/segmentation/ScribblePoint;->x:F

    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/ScribblePath;->mPointArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/secvision/segmentation/ScribblePoint;

    iget v2, v2, Lcom/sec/android/secvision/segmentation/ScribblePoint;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/ScribblePath;->mPointArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/ScribblePath;->mPointArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/secvision/segmentation/ScribblePoint;

    iget v3, v2, Lcom/sec/android/secvision/segmentation/ScribblePoint;->x:F

    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/ScribblePath;->mPointArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/secvision/segmentation/ScribblePoint;

    iget v2, v2, Lcom/sec/android/secvision/segmentation/ScribblePoint;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public reset()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/secvision/segmentation/ScribblePath;->mPointArray:Ljava/util/ArrayList;

    sget-object v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_NONE:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    iput-object v0, p0, Lcom/sec/android/secvision/segmentation/ScribblePath;->mMode:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    invoke-super {p0}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method public setSegmentationMode(Lcom/sec/android/secvision/segmentation/SegmentationMode;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/secvision/segmentation/ScribblePath;->mMode:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    return-void
.end method
