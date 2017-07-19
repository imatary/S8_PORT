.class Lcom/samsung/android/common/diagmon/bundle/BundleToList$TraverseToList;
.super Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl$TraverseHelper;
.source "BundleToList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/common/diagmon/bundle/BundleToList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TraverseToList"
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private prefix:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/common/diagmon/bundle/BundleToList;


# direct methods
.method private constructor <init>(Lcom/samsung/android/common/diagmon/bundle/BundleToList;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/common/diagmon/bundle/BundleToList$TraverseToList;->this$0:Lcom/samsung/android/common/diagmon/bundle/BundleToList;

    invoke-direct {p0, p1}, Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl$TraverseHelper;-><init>(Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/common/diagmon/bundle/BundleToList$TraverseToList;->list:Ljava/util/List;

    const-string v0, "."

    iput-object v0, p0, Lcom/samsung/android/common/diagmon/bundle/BundleToList$TraverseToList;->prefix:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/common/diagmon/bundle/BundleToList;Lcom/samsung/android/common/diagmon/bundle/BundleToList$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/common/diagmon/bundle/BundleToList$TraverseToList;-><init>(Lcom/samsung/android/common/diagmon/bundle/BundleToList;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/common/diagmon/bundle/BundleToList$TraverseToList;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/common/diagmon/bundle/BundleToList$TraverseToList;->list:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public traverse(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/common/diagmon/bundle/BundleToList$TraverseToList;->prefix:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/common/diagmon/bundle/BundleToList$TraverseToList;->prefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/common/diagmon/bundle/BundleToList$TraverseToList;->traverse(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/common/diagmon/bundle/BundleToList$TraverseToList;->prefix:Ljava/lang/String;

    return-void
.end method

.method public traverse(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/common/diagmon/bundle/BundleToList$TraverseToList;->list:Ljava/util/List;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/common/diagmon/bundle/BundleToList$TraverseToList;->prefix:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
