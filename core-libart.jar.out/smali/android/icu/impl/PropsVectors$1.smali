.class Landroid/icu/impl/PropsVectors$1;
.super Ljava/lang/Object;
.source "PropsVectors.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/PropsVectors;->compact(Landroid/icu/impl/PropsVectors$CompactHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/impl/PropsVectors;


# direct methods
.method constructor <init>(Landroid/icu/impl/PropsVectors;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/impl/PropsVectors$1;->this$0:Landroid/icu/impl/PropsVectors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Landroid/icu/impl/PropsVectors$1;->this$0:Landroid/icu/impl/PropsVectors;

    invoke-static {v4}, Landroid/icu/impl/PropsVectors;->-get0(Landroid/icu/impl/PropsVectors;)I

    move-result v0

    const/4 v1, 0x2

    :cond_0
    iget-object v4, p0, Landroid/icu/impl/PropsVectors$1;->this$0:Landroid/icu/impl/PropsVectors;

    invoke-static {v4}, Landroid/icu/impl/PropsVectors;->-get1(Landroid/icu/impl/PropsVectors;)[I

    move-result-object v4

    add-int v5, v2, v1

    aget v4, v4, v5

    iget-object v5, p0, Landroid/icu/impl/PropsVectors$1;->this$0:Landroid/icu/impl/PropsVectors;

    invoke-static {v5}, Landroid/icu/impl/PropsVectors;->-get1(Landroid/icu/impl/PropsVectors;)[I

    move-result-object v5

    add-int v6, v3, v1

    aget v5, v5, v6

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Landroid/icu/impl/PropsVectors$1;->this$0:Landroid/icu/impl/PropsVectors;

    invoke-static {v4}, Landroid/icu/impl/PropsVectors;->-get1(Landroid/icu/impl/PropsVectors;)[I

    move-result-object v4

    add-int v5, v2, v1

    aget v4, v4, v5

    iget-object v5, p0, Landroid/icu/impl/PropsVectors$1;->this$0:Landroid/icu/impl/PropsVectors;

    invoke-static {v5}, Landroid/icu/impl/PropsVectors;->-get1(Landroid/icu/impl/PropsVectors;)[I

    move-result-object v5

    add-int v6, v3, v1

    aget v5, v5, v6

    if-ge v4, v5, :cond_1

    const/4 v4, -0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Landroid/icu/impl/PropsVectors$1;->this$0:Landroid/icu/impl/PropsVectors;

    invoke-static {v4}, Landroid/icu/impl/PropsVectors;->-get0(Landroid/icu/impl/PropsVectors;)I

    move-result v4

    if-ne v1, v4, :cond_3

    const/4 v1, 0x0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    return v7
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/PropsVectors$1;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method
