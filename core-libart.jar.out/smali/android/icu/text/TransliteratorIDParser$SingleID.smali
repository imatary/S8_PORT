.class Landroid/icu/text/TransliteratorIDParser$SingleID;
.super Ljava/lang/Object;
.source "TransliteratorIDParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TransliteratorIDParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingleID"
.end annotation


# instance fields
.field public basicID:Ljava/lang/String;

.field public canonID:Ljava/lang/String;

.field public filter:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/TransliteratorIDParser$SingleID;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    iput-object p2, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->basicID:Ljava/lang/String;

    iput-object p3, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getInstance()Landroid/icu/text/Transliterator;
    .locals 3

    iget-object v1, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->basicID:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->basicID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string/jumbo v1, "Any-Null"

    iget-object v2, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/icu/text/Transliterator;->getBasicInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/icu/text/UnicodeSet;

    iget-object v2, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/icu/text/Transliterator;->setFilter(Landroid/icu/text/UnicodeFilter;)V

    :cond_1
    return-object v0

    :cond_2
    iget-object v1, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->basicID:Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/icu/text/Transliterator;->getBasicInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v0

    goto :goto_0
.end method
