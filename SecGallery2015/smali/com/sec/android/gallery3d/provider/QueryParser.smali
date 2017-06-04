.class public Lcom/sec/android/gallery3d/provider/QueryParser;
.super Ljava/lang/Object;
.source "QueryParser.java"


# static fields
.field private static final AND:Ljava/lang/String; = "AND"

.field private static final OR:Ljava/lang/String; = "OR"

.field private static final QUERY_AND:Ljava/lang/String; = "&"

.field private static final QUERY_OR:Ljava/lang/String; = "|"

.field private static final REGEX_BLOCK_START_END:Ljava/lang/String; = "\\[([^\\[]+)\\]"

.field private static final REGEX_START_END:Ljava/lang/String; = "^\\[|\\]$"

.field private static final SUGGEST_URI_PATH_REGEX_QUERY:Ljava/lang/String; = "search_suggest_regex_query"


# instance fields
.field private resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/provider/QueryParser;->resultList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/provider/QueryParser;->resultList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public regexParser(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->CheckQueryParserVer:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "\\[([^\\[]+)\\]"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "^\\[|\\]$"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/provider/QueryParser;->resultList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/provider/QueryParser;->resultList:Ljava/util/List;

    iget-object v4, p0, Lcom/sec/android/gallery3d/provider/QueryParser;->resultList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    :goto_1
    return-object v3

    :cond_1
    const-string/jumbo v3, "search_suggest_regex_query"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "search_suggest_regex_query"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "\n"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
