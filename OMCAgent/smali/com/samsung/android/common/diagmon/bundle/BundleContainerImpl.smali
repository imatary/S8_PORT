.class public Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl;
.super Ljava/lang/Object;
.source "BundleContainerImpl.java"

# interfaces
.implements Lcom/samsung/android/common/diagmon/bundle/BundleContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl$TraverseHelper;
    }
.end annotation


# instance fields
.field protected bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl;->setBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/common/diagmon/bundle/BundleContainer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/samsung/android/common/diagmon/bundle/BundleContainer;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl;->setBundle(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl;->bundle:Landroid/os/Bundle;

    return-void
.end method
