.class interface abstract Lcom/android/providers/media/MediaDocumentsProvider$ImageQuery;
.super Ljava/lang/Object;
.source "MediaDocumentsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaDocumentsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ImageQuery"
.end annotation


# static fields
.field public static final DATE_MODIFIED:I = 0x4

.field public static final DISPLAY_NAME:I = 0x1

.field public static final MIME_TYPE:I = 0x2

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final SIZE:I = 0x3

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "_display_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "mime_type"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "_size"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "date_modified"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/media/MediaDocumentsProvider$ImageQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
