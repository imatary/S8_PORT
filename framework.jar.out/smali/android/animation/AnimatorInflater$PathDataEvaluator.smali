.class Landroid/animation/AnimatorInflater$PathDataEvaluator;
.super Ljava/lang/Object;
.source "AnimatorInflater.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimatorInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathDataEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Landroid/util/PathParser$PathData;",
        ">;"
    }
.end annotation


# instance fields
.field private final mPathData:Landroid/util/PathParser$PathData;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/PathParser$PathData;

    invoke-direct {v0}, Landroid/util/PathParser$PathData;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorInflater$PathDataEvaluator;->mPathData:Landroid/util/PathParser$PathData;

    return-void
.end method

.method synthetic constructor <init>(Landroid/animation/AnimatorInflater$PathDataEvaluator;)V
    .locals 0

    invoke-direct {p0}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Landroid/util/PathParser$PathData;
    .locals 2

    iget-object v0, p0, Landroid/animation/AnimatorInflater$PathDataEvaluator;->mPathData:Landroid/util/PathParser$PathData;

    invoke-static {v0, p2, p3, p1}, Landroid/util/PathParser;->interpolatePathData(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;F)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t interpolate between two incompatible pathData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/animation/AnimatorInflater$PathDataEvaluator;->mPathData:Landroid/util/PathParser$PathData;

    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Landroid/util/PathParser$PathData;

    check-cast p3, Landroid/util/PathParser$PathData;

    invoke-virtual {p0, p1, p2, p3}, Landroid/animation/AnimatorInflater$PathDataEvaluator;->evaluate(FLandroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Landroid/util/PathParser$PathData;

    move-result-object v0

    return-object v0
.end method
