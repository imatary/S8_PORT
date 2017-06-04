.class public Lcom/sec/android/gallery3d/data/MediaSource$PathId;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathId"
.end annotation


# instance fields
.field public final datetaken:J

.field public final id:I

.field public final path:Lcom/sec/android/gallery3d/data/Path;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->path:Lcom/sec/android/gallery3d/data/Path;

    iput p2, p0, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->id:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->datetaken:J

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;IJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->path:Lcom/sec/android/gallery3d/data/Path;

    iput p2, p0, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->id:I

    iput-wide p3, p0, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->datetaken:J

    return-void
.end method
