.class interface abstract Lcom/android/providers/media/MediaDocumentsProvider$ImageThumbnailQuery;
.super Ljava/lang/Object;
.source "MediaDocumentsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaDocumentsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ImageThumbnailQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;

.field public static final _DATA:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_data"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/media/MediaDocumentsProvider$ImageThumbnailQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
