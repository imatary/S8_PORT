.class public Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;
.super Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;
.source "Advance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PointCurveObject"
.end annotation


# instance fields
.field private handlerPos:[F

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I[IZ[F)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I[IZ)V

    invoke-virtual {p0, p5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;->updateHandlerPos([F)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;->clone()Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;
    .locals 6

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->points_count:I
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->access$2900(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)I

    move-result v2

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->mappingTable:[I
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->access$3000(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)[I

    move-result-object v3

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->isModified:Z
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->access$3100(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)Z

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;->handlerPos:[F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I[IZ[F)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;->clone()Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;

    move-result-object v0

    return-object v0
.end method

.method public getHandlerPos()[F
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;->handlerPos:[F

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->points_count:I
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->access$2900(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;->handlerPos:[F

    return-void
.end method

.method public updateHandlerPos([F)V
    .locals 1

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->points_count:I
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->access$2900(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;->handlerPos:[F

    return-void
.end method
