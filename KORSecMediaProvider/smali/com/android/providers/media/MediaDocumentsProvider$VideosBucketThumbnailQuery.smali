.class interface abstract Lcom/android/providers/media/MediaDocumentsProvider$VideosBucketThumbnailQuery;
.super Ljava/lang/Object;
.source "MediaDocumentsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaDocumentsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "VideosBucketThumbnailQuery"
.end annotation


# static fields
.field public static final BUCKET_ID:I = 0x1

.field public static final DATE_MODIFIED:I = 0x2

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "bucket_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "date_modified"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/media/MediaDocumentsProvider$VideosBucketThumbnailQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
