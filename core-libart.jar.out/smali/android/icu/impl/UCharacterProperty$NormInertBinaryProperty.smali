.class Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;
.super Landroid/icu/impl/UCharacterProperty$BinaryProperty;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NormInertBinaryProperty"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/impl/UCharacterProperty;

.field which:I


# direct methods
.method constructor <init>(Landroid/icu/impl/UCharacterProperty;II)V
    .locals 0

    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    iput p3, p0, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;->which:I

    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 1

    iget v0, p0, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;->which:I

    add-int/lit8 v0, v0, -0x25

    invoke-static {v0}, Landroid/icu/impl/Norm2AllModes;->getN2WithImpl(I)Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->isInert(I)Z

    move-result v0

    return v0
.end method
