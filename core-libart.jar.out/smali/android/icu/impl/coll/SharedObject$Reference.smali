.class public final Landroid/icu/impl/coll/SharedObject$Reference;
.super Ljava/lang/Object;
.source "SharedObject.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/SharedObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/icu/impl/coll/SharedObject;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private ref:Landroid/icu/impl/coll/SharedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/icu/impl/coll/SharedObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/icu/impl/coll/SharedObject;->addRef()V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject;->removeRef()V

    iput-object v1, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    :cond_0
    return-void
.end method

.method public clone()Landroid/icu/impl/coll/SharedObject$Reference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/impl/coll/SharedObject$Reference",
            "<TT;>;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/SharedObject$Reference;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject;->addRef()V

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v2, v1}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/icu/impl/coll/SharedObject$Reference;->clone()Landroid/icu/impl/coll/SharedObject$Reference;

    move-result-object v0

    return-object v0
.end method

.method public copyOnWrite()Landroid/icu/impl/coll/SharedObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject;->getRefCount()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject;->clone()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject;->removeRef()V

    iput-object v1, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject;->addRef()V

    return-object v1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Landroid/icu/impl/coll/SharedObject$Reference;->clear()V

    return-void
.end method

.method public readOnly()Landroid/icu/impl/coll/SharedObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    return-object v0
.end method
