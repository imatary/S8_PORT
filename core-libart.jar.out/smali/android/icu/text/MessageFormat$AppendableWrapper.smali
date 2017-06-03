.class final Landroid/icu/text/MessageFormat$AppendableWrapper;
.super Ljava/lang/Object;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppendableWrapper"
.end annotation


# instance fields
.field private app:Ljava/lang/Appendable;

.field private attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/MessageFormat$AttributeAndPosition;",
            ">;"
        }
    .end annotation
.end field

.field private length:I


# direct methods
.method static synthetic -get0(Landroid/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/text/MessageFormat$AppendableWrapper;)I
    .locals 1

    iget v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I

    return v0
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->app:Ljava/lang/Appendable;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->app:Ljava/lang/Appendable;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    return-void
.end method

.method public static append(Ljava/lang/Appendable;Ljava/text/CharacterIterator;)I
    .locals 5

    :try_start_0
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v3

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v2

    sub-int v1, v2, v3

    if-ge v3, v2, :cond_0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->first()C

    move-result v4

    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_0
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v2, :cond_0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    move-result v4

    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v4, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v4, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_0
    return v1
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->app:Ljava/lang/Appendable;

    invoke-interface {v1, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget v1, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->app:Ljava/lang/Appendable;

    invoke-interface {v1, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    iget v1, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I

    sub-int v2, p3, p2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public append(Ljava/text/CharacterIterator;)V
    .locals 2

    iget v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I

    iget-object v1, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->app:Ljava/lang/Appendable;

    invoke-static {v1, p1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/Appendable;Ljava/text/CharacterIterator;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I

    return-void
.end method

.method public formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V
    .locals 15

    iget-object v9, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    if-nez v9, :cond_1

    invoke-virtual/range {p1 .. p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual/range {p1 .. p2}, Ljava/text/Format;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    iget v6, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I

    invoke-virtual {p0, v2}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/text/CharacterIterator;)V

    invoke-interface {v2}, Ljava/text/AttributedCharacterIterator;->first()C

    invoke-interface {v2}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v8

    invoke-interface {v2}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v3

    sub-int v5, v6, v8

    :goto_0
    if-ge v8, v3, :cond_0

    invoke-interface {v2}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    move-result v7

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v10, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    new-instance v11, Landroid/icu/text/MessageFormat$AttributeAndPosition;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    add-int v13, v5, v8

    add-int v14, v5, v7

    invoke-direct {v11, v9, v12, v13, v14}, Landroid/icu/text/MessageFormat$AttributeAndPosition;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v8, v7

    invoke-interface {v2, v7}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    goto :goto_0
.end method

.method public formatAndAppend(Ljava/text/Format;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public useAttributes()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    return-void
.end method
