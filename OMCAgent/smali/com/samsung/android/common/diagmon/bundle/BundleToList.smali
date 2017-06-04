.class public Lcom/samsung/android/common/diagmon/bundle/BundleToList;
.super Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl;
.source "BundleToList.java"

# interfaces
.implements Lcom/samsung/android/common/diagmon/bundle/BundleContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/common/diagmon/bundle/BundleToList$TraverseToList;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/common/diagmon/bundle/BundleContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl;-><init>(Lcom/samsung/android/common/diagmon/bundle/BundleContainer;)V

    return-void
.end method

.method public static listToString(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public toList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/common/diagmon/bundle/BundleToList$TraverseToList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/common/diagmon/bundle/BundleToList$TraverseToList;-><init>(Lcom/samsung/android/common/diagmon/bundle/BundleToList;Lcom/samsung/android/common/diagmon/bundle/BundleToList$1;)V

    invoke-virtual {v0}, Lcom/samsung/android/common/diagmon/bundle/BundleToList$TraverseToList;->traverseWithoutException()V

    # getter for: Lcom/samsung/android/common/diagmon/bundle/BundleToList$TraverseToList;->list:Ljava/util/List;
    invoke-static {v0}, Lcom/samsung/android/common/diagmon/bundle/BundleToList$TraverseToList;->access$100(Lcom/samsung/android/common/diagmon/bundle/BundleToList$TraverseToList;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
