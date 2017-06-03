.class Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;
.super Ljava/lang/Object;
.source "TimeZoneNamesImpl.java"

# interfaces
.implements Landroid/icu/impl/TextTrieMap$ResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameSearchHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/impl/TextTrieMap$ResultHandler",
        "<",
        "Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private _matches:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private _maxMatchLen:I

.field private _nameTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_nameTypes:Ljava/util/EnumSet;

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
            "Landroid/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_matches:Ljava/util/Collection;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_matches:Ljava/util/Collection;

    return-object v0
.end method

.method public getMaxMatchLen()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_maxMatchLen:I

    return v0
.end method

.method public handlePrefixMatch(ILjava/util/Iterator;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator",
            "<",
            "Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v5, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;

    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_nameTypes:Ljava/util/EnumSet;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_nameTypes:Ljava/util/EnumSet;

    iget-object v4, v1, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->type:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v2, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    iget-object v2, v1, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->tzID:Ljava/lang/String;

    if-eqz v2, :cond_3

    new-instance v0, Landroid/icu/text/TimeZoneNames$MatchInfo;

    iget-object v2, v1, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->type:Landroid/icu/text/TimeZoneNames$NameType;

    iget-object v4, v1, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->tzID:Ljava/lang/String;

    invoke-direct {v0, v2, v4, v5, p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;-><init>(Landroid/icu/text/TimeZoneNames$NameType;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_matches:Ljava/util/Collection;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_matches:Ljava/util/Collection;

    :cond_2
    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_matches:Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_maxMatchLen:I

    if-le p1, v2, :cond_0

    iput p1, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_maxMatchLen:I

    goto :goto_0

    :cond_3
    sget-boolean v2, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->-assertionsDisabled:Z

    if-nez v2, :cond_5

    iget-object v2, v1, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->mzID:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    new-instance v0, Landroid/icu/text/TimeZoneNames$MatchInfo;

    iget-object v2, v1, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->type:Landroid/icu/text/TimeZoneNames$NameType;

    iget-object v4, v1, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->mzID:Ljava/lang/String;

    invoke-direct {v0, v2, v5, v4, p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;-><init>(Landroid/icu/text/TimeZoneNames$NameType;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_6
    return v3
.end method

.method public resetResults()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_matches:Ljava/util/Collection;

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_maxMatchLen:I

    return-void
.end method
