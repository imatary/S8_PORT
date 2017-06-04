.class public final Lcom/sec/android/gallery3d/data/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Snapshot"
.end annotation


# instance fields
.field private final ins:[Ljava/io/InputStream;


# direct methods
.method private constructor <init>([Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    return-void
.end method

.method synthetic constructor <init>([Ljava/io/InputStream;Lcom/sec/android/gallery3d/data/DiskLruCache$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/DiskLruCache$Snapshot;-><init>([Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    # invokes: Lcom/sec/android/gallery3d/data/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V
    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DiskLruCache;->access$1600(Ljava/io/Closeable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method
