.class Landroid/icu/impl/UCharacterProperty$20;
.super Landroid/icu/impl/UCharacterProperty$IntProperty;
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

    iput-object p2, p0, Landroid/icu/impl/UCharacterProperty$20;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p3}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method getMaxValue(I)I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method getValue(I)I
    .locals 3

    iget-object v1, p0, Landroid/icu/impl/UCharacterProperty$20;->this$0:Landroid/icu/impl/UCharacterProperty;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Landroid/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result v1

    and-int/lit16 v1, v1, 0x3e0

    ushr-int/lit8 v0, v1, 0x5

    invoke-static {}, Landroid/icu/impl/UCharacterProperty;->-get0()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-static {}, Landroid/icu/impl/UCharacterProperty;->-get0()[I

    move-result-object v1

    aget v1, v1, v0

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
