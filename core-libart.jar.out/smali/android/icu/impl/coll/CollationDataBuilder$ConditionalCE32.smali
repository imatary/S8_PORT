.class final Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
.super Ljava/lang/Object;
.source "CollationDataBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationDataBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConditionalCE32"
.end annotation


# instance fields
.field builtCE32:I

.field ce32:I

.field context:Ljava/lang/String;

.field defaultCE32:I

.field next:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    iput p2, p0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    iput v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->defaultCE32:I

    iput v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    return-void
.end method


# virtual methods
.method hasContext()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method prefixLength()I
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method
