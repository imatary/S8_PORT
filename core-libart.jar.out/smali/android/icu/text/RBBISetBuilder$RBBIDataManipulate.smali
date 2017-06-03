.class Landroid/icu/text/RBBISetBuilder$RBBIDataManipulate;
.super Ljava/lang/Object;
.source "RBBISetBuilder.java"

# interfaces
.implements Landroid/icu/impl/TrieBuilder$DataManipulate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RBBISetBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RBBIDataManipulate"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/text/RBBISetBuilder;


# direct methods
.method constructor <init>(Landroid/icu/text/RBBISetBuilder;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/RBBISetBuilder$RBBIDataManipulate;->this$0:Landroid/icu/text/RBBISetBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFoldedValue(II)I
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-array v0, v3, [Z

    add-int/lit16 v1, p1, 0x400

    :goto_0
    if-ge p1, v1, :cond_2

    iget-object v3, p0, Landroid/icu/text/RBBISetBuilder$RBBIDataManipulate;->this$0:Landroid/icu/text/RBBISetBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBISetBuilder;->fTrie:Landroid/icu/impl/IntTrieBuilder;

    invoke-virtual {v3, p1, v0}, Landroid/icu/impl/IntTrieBuilder;->getValue(I[Z)I

    move-result v2

    aget-boolean v3, v0, v4

    if-eqz v3, :cond_0

    add-int/lit8 p1, p1, 0x20

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    const v3, 0x8000

    or-int/2addr v3, p2

    return v3

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method
