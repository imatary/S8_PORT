.class Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;
.super Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl$TraverseHelper;
.source "BundleMerger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/common/diagmon/bundle/BundleMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TraverseToMerge"
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private myBundle:Landroid/os/Bundle;

.field private otherBundle:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/samsung/android/common/diagmon/bundle/BundleMerger;


# direct methods
.method public constructor <init>(Lcom/samsung/android/common/diagmon/bundle/BundleMerger;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;->this$0:Lcom/samsung/android/common/diagmon/bundle/BundleMerger;

    invoke-direct {p0, p1}, Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl$TraverseHelper;-><init>(Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl;)V

    invoke-direct {p0}, Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;->makeDummyHead()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;->myBundle:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;->otherBundle:Landroid/os/Bundle;

    return-object p1
.end method

.method private getBundleOrPutOne()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;->myBundle:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Bundle;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;->myBundle:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;->key:Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;->myBundle:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private makeDummyHead()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;->this$0:Lcom/samsung/android/common/diagmon/bundle/BundleMerger;

    iget-object v2, v2, Lcom/samsung/android/common/diagmon/bundle/BundleMerger;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public traverse()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;->otherBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;->traverse(Landroid/os/Bundle;)V

    return-void
.end method

.method public traverse(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;->myBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;->getBundleOrPutOne()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;->myBundle:Landroid/os/Bundle;

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

    iput-object v0, p0, Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;->traverse(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;->myBundle:Landroid/os/Bundle;

    return-void
.end method

.method public traverse(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;->myBundle:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
