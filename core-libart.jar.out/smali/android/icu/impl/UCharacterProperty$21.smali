.class Landroid/icu/impl/UCharacterProperty$21;
.super Landroid/icu/impl/UCharacterProperty$CombiningClassIntProperty;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V
    .locals 0

    iput-object p2, p0, Landroid/icu/impl/UCharacterProperty$21;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p3}, Landroid/icu/impl/UCharacterProperty$CombiningClassIntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method getValue(I)I
    .locals 1

    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method
