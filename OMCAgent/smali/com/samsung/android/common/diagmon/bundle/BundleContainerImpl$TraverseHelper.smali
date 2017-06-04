.class public abstract Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl$TraverseHelper;
.super Ljava/lang/Object;
.source "BundleContainerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "TraverseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl$TraverseHelper;->this$0:Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public traverse()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl$TraverseHelper;->this$0:Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl;

    iget-object v0, v0, Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl;->bundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl$TraverseHelper;->traverse(Landroid/os/Bundle;)V

    return-void
.end method

.method public abstract traverse(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public traverse(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl$TraverseHelper;->traverse(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl$TraverseHelper;->traverse(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public abstract traverse(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public traverseWithoutException()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl$TraverseHelper;->traverse()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
