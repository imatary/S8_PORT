.class public Landroid/icu/text/AlphabeticIndex$Bucket;
.super Ljava/lang/Object;
.source "AlphabeticIndex.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/AlphabeticIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bucket"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/icu/text/AlphabeticIndex$Record",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field private displayBucket:Landroid/icu/text/AlphabeticIndex$Bucket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/text/AlphabeticIndex$Bucket",
            "<TV;>;"
        }
    .end annotation
.end field

.field private displayIndex:I

.field private final label:Ljava/lang/String;

.field private final labelType:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

.field private final lowerBoundary:Ljava/lang/String;

.field private records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/AlphabeticIndex$Record",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->displayBucket:Landroid/icu/text/AlphabeticIndex$Bucket;

    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/text/AlphabeticIndex$Bucket;)I
    .locals 1

    iget v0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->displayIndex:I

    return v0
.end method

.method static synthetic -get2(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->labelType:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    return-object v0
.end method

.method static synthetic -get3(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->lowerBoundary:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->records:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -set0(Landroid/icu/text/AlphabeticIndex$Bucket;Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;
    .locals 0

    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->displayBucket:Landroid/icu/text/AlphabeticIndex$Bucket;

    return-object p1
.end method

.method static synthetic -set1(Landroid/icu/text/AlphabeticIndex$Bucket;I)I
    .locals 0

    iput p1, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->displayIndex:I

    return p1
.end method

.method static synthetic -set2(Landroid/icu/text/AlphabeticIndex$Bucket;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->records:Ljava/util/List;

    return-object p1
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->label:Ljava/lang/String;

    iput-object p2, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->lowerBoundary:Ljava/lang/String;

    iput-object p3, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->labelType:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;Landroid/icu/text/AlphabeticIndex$Bucket;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;)V

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelType()Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->labelType:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/icu/text/AlphabeticIndex$Record",
            "<TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->records:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->records:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{labelType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->labelType:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "lowerBoundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->lowerBoundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
