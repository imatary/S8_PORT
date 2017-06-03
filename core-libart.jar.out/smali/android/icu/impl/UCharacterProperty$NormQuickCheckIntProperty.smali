.class Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;
.super Landroid/icu/impl/UCharacterProperty$IntProperty;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NormQuickCheckIntProperty"
.end annotation


# instance fields
.field max:I

.field final synthetic this$0:Landroid/icu/impl/UCharacterProperty;

.field which:I


# direct methods
.method constructor <init>(Landroid/icu/impl/UCharacterProperty;III)V
    .locals 0

    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    iput p3, p0, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;->which:I

    iput p4, p0, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;->max:I

    return-void
.end method


# virtual methods
.method getMaxValue(I)I
    .locals 1

    iget v0, p0, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;->max:I

    return v0
.end method

.method getValue(I)I
    .locals 1

    iget v0, p0, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;->which:I

    add-int/lit16 v0, v0, -0x100c

    invoke-static {v0}, Landroid/icu/impl/Norm2AllModes;->getN2WithImpl(I)Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->getQuickCheck(I)I

    move-result v0

    return v0
.end method
