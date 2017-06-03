.class Landroid/icu/impl/PropsVectors$DefaultGetFoldedValue;
.super Ljava/lang/Object;
.source "PropsVectors.java"

# interfaces
.implements Landroid/icu/impl/TrieBuilder$DataManipulate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/PropsVectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultGetFoldedValue"
.end annotation


# instance fields
.field private builder:Landroid/icu/impl/IntTrieBuilder;


# direct methods
.method public constructor <init>(Landroid/icu/impl/IntTrieBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/PropsVectors$DefaultGetFoldedValue;->builder:Landroid/icu/impl/IntTrieBuilder;

    return-void
.end method


# virtual methods
.method public getFoldedValue(II)I
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/icu/impl/PropsVectors$DefaultGetFoldedValue;->builder:Landroid/icu/impl/IntTrieBuilder;

    iget v1, v4, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    add-int/lit16 v2, p1, 0x400

    :goto_0
    if-ge p1, v2, :cond_2

    const/4 v4, 0x1

    new-array v0, v4, [Z

    iget-object v4, p0, Landroid/icu/impl/PropsVectors$DefaultGetFoldedValue;->builder:Landroid/icu/impl/IntTrieBuilder;

    invoke-virtual {v4, p1, v0}, Landroid/icu/impl/IntTrieBuilder;->getValue(I[Z)I

    move-result v3

    aget-boolean v4, v0, v5

    if-eqz v4, :cond_0

    add-int/lit8 p1, p1, 0x20

    goto :goto_0

    :cond_0
    if-eq v3, v1, :cond_1

    return p2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v5
.end method
