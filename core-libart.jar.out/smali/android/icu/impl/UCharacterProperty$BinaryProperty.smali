.class Landroid/icu/impl/UCharacterProperty$BinaryProperty;
.super Ljava/lang/Object;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BinaryProperty"
.end annotation


# instance fields
.field column:I

.field mask:I

.field final synthetic this$0:Landroid/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Landroid/icu/impl/UCharacterProperty;I)V
    .locals 1

    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->column:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->mask:I

    return-void
.end method

.method constructor <init>(Landroid/icu/impl/UCharacterProperty;II)V
    .locals 0

    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->column:I

    iput p3, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->mask:I

    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    iget v2, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->column:I

    invoke-virtual {v1, p1, v2}, Landroid/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result v1

    iget v2, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->mask:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method final getSource()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->mask:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->column:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
