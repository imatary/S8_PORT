.class Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
.super Ljava/lang/Object;
.source "RBBISetBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RBBISetBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RangeDescriptor"
.end annotation


# instance fields
.field fEndChar:I

.field fIncludesSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/RBBINode;",
            ">;"
        }
    .end annotation
.end field

.field fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

.field fNum:I

.field fStartChar:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/icu/text/RBBISetBuilder$RangeDescriptor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    iput v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    iget v0, p1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    iput v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    iget v0, p1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    iput v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method setDictionaryFlag()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    iget-object v5, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/RBBINode;

    const-string/jumbo v1, ""

    iget-object v2, v3, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    if-eqz v4, :cond_0

    iget v5, v4, Landroid/icu/text/RBBINode;->fType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    iget-object v1, v4, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    :cond_0
    const-string/jumbo v5, "dictionary"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method split(I)V
    .locals 3

    const/4 v1, 0x0

    iget v2, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    if-le p1, v2, :cond_0

    iget v2, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    if-gt p1, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Landroid/icu/impl/Assert;->assrt(Z)V

    new-instance v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    invoke-direct {v0, p0}, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;-><init>(Landroid/icu/text/RBBISetBuilder$RangeDescriptor;)V

    iput p1, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    iget-object v1, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    iput-object v1, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    iput-object v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    return-void
.end method
