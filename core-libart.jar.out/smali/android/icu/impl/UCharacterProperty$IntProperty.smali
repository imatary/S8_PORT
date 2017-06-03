.class Landroid/icu/impl/UCharacterProperty$IntProperty;
.super Ljava/lang/Object;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntProperty"
.end annotation


# instance fields
.field column:I

.field mask:I

.field shift:I

.field final synthetic this$0:Landroid/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Landroid/icu/impl/UCharacterProperty;I)V
    .locals 1

    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->column:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->mask:I

    return-void
.end method

.method constructor <init>(Landroid/icu/impl/UCharacterProperty;III)V
    .locals 0

    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->column:I

    iput p3, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->mask:I

    iput p4, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->shift:I

    return-void
.end method


# virtual methods
.method getMaxValue(I)I
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    iget v1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->column:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/UCharacterProperty;->getMaxValues(I)I

    move-result v0

    iget v1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->mask:I

    and-int/2addr v0, v1

    iget v1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->shift:I

    ushr-int/2addr v0, v1

    return v0
.end method

.method final getSource()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->mask:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->column:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method getValue(I)I
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    iget v1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->column:I

    invoke-virtual {v0, p1, v1}, Landroid/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result v0

    iget v1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->mask:I

    and-int/2addr v0, v1

    iget v1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->shift:I

    ushr-int/2addr v0, v1

    return v0
.end method
