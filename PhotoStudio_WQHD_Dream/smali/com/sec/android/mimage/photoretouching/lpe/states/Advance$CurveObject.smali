.class public Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;
.super Ljava/lang/Object;
.source "Advance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CurveObject"
.end annotation


# instance fields
.field private isModified:Z

.field private mappingTable:[I

.field private points_count:I

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->points_count:I

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->mappingTable:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->isModified:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I[IZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->update(I[I)V

    invoke-virtual {p0, p4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->updateModifiedState(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->points_count:I

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->mappingTable:[I

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->isModified:Z

    return v0
.end method


# virtual methods
.method public clone()Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;
    .locals 5

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->points_count:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->mappingTable:[I

    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->isModified:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I[IZ)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->clone()Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    move-result-object v0

    return-object v0
.end method

.method public getMappingTable()[I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->mappingTable:[I

    const/16 v1, 0x100

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public getModifiedState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->isModified:Z

    return v0
.end method

.method public getNumberOfFittingPoints()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->points_count:I

    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->mappingTable:[I

    return-void
.end method

.method public update(I[I)V
    .locals 1

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->points_count:I

    const/16 v0, 0x100

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->mappingTable:[I

    return-void
.end method

.method public updateModifiedState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->isModified:Z

    return-void
.end method
