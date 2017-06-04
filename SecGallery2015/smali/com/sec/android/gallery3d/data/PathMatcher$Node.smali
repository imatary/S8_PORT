.class Lcom/sec/android/gallery3d/data/PathMatcher$Node;
.super Ljava/lang/Object;
.source "PathMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/PathMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field private mKind:I

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/gallery3d/data/PathMatcher$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/data/PathMatcher$Node;->mKind:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/PathMatcher$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/PathMatcher$Node;-><init>()V

    return-void
.end method


# virtual methods
.method addChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/PathMatcher$Node;
    .locals 3

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/PathMatcher$Node;->mMap:Ljava/util/HashMap;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/PathMatcher$Node;->mMap:Ljava/util/HashMap;

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/data/PathMatcher$Node;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/PathMatcher$Node;-><init>()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/PathMatcher$Node;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/PathMatcher$Node;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/PathMatcher$Node;

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/PathMatcher$Node;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/PathMatcher$Node;->mMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/PathMatcher$Node;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/PathMatcher$Node;

    goto :goto_0
.end method

.method getKind()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/PathMatcher$Node;->mKind:I

    return v0
.end method

.method setKind(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/PathMatcher$Node;->mKind:I

    return-void
.end method
