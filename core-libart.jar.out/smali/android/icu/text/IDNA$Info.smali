.class public final Landroid/icu/text/IDNA$Info;
.super Ljava/lang/Object;
.source "IDNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/IDNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Info"
.end annotation


# instance fields
.field private errors:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/IDNA$Error;",
            ">;"
        }
    .end annotation
.end field

.field private isBiDi:Z

.field private isOkBiDi:Z

.field private isTransDiff:Z

.field private labelErrors:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/IDNA$Error;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/IDNA$Info;->errors:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/text/IDNA$Info;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/IDNA$Info;->isBiDi:Z

    return v0
.end method

.method static synthetic -get2(Landroid/icu/text/IDNA$Info;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/IDNA$Info;->isOkBiDi:Z

    return v0
.end method

.method static synthetic -get3(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/IDNA$Info;->labelErrors:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic -set0(Landroid/icu/text/IDNA$Info;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/icu/text/IDNA$Info;->isBiDi:Z

    return p1
.end method

.method static synthetic -set1(Landroid/icu/text/IDNA$Info;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/icu/text/IDNA$Info;->isOkBiDi:Z

    return p1
.end method

.method static synthetic -set2(Landroid/icu/text/IDNA$Info;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/icu/text/IDNA$Info;->isTransDiff:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/icu/text/IDNA$Info;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/IDNA$Info;->reset()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/icu/text/IDNA$Error;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/IDNA$Info;->errors:Ljava/util/EnumSet;

    const-class v0, Landroid/icu/text/IDNA$Error;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/IDNA$Info;->labelErrors:Ljava/util/EnumSet;

    iput-boolean v1, p0, Landroid/icu/text/IDNA$Info;->isTransDiff:Z

    iput-boolean v1, p0, Landroid/icu/text/IDNA$Info;->isBiDi:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/IDNA$Info;->isOkBiDi:Z

    return-void
.end method

.method private reset()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/icu/text/IDNA$Info;->errors:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    iget-object v0, p0, Landroid/icu/text/IDNA$Info;->labelErrors:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    iput-boolean v1, p0, Landroid/icu/text/IDNA$Info;->isTransDiff:Z

    iput-boolean v1, p0, Landroid/icu/text/IDNA$Info;->isBiDi:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/IDNA$Info;->isOkBiDi:Z

    return-void
.end method


# virtual methods
.method public getErrors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/IDNA$Error;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/text/IDNA$Info;->errors:Ljava/util/EnumSet;

    return-object v0
.end method

.method public hasErrors()Z
    .locals 1

    iget-object v0, p0, Landroid/icu/text/IDNA$Info;->errors:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTransitionalDifferent()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/IDNA$Info;->isTransDiff:Z

    return v0
.end method
