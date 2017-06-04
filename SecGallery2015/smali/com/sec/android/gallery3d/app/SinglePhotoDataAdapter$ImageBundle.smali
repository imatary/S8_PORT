.class Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;
.super Ljava/lang/Object;
.source "SinglePhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageBundle"
.end annotation


# instance fields
.field public final backupImage:Landroid/graphics/Bitmap;

.field public final decoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    iput-object p2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->backupImage:Landroid/graphics/Bitmap;

    return-void
.end method
