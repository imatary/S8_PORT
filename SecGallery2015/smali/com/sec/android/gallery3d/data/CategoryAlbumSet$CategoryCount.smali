.class Lcom/sec/android/gallery3d/data/CategoryAlbumSet$CategoryCount;
.super Ljava/lang/Object;
.source "CategoryAlbumSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/CategoryAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CategoryCount"
.end annotation


# instance fields
.field public final count:I

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet$CategoryCount;->name:Ljava/lang/String;

    iput p2, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet$CategoryCount;->count:I

    return-void
.end method
