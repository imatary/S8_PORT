.class public Landroid/icu/impl/PVecToTrieCompactHandler;
.super Ljava/lang/Object;
.source "PVecToTrieCompactHandler.java"

# interfaces
.implements Landroid/icu/impl/PropsVectors$CompactHandler;


# instance fields
.field public builder:Landroid/icu/impl/IntTrieBuilder;

.field public initialValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setRowIndexForErrorValue(I)V
    .locals 0

    return-void
.end method

.method public setRowIndexForInitialValue(I)V
    .locals 0

    iput p1, p0, Landroid/icu/impl/PVecToTrieCompactHandler;->initialValue:I

    return-void
.end method

.method public setRowIndexForRange(III)V
    .locals 3

    iget-object v0, p0, Landroid/icu/impl/PVecToTrieCompactHandler;->builder:Landroid/icu/impl/IntTrieBuilder;

    add-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, p3, v2}, Landroid/icu/impl/IntTrieBuilder;->setRange(IIIZ)Z

    return-void
.end method

.method public startRealValues(I)V
    .locals 6

    const v0, 0xffff

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Landroid/icu/impl/IntTrieBuilder;

    iget v3, p0, Landroid/icu/impl/PVecToTrieCompactHandler;->initialValue:I

    iget v4, p0, Landroid/icu/impl/PVecToTrieCompactHandler;->initialValue:I

    const/4 v1, 0x0

    const v2, 0x186a0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/IntTrieBuilder;-><init>([IIIIZ)V

    iput-object v0, p0, Landroid/icu/impl/PVecToTrieCompactHandler;->builder:Landroid/icu/impl/IntTrieBuilder;

    return-void
.end method
