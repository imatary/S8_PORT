.class Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageFetch"
.end annotation


# instance fields
.field final imageBit:I

.field final indexOffset:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;->indexOffset:I

    iput p2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;->imageBit:I

    return-void
.end method
