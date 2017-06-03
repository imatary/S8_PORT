.class Landroid/icu/util/Currency$CurrencyNameResultHandler;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Landroid/icu/impl/TextTrieMap$ResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/Currency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CurrencyNameResultHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/impl/TextTrieMap$ResultHandler",
        "<",
        "Landroid/icu/util/Currency$CurrencyStringInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private bestCurrencyISOCode:Ljava/lang/String;

.field private bestMatchLength:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/util/Currency$CurrencyNameResultHandler;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/util/Currency$CurrencyNameResultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getBestCurrencyISOCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/Currency$CurrencyNameResultHandler;->bestCurrencyISOCode:Ljava/lang/String;

    return-object v0
.end method

.method public getBestMatchLength()I
    .locals 1

    iget v0, p0, Landroid/icu/util/Currency$CurrencyNameResultHandler;->bestMatchLength:I

    return v0
.end method

.method public handlePrefixMatch(ILjava/util/Iterator;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator",
            "<",
            "Landroid/icu/util/Currency$CurrencyStringInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Currency$CurrencyStringInfo;

    invoke-virtual {v0}, Landroid/icu/util/Currency$CurrencyStringInfo;->getISOCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/Currency$CurrencyNameResultHandler;->bestCurrencyISOCode:Ljava/lang/String;

    iput p1, p0, Landroid/icu/util/Currency$CurrencyNameResultHandler;->bestMatchLength:I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
