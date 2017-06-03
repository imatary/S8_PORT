.class Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SPUStringPool"
.end annotation


# instance fields
.field private fHash:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;",
            ">;"
        }
    .end annotation
.end field

.field private fVec:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fVec:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fHash:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public addString(Ljava/lang/String;)Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    .locals 2

    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fHash:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    if-nez v0, :cond_0

    new-instance v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    invoke-direct {v0, p1}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fHash:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fVec:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public getByIndex(I)Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    .locals 2

    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fVec:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fVec:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public sort()V
    .locals 3

    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fVec:Ljava/util/Vector;

    new-instance v1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;-><init>(Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
