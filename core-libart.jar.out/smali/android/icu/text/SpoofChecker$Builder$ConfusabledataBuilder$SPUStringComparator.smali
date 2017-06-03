.class Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;
.super Ljava/lang/Object;
.source "SpoofChecker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SPUStringComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;)I
    .locals 4

    iget-object v2, p1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v2, p2, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    iget-object v2, p1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    iget-object v3, p2, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    check-cast p2, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;->compare(Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;)I

    move-result v0

    return v0
.end method
