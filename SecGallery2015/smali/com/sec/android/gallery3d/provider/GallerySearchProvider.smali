.class public Lcom/sec/android/gallery3d/provider/GallerySearchProvider;
.super Landroid/content/ContentProvider;
.source "GallerySearchProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.sec.android.gallery3d.provider.GallerySearchProvider"

.field private static final FINDO_REGEX_SEARCH_SUGGEST:I = 0x4

.field private static final FINDO_TAG_SEARCH_SUGGEST:I = 0x6

.field private static final SUGGEST_URI_PATH_REGEX_QUERY:Ljava/lang/String; = "search_suggest_regex_query"

.field private static final SUGGEST_URI_PATH_TAG_QUERY:Ljava/lang/String; = "search_suggest_tag_query"

.field private static final TAG:Ljava/lang/String; = "GallerySearchProvider"

.field private static final mMather:Landroid/content/UriMatcher;


# instance fields
.field private mGallerySearchDB:Lcom/sec/android/gallery3d/provider/GallerySearchDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/sec/android/gallery3d/provider/GallerySearchProvider;->buildMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/provider/GallerySearchProvider;->mMather:Landroid/content/UriMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static buildMatcher()Landroid/content/UriMatcher;
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    const-string/jumbo v1, "com.sec.android.gallery3d.provider.GallerySearchProvider"

    const-string/jumbo v2, "search_suggest_regex_query"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "com.sec.android.gallery3d.provider.GallerySearchProvider"

    const-string/jumbo v2, "search_suggest_regex_query/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "com.sec.android.gallery3d.provider.GallerySearchProvider"

    const-string/jumbo v2, "search_suggest_tag_query"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "com.sec.android.gallery3d.provider.GallerySearchProvider"

    const-string/jumbo v2, "search_suggest_tag_query/*"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private static checkFindoSearch(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "com.sec.feature.findo"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getFindoRegexSuggest(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/provider/GallerySearchProvider;->getFindoSuggest(Landroid/net/Uri;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getFindoSuggest(Landroid/net/Uri;Z)Landroid/database/Cursor;
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/android/gallery3d/provider/SearchParser;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/provider/SearchParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/provider/SearchParser;->parse(Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/provider/SearchParser;->isSupportTagSearch()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/provider/GallerySearchProvider;->mGallerySearchDB:Lcom/sec/android/gallery3d/provider/GallerySearchDatabase;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/provider/GallerySearchDatabase;->getImagesForCMH(Lcom/sec/android/gallery3d/provider/SearchParser;)Landroid/database/Cursor;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDCM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/provider/GallerySearchProvider;->mGallerySearchDB:Lcom/sec/android/gallery3d/provider/GallerySearchDatabase;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/provider/GallerySearchDatabase;->getImagesForDCM(Lcom/sec/android/gallery3d/provider/SearchParser;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/provider/SearchParser;->getSearchFilter()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "videos"

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/provider/SearchParser;->getSearchFilter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/provider/SearchParser;->getUserDef()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/provider/SearchParser;->allTagCheck()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/provider/SearchParser;->getKeyString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/gallery3d/provider/GallerySearchProvider;->mGallerySearchDB:Lcom/sec/android/gallery3d/provider/GallerySearchDatabase;

    invoke-virtual {v1, v0, p2}, Lcom/sec/android/gallery3d/provider/GallerySearchDatabase;->getImages(Lcom/sec/android/gallery3d/provider/SearchParser;Z)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0
.end method

.method private getFindoTagSuggest(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/provider/GallerySearchProvider;->getFindoSuggest(Landroid/net/Uri;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/sec/android/gallery3d/provider/GallerySearchProvider;->mMather:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    new-instance v0, Lcom/sec/android/gallery3d/provider/GallerySearchDatabase;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/provider/GallerySearchProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/provider/GallerySearchDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/provider/GallerySearchProvider;->mGallerySearchDB:Lcom/sec/android/gallery3d/provider/GallerySearchDatabase;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "GallerySearchProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "query "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/gallery3d/provider/GallerySearchProvider;->mMather:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/provider/GallerySearchProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/provider/GallerySearchProvider;->checkFindoSearch(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/provider/GallerySearchProvider;->getFindoRegexSuggest(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/provider/GallerySearchProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/provider/GallerySearchProvider;->checkFindoSearch(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/provider/GallerySearchProvider;->getFindoTagSuggest(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
