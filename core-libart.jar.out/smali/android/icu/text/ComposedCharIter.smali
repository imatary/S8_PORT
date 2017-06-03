.class public final Landroid/icu/text/ComposedCharIter;
.super Ljava/lang/Object;
.source "ComposedCharIter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DONE:C = '\uffff'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private curChar:I

.field private decompBuf:Ljava/lang/String;

.field private final n2impl:Landroid/icu/impl/Normalizer2Impl;

.field private nextChar:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/icu/text/ComposedCharIter;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/ComposedCharIter;->curChar:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/ComposedCharIter;->nextChar:I

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    iput-object v0, p0, Landroid/icu/text/ComposedCharIter;->n2impl:Landroid/icu/impl/Normalizer2Impl;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    iput-object v0, p0, Landroid/icu/text/ComposedCharIter;->n2impl:Landroid/icu/impl/Normalizer2Impl;

    goto :goto_0
.end method

.method private findNextChar()V
    .locals 3

    const/4 v2, 0x0

    iget v1, p0, Landroid/icu/text/ComposedCharIter;->curChar:I

    add-int/lit8 v0, v1, 0x1

    iput-object v2, p0, Landroid/icu/text/ComposedCharIter;->decompBuf:Ljava/lang/String;

    :goto_0
    const v1, 0xffff

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/icu/text/ComposedCharIter;->n2impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/ComposedCharIter;->decompBuf:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/text/ComposedCharIter;->decompBuf:Ljava/lang/String;

    if-eqz v1, :cond_0

    :goto_1
    iput v0, p0, Landroid/icu/text/ComposedCharIter;->nextChar:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public decomposition()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/ComposedCharIter;->decompBuf:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/ComposedCharIter;->decompBuf:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public hasNext()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, -0x1

    iget v0, p0, Landroid/icu/text/ComposedCharIter;->nextChar:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/icu/text/ComposedCharIter;->findNextChar()V

    :cond_0
    iget v0, p0, Landroid/icu/text/ComposedCharIter;->nextChar:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()C
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, -0x1

    iget v0, p0, Landroid/icu/text/ComposedCharIter;->nextChar:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/icu/text/ComposedCharIter;->findNextChar()V

    :cond_0
    iget v0, p0, Landroid/icu/text/ComposedCharIter;->nextChar:I

    iput v0, p0, Landroid/icu/text/ComposedCharIter;->curChar:I

    iput v1, p0, Landroid/icu/text/ComposedCharIter;->nextChar:I

    iget v0, p0, Landroid/icu/text/ComposedCharIter;->curChar:I

    int-to-char v0, v0

    return v0
.end method
