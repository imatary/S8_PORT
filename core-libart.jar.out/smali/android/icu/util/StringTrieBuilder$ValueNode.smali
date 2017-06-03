.class Landroid/icu/util/StringTrieBuilder$ValueNode;
.super Landroid/icu/util/StringTrieBuilder$Node;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueNode"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field protected hasValue:Z

.field protected value:I


# direct methods
.method static synthetic -wrap0(Landroid/icu/util/StringTrieBuilder$ValueNode;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/util/StringTrieBuilder$ValueNode;->setFinalValue(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/util/StringTrieBuilder$ValueNode;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/util/StringTrieBuilder$ValueNode;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$Node;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$Node;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    iput p1, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    return-void
.end method

.method private setFinalValue(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    iput p1, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    return-void
.end method


# virtual methods
.method public add(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$Node;
    .locals 3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne p3, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Duplicate string."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p1, p2, p3, p4}, Landroid/icu/util/StringTrieBuilder;->-wrap1(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$ValueNode;

    move-result-object v0

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    invoke-virtual {v0, v1}, Landroid/icu/util/StringTrieBuilder$ValueNode;->setValue(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/icu/util/StringTrieBuilder$ValueNode;

    iget-boolean v3, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    iget-boolean v4, v0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    iget v4, v0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    if-ne v3, v4, :cond_3

    :cond_2
    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const v0, 0x111111

    iget-boolean v1, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    if-eqz v1, :cond_0

    const v1, 0x2777775

    iget v2, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    add-int v0, v1, v2

    :cond_0
    return v0
.end method

.method public final setValue(I)V
    .locals 2

    const/4 v1, 0x1

    sget-boolean v0, Landroid/icu/util/StringTrieBuilder$ValueNode;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    iput p1, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    return-void
.end method

.method public write(Landroid/icu/util/StringTrieBuilder;)V
    .locals 2

    iget v0, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/icu/util/StringTrieBuilder;->writeValueAndFinal(IZ)I

    move-result v0

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    return-void
.end method
