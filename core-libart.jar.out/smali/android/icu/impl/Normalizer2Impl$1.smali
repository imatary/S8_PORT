.class final Landroid/icu/impl/Normalizer2Impl$1;
.super Ljava/lang/Object;
.source "Normalizer2Impl.java"

# interfaces
.implements Landroid/icu/impl/Trie2$ValueMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Normalizer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map(I)I
    .locals 1

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    return v0
.end method
