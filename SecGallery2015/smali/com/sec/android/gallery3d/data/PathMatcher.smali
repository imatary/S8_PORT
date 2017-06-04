.class public Lcom/sec/android/gallery3d/data/PathMatcher;
.super Ljava/lang/Object;
.source "PathMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/PathMatcher$Node;
    }
.end annotation


# static fields
.field private static final NOT_FOUND:I = -0x1

.field private static final TAG:Ljava/lang/String; = "PathMatcher"


# instance fields
.field private mRoot:Lcom/sec/android/gallery3d/data/PathMatcher$Node;

.field private final mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/PathMatcher;->mVariables:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/gallery3d/data/PathMatcher$Node;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/data/PathMatcher$Node;-><init>(Lcom/sec/android/gallery3d/data/PathMatcher$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/PathMatcher;->mRoot:Lcom/sec/android/gallery3d/data/PathMatcher$Node;

    new-instance v0, Lcom/sec/android/gallery3d/data/PathMatcher$Node;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/data/PathMatcher$Node;-><init>(Lcom/sec/android/gallery3d/data/PathMatcher$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/PathMatcher;->mRoot:Lcom/sec/android/gallery3d/data/PathMatcher$Node;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 4

    invoke-static {p1}, Lcom/sec/android/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/PathMatcher;->mRoot:Lcom/sec/android/gallery3d/data/PathMatcher$Node;

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/data/PathMatcher$Node;->addChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/PathMatcher$Node;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lcom/sec/android/gallery3d/data/PathMatcher$Node;->setKind(I)V

    return-void
.end method

.method public getIntVar(I)I
    .locals 5

    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/PathMatcher;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "PathMatcher"

    const-string/jumbo v3, "Broken image shows because index NumberFormatException occured."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "PathMatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NumberFormatException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLongVar(I)J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/PathMatcher;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVar(I)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/PathMatcher;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "PathMatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IndexOutOfBoundsException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public match(Lcom/sec/android/gallery3d/data/Path;)I
    .locals 6

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/PathMatcher;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/PathMatcher;->mRoot:Lcom/sec/android/gallery3d/data/PathMatcher$Node;

    const/4 v1, 0x0

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/data/PathMatcher$Node;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/PathMatcher$Node;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v4, "*"

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/data/PathMatcher$Node;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/PathMatcher$Node;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/PathMatcher;->mVariables:Ljava/util/ArrayList;

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    :goto_1
    return v4

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/PathMatcher$Node;->getKind()I

    move-result v4

    goto :goto_1
.end method
