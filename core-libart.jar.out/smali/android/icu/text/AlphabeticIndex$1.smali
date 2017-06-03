.class Landroid/icu/text/AlphabeticIndex$1;
.super Ljava/lang/Object;
.source "AlphabeticIndex.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/AlphabeticIndex;
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
        "Landroid/icu/text/AlphabeticIndex$Record",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/text/AlphabeticIndex;


# direct methods
.method constructor <init>(Landroid/icu/text/AlphabeticIndex;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex$1;->this$0:Landroid/icu/text/AlphabeticIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/icu/text/AlphabeticIndex$Record;Landroid/icu/text/AlphabeticIndex$Record;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/AlphabeticIndex$Record",
            "<TV;>;",
            "Landroid/icu/text/AlphabeticIndex$Record",
            "<TV;>;)I"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$1;->this$0:Landroid/icu/text/AlphabeticIndex;

    invoke-static {v0}, Landroid/icu/text/AlphabeticIndex;->-get0(Landroid/icu/text/AlphabeticIndex;)Landroid/icu/text/RuleBasedCollator;

    move-result-object v0

    invoke-static {p1}, Landroid/icu/text/AlphabeticIndex$Record;->-get0(Landroid/icu/text/AlphabeticIndex$Record;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p2}, Landroid/icu/text/AlphabeticIndex$Record;->-get0(Landroid/icu/text/AlphabeticIndex$Record;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/icu/text/AlphabeticIndex$Record;

    check-cast p2, Landroid/icu/text/AlphabeticIndex$Record;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/AlphabeticIndex$1;->compare(Landroid/icu/text/AlphabeticIndex$Record;Landroid/icu/text/AlphabeticIndex$Record;)I

    move-result v0

    return v0
.end method
