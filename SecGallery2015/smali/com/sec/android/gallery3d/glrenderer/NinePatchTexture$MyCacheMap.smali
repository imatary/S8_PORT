.class Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture$MyCacheMap;
.super Ljava/util/LinkedHashMap;
.source "NinePatchTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyCacheMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final CACHE_SIZE:I

.field private transient mJustRemoved:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x4

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture$MyCacheMap;->CACHE_SIZE:I

    return-void
.end method


# virtual methods
.method public getJustRemoved()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture$MyCacheMap;->mJustRemoved:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture$MyCacheMap;->mJustRemoved:Ljava/lang/Object;

    return-object v0
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture$MyCacheMap;->size()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture$MyCacheMap;->mJustRemoved:Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
