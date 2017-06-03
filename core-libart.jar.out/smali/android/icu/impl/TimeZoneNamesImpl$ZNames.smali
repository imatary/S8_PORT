.class Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
.super Ljava/lang/Object;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZNames"
.end annotation


# static fields
.field private static final EMPTY_ZNAMES:Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

.field private static final EX_LOC_INDEX:I


# instance fields
.field private _names:[Ljava/lang/String;

.field private didAddIntoTrie:Z


# direct methods
.method static synthetic -get0()Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    .locals 1

    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EMPTY_ZNAMES:Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EMPTY_ZNAMES:Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EX_LOC_INDEX:I

    return-void
.end method

.method protected constructor <init>([Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->didAddIntoTrie:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->load(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getInstance([Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance([Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p0, :cond_0

    sget v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EX_LOC_INDEX:I

    aget-object v1, p0, v1

    if-nez v1, :cond_2

    :cond_0
    invoke-static {p1}, Landroid/icu/impl/TimeZoneNamesImpl;->getDefaultExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p0, :cond_1

    sget v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EX_LOC_INDEX:I

    add-int/lit8 v1, v1, 0x1

    new-array p0, v1, [Ljava/lang/String;

    :cond_1
    sget v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EX_LOC_INDEX:I

    aput-object v0, p0, v1

    :cond_2
    if-nez p0, :cond_3

    sget-object v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EMPTY_ZNAMES:Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    return-object v1

    :cond_3
    new-instance v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    invoke-direct {v1, p0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;-><init>([Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public addNamesIntoTrie(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/TextTrieMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/icu/impl/TextTrieMap",
            "<",
            "Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->didAddIntoTrie:Z

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    aget-object v2, v3, v0

    if-eqz v2, :cond_2

    new-instance v1, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;

    invoke-direct {v1, v4}, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;-><init>(Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;)V

    iput-object p1, v1, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->mzID:Ljava/lang/String;

    iput-object p2, v1, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->tzID:Ljava/lang/String;

    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl;->-get0()[Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v3

    aget-object v3, v3, v0

    iput-object v3, v1, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->type:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {p3, v2, v1}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->didAddIntoTrie:Z

    return-void
.end method

.method public getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    return-object v2
.end method
