.class Lcom/sec/android/gallery3d/data/UnionLocalAlbum$DeleteIncludeDirOperation;
.super Ljava/lang/Object;
.source "UnionLocalAlbum.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/dboperation/IOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/UnionLocalAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeleteIncludeDirOperation"
.end annotation


# instance fields
.field private final includeDir:Z

.field final synthetic this$0:Lcom/sec/android/gallery3d/data/UnionLocalAlbum;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/UnionLocalAlbum;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum$DeleteIncludeDirOperation;->this$0:Lcom/sec/android/gallery3d/data/UnionLocalAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum$DeleteIncludeDirOperation;->includeDir:Z

    return-void
.end method


# virtual methods
.method public apply()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum$DeleteIncludeDirOperation;->this$0:Lcom/sec/android/gallery3d/data/UnionLocalAlbum;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum$DeleteIncludeDirOperation;->includeDir:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v1, 0x1

    return v1
.end method
