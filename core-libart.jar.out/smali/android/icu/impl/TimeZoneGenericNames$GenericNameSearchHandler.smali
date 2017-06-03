.class Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;
.super Ljava/lang/Object;
.source "TimeZoneGenericNames.java"

# interfaces
.implements Landroid/icu/impl/TextTrieMap$ResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneGenericNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GenericNameSearchHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/impl/TextTrieMap$ResultHandler",
        "<",
        "Landroid/icu/impl/TimeZoneGenericNames$NameInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private _matches:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private _maxMatchLen:I

.field private _types:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_types:Ljava/util/EnumSet;

    return-void
.end method


# virtual methods
.method public getMatches()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_matches:Ljava/util/Collection;

    return-object v0
.end method

.method public getMaxMatchLen()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_maxMatchLen:I

    return v0
.end method

.method public handlePrefixMatch(ILjava/util/Iterator;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator",
            "<",
            "Landroid/icu/impl/TimeZoneGenericNames$NameInfo;",
            ">;)Z"
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;

    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_types:Ljava/util/EnumSet;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_types:Ljava/util/EnumSet;

    iget-object v3, v0, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;->type:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    new-instance v1, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    invoke-direct {v1}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;-><init>()V

    iget-object v2, v0, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;->tzID:Ljava/lang/String;

    iput-object v2, v1, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->tzID:Ljava/lang/String;

    iget-object v2, v0, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;->type:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    iput-object v2, v1, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->nameType:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    iput p1, v1, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength:I

    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_matches:Ljava/util/Collection;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_matches:Ljava/util/Collection;

    :cond_2
    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_matches:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget v2, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_maxMatchLen:I

    if-le p1, v2, :cond_0

    iput p1, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_maxMatchLen:I

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method public resetResults()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_matches:Ljava/util/Collection;

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_maxMatchLen:I

    return-void
.end method
