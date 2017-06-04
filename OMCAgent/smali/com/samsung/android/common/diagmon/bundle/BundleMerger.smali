.class public Lcom/samsung/android/common/diagmon/bundle/BundleMerger;
.super Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl;
.source "BundleMerger.java"

# interfaces
.implements Lcom/samsung/android/common/diagmon/bundle/BundleContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;
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


# virtual methods
.method public merge(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;

    invoke-direct {v0, p0}, Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;-><init>(Lcom/samsung/android/common/diagmon/bundle/BundleMerger;)V

    # setter for: Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;->otherBundle:Landroid/os/Bundle;
    invoke-static {v0, p1}, Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;->access$002(Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-virtual {v0}, Lcom/samsung/android/common/diagmon/bundle/BundleMerger$TraverseToMerge;->traverseWithoutException()V

    return-void
.end method

.method public merge(Lcom/samsung/android/common/diagmon/bundle/BundleContainer;)V
    .locals 1

    invoke-interface {p1}, Lcom/samsung/android/common/diagmon/bundle/BundleContainer;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/common/diagmon/bundle/BundleMerger;->merge(Landroid/os/Bundle;)V

    return-void
.end method
