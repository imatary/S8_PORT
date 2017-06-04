.class Lcom/sec/android/gallery3d/data/dboperation/IdsWithOperation;
.super Ljava/lang/Object;
.source "IdsWithOperation.java"


# instance fields
.field private final mIdsWithOperations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sec/android/gallery3d/data/dboperation/IOperation;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/dboperation/IdsWithOperation;->mIdsWithOperations:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/sec/android/gallery3d/data/dboperation/IOperation;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/dboperation/IdsWithOperation;->mIdsWithOperations:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getOperations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/sec/android/gallery3d/data/dboperation/IOperation;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/dboperation/IdsWithOperation;->mIdsWithOperations:Ljava/util/Map;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/dboperation/IdsWithOperation;->mIdsWithOperations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
