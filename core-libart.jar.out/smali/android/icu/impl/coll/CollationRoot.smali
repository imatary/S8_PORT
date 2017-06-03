.class public final Landroid/icu/impl/coll/CollationRoot;
.super Ljava/lang/Object;
.source "CollationRoot.java"


# static fields
.field private static final exception:Ljava/lang/RuntimeException;

.field private static final rootSingleton:Landroid/icu/impl/coll/CollationTailoring;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v6, "coll/ucadata.icu"

    invoke-static {v6}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v5, Landroid/icu/impl/coll/CollationTailoring;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/icu/impl/coll/CollationTailoring;-><init>(Landroid/icu/impl/coll/SharedObject$Reference;)V

    const/4 v6, 0x0

    invoke-static {v6, v0, v5}, Landroid/icu/impl/coll/CollationDataReader;->read(Landroid/icu/impl/coll/CollationTailoring;Ljava/nio/ByteBuffer;Landroid/icu/impl/coll/CollationTailoring;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    :goto_0
    sput-object v4, Landroid/icu/impl/coll/CollationRoot;->rootSingleton:Landroid/icu/impl/coll/CollationTailoring;

    sput-object v3, Landroid/icu/impl/coll/CollationRoot;->exception:Ljava/lang/RuntimeException;

    return-void

    :catch_0
    move-exception v2

    move-object v3, v2

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v3, Ljava/util/MissingResourceException;

    const-string/jumbo v6, "IOException while reading CLDR root data"

    const-string/jumbo v7, "CollationRoot"

    const-string/jumbo v8, "data/icudt56b/coll/ucadata.icu"

    invoke-direct {v3, v6, v7, v8}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getData()Landroid/icu/impl/coll/CollationData;
    .locals 2

    invoke-static {}, Landroid/icu/impl/coll/CollationRoot;->getRoot()Landroid/icu/impl/coll/CollationTailoring;

    move-result-object v0

    iget-object v1, v0, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    return-object v1
.end method

.method public static final getRoot()Landroid/icu/impl/coll/CollationTailoring;
    .locals 1

    sget-object v0, Landroid/icu/impl/coll/CollationRoot;->exception:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/impl/coll/CollationRoot;->exception:Ljava/lang/RuntimeException;

    throw v0

    :cond_0
    sget-object v0, Landroid/icu/impl/coll/CollationRoot;->rootSingleton:Landroid/icu/impl/coll/CollationTailoring;

    return-object v0
.end method

.method static final getSettings()Landroid/icu/impl/coll/CollationSettings;
    .locals 2

    invoke-static {}, Landroid/icu/impl/coll/CollationRoot;->getRoot()Landroid/icu/impl/coll/CollationTailoring;

    move-result-object v0

    iget-object v1, v0, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/coll/CollationSettings;

    return-object v1
.end method
